void sub_23CC9E0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p)
{
  if (a13)
  {
    v14 = a1;
    operator delete(__p);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::PresolveContext::ExploitExactlyOneInObjective(void *a1, int *a2, uint64_t a3)
{
  if (a1[65] < 2uLL || a3 == 0)
  {
    return 0;
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a1[64];
    if (v6 <= 1)
    {
      v7 = 4 * a3;
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = a2;
      while (1)
      {
        v10 = *v9;
        v11 = ~*v9 <= *v9 ? *v9 : ~v10;
        if (*(a1 + 132) != v11)
        {
          return 0;
        }

        v12 = a1[67];
        if (v12 >= v8)
        {
          v13 = v8;
        }

        else
        {
          v13 = a1[67];
        }

        if (v8 >= -v12)
        {
          v14 = -v12;
        }

        else
        {
          v14 = v8;
        }

        if (v10 < 0)
        {
          v8 = v14;
        }

        else
        {
          v8 = v13;
        }

        ++v9;
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_24;
        }
      }
    }

    _X11 = a1[66];
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = a2;
    do
    {
      v22 = 0;
      v26 = *v16;
      if (~*v16 <= *v16)
      {
        v27 = v26;
      }

      else
      {
        v27 = ~v26;
      }

      __asm { PRFM            #4, [X11] }

      v32 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
      v23 = (_X11 >> 12) ^ (v32 >> 7);
      v33 = vdup_n_s8(v32 & 0x7F);
      while (1)
      {
        v17 = v23 & v6;
        v18 = *(_X11 + v17);
        v19 = vceq_s8(v18, v33);
        if (v19)
        {
          break;
        }

LABEL_35:
        if (vceq_s8(v18, 0x8080808080808080))
        {
          return 0;
        }

        v22 += 8;
        v23 = v22 + v17;
      }

      v20 = a1[67];
      while (1)
      {
        v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
        if (*(v20 + 16 * v21) == v27)
        {
          break;
        }

        v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v19)
        {
          goto LABEL_35;
        }
      }

      v24 = *(v20 + 16 * v21 + 8);
      if (v8 >= -v24)
      {
        v25 = -v24;
      }

      else
      {
        v25 = v8;
      }

      if (v24 >= v8)
      {
        v24 = v8;
      }

      if (v26 >= 0)
      {
        v8 = v24;
      }

      else
      {
        v8 = v25;
      }

      ++v16;
    }

    while (v16 != &a2[a3]);
LABEL_24:
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return operations_research::sat::PresolveContext::ShiftCostInExactlyOne(a1, a2, a3, v8);
}

uint64_t operations_research::sat::PresolveContext::ShiftCostInExactlyOne(operations_research::sat::PresolveContext *this, int *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
    v7 = *(this + 64);
    if (v7 > 1)
    {
      v10 = 0;
      v8 = 0;
      v15 = &a2[a3];
      _X14 = *(this + 66);
      v17 = a2;
      do
      {
        v23 = 0;
        v31 = *v17;
        if (~*v17 <= *v17)
        {
          v32 = v31;
        }

        else
        {
          v32 = ~v31;
        }

        __asm { PRFM            #4, [X14] }

        v37 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32));
        v24 = (_X14 >> 12) ^ (v37 >> 7);
        v38 = vdup_n_s8(v37 & 0x7F);
        while (1)
        {
          v18 = v24 & v7;
          v19 = *(_X14 + v18);
          v20 = vceq_s8(v19, v38);
          if (v20)
          {
            break;
          }

LABEL_21:
          if (vceq_s8(v19, 0x8080808080808080))
          {
            v25 = 0;
            goto LABEL_24;
          }

          v23 += 8;
          v24 = v23 + v18;
        }

        v21 = *(this + 67);
        while (1)
        {
          v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v7;
          if (*(v21 + 16 * v22) == v32)
          {
            break;
          }

          v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v20)
          {
            goto LABEL_21;
          }
        }

        v25 = *(v21 + 16 * v22 + 8);
LABEL_24:
        if (v25 >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = -v25;
        }

        v27 = (v10 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v10, v26);
        v10 += v26;
        if (_VF)
        {
          v10 = v27;
        }

        if (v31 >= 0)
        {
          v28 = -a4;
        }

        else
        {
          v28 = a4;
        }

        v29 = v25 + v28;
        if (v29 < 0)
        {
          v29 = -v29;
        }

        v30 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v8, v29);
        v8 += v29;
        if (_VF)
        {
          v8 = v30;
        }

        ++v17;
      }

      while (v17 != v15);
    }

    else if (*(this + 65) > 1uLL)
    {
      v10 = 0;
      v8 = 0;
      v52 = *(this + 132);
      v53 = 4 * a3;
      v54 = a2;
      do
      {
        v61 = *v54;
        if (~*v54 <= *v54)
        {
          v62 = *v54;
        }

        else
        {
          v62 = ~v61;
        }

        if (v52 == v62)
        {
          v55 = *(this + 67);
        }

        else
        {
          v55 = 0;
        }

        if (v55 >= 0)
        {
          v56 = v55;
        }

        else
        {
          v56 = -v55;
        }

        v57 = (v10 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v10, v56);
        v10 += v56;
        if (_VF)
        {
          v10 = v57;
        }

        if (v61 >= 0)
        {
          v58 = -a4;
        }

        else
        {
          v58 = a4;
        }

        v59 = v55 + v58;
        if (v59 < 0)
        {
          v59 = -v59;
        }

        v60 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v8, v59);
        v8 += v59;
        if (_VF)
        {
          v8 = v60;
        }

        ++v54;
        v53 -= 4;
      }

      while (v53);
    }

    else
    {
      v8 = 0;
      if (a4 >= 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = -a4;
      }

      v10 = 4 * a3;
      do
      {
        v11 = (v8 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v8, v9);
        v8 += v9;
        if (_VF)
        {
          v8 = v11;
        }

        v10 -= 4;
      }

      while (v10);
    }

    if (v8 - 0x7FFFFFFFFFFFFFFFLL < 2)
    {
      return 0;
    }

    v39 = v8 <= v10;
    v40 = v8 - v10;
    if (!v39)
    {
      v41 = *(this + 68);
      _VF = __OFADD__(v41, v40);
      v42 = v41 + v40;
      if (_VF)
      {
        v42 = (v41 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v42 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        return 0;
      }

      *(this + 68) = v42;
    }

    *(this + 504) = 0;
    v43 = 4 * a3;
    v14 = a4;
    do
    {
      v45 = *v6;
      if (~*v6 <= *v6)
      {
        v46 = *v6;
      }

      else
      {
        v46 = ~v45;
      }

      v63 = v46;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(this + 64, &v63, &v64);
      if (BYTE8(v65) == 1)
      {
        v47 = v65;
        *v65 = v63;
        *(v47 + 8) = 0;
      }

      v48 = v65;
      if (!*(v65 + 8))
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>((*(this + 84) + 32 * v63), &operations_research::sat::kObjectiveConstraint, &v64);
        if (BYTE8(v65) == 1)
        {
          *v65 = -1;
        }
      }

      v49 = *(v48 + 8);
      if (v45 < 0)
      {
        v44 = v49 + a4;
        *(v48 + 8) = v44;
        if (!v44)
        {
          operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v63);
        }

        v14 -= a4;
      }

      else
      {
        v50 = v49 - a4;
        *(v48 + 8) = v50;
        if (!v50)
        {
          operations_research::sat::PresolveContext::RemoveVariableFromObjective(this, v63);
        }
      }

      ++v6;
      v43 -= 4;
    }

    while (v43);
    if (!v14)
    {
      goto LABEL_65;
    }
  }

  else
  {
    *(this + 504) = 0;
    v14 = a4;
  }

  operations_research::sat::PresolveContext::AddToObjectiveOffset(this, v14);
LABEL_65:
  if ((*(this + 576) & 1) == 0)
  {
    v51 = operations_research::Domain::Max((this + 584));
    operations_research::Domain::Domain(&v64, 0x8000000000000000, v51);
    if ((this + 584) == &v64)
    {
      operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&v64);
    }

    else
    {
      if (*(this + 584))
      {
        operator delete(*(this + 74));
      }

      *(this + 73) = v64;
      *(this + 37) = v65;
    }
  }

  return 1;
}

uint64_t operations_research::sat::PresolveContext::WriteObjectiveToProto(uint64_t this)
{
  if ((*(this + 504) & 1) == 0)
  {
    v1 = this;
    *(this + 504) = 1;
    v2 = *(this + 552);
    *(this + 560) = v2;
    v3 = *(this + 520);
    if (v3 >> 1 > (*(this + 568) - v2) >> 4)
    {
      if (!(v3 >> 61))
      {
        operations_research::sat::PresolveContext::WriteObjectiveToProto(v3 >> 1, (this + 560), (this + 552), (this + 568));
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(this + 520) >= 2uLL)
    {
      if (*(this + 512) >= 2uLL)
      {
        v5 = *(this + 528);
        v4 = *(this + 536);
        if (*v5 <= -2)
        {
          do
          {
            v6 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
            v5 = (v5 + v6);
            v4 += 16 * v6;
          }

          while (*v5 < -1);
        }
      }

      else
      {
        v4 = this + 528;
        v5 = &absl::lts_20240722::container_internal::kSooControl;
      }

      do
      {
        LODWORD(v30) = *v4;
        *(&v30 + 1) = *(v4 + 8);
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((v1 + 69), &v30);
        v8 = *(v5 + 1);
        v5 = (v5 + 1);
        LOBYTE(v7) = v8;
        v4 += 16;
        if (v8 <= -2)
        {
          do
          {
            v9 = __clz(__rbit64((*v5 | ~(*v5 >> 7)) & 0x101010101010101)) >> 3;
            v5 = (v5 + v9);
            v4 += 16 * v9;
            v7 = *v5;
          }

          while (v7 < -1);
        }
      }

      while (v7 != 255);
    }

    v10 = v1[69];
    v11 = v1[70];
    v12 = 126 - 2 * __clz((v11 - v10) >> 4);
    if (v11 == v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *,false>(v10, v11, v13, 1);
    v14 = *v1;
    *(v14 + 16) = *(*v1 + 16) | 1;
    v15 = *(v14 + 128);
    if (!v15)
    {
      v16 = *(v14 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v16);
      v15 = v17;
      *(v14 + 128) = v17;
    }

    *(v15 + 88) = v1[76];
    *(v15 + 96) = v1[77];
    *(v15 + 104) = v1[78];
    *(v15 + 120) = v1[79];
    v18 = v1[80];
    if (v18 == 1)
    {
      v18 = 0;
    }

    *(v15 + 112) = v18;
    this = operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v1 + 73, v15);
    *(v15 + 16) = 0;
    v19 = (v15 + 16);
    *(v15 + 40) = 0;
    v20 = v1[69];
    for (i = v1[70]; v20 != i; v20 += 16)
    {
      v22 = *v20;
      v23 = HIDWORD(*v19);
      v24 = *v19;
      if (v24 == v23)
      {
        this = google::protobuf::RepeatedField<int>::Grow(v15 + 16, v23, (v23 + 1));
        v24 = *v19;
      }

      v25 = *(v15 + 24);
      *(v15 + 16) = v24 + 1;
      *(v25 + 4 * v24) = v22;
      v26 = *(v20 + 8);
      v28 = *(v15 + 40);
      v27 = *(v15 + 44);
      if (v28 == v27)
      {
        this = google::protobuf::RepeatedField<long long>::Grow(v15 + 40, v27, (v27 + 1));
        v28 = *(v15 + 40);
      }

      v29 = *(v15 + 48);
      *(v15 + 40) = v28 + 1;
      *(v29 + 8 * v28) = v26;
    }
  }

  return this;
}

uint64_t operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(operations_research::sat::PresolveContext *this, const operations_research::sat::LinearExpressionProto *a2, const operations_research::sat::LinearExpressionProto *a3, int a4, int a5)
{
  if ((a4 & 0x80000000) == 0)
  {
    if (operations_research::Domain::Max((*(this + 53) + 24 * a4)))
    {
      goto LABEL_3;
    }

LABEL_8:
    operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v175);
  }

  if (operations_research::Domain::Min((*(this + 53) + 24 * ~a4)) == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a5 < 0)
  {
    if (operations_research::Domain::Min((*(this + 53) + 24 * ~a5)) != 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    operations_research::sat::PresolveContext::GetOrCreateReifiedPrecedenceLiteral(v175);
  }

  if (!operations_research::Domain::Max((*(this + 53) + 24 * a5)))
  {
    goto LABEL_10;
  }

LABEL_5:
  operations_research::sat::PresolveContext::GetReifiedPrecedenceKey(v175, this, a2, a3, a4, a5);
  if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find<std::tuple<int,long long,int,long long,long long,int,int>>(this + 132, v175))
  {
    return *(v10 + 48);
  }

  v11 = operations_research::sat::PresolveContext::NewBoolVar(this);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find_or_prepare_insert_non_soo<std::tuple<int,long long,int,long long,long long,int,int>>(this + 132, v175, &v172);
  v12 = v173;
  if (v174 == 1)
  {
    v13 = v175[0];
    v14 = v175[2];
    *(v173 + 16) = v175[1];
    *(v12 + 32) = v14;
    *v12 = v13;
  }

  *(v12 + 48) = v11;
  v15 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v16 = v15;
  v17 = (v15 + 16);
  v18 = *(v15 + 16);
  v19 = v18;
  if (v18 == HIDWORD(v18))
  {
    google::protobuf::RepeatedField<int>::Grow(v15 + 16, HIDWORD(v18), (HIDWORD(v18) + 1));
    v19 = *v17;
  }

  v20 = *(v16 + 24);
  *(v16 + 16) = v19 + 1;
  *(v20 + 4 * v19) = v11;
  v21 = *(a2 + 4);
  if (v21 >= 1)
  {
    for (i = 0; i < v21; ++i)
    {
      if (*(*(a2 + 6) + 8 * i))
      {
        v23 = *(*(a2 + 3) + 4 * i);
        if (~v23 > v23)
        {
          v23 = ~v23;
        }

        if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v23)))
        {
          if (*(v16 + 60) == 12)
          {
            v24 = *(v16 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v16);
            *(v16 + 60) = 12;
            v25 = *(v16 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v25);
            *(v16 + 48) = v24;
          }

          v26 = **(a2 + 3);
          v27 = (v24 + 2);
          v28 = v24[2];
          v29 = v28;
          if (v28 == HIDWORD(v28))
          {
            v164 = v24;
            google::protobuf::RepeatedField<int>::Grow((v24 + 2), HIDWORD(v28), (HIDWORD(v28) + 1));
            v24 = v164;
            v29 = *v27;
          }

          v30 = v24[3];
          *(v24 + 4) = v29 + 1;
          *(v30 + 4 * v29) = v26;
          if (*(v16 + 60) == 12)
          {
            v31 = *(v16 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v16);
            *(v16 + 60) = 12;
            v32 = *(v16 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v32);
            *(v16 + 48) = v31;
          }

          v33 = -**(a2 + 6);
          v35 = *(v31 + 10);
          v34 = *(v31 + 11);
          v36 = (v31 + 5);
          if (v35 == v34)
          {
            v165 = v31;
            google::protobuf::RepeatedField<long long>::Grow((v31 + 5), v34, (v34 + 1));
            v31 = v165;
            v35 = *v36;
          }

          v37 = v31[6];
          *(v31 + 10) = v35 + 1;
          *(v37 + 8 * v35) = v33;
          break;
        }

        v21 = *(a2 + 4);
      }
    }
  }

  v38 = *(a3 + 4);
  if (v38 < 1)
  {
    goto LABEL_61;
  }

  v39 = 0;
  while (!*(*(a3 + 6) + 8 * v39))
  {
LABEL_40:
    if (++v39 >= v38)
    {
      goto LABEL_61;
    }
  }

  v40 = *(*(a3 + 3) + 4 * v39);
  if (~v40 > v40)
  {
    v40 = ~v40;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v40)))
  {
    v38 = *(a3 + 4);
    goto LABEL_40;
  }

  if (*(v16 + 60) == 12)
  {
    v41 = *(v16 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v16);
    *(v16 + 60) = 12;
    v42 = *(v16 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v42);
    *(v16 + 48) = v41;
  }

  v43 = **(a3 + 3);
  v44 = (v41 + 2);
  v45 = v41[2];
  v46 = v45;
  if (v45 == HIDWORD(v45))
  {
    v166 = v41;
    google::protobuf::RepeatedField<int>::Grow((v41 + 2), HIDWORD(v45), (HIDWORD(v45) + 1));
    v41 = v166;
    v46 = *v44;
  }

  v47 = v41[3];
  *(v41 + 4) = v46 + 1;
  *(v47 + 4 * v46) = v43;
  if (*(v16 + 60) == 12)
  {
    v48 = *(v16 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v16);
    *(v16 + 60) = 12;
    v49 = *(v16 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v49);
    *(v16 + 48) = v48;
  }

  v50 = **(a3 + 6);
  v52 = *(v48 + 10);
  v51 = *(v48 + 11);
  v53 = (v48 + 5);
  if (v52 == v51)
  {
    v167 = v48;
    google::protobuf::RepeatedField<long long>::Grow((v48 + 5), v51, (v51 + 1));
    v48 = v167;
    v52 = *v53;
  }

  v54 = v48[6];
  *(v48 + 10) = v52 + 1;
  *(v54 + 8 * v52) = v50;
LABEL_61:
  v55 = *(a2 + 4);
  if (v55 < 1)
  {
LABEL_69:
    v58 = operations_research::sat::PresolveContext::FixedValue(this, a2);
    v59 = *(a3 + 4);
    if (v59 >= 1)
    {
      goto LABEL_72;
    }

LABEL_79:
    v62 = v58 - operations_research::sat::PresolveContext::FixedValue(this, a3);
    if (*(v16 + 60) != 12)
    {
      goto LABEL_82;
    }

    goto LABEL_80;
  }

  v56 = 0;
  while (!*(*(a2 + 6) + 8 * v56))
  {
LABEL_63:
    if (++v56 >= v55)
    {
      goto LABEL_69;
    }
  }

  v57 = *(*(a2 + 3) + 4 * v56);
  if (~v57 > v57)
  {
    v57 = ~v57;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v57)))
  {
    v55 = *(a2 + 4);
    goto LABEL_63;
  }

  v58 = *(a2 + 8);
  v59 = *(a3 + 4);
  if (v59 < 1)
  {
    goto LABEL_79;
  }

LABEL_72:
  v60 = 0;
  while (!*(*(a3 + 6) + 8 * v60))
  {
LABEL_73:
    if (++v60 >= v59)
    {
      goto LABEL_79;
    }
  }

  v61 = *(*(a3 + 3) + 4 * v60);
  if (~v61 > v61)
  {
    v61 = ~v61;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v61)))
  {
    v59 = *(a3 + 4);
    goto LABEL_73;
  }

  v62 = v58 - *(a3 + 8);
  if (*(v16 + 60) == 12)
  {
LABEL_80:
    v63 = *(v16 + 48);
    goto LABEL_85;
  }

LABEL_82:
  operations_research::sat::ConstraintProto::clear_constraint(v16);
  *(v16 + 60) = 12;
  v64 = *(v16 + 8);
  if (v64)
  {
    v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
  }

  v63 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v64);
  *(v16 + 48) = v63;
LABEL_85:
  v66 = *(v63 + 16);
  v65 = *(v63 + 17);
  v67 = (v63 + 8);
  if (v66 == v65)
  {
    v127 = v63;
    google::protobuf::RepeatedField<long long>::Grow((v63 + 8), v65, (v65 + 1));
    v63 = v127;
    v66 = *v67;
  }

  v68 = v63[9];
  *(v63 + 16) = v66 + 1;
  *(v68 + 8 * v66) = v62;
  if (*(v16 + 60) == 12)
  {
    v69 = *(v16 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v16);
    *(v16 + 60) = 12;
    v70 = *(v16 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v70);
    *(v16 + 48) = v69;
  }

  v72 = *(v69 + 16);
  v71 = *(v69 + 17);
  v73 = (v69 + 8);
  if (v72 == v71)
  {
    v128 = v69;
    google::protobuf::RepeatedField<long long>::Grow((v69 + 8), v71, (v71 + 1));
    v69 = v128;
    v72 = *v73;
  }

  v74 = v69[9];
  *(v69 + 16) = v72 + 1;
  *(v74 + 8 * v72) = 0x7FFFFFFFFFFFFFFFLL;
  operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(this, v16);
  if (a4 < 0)
  {
    if (operations_research::Domain::Max((*(this + 53) + 24 * ~a4)))
    {
LABEL_96:
      operations_research::sat::PresolveContext::AddImplication(this, v11, a4);
    }
  }

  else if (operations_research::Domain::Min((*(this + 53) + 24 * a4)) != 1)
  {
    goto LABEL_96;
  }

  if (a5 < 0)
  {
    if (operations_research::Domain::Max((*(this + 53) + 24 * ~a5)))
    {
LABEL_99:
      operations_research::sat::PresolveContext::AddImplication(this, v11, a5);
    }
  }

  else if (operations_research::Domain::Min((*(this + 53) + 24 * a5)) != 1)
  {
    goto LABEL_99;
  }

  v75 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v76 = *(a2 + 4);
  if (v76 < 1)
  {
    goto LABEL_127;
  }

  v77 = 0;
  while (2)
  {
    if (!*(*(a2 + 6) + 8 * v77))
    {
LABEL_102:
      if (++v77 >= v76)
      {
        goto LABEL_127;
      }

      continue;
    }

    break;
  }

  v78 = *(*(a2 + 3) + 4 * v77);
  if (~v78 > v78)
  {
    v78 = ~v78;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v78)))
  {
    v76 = *(a2 + 4);
    goto LABEL_102;
  }

  if (*(v75 + 60) == 12)
  {
    v79 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v80 = *(v75 + 8);
    if (v80)
    {
      v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
    }

    v79 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v80);
    *(v75 + 48) = v79;
  }

  v81 = **(a2 + 3);
  v82 = (v79 + 2);
  v83 = v79[2];
  v84 = v83;
  if (v83 == HIDWORD(v83))
  {
    v168 = v79;
    google::protobuf::RepeatedField<int>::Grow((v79 + 2), HIDWORD(v83), (HIDWORD(v83) + 1));
    v79 = v168;
    v84 = *v82;
  }

  v85 = v79[3];
  *(v79 + 4) = v84 + 1;
  *(v85 + 4 * v84) = v81;
  if (*(v75 + 60) == 12)
  {
    v86 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v87 = *(v75 + 8);
    if (v87)
    {
      v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
    }

    v86 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v87);
    *(v75 + 48) = v86;
  }

  v88 = -**(a2 + 6);
  v90 = *(v86 + 10);
  v89 = *(v86 + 11);
  v91 = (v86 + 5);
  if (v90 == v89)
  {
    v169 = v86;
    google::protobuf::RepeatedField<long long>::Grow((v86 + 5), v89, (v89 + 1));
    v86 = v169;
    v90 = *v91;
  }

  v92 = v86[6];
  *(v86 + 10) = v90 + 1;
  *(v92 + 8 * v90) = v88;
LABEL_127:
  v93 = *(a3 + 4);
  if (v93 < 1)
  {
    goto LABEL_150;
  }

  v94 = 0;
  while (2)
  {
    if (!*(*(a3 + 6) + 8 * v94))
    {
LABEL_129:
      if (++v94 >= v93)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  v95 = *(*(a3 + 3) + 4 * v94);
  if (~v95 > v95)
  {
    v95 = ~v95;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v95)))
  {
    v93 = *(a3 + 4);
    goto LABEL_129;
  }

  if (*(v75 + 60) == 12)
  {
    v96 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v97 = *(v75 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v97);
    *(v75 + 48) = v96;
  }

  v98 = **(a3 + 3);
  v99 = (v96 + 2);
  v100 = v96[2];
  v101 = v100;
  if (v100 == HIDWORD(v100))
  {
    v170 = v96;
    google::protobuf::RepeatedField<int>::Grow((v96 + 2), HIDWORD(v100), (HIDWORD(v100) + 1));
    v96 = v170;
    v101 = *v99;
  }

  v102 = v96[3];
  *(v96 + 4) = v101 + 1;
  *(v102 + 4 * v101) = v98;
  if (*(v75 + 60) == 12)
  {
    v103 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v104 = *(v75 + 8);
    if (v104)
    {
      v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
    }

    v103 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v104);
    *(v75 + 48) = v103;
  }

  v105 = **(a3 + 6);
  v107 = *(v103 + 10);
  v106 = *(v103 + 11);
  v108 = (v103 + 5);
  if (v107 == v106)
  {
    v171 = v103;
    google::protobuf::RepeatedField<long long>::Grow((v103 + 5), v106, (v106 + 1));
    v103 = v171;
    v107 = *v108;
  }

  v109 = v103[6];
  *(v103 + 10) = v107 + 1;
  *(v109 + 8 * v107) = v105;
LABEL_150:
  if (*(v75 + 60) == 12)
  {
    v110 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v111 = *(v75 + 8);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v111);
    *(v75 + 48) = v110;
  }

  v113 = *(v110 + 16);
  v112 = *(v110 + 17);
  v114 = (v110 + 8);
  if (v113 == v112)
  {
    v129 = v110;
    google::protobuf::RepeatedField<long long>::Grow((v110 + 8), v112, (v112 + 1));
    v110 = v129;
    v113 = *v114;
  }

  v115 = v110[9];
  *(v110 + 16) = v113 + 1;
  *(v115 + 8 * v113) = 0x8000000000000000;
  if (*(v75 + 60) == 12)
  {
    v116 = *(v75 + 48);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v75);
    *(v75 + 60) = 12;
    v117 = *(v75 + 8);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v117);
    *(v75 + 48) = v116;
  }

  v118 = v62 - 1;
  v120 = *(v116 + 16);
  v119 = *(v116 + 17);
  v121 = (v116 + 8);
  if (v120 == v119)
  {
    v130 = v116;
    google::protobuf::RepeatedField<long long>::Grow((v116 + 8), v119, (v119 + 1));
    v116 = v130;
    v120 = *v121;
  }

  v122 = v116[9];
  *(v116 + 16) = v120 + 1;
  *(v122 + 8 * v120) = v118;
  v123 = ~v11;
  v124 = (v75 + 16);
  v125 = *(v75 + 16);
  if (v125 == HIDWORD(v125))
  {
    google::protobuf::RepeatedField<int>::Grow(v75 + 16, HIDWORD(v125), (HIDWORD(v125) + 1));
    v131 = *v124;
    v132 = *(v75 + 24);
    *(v75 + 16) = *v124 + 1;
    *(v132 + 4 * v131) = v123;
    if (a4 < 0)
    {
      goto LABEL_171;
    }

LABEL_166:
    if (operations_research::Domain::Min((*(this + 53) + 24 * a4)) == 1)
    {
      goto LABEL_167;
    }

LABEL_172:
    v133 = HIDWORD(*v124);
    v134 = *v124;
    if (v134 == v133)
    {
      google::protobuf::RepeatedField<int>::Grow(v75 + 16, v133, (v133 + 1));
      v162 = *v124;
      v163 = *(v75 + 24);
      *(v75 + 16) = *v124 + 1;
      *(v163 + 4 * v162) = a4;
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_168;
      }
    }

    else
    {
      v135 = *(v75 + 24);
      *(v75 + 16) = v134 + 1;
      *(v135 + 4 * v134) = a4;
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_168;
      }
    }
  }

  else
  {
    v126 = *(v75 + 24);
    *(v75 + 16) = v125 + 1;
    *(v126 + 4 * v125) = v123;
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_166;
    }

LABEL_171:
    if (operations_research::Domain::Max((*(this + 53) + 24 * ~a4)))
    {
      goto LABEL_172;
    }

LABEL_167:
    if ((a5 & 0x80000000) == 0)
    {
LABEL_168:
      if (operations_research::Domain::Min((*(this + 53) + 24 * a5)) == 1)
      {
        goto LABEL_178;
      }

      goto LABEL_175;
    }
  }

  if (!operations_research::Domain::Max((*(this + 53) + 24 * ~a5)))
  {
    goto LABEL_178;
  }

LABEL_175:
  v136 = HIDWORD(*v124);
  v137 = *v124;
  if (v137 == v136)
  {
    google::protobuf::RepeatedField<int>::Grow(v75 + 16, v136, (v136 + 1));
    v137 = *v124;
  }

  v138 = *(v75 + 24);
  *(v75 + 16) = v137 + 1;
  *(v138 + 4 * v137) = a5;
LABEL_178:
  operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(this, v75);
  operations_research::sat::PresolveContext::GetReifiedPrecedenceKey(&v172, this, a3, a2, a5, a4);
  if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find<std::tuple<int,long long,int,long long,long long,int,int>>(this + 132, &v172))
  {
    v140 = v139;
    v141 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v142 = v141;
    if (*(v141 + 60) == 3)
    {
      v143 = *(v141 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v141);
      *(v142 + 60) = 3;
      v144 = *(v142 + 8);
      if (v144)
      {
        v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
      }

      v143 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v144);
      *(v142 + 48) = v143;
    }

    v146 = *(v143 + 4);
    v145 = *(v143 + 5);
    v147 = v143 + 2;
    if (v146 == v145)
    {
      v156 = v143;
      google::protobuf::RepeatedField<int>::Grow((v143 + 2), v145, (v145 + 1));
      v143 = v156;
      v146 = *(v156 + 4);
      v145 = *(v156 + 5);
    }

    v148 = v143[3];
    v149 = v146 + 1;
    *(v143 + 4) = v146 + 1;
    *(v148 + 4 * v146) = v11;
    v150 = *(v140 + 48);
    if (v146 + 1 == v145)
    {
      v157 = v143;
      google::protobuf::RepeatedField<int>::Grow(v147, v145, (v145 + 1));
      v143 = v157;
      v158 = *(v157 + 4);
      v145 = *(v157 + 5);
      v148 = v157[3];
      v151 = v158 + 1;
      *v147 = v158 + 1;
      *(v148 + 4 * v158) = v150;
      v152 = ~a4;
      if (v158 + 1 == v145)
      {
        goto LABEL_192;
      }

LABEL_188:
      v153 = v151 + 1;
      *v147 = v151 + 1;
      *(v148 + 4 * v151) = v152;
      v154 = ~a5;
      if (v151 + 1 == v145)
      {
LABEL_193:
        v161 = v143;
        google::protobuf::RepeatedField<int>::Grow(v147, v145, (v145 + 1));
        v153 = *(v161 + 4);
        v148 = v161[3];
      }
    }

    else
    {
      v151 = v146 + 2;
      *v147 = v149 + 1;
      *(v148 + 4 * v149) = v150;
      v152 = ~a4;
      if (v149 + 1 != v145)
      {
        goto LABEL_188;
      }

LABEL_192:
      v159 = v143;
      google::protobuf::RepeatedField<int>::Grow(v147, v145, (v145 + 1));
      v143 = v159;
      v160 = *(v159 + 4);
      v145 = *(v159 + 5);
      v148 = v159[3];
      v153 = v160 + 1;
      *v147 = v160 + 1;
      *(v148 + 4 * v160) = v152;
      v154 = ~a5;
      if (v160 + 1 == v145)
      {
        goto LABEL_193;
      }
    }

    *v147 = v153 + 1;
    *(v148 + 4 * v153) = v154;
  }

  return v11;
}

uint64_t *operations_research::sat::PresolveContext::GetReifiedPrecedenceKey@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::sat::PresolveContext *this@<X0>, const operations_research::sat::LinearExpressionProto *a3@<X1>, const operations_research::sat::LinearExpressionProto *a4@<X2>, int a5@<W3>, int a6@<W4>)
{
  v12 = *(a3 + 4);
  if (v12 < 1)
  {
    v34 = 0;
    v35 = 0x80000000;
    v15 = *(a4 + 4);
    if (v15 >= 1)
    {
      goto LABEL_25;
    }

LABEL_12:
    v16 = 0;
    v17 = 0x80000000;
    v18 = *(a3 + 4);
    if (v18 >= 1)
    {
      goto LABEL_45;
    }

LABEL_52:
    v27 = operations_research::sat::PresolveContext::FixedValue(this, a3);
    v28 = *(a4 + 4);
    if (v28 >= 1)
    {
      goto LABEL_55;
    }

    goto LABEL_62;
  }

  v13 = 0;
  while (!*(*(a3 + 6) + 8 * v13))
  {
LABEL_3:
    if (++v13 >= v12)
    {
      v35 = 0x80000000;
      if (v12 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  v14 = *(*(a3 + 3) + 4 * v13);
  if (~v14 > v14)
  {
    v14 = ~v14;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v14)))
  {
    v12 = *(a3 + 4);
    goto LABEL_3;
  }

  v35 = **(a3 + 3);
  v12 = *(a3 + 4);
  if (v12 < 1)
  {
LABEL_24:
    v34 = 0;
    v15 = *(a4 + 4);
    if (v15 >= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

LABEL_15:
  v19 = 0;
  while (2)
  {
    if (!*(*(a3 + 6) + 8 * v19))
    {
LABEL_17:
      if (++v19 >= v12)
      {
        goto LABEL_24;
      }

      continue;
    }

    break;
  }

  v20 = *(*(a3 + 3) + 4 * v19);
  if (~v20 > v20)
  {
    v20 = ~v20;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v20)))
  {
    v12 = *(a3 + 4);
    goto LABEL_17;
  }

  v34 = **(a3 + 6);
  v15 = *(a4 + 4);
  if (v15 < 1)
  {
    goto LABEL_12;
  }

LABEL_25:
  v21 = 0;
  while (2)
  {
    if (!*(*(a4 + 6) + 8 * v21))
    {
LABEL_26:
      if (++v21 < v15)
      {
        continue;
      }

      v17 = 0x80000000;
      if (v15 >= 1)
      {
        goto LABEL_35;
      }

LABEL_44:
      v16 = 0;
      v18 = *(a3 + 4);
      if (v18 >= 1)
      {
        goto LABEL_45;
      }

      goto LABEL_52;
    }

    break;
  }

  v22 = *(*(a4 + 3) + 4 * v21);
  if (~v22 > v22)
  {
    v22 = ~v22;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v22)))
  {
    v15 = *(a4 + 4);
    goto LABEL_26;
  }

  v17 = **(a4 + 3);
  v15 = *(a4 + 4);
  if (v15 < 1)
  {
    goto LABEL_44;
  }

LABEL_35:
  v23 = 0;
  while (1)
  {
    if (!*(*(a4 + 6) + 8 * v23))
    {
      goto LABEL_37;
    }

    v24 = *(*(a4 + 3) + 4 * v23);
    if (~v24 > v24)
    {
      v24 = ~v24;
    }

    if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v24)))
    {
      break;
    }

    v15 = *(a4 + 4);
LABEL_37:
    if (++v23 >= v15)
    {
      goto LABEL_44;
    }
  }

  v16 = **(a4 + 6);
  v18 = *(a3 + 4);
  if (v18 < 1)
  {
    goto LABEL_52;
  }

LABEL_45:
  v25 = 0;
  while (2)
  {
    if (!*(*(a3 + 6) + 8 * v25))
    {
LABEL_46:
      if (++v25 >= v18)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  v26 = *(*(a3 + 3) + 4 * v25);
  if (~v26 > v26)
  {
    v26 = ~v26;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v26)))
  {
    v18 = *(a3 + 4);
    goto LABEL_46;
  }

  v27 = *(a3 + 8);
  v28 = *(a4 + 4);
  if (v28 < 1)
  {
LABEL_62:
    result = operations_research::sat::PresolveContext::FixedValue(this, a4);
    goto LABEL_64;
  }

LABEL_55:
  v29 = 0;
  while (2)
  {
    if (!*(*(a4 + 6) + 8 * v29))
    {
LABEL_56:
      if (++v29 >= v28)
      {
        goto LABEL_62;
      }

      continue;
    }

    break;
  }

  v30 = *(*(a4 + 3) + 4 * v29);
  if (~v30 > v30)
  {
    v30 = ~v30;
  }

  if (operations_research::Domain::IsFixed((*(this + 53) + 24 * v30)))
  {
    v28 = *(a4 + 4);
    goto LABEL_56;
  }

  result = *(a4 + 8);
LABEL_64:
  *a1 = v35;
  if (a6 <= a5)
  {
    v32 = a5;
  }

  else
  {
    v32 = a6;
  }

  a1[1] = v34;
  if (a6 >= a5)
  {
    v33 = a5;
  }

  else
  {
    v33 = a6;
  }

  *(a1 + 4) = v17;
  a1[3] = v16;
  a1[4] = v27 - result;
  *(a1 + 10) = v33;
  *(a1 + 11) = v32;
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find<std::tuple<int,long long,int,long long,long long,int,int>>(uint64_t *a1, unsigned int *a2)
{
  v2 = 0;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = v9 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8)));
  v11 = ((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10);
  v12 = a2[4];
  v13 = (((v11 + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v11 + v12));
  v14 = *(a2 + 3);
  v15 = *(a2 + 4);
  v16 = v15 + ((((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13)));
  v17 = ((v16 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v16);
  v18 = a2[10];
  v19 = a2[11];
  v20 = ((((v17 + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + v18))) + v19;
  v21 = ((v20 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v20);
  v22 = *a1;
  v23 = vdup_n_s8(v21 & 0x7F);
  v24 = ((v21 >> 7) ^ (_X8 >> 12)) & *a1;
  v25 = *(_X8 + v24);
  v26 = vceq_s8(v25, v23);
  if (v26)
  {
LABEL_2:
    while (1)
    {
      v27 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v22;
      v28 = a1[3] + 56 * v27;
      _ZF = *v28 == v8 && *(v28 + 8) == v9;
      if (_ZF && *(v28 + 16) == v12 && *(v28 + 24) == v14 && *(v28 + 32) == v15 && *(v28 + 40) == v18 && *(v28 + 44) == v19)
      {
        return _X8 + v27;
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v26)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    while (!*&vceq_s8(v25, 0x8080808080808080))
    {
      v2 += 8;
      v24 = (v2 + v24) & v22;
      v25 = *(_X8 + v24);
      v26 = vceq_s8(v25, v23);
      if (v26)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }
}

BOOL operations_research::sat::PresolveContext::CanonicalizeLinearConstraint(int **this, operations_research::sat::ConstraintProto *a2)
{
  v18 = 0;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (*(a2 + 15) == 12)
  {
    v6 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v7 = *(a2 + 1);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v7);
    *(a2 + 6) = v6;
  }

  v8 = operations_research::sat::CanonicalizeLinearExpressionInternal<operations_research::sat::LinearConstraintProto>(v4, v5, v6, &v18, this + 144, this);
  if (!v18)
  {
    return v8;
  }

  if (*(a2 + 15) == 12)
  {
    v10 = *(a2 + 6);
  }

  else
  {
    v10 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  operations_research::Domain::FromFlatSpanOfIntervals(v10[9], *(v10 + 16), v16, v9);
  operations_research::Domain::Domain(v15, -v18);
  operations_research::Domain::AdditionWith(v17, v16, v15, v11);
  if (*(a2 + 15) == 12)
  {
    v12 = *(a2 + 6);
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a2);
    *(a2 + 15) = 12;
    v13 = *(a2 + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v13);
    *(a2 + 6) = v12;
  }

  operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v17, v12);
  if ((v17[0] & 1) == 0)
  {
    if ((v15[0] & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    operator delete(v15[1]);
    if ((v16[0] & 1) == 0)
    {
      return v8;
    }

    goto LABEL_18;
  }

  operator delete(v17[1]);
  if (v15[0])
  {
    goto LABEL_21;
  }

LABEL_17:
  if (v16[0])
  {
LABEL_18:
    operator delete(v16[1]);
  }

  return v8;
}

void sub_23CC9FDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *a16)
{
  if (a9)
  {
    operator delete(__p);
    if ((a12 & 1) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a12 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  _Unwind_Resume(exception_object);
}

void *operations_research::sat::PresolveContext::ClearPrecedenceCache(void *this)
{
  v1 = this[132];
  if (v1)
  {
    return absl::lts_20240722::container_internal::ClearBackingArray(this + 132, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::GetPolicyFunctions(void)::value, v1 < 0x80, 0);
  }

  return this;
}

void operations_research::sat::PresolveContext::LogInfo(operations_research::sat::PresolveContext *this)
{
  v1 = this;
  __p[10] = *MEMORY[0x277D85DE8];
  v2 = *(this + 48);
  if (*v2 == 1)
  {
    HIBYTE(__p[2]) = 0;
    LOBYTE(__p[0]) = 0;
    operations_research::SolverLogger::LogInfo(v2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 2244, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      v3 = *(v1 + 48);
      if ((*v3 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = *(v1 + 48);
      if ((*v3 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    HIBYTE(__p[2]) = 17;
    strcpy(__p, "Presolve summary:");
    operations_research::SolverLogger::LogInfo(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 2245, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      v5 = *(v1 + 48);
      if ((*v5 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = *(v1 + 48);
      if ((*v5 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    __p[0] = "  - ";
    __p[1] = 4;
    v6 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v1 + 225), &v49[0].__r_.__value_.__s.__data_[16], v4);
    v49[0].__r_.__value_.__r.__words[0] = &v49[0].__r_.__value_.__r.__words[2];
    v49[0].__r_.__value_.__l.__size_ = v6 - &v49[0].__r_.__value_.__r.__words[2];
    v48[0].__r_.__value_.__r.__words[0] = " affine relations were detected.";
    v48[0].__r_.__value_.__l.__size_ = 32;
    absl::lts_20240722::StrCat(__p, v49, v48, &v47);
    operations_research::SolverLogger::LogInfo(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc", 2247, &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

LABEL_12:
  if (*(v1 + 137) <= 1uLL)
  {
    v47.__r_.__value_.__r.__words[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    v47.__r_.__value_.__l.__size_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    v47.__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v7 = *(v1 + 138);
    v8 = *(v1 + 139);
    if (*v7 <= -2)
    {
      do
      {
        v9 = __clz(__rbit64((*v7 | ~(*v7 >> 7)) & 0x101010101010101)) >> 3;
        v7 = (v7 + v9);
        v8 += 4 * v9;
      }

      while (*v7 < -1);
    }

    v47.__r_.__value_.__r.__words[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    v47.__r_.__value_.__l.__size_ = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    v47.__r_.__value_.__r.__words[2] = 0;
    do
    {
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_hint_unique<std::string,std::pair<std::string const,int>&>(&v47, v47.__r_.__value_.__l.__size_, *(v47.__r_.__value_.__l.__size_ + 10), v8, v8, __p);
      v12 = *(v7 + 1);
      v7 = (v7 + 1);
      LOBYTE(v11) = v12;
      v8 += 4;
      if (v12 <= -2)
      {
        do
        {
          v13 = __clz(__rbit64((*v7 | ~(*v7 >> 7)) & 0x101010101010101)) >> 3;
          v7 = (v7 + v13);
          v8 += 4 * v13;
          v11 = *v7;
        }

        while (v11 < -1);
      }
    }

    while (v11 != 255);
    size = v47.__r_.__value_.__l.__size_;
    v15 = *v47.__r_.__value_.__l.__data_;
    v16 = *(v47.__r_.__value_.__l.__size_ + 10);
    if (*v47.__r_.__value_.__l.__data_ != v47.__r_.__value_.__l.__size_ || v16 != 0)
    {
      v18 = 0;
      v19 = "  - rule '";
      v20 = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_context.cc";
      v45 = v47.__r_.__value_.__l.__size_;
      v44 = *(v47.__r_.__value_.__l.__size_ + 10);
      do
      {
        v21 = &v15[32 * v18];
        v22 = (v21 + 16);
        v23 = *(v21 + 10);
        v24 = *(v1 + 48);
        if (v23 == 1)
        {
          if (!*v24)
          {
            goto LABEL_44;
          }

          __p[0] = v19;
          __p[1] = 10;
          v25 = v21[39];
          if ((v25 & 0x80u) == 0)
          {
            v26 = v22;
          }

          else
          {
            v26 = *v22;
          }

          if ((v25 & 0x80u) != 0)
          {
            v25 = *(v22 + 8);
          }

          v49[0].__r_.__value_.__r.__words[0] = v26;
          v49[0].__r_.__value_.__l.__size_ = v25;
          v48[0].__r_.__value_.__r.__words[0] = "' was applied 1 time.";
          v48[0].__r_.__value_.__l.__size_ = 21;
          absl::lts_20240722::StrCat(__p, v49, v48, &v46);
          operations_research::SolverLogger::LogInfo(v24, v20, 2252, &v46);
          if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_44:
            if (v15[11])
            {
              goto LABEL_45;
            }

            goto LABEL_53;
          }

          v27 = v46.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*v24)
          {
            goto LABEL_44;
          }

          v28 = v1;
          v29 = v20;
          v30 = v28;
          v31 = v19;
          v32 = *(v22 + 23);
          v34 = *v22;
          v33 = *(v22 + 8);
          operations_research::sat::FormatCounter(v48, v23, v10);
          v35 = HIBYTE(v48[0].__r_.__value_.__r.__words[2]);
          if (v32 >= 0)
          {
            v36 = v22;
          }

          else
          {
            v36 = v34;
          }

          if (v32 >= 0)
          {
            v37 = v32;
          }

          else
          {
            v37 = v33;
          }

          v38 = v48;
          if ((v48[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v48[0].__r_.__value_.__l.__size_;
            v38 = v48[0].__r_.__value_.__r.__words[0];
          }

          v19 = v31;
          __p[0] = v31;
          __p[1] = 10;
          __p[2] = v36;
          __p[3] = v37;
          __p[4] = "' was applied ";
          __p[5] = 14;
          __p[6] = v38;
          __p[7] = v35;
          __p[8] = " times.";
          __p[9] = 7;
          absl::lts_20240722::strings_internal::CatPieces(__p, 5, v49);
          v20 = v29;
          operations_research::SolverLogger::LogInfo(v24, v29, 2255, v49);
          v16 = v44;
          v1 = v30;
          size = v45;
          if (SHIBYTE(v49[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49[0].__r_.__value_.__l.__data_);
            if ((SHIBYTE(v48[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v48[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          v27 = v48[0].__r_.__value_.__r.__words[0];
        }

        operator delete(v27);
        if (v15[11])
        {
LABEL_45:
          if (++v18 == v15[10])
          {
            v39 = v15;
            while (1)
            {
              v40 = *v39;
              if (*(*v39 + 11))
              {
                break;
              }

              v41 = v39[8];
              v39 = *v39;
              if (v41 != v40[10])
              {
                v15 = v40;
                v18 = v41;
                goto LABEL_56;
              }
            }
          }

          continue;
        }

LABEL_53:
        v42 = &v15[8 * (v18 + 1) + 240];
        do
        {
          v15 = *v42;
          v43 = *(*v42 + 11);
          v42 = *v42 + 240;
        }

        while (!v43);
        v18 = 0;
LABEL_56:
        ;
      }

      while (v15 != size || v18 != v16);
    }
  }

  if (v47.__r_.__value_.__r.__words[2])
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_23CCA0358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CCA03B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(va);
  _Unwind_Resume(a1);
}

void sub_23CCA0400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(&a16);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LoadModelForProbing(operations_research::sat *this, operations_research::sat::PresolveContext *a2, operations_research::sat::Model *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  if (*(this + 416))
  {
    return 0;
  }

  operations_research::sat::PresolveContext::WriteVariableDomainsToProto(this);
  v6 = *this;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  operations_research::sat::SatParameters::CopyFrom(v7, *(this + 49));
  *(v7 + 745) = 0;
  *(v7 + 9) |= 0x20000u;
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  operations_research::TimeLimit::MergeWithGlobalTimeLimit(v8, *(this + 50));
  v9 = *(this + 51);
  v49 = &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d;
  v10 = *(a2 + 3);
  if (v10 > 1)
  {
    v18 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d));
    v26 = vdup_n_s8(v25 & 0x7F);
    v27 = ((v25 >> 7) ^ (_X11 >> 12)) & v10;
    v28 = *(_X11 + v27);
    v29 = vceq_s8(v28, v26);
    if (!v29)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_11:
      if (*(*(a2 + 6) + 16 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v10)) == &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d)
      {
        goto LABEL_34;
      }

      v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v29);
LABEL_13:
    while (!*&vceq_s8(v28, 0x8080808080808080))
    {
      v18 += 8;
      v27 = (v18 + v27) & v10;
      v28 = *(_X11 + v27);
      v29 = vceq_s8(v28, v26);
      if (v29)
      {
        goto LABEL_11;
      }
    }
  }

  else if (*(a2 + 4) >= 2uLL && *(a2 + 5) == &gtl::FastTypeId<operations_research::sat::ModelRandomGenerator>(void)::d)
  {
LABEL_34:
    operations_research::sat::LoadModelForProbing(&v50);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(a2 + 3, &v49, &v50);
  if (v52 == 1)
  {
    v11 = v51;
    *v51 = v49;
    *(v11 + 8) = 0;
  }

  *(v51 + 8) = v9;
  v12 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  *(v12 + 32) = 0;
  v13 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  operations_research::sat::LoadVariables(v6, 0, a2, v14);
  operations_research::sat::ExtractEncoding(v6, a2, v15);
  v17 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if (*(v17 + 528) == 1)
  {
    return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, "Initial loading for probing", 27);
  }

  v31 = *(v6 + 6);
  v30 = (v6 + 48);
  v32 = (v31 + 7);
  if (v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  v34 = *(v30 + 2);
  if (v34)
  {
    v35 = &v33[v34];
    do
    {
      v41 = *v33;
      v42 = v13[15];
      if (v42 > 1)
      {
        v39 = 0;
        v43 = v41 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v41)));
        v44 = ((v43 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v43);
        v45 = vdup_n_s8(v44 & 0x7F);
        _X10 = v13[17];
        __asm { PRFM            #4, [X10] }

        for (i = (v44 >> 7) ^ (_X10 >> 12); ; i = v39 + v36)
        {
          v36 = i & v42;
          v37 = *(_X10 + v36);
          v38 = vceq_s8(v37, v45);
          if (v38)
          {
            break;
          }

LABEL_24:
          if (vceq_s8(v37, 0x8080808080808080))
          {
            goto LABEL_29;
          }

          v39 += 8;
        }

        while (*(v13[18] + 8 * ((v36 + (__clz(__rbit64(v38)) >> 3)) & v42)) != v41)
        {
          v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v38)
          {
            goto LABEL_24;
          }
        }
      }

      else if (v13[16] < 2uLL || v13[17] != v41)
      {
LABEL_29:
        if ((operations_research::sat::LoadConstraint(*v33, a2, v16) & 1) == 0)
        {
          operations_research::sat::LoadModelForProbing(&v50);
        }

        if (*(v17 + 528) == 1)
        {
          v50 = "after loading constraint during probing ";
          v51 = 40;
          google::protobuf::Message::ShortDebugString(&v48);
        }
      }

      ++v33;
    }

    while (v33 != v35);
  }

  operations_research::sat::IntegerEncoder::AddAllImplicationsBetweenAssociatedLiterals(v12);
  if (*(v17 + 528))
  {
    return 0;
  }

  if (operations_research::sat::SatSolver::Propagate(v17))
  {
    return 1;
  }

  else
  {
    return operations_research::sat::PresolveContext::NotifyThatModelIsUnsat(this, "during probing initial propagation", 34);
  }
}

void sub_23CCA08C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      _Unwind_Resume(a1);
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::PresolveContext::GetIntervalRepresentative(operations_research::sat::PresolveContext *this, uint64_t a2)
{
  v4 = (*this + 48);
  if (*v4)
  {
    v4 = (*v4 + 8 * a2 + 7);
  }

  v5 = *v4;
  if (*(v5 + 60) == 19)
  {
    v6 = *(v5 + 48);
  }

  else
  {
    v6 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
  }

  google::protobuf::MessageLite::SerializeAsString(&v22, v6);
  __p = v22;
  memset(&v22, 0, sizeof(v22));
  v24 = a2;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::find_or_prepare_insert_non_soo<std::string>(this + 140, &__p, &v25, v7, v8);
  if (v27 != 1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_14;
      }
    }

    else if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }

LABEL_11:
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }

    return a2;
  }

  v9 = v26;
  v10 = *&__p.__r_.__value_.__l.__data_;
  v26[2] = __p.__r_.__value_.__r.__words[2];
  *v9 = v10;
  memset(&__p, 0, sizeof(__p));
  *(v9 + 6) = v24;
  if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  operator delete(v22.__r_.__value_.__l.__data_);
  if (v27)
  {
    return a2;
  }

LABEL_15:
  v12 = *(v26 + 6);
  if (v12 == a2)
  {
    return a2;
  }

  v13 = *(*this + 48);
  v14 = (v13 + 8 * v12 + 7);
  if ((v13 & 1) == 0)
  {
    v14 = (*this + 48);
  }

  google::protobuf::MessageLite::SerializeAsString(&__p, *v14);
  v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v17 = *(v26 + 23);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v26[1];
  }

  if (size == v17)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v18 >= 0)
    {
      v20 = v26;
    }

    else
    {
      v20 = *v26;
    }

    v21 = memcmp(p_p, v20, size) != 0;
    if (v15 < 0)
    {
LABEL_35:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v21)
      {
LABEL_36:
        operator new();
      }

      goto LABEL_34;
    }
  }

  else
  {
    v21 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_35;
    }
  }

  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_34:
  *(v26 + 6) = a2;
  return a2;
}

void sub_23CCA0B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::CanonicalizeLinearExpressionInternal<operations_research::sat::LinearConstraintProto>(int *a1, uint64_t a2, uint64_t a3, void *a4, int **a5, operations_research::sat::PresolveContext *a6)
{
  v10 = *a5;
  a5[1] = *a5;
  v11 = *(a3 + 16);
  v51 = (a3 + 16);
  if (v11 < 1)
  {
    v52 = 0;
    v13 = 0;
    v26 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v52 = 0;
    v50 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v48 = 4 * a2;
    do
    {
      v14 = *(*(a3 + 24) + 4 * v12);
      if (~v14 <= v14)
      {
        v15 = *(*(a3 + 24) + 4 * v12);
      }

      else
      {
        v15 = ~v14;
      }

      if (v14 >= 0)
      {
        v16 = *(*(a3 + 48) + 8 * v12);
      }

      else
      {
        v16 = -*(*(a3 + 48) + 8 * v12);
      }

      if (v16)
      {
        if (~v15 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = ~v15;
        }

        if (operations_research::Domain::IsFixed((*(a6 + 53) + 24 * v17)))
        {
          if (!operations_research::Domain::IsFixed((*(a6 + 53) + 24 * v17)))
          {
            operations_research::sat::PresolveContext::FixedValue(__p, v18, v19);
          }

          v20 = operations_research::Domain::Min((*(a6 + 53) + 24 * v17));
          if (v15 >= 0)
          {
            v21 = v20;
          }

          else
          {
            v21 = -v20;
          }

          v13 += v21 * v16;
        }

        else
        {
          operations_research::sat::PresolveContext::GetAffineRelation(__p, a6, v15);
          v52 |= LODWORD(__p[0]) != v15;
          if (LODWORD(__p[0]) == v15)
          {
            v22 = 0;
          }

          else
          {
            v22 = __p[2] * v16;
          }

          v13 += v22;
          if (v50)
          {
            v23 = v48;
            v24 = a1;
            do
            {
              if (~*v24 <= *v24)
              {
                v25 = *v24;
              }

              else
              {
                v25 = ~*v24;
              }

              if (LODWORD(__p[0]) == v25)
              {
                operator new();
              }

              ++v24;
              v23 -= 4;
            }

            while (v23);
          }

          __p[1] = (__p[1] * v16);
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a5, __p);
        }
      }

      ++v12;
    }

    while (v12 != v11);
    v26 = *a5;
    v10 = a5[1];
  }

  v27 = 126 - 2 * __clz((v10 - v26) >> 4);
  *(a3 + 40) = 0;
  v28 = (a3 + 40);
  *(a3 + 16) = 0;
  if (v10 == v26)
  {
    v29 = 0;
  }

  else
  {
    v29 = v27;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(v26, v10, __p, v29, 1);
  v30 = *a5;
  v31 = a5[1];
  if (v30 != v31)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      while (1)
      {
        while (1)
        {
          if (*v30 < 0)
          {
            operations_research::sat::CanonicalizeLinearExpressionInternal<operations_research::sat::LinearConstraintProto>(__p);
          }

          if (*v30 != v33)
          {
            break;
          }

          v32 += *(v30 + 1);
          v30 += 4;
          if (v30 == v31)
          {
            goto LABEL_51;
          }
        }

        if (v32)
        {
          break;
        }

        v33 = *v30;
        v32 = *(v30 + 1);
        v30 += 4;
        if (v30 == v31)
        {
          goto LABEL_51;
        }
      }

      v34 = HIDWORD(*v51);
      v35 = *v51;
      if (v35 == v34)
      {
        google::protobuf::RepeatedField<int>::Grow(v51, v34, (v34 + 1));
        v35 = *v51;
      }

      v36 = *(a3 + 24);
      *(a3 + 16) = v35 + 1;
      *(v36 + 4 * v35) = v33;
      v38 = *(a3 + 40);
      v37 = *(a3 + 44);
      if (v38 == v37)
      {
        google::protobuf::RepeatedField<long long>::Grow(a3 + 40, v37, (v37 + 1));
        v38 = *v28;
      }

      v39 = *(a3 + 48);
      *(a3 + 40) = v38 + 1;
      *(v39 + 8 * v38) = v32;
      v33 = *v30;
      v32 = *(v30 + 1);
      v30 += 4;
    }

    while (v30 != v31);
LABEL_51:
    if (v32)
    {
      v40 = HIDWORD(*v51);
      v41 = *v51;
      if (v41 == v40)
      {
        google::protobuf::RepeatedField<int>::Grow(v51, v40, (v40 + 1));
        v41 = *v51;
      }

      v42 = *(a3 + 24);
      *(a3 + 16) = v41 + 1;
      *(v42 + 4 * v41) = v33;
      v44 = *(a3 + 40);
      v43 = *(a3 + 44);
      if (v44 == v43)
      {
        google::protobuf::RepeatedField<long long>::Grow(a3 + 40, v43, (v43 + 1));
        v44 = *v28;
      }

      v45 = *(a3 + 48);
      *(a3 + 40) = v44 + 1;
      *(v45 + 8 * v44) = v32;
    }
  }

  if (v52)
  {
    operator new();
  }

  if (*v51 < v11)
  {
    operator new();
  }

  *a4 = v13;
  return (v52 & 1) != 0 || *v51 < v11;
}

void sub_23CCA1094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::PresolveContext::CanonicalizeLinearExpression(int **a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  result = operations_research::sat::CanonicalizeLinearExpressionInternal<operations_research::sat::LinearConstraintProto>(a2, a3, a4, &v6, a1 + 144, a1);
  *(a4 + 64) += v6;
  return result;
}

uint64_t operations_research::sat::PresolveContext::NewMappingConstraint(uint64_t a1, uint64_t a2, uint64_t a3, absl::lts_20240722::numbers_internal *a4)
{
  v23[12] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 8);
  v8 = *(v7 + 56);
  v10 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v7 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  explicit = atomic_load_explicit(&qword_2810BDD10, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      return v10;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_debug_postsolve) & 1) == 0)
  {
    return v10;
  }

  v17 = v19;
  v18 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v8, v19, v9) - v19;
  v23[0] = "#";
  v23[1] = 1;
  v23[2] = v19;
  v23[3] = v18;
  v23[4] = " ";
  v23[5] = 1;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = ":";
  v23[9] = 1;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a4, v22, v12);
  v20 = v22;
  v21 = v13 - v22;
  v23[10] = v22;
  v23[11] = v13 - v22;
  absl::lts_20240722::strings_internal::CatPieces(v23, 6, &__p);
  v14 = *(v10 + 8);
  if (v14)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((v10 + 40), &__p, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_23CCA1288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

operations_research::sat::ConstraintProto *operations_research::sat::PresolveContext::NewMappingConstraint(uint64_t a1, const operations_research::sat::ConstraintProto *a2, uint64_t a3, uint64_t a4, absl::lts_20240722::numbers_internal *a5)
{
  v25[12] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 8);
  v10 = *(v9 + 56);
  v11 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v9 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  operations_research::sat::ConstraintProto::CopyFrom(v11, a2);
  explicit = atomic_load_explicit(&qword_2810BDD10, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      return v11;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_debug_postsolve) & 1) == 0)
  {
    return v11;
  }

  v19 = v21;
  v20 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v10, v21, v12) - v21;
  v25[0] = "#c";
  v25[1] = 2;
  v25[2] = v21;
  v25[3] = v20;
  v25[4] = " ";
  v25[5] = 1;
  v25[6] = a3;
  v25[7] = a4;
  v25[8] = ":";
  v25[9] = 1;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(a5, v24, v14);
  v22 = v24;
  v23 = v15 - v24;
  v25[10] = v24;
  v25[11] = v15 - v24;
  absl::lts_20240722::strings_internal::CatPieces(v25, 6, &__p);
  v16 = v11[1];
  if (v16)
  {
    v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(v11 + 5, &__p, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_23CCA1438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::AffineRelation::IncreaseSizeOfMemberVectors(operations_research::AffineRelation *this, std::vector<int>::value_type a2)
{
  v3 = a2;
  v4 = this + 8;
  v5 = *(this + 2) - *(this + 1);
  if (a2 > (v5 >> 2))
  {
    for (__x[0] = v5 >> 2; __x[0] < a2; ++__x[0])
    {
      std::vector<int>::push_back[abi:ne200100](v4, __x);
    }

    v7 = *(this + 7);
    v8 = *(this + 8);
    *__x = 0;
    v9 = (v8 - v7) >> 3;
    if (v3 <= v9)
    {
      if (v3 < v9)
      {
        *(this + 8) = v7 + 8 * v3;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(this + 56, v3 - v9, __x);
    }

    *__x = 1;
    v10 = *(this + 4);
    v11 = (*(this + 5) - v10) >> 3;
    if (v3 <= v11)
    {
      if (v3 < v11)
      {
        *(this + 5) = v10 + 8 * v3;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(this + 32, v3 - v11, __x);
    }

    __x[0] = 1;
    v12 = *(this + 10);
    v13 = (*(this + 11) - v12) >> 2;
    if (v3 <= v13)
    {
      if (v3 < v13)
      {
        *(this + 11) = v12 + 4 * v3;
      }
    }

    else
    {
      std::vector<int>::__append((this + 80), v3 - v13, __x);
    }
  }
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_hint_unique<std::string,std::pair<std::string const,int>&>@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, const void **a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  if (!a1[2])
  {
    goto LABEL_92;
  }

  v8 = a3;
  v66 = a5;
  v67 = a1;
  v10 = a1[1];
  v65 = v10[10];
  if (v10 == a2 && a3 == v10[10])
  {
    goto LABEL_27;
  }

  v12 = &a2[32 * a3];
  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = a4[1];
  }

  v18 = *(v12 + 2);
  v16 = v12 + 16;
  v17 = v18;
  v19 = v16[23];
  if (v19 >= 0)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  if (v19 >= 0)
  {
    v21 = v16[23];
  }

  else
  {
    v21 = *(v16 + 1);
  }

  if (v21 >= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  v23 = v14;
  v24 = memcmp(v14, v20, v22);
  if (v24)
  {
    v25 = v24;
    a1 = v67;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_27:
    v27 = **a1 == a2 && v8 == 0;
    a5 = v66;
    if (!v27)
    {
      if (a2[11])
      {
        v28 = v8 - 1;
        if (v8 - 1 < 0)
        {
          v35 = a2;
          while (1)
          {
            v30 = *v35;
            if (*(*v35 + 11))
            {
              break;
            }

            v36 = v35[8];
            v35 = *v35;
            if (v36)
            {
              v29 = v66;
              v28 = v36 - 1;
              goto LABEL_50;
            }
          }
        }

        v29 = v66;
        v30 = a2;
      }

      else
      {
        v30 = *&a2[8 * v8 + 240];
        if (v30[11])
        {
          v29 = v66;
        }

        else
        {
          v29 = v66;
          do
          {
            v30 = *&v30[8 * v30[10] + 240];
          }

          while (!v30[11]);
        }

        v28 = v30[10] - 1;
      }

LABEL_50:
      v37 = &v30[32 * v28];
      v40 = *(v37 + 2);
      v38 = v37 + 16;
      v39 = v40;
      v41 = v38[23];
      if (v41 >= 0)
      {
        v42 = v38;
      }

      else
      {
        v42 = v39;
      }

      if (v41 >= 0)
      {
        v43 = v38[23];
      }

      else
      {
        v43 = *(v38 + 1);
      }

      v44 = *(a4 + 23);
      if (v44 >= 0)
      {
        v45 = a4;
      }

      else
      {
        v45 = *a4;
      }

      if (v44 >= 0)
      {
        v46 = *(a4 + 23);
      }

      else
      {
        v46 = a4[1];
      }

      if (v46 >= v43)
      {
        v47 = v43;
      }

      else
      {
        v47 = v46;
      }

      v48 = memcmp(v42, v45, v47);
      if (v48)
      {
        v49 = v48;
        a1 = v67;
        a5 = v29;
        if ((v49 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        a1 = v67;
        a5 = v29;
        if (v43 >= v46)
        {
          goto LABEL_92;
        }
      }
    }

    v50 = a2;
LABEL_70:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::pair<std::string const,int>&>(a1, v50, v8, a5);
    *a6 = result;
    *(a6 + 8) = v51;
    *(a6 + 16) = 1;
    return result;
  }

  a1 = v67;
  if (v15 < v21)
  {
    goto LABEL_27;
  }

LABEL_23:
  result = memcmp(v20, v23, v22);
  if (result)
  {
    if ((result & 0x80000000) == 0)
    {
LABEL_25:
      *a6 = a2;
      *(a6 + 8) = v8;
      *(a6 + 16) = 0;
      return result;
    }
  }

  else if (v21 >= v15)
  {
    goto LABEL_25;
  }

  if (a2[11])
  {
    v31 = (v8 + 1);
    v8 = v8 & 0xFFFFFFFF00000000 | v31;
    a5 = v66;
    a1 = v67;
    if (v31 == a2[10])
    {
      v32 = a2;
      while (1)
      {
        v33 = *v32;
        if (*(*v32 + 11))
        {
          break;
        }

        v34 = v32[8];
        v8 = v8 & 0xFFFFFFFF00000000 | v34;
        v32 = *v32;
        if (v34 != v33[10])
        {
          goto LABEL_76;
        }
      }

      v8 = v8 & 0xFFFFFFFF00000000 | v31;
    }

    v33 = a2;
  }

  else
  {
    v52 = &a2[8 * (v8 + 1) + 240];
    a5 = v66;
    a1 = v67;
    do
    {
      v33 = *v52;
      v53 = *(*v52 + 11);
      v52 = (*v52 + 240);
    }

    while (!v53);
    v8 &= 0xFFFFFFFF00000000;
  }

LABEL_76:
  if (v33 == v10 && v8 == v65)
  {
    goto LABEL_78;
  }

  v54 = a5;
  v55 = &v33[32 * v8];
  v58 = *(v55 + 2);
  v56 = v55 + 16;
  v57 = v58;
  v59 = v56[23];
  if (v59 >= 0)
  {
    v60 = v56;
  }

  else
  {
    v60 = v57;
  }

  if (v59 >= 0)
  {
    v61 = v56[23];
  }

  else
  {
    v61 = *(v56 + 1);
  }

  if (v61 >= v15)
  {
    v62 = v15;
  }

  else
  {
    v62 = v61;
  }

  v63 = memcmp(v23, v60, v62);
  if (v63)
  {
    v64 = v63;
    a1 = v67;
    a5 = v54;
    if (v64 < 0)
    {
      goto LABEL_78;
    }
  }

  else
  {
    a1 = v67;
    a5 = v54;
    if (v15 < v61)
    {
LABEL_78:
      v50 = v33;
      goto LABEL_70;
    }
  }

LABEL_92:

  return absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::pair<std::string const,int>&>(a1, a4, a5, a6);
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::pair<std::string const,int>&>(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  i = a2;
  v23 = a3;
  v6 = *(a2 + 11);
  if (*(a2 + 11))
  {
    if (*(a2 + 10) != v6)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v7 = *(a2 + 8 * a3 + 240);
  for (i = v7; !*(v7 + 11); i = v7)
  {
    v7 = *(v7 + 8 * *(v7 + 10) + 240);
  }

  LODWORD(v23) = *(v7 + 10);
  v6 = *(v7 + 11);
  if (!*(v7 + 11))
  {
    v6 = 7;
  }

  if (*(v7 + 10) == v6)
  {
LABEL_9:
    if (v6 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v8 = i;
  v9 = v23;
  v10 = *(i + 10);
  v11 = v23;
  if (v10 > v23)
  {
    v11 = v23;
    if (((v10 - v23) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 32 * *(i + 10);
      v13 = v12 + i - 16;
      v14 = 32 * v23 - v12;
      do
      {
        *(v13 + 32) = *v13;
        *(v13 + 48) = *(v13 + 16);
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = 0;
        *(v13 + 56) = *(v13 + 24);
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 -= 32;
        v14 += 32;
      }

      while (v14);
    }
  }

  v15 = v8 + 32 * v11;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v15 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v16 = *a4;
    *(v15 + 32) = *(a4 + 2);
    *(v15 + 16) = v16;
  }

  *(v15 + 40) = *(a4 + 6);
  v17 = (*(v8 + 10))++ + 1;
  if (!*(v8 + 11) && v9 + 1 < v17)
  {
    v18 = v8 + 240;
    do
    {
      v19 = *(v18 + 8 * (v17 - 1));
      *(v18 + 8 * v17) = v19;
      *(v19 + 8) = v17;
    }

    while (v9 + 1 < --v17);
  }

  ++a1[2];
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::pair<std::string const,int>&>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a2;
  if (!a1[2])
  {
    operator new();
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v4 = *a2;
    v6 = a2[1];
  }

  v7 = *a1;
  v8 = *(*a1 + 10);
  if (!*(*a1 + 10))
  {
    goto LABEL_24;
  }

LABEL_7:
  v9 = 0;
  do
  {
    v10 = (v8 + v9) >> 1;
    v11 = (v7 + 16 + 32 * v10);
    v12 = *(v11 + 23);
    if ((v12 & 0x8000000000000000) != 0)
    {
      v15 = *v11;
      v12 = *(v7 + 16 + 32 * v10 + 8);
      if (v6 >= v12)
      {
        v16 = *(v7 + 16 + 32 * v10 + 8);
      }

      else
      {
        v16 = v6;
      }

      result = memcmp(v15, v4, v16);
      if (result)
      {
LABEL_15:
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (v6 >= v12)
      {
        v13 = *(v11 + 23);
      }

      else
      {
        v13 = v6;
      }

      result = memcmp(v11, v4, v13);
      if (result)
      {
        goto LABEL_15;
      }
    }

    if (v12 < v6)
    {
LABEL_8:
      v9 = v10 + 1;
      v10 = v8;
      goto LABEL_9;
    }

    if (v12 == v6)
    {
      v17 = 0;
      v18 = a4;
      *a4 = v7;
      a4[1] = ((v8 + v9) >> 1);
      goto LABEL_29;
    }

LABEL_9:
    v8 = v10;
  }

  while (v9 != v10);
  while (!*(v7 + 11))
  {
    v7 = *(v7 + 8 * v10 + 240);
    v8 = *(v7 + 10);
    if (*(v7 + 10))
    {
      goto LABEL_7;
    }

LABEL_24:
    LODWORD(v10) = 0;
  }

  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::internal_emplace<std::pair<std::string const,int>&>(a1, v7, v10, a3);
  v18 = a4;
  *a4 = result;
  *(a4 + 2) = v19;
  v17 = 1;
LABEL_29:
  *(v18 + 16) = v17;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 6);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, unint64_t a4@<X3>, const unint64_t *a5@<X4>)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v12 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v13 = a2[23];
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v13, a4, a5);
  v15 = 0;
  v16 = (((v14 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v13));
  v17 = a1[2];
  v18 = *a1;
  v19 = vdup_n_s8(v16 & 0x7F);
  v20 = v5[23];
  _NF = v20 < 0;
  if (v20 >= 0)
  {
    v22 = v5[23];
  }

  else
  {
    v22 = *(v5 + 1);
  }

  v23 = (v16 >> 7) ^ (v17 >> 12);
  if (_NF)
  {
    v24 = *v5;
  }

  else
  {
    v24 = v5;
  }

  v25 = v23 & v18;
  v26 = *(v17 + (v23 & v18));
  v27 = vceq_s8(v26, v19);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v18;
      v30 = v28 + 32 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, v24, v22);
        if (!result)
        {
          break;
        }
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v28 = v38;
      v15 = v39;
      if (!v27)
      {
        goto LABEL_20;
      }
    }

    v36 = 0;
    v37 = v17 + v29;
  }

  else
  {
LABEL_20:
    while (1)
    {
      v35 = vceq_s8(v26, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v15 += 8;
      v25 = (v15 + v25) & v18;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v19);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v18, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 32 * result;
    v36 = 1;
  }

  *a3 = v37;
  *(a3 + 8) = v30;
  *(a3 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,operations_research::sat::SavedLiteral,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set((a2 + 8), (a3 + 8));
  if (*(a3 + 8) >= 2uLL)
  {
    v4 = (*(a3 + 24) - (*(a3 + 16) & 1) - 8);

    operator delete(v4);
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::find_or_prepare_insert<long long>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::resize_impl(result, 3uLL);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::SavedLiteral>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::SavedLiteral>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  if (v5)
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::raw_hash_set(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_23CE31C20;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::transfer_slot_fn(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = (a3 + 2);
  *a2 = *a3;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::raw_hash_set((a2 + 2), (a3 + 2));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::destructor_impl(v3);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set((a2 + 8), (a3 + 8));
  if (*(a3 + 8) >= 2uLL)
  {
    v4 = (*(a3 + 24) - (*(a3 + 16) & 1) - 8);

    operator delete(v4);
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *,false>(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v87 = *(v8 + 16);
        v88 = *v8;
        v89 = *(a2 - 4);
        if (v87 < *v8)
        {
          if (v89 >= v87)
          {
            *v8 = v87;
            *(v8 + 16) = v88;
            v157 = *(v8 + 8);
            *(v8 + 8) = *(v8 + 24);
            *(v8 + 24) = v157;
            v158 = *(a2 - 4);
            if (v158 < v88)
            {
              *(v8 + 16) = v158;
              *(a2 - 4) = v88;
              *(v8 + 24) = *(a2 - 1);
              *(a2 - 1) = v157;
            }

            return result;
          }

          *v8 = v89;
          *(a2 - 4) = v88;
LABEL_111:
          v90 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 1);
          *(a2 - 1) = v90;
          return result;
        }

        if (v89 >= v87)
        {
          return result;
        }

        *(v8 + 16) = v89;
        *(a2 - 4) = v87;
        v141 = *(v8 + 24);
        *(v8 + 24) = *(a2 - 1);
        *(a2 - 1) = v141;
        v142 = *(v8 + 16);
        v143 = *v8;
        if (v142 >= *v8)
        {
          return result;
        }

        *v8 = v142;
        *(v8 + 16) = v143;
        v144 = *(v8 + 8);
        v145 = *(v8 + 24);
LABEL_199:
        *(v8 + 8) = v145;
        *(v8 + 24) = v144;
        return result;
      }

      if (v9 != 4)
      {
        if (v9 == 5)
        {

          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), a2 - 4);
        }

        goto LABEL_10;
      }

      v91 = *(v8 + 16);
      v92 = *v8;
      v93 = *(v8 + 32);
      if (v91 < *v8)
      {
        if (v93 >= v91)
        {
          *v8 = v91;
          *(v8 + 16) = v92;
          v159 = *(v8 + 8);
          *(v8 + 8) = *(v8 + 24);
          *(v8 + 24) = v159;
          if (v93 >= v92)
          {
            v91 = v93;
            v95 = *(a2 - 4);
            if (v95 >= v93)
            {
              return result;
            }
          }

          else
          {
            *(v8 + 16) = v93;
            *(v8 + 32) = v92;
            *(v8 + 24) = *(v8 + 40);
            *(v8 + 40) = v159;
            v91 = v92;
            v95 = *(a2 - 4);
            if (v95 >= v91)
            {
              return result;
            }
          }
        }

        else
        {
          *v8 = v93;
          *(v8 + 32) = v92;
          v94 = *(v8 + 8);
          *(v8 + 8) = *(v8 + 40);
          *(v8 + 40) = v94;
          v91 = v92;
          v95 = *(a2 - 4);
          if (v95 >= v91)
          {
            return result;
          }
        }

        goto LABEL_196;
      }

      if (v93 >= v91)
      {
        v91 = *(v8 + 32);
      }

      else
      {
        *(v8 + 16) = v93;
        *(v8 + 32) = v91;
        v146 = *(v8 + 24);
        v147 = *(v8 + 40);
        *(v8 + 24) = v147;
        *(v8 + 40) = v146;
        if (v93 < v92)
        {
          *v8 = v93;
          *(v8 + 16) = v92;
          v148 = *(v8 + 8);
          *(v8 + 8) = v147;
          *(v8 + 24) = v148;
          v95 = *(a2 - 4);
          if (v95 >= v91)
          {
            return result;
          }

LABEL_196:
          *(v8 + 32) = v95;
          *(a2 - 4) = v91;
          v160 = *(v8 + 40);
          *(v8 + 40) = *(a2 - 1);
          *(a2 - 1) = v160;
          v161 = *(v8 + 32);
          v162 = *(v8 + 16);
          if (v161 >= v162)
          {
            return result;
          }

          *(v8 + 16) = v161;
          *(v8 + 32) = v162;
          v163 = *(v8 + 24);
          v145 = *(v8 + 40);
          *(v8 + 24) = v145;
          *(v8 + 40) = v163;
          v164 = *v8;
          if (v161 >= *v8)
          {
            return result;
          }

          *v8 = v161;
          *(v8 + 16) = v164;
          v144 = *(v8 + 8);
          goto LABEL_199;
        }
      }

      v95 = *(a2 - 4);
      if (v95 >= v91)
      {
        return result;
      }

      goto LABEL_196;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v85 = *(a2 - 4);
      v86 = *v8;
      if (v85 >= *v8)
      {
        return result;
      }

      *v8 = v85;
      *(a2 - 4) = v86;
      goto LABEL_111;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v96 = (v8 + 16);
      v98 = v8 == a2 || v96 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v98)
        {
          v149 = (v8 + 24);
          do
          {
            v150 = v96;
            v151 = *(v7 + 16);
            v152 = *v7;
            if (v151 < *v7)
            {
              v153 = *(v7 + 24);
              v154 = v149;
              do
              {
                v155 = v154;
                *(v154 - 2) = v152;
                v156 = *(v154 - 2);
                v154 -= 2;
                *v155 = v156;
                v152 = *(v155 - 10);
              }

              while (v151 < v152);
              *(v154 - 2) = v151;
              *v154 = v153;
            }

            v96 = v150 + 4;
            v149 += 2;
            v7 = v150;
          }

          while (v150 + 4 != a2);
        }

        return result;
      }

      if (v98)
      {
        return result;
      }

      v99 = 0;
      v100 = v8;
      while (1)
      {
        v102 = v96;
        v103 = *(v100 + 16);
        v104 = *v100;
        if (v103 < *v100)
        {
          v105 = *(v100 + 24);
          v106 = v99;
          do
          {
            v107 = v8 + v106;
            *(v107 + 16) = v104;
            *(v107 + 24) = *(v8 + v106 + 8);
            if (!v106)
            {
              v101 = v8;
              goto LABEL_126;
            }

            v104 = *(v107 - 16);
            v106 -= 16;
          }

          while (v103 < v104);
          v101 = v8 + v106 + 16;
LABEL_126:
          *v101 = v103;
          *(v101 + 8) = v105;
        }

        v96 = v102 + 4;
        v99 += 16;
        v100 = v102;
        if (v102 + 4 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = v10;
    v12 = *(a2 - 4);
    if (v9 < 0x81)
    {
      v16 = *v8;
      v17 = *v11;
      if (*v8 >= *v11)
      {
        if (v12 >= v16)
        {
          goto LABEL_37;
        }

        *v8 = v12;
        *(a2 - 4) = v16;
        v23 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 1);
        *(a2 - 1) = v23;
        v24 = *v11;
        if (*v8 >= *v11)
        {
          goto LABEL_37;
        }

        *v11 = *v8;
        *v8 = v24;
        v25 = *(v11 + 8);
        *(v11 + 8) = *(v8 + 8);
        *(v8 + 8) = v25;
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v12 >= v16)
        {
          *v11 = v16;
          *v8 = v17;
          v36 = *(v11 + 8);
          *(v11 + 8) = *(v8 + 8);
          *(v8 + 8) = v36;
          v37 = *(a2 - 4);
          if (v37 < v17)
          {
            *v8 = v37;
            *(a2 - 4) = v17;
            *(v8 + 8) = *(a2 - 1);
            *(a2 - 1) = v36;
          }

LABEL_37:
          --a3;
          v19 = *v8;
          if (a4)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        *v11 = v12;
        *(a2 - 4) = v17;
        v18 = *(v11 + 8);
        *(v11 + 8) = *(a2 - 1);
        *(a2 - 1) = v18;
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_61;
        }
      }

LABEL_60:
      if (*(v8 - 16) < v19)
      {
        goto LABEL_61;
      }

      if (v19 >= *(a2 - 4))
      {
        v76 = v8 + 16;
        do
        {
          v8 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v76 += 16;
        }

        while (v19 >= *v8);
      }

      else
      {
        do
        {
          v75 = *(v8 + 16);
          v8 += 16;
        }

        while (v19 >= v75);
      }

      v77 = a2;
      if (v8 < a2)
      {
        v77 = a2;
        do
        {
          v78 = *(v77 - 4);
          v77 -= 4;
        }

        while (v19 < v78);
      }

      v79 = *(v7 + 8);
      if (v8 < v77)
      {
        v80 = *v8;
        v81 = *v77;
        do
        {
          *v8 = v81;
          *v77 = v80;
          v82 = *(v8 + 8);
          *(v8 + 8) = *(v77 + 1);
          *(v77 + 1) = v82;
          do
          {
            v83 = *(v8 + 16);
            v8 += 16;
            v80 = v83;
          }

          while (v19 >= v83);
          do
          {
            v84 = *(v77 - 4);
            v77 -= 4;
            v81 = v84;
          }

          while (v19 < v84);
        }

        while (v8 < v77);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v19;
      *(v8 - 8) = v79;
    }

    else
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 4) = v13;
          v20 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v20;
          v21 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v21;
            v22 = *(v8 + 8);
            *(v8 + 8) = *(v10 + 8);
            *(v10 + 8) = v22;
          }
        }
      }

      else if (v12 >= v13)
      {
        *v8 = v13;
        *v10 = v14;
        v26 = *(v8 + 8);
        *(v8 + 8) = *(v10 + 8);
        *(v10 + 8) = v26;
        v27 = *(a2 - 4);
        if (v27 < v14)
        {
          *v10 = v27;
          *(a2 - 4) = v14;
          *(v10 + 8) = *(a2 - 1);
          *(a2 - 1) = v26;
        }
      }

      else
      {
        *v8 = v12;
        *(a2 - 4) = v14;
        v15 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 1);
        *(a2 - 1) = v15;
      }

      v28 = v10 - 16;
      v29 = *(v10 - 16);
      v30 = *(v8 + 16);
      v31 = *(a2 - 8);
      if (v29 >= v30)
      {
        if (v31 < v29)
        {
          *v28 = v31;
          *(a2 - 8) = v29;
          v33 = *(v10 - 8);
          *(v10 - 8) = *(a2 - 3);
          *(a2 - 3) = v33;
          v34 = *(v8 + 16);
          if (*v28 < v34)
          {
            *(v8 + 16) = *v28;
            *v28 = v34;
            v35 = *(v8 + 24);
            *(v8 + 24) = *(v10 - 8);
            *(v10 - 8) = v35;
          }
        }
      }

      else if (v31 >= v29)
      {
        *(v8 + 16) = v29;
        *v28 = v30;
        v38 = *(v8 + 24);
        *(v8 + 24) = *(v10 - 8);
        *(v10 - 8) = v38;
        v39 = *(a2 - 8);
        if (v39 < v30)
        {
          *v28 = v39;
          *(a2 - 8) = v30;
          *(v10 - 8) = *(a2 - 3);
          *(a2 - 3) = v38;
        }
      }

      else
      {
        *(v8 + 16) = v31;
        *(a2 - 8) = v30;
        v32 = *(v8 + 24);
        *(v8 + 24) = *(a2 - 3);
        *(a2 - 3) = v32;
      }

      v42 = *(v10 + 16);
      v40 = v10 + 16;
      v41 = v42;
      v43 = *(v8 + 32);
      v44 = *(a2 - 12);
      if (v42 >= v43)
      {
        if (v44 < v41)
        {
          *v40 = v44;
          *(a2 - 12) = v41;
          v46 = *(v40 + 8);
          *(v40 + 8) = *(a2 - 5);
          *(a2 - 5) = v46;
          v47 = *(v8 + 32);
          if (*v40 < v47)
          {
            *(v8 + 32) = *v40;
            *v40 = v47;
            v48 = *(v8 + 40);
            *(v8 + 40) = *(v40 + 8);
            *(v40 + 8) = v48;
          }
        }
      }

      else if (v44 >= v41)
      {
        *(v8 + 32) = v41;
        *v40 = v43;
        v49 = *(v8 + 40);
        *(v8 + 40) = *(v40 + 8);
        *(v40 + 8) = v49;
        v50 = *(a2 - 12);
        if (v50 < v43)
        {
          *v40 = v50;
          *(a2 - 12) = v43;
          *(v40 + 8) = *(a2 - 5);
          *(a2 - 5) = v49;
        }
      }

      else
      {
        *(v8 + 32) = v44;
        *(a2 - 12) = v43;
        v45 = *(v8 + 40);
        *(v8 + 40) = *(a2 - 5);
        *(a2 - 5) = v45;
      }

      v51 = *v11;
      v52 = *v28;
      v53 = *v40;
      if (*v11 >= *v28)
      {
        if (v53 >= v51)
        {
          goto LABEL_55;
        }

        *v11 = v53;
        *v40 = v51;
        v55 = *(v11 + 8);
        v56 = *(v40 + 8);
        *(v11 + 8) = v56;
        *(v40 + 8) = v55;
        if (v53 < v52)
        {
          *v28 = v53;
          *v11 = v52;
          v57 = *(v28 + 8);
          *(v28 + 8) = v56;
          *(v11 + 8) = v57;
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      if (v53 < v51)
      {
        *v28 = v53;
        *v40 = v52;
        v54 = *(v28 + 8);
        *(v28 + 8) = *(v40 + 8);
        *(v40 + 8) = v54;
LABEL_55:
        v52 = v51;
        goto LABEL_59;
      }

      *v28 = v51;
      *v11 = v52;
      v58 = *(v28 + 8);
      *(v28 + 8) = *(v11 + 8);
      *(v11 + 8) = v58;
      if (v53 < v52)
      {
        *v11 = v53;
        *v40 = v52;
        *(v11 + 8) = *(v40 + 8);
        *(v40 + 8) = v58;
LABEL_58:
        v52 = v53;
      }

LABEL_59:
      v59 = *v8;
      *v8 = v52;
      *v11 = v59;
      v60 = *(v8 + 8);
      *(v8 + 8) = *(v11 + 8);
      *(v11 + 8) = v60;
      --a3;
      v19 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v61 = 0;
      v62 = *(v8 + 8);
      do
      {
        v63 = *(v8 + v61 + 16);
        v61 += 16;
      }

      while (v63 < v19);
      v64 = v8 + v61;
      v65 = a2;
      if (v61 == 16)
      {
        v65 = a2;
        do
        {
          if (v64 >= v65)
          {
            break;
          }

          v67 = *(v65 - 4);
          v65 -= 4;
        }

        while (v67 >= v19);
      }

      else
      {
        do
        {
          v66 = *(v65 - 4);
          v65 -= 4;
        }

        while (v66 >= v19);
      }

      if (v64 >= v65)
      {
        v8 += v61;
        v73 = (v64 - 16);
        if (v64 - 16 != v7)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v68 = *v65;
        v8 += v61;
        v69 = v65;
        do
        {
          *v8 = v68;
          *v69 = v63;
          v70 = *(v8 + 8);
          *(v8 + 8) = *(v69 + 1);
          *(v69 + 1) = v70;
          do
          {
            v71 = *(v8 + 16);
            v8 += 16;
            v63 = v71;
          }

          while (v71 < v19);
          do
          {
            v72 = *(v69 - 4);
            v69 -= 4;
            v68 = v72;
          }

          while (v72 >= v19);
        }

        while (v8 < v69);
        v73 = (v8 - 16);
        if (v8 - 16 != v7)
        {
LABEL_76:
          *v7 = *(v8 - 16);
          *(v7 + 8) = *(v8 - 8);
        }
      }

      *(v8 - 16) = v19;
      *(v8 - 8) = v62;
      if (v64 < v65)
      {
        goto LABEL_80;
      }

      v74 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *>(v7, v73);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *>(v8, a2);
      if (result)
      {
        a2 = v73;
        if (v74)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v74)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *,false>(v7, v73, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v8 == a2)
  {
    return result;
  }

  v108 = (v9 - 2) >> 1;
  v109 = v108;
  while (2)
  {
    v110 = 16 * v109;
    if (v108 >= (16 * v109) >> 4)
    {
      v111 = (v110 >> 3) | 1;
      v112 = v8 + 16 * v111;
      if ((v110 >> 3) + 2 >= v9)
      {
        v113 = *v112;
        v115 = v8 + v110;
        v116 = *v115;
        if (*v112 >= *v115)
        {
LABEL_146:
          v117 = *(v115 + 8);
          while (1)
          {
            v119 = v115;
            v115 = v112;
            *v119 = v113;
            *(v119 + 8) = *(v112 + 8);
            if (v108 < v111)
            {
              break;
            }

            v120 = (2 * v111) | 1;
            v112 = v8 + 16 * v120;
            v111 = 2 * v111 + 2;
            if (v111 < v9)
            {
              v113 = *v112;
              result = v112 + 16;
              v118 = *(v112 + 16);
              if (*v112 <= v118)
              {
                v113 = *(v112 + 16);
              }

              if (*v112 >= v118)
              {
                v111 = v120;
              }

              else
              {
                v112 += 16;
              }

              if (v113 < v116)
              {
                break;
              }
            }

            else
            {
              v113 = *v112;
              v111 = v120;
              if (*v112 < v116)
              {
                break;
              }
            }
          }

          *v115 = v116;
          *(v115 + 8) = v117;
        }
      }

      else
      {
        v113 = *v112;
        v114 = *(v112 + 16);
        if (*v112 <= v114)
        {
          v113 = *(v112 + 16);
        }

        if (*v112 < v114)
        {
          v112 += 16;
          v111 = (v110 >> 3) + 2;
        }

        v115 = v8 + v110;
        v116 = *v115;
        if (v113 >= *v115)
        {
          goto LABEL_146;
        }
      }
    }

    v129 = v109-- <= 0;
    if (!v129)
    {
      continue;
    }

    break;
  }

  do
  {
    v121 = 0;
    v122 = *v8;
    v123 = *(v8 + 8);
    v124 = (v9 - 2) >> 1;
    v125 = v8;
    do
    {
      while (1)
      {
        v131 = v125 + 16 * v121;
        v130 = v131 + 16;
        v132 = (2 * v121) | 1;
        v121 = 2 * v121 + 2;
        if (v121 < v9)
        {
          break;
        }

        v121 = v132;
        *v125 = *v130;
        *(v125 + 8) = *(v131 + 24);
        v125 = v131 + 16;
        if (v132 > v124)
        {
          goto LABEL_168;
        }
      }

      v128 = *(v131 + 32);
      v127 = v131 + 32;
      v126 = v128;
      result = *(v127 - 16);
      v129 = result < v128;
      if (result > v128)
      {
        v126 = *(v127 - 16);
      }

      if (v129)
      {
        v130 = v127;
      }

      else
      {
        v121 = v132;
      }

      *v125 = v126;
      *(v125 + 8) = *(v130 + 8);
      v125 = v130;
    }

    while (v121 <= v124);
LABEL_168:
    if (v130 == a2 - 4)
    {
      *v130 = v122;
      *(v130 + 8) = v123;
    }

    else
    {
      *v130 = *(a2 - 4);
      *(v130 + 8) = *(a2 - 1);
      *(a2 - 4) = v122;
      *(a2 - 1) = v123;
      v133 = (v130 - v8 + 16) >> 4;
      v129 = v133 < 2;
      v134 = v133 - 2;
      if (!v129)
      {
        v135 = v134 >> 1;
        v136 = v8 + 16 * v135;
        v137 = *v136;
        v138 = *v130;
        if (*v136 < *v130)
        {
          v139 = *(v130 + 8);
          do
          {
            v140 = v130;
            v130 = v136;
            *v140 = v137;
            *(v140 + 8) = *(v136 + 8);
            if (!v135)
            {
              break;
            }

            v135 = (v135 - 1) >> 1;
            v136 = v8 + 16 * v135;
            v137 = *v136;
          }

          while (*v136 < v138);
          *v130 = v138;
          *(v130 + 8) = v139;
        }
      }
    }

    a2 -= 4;
    v129 = v9-- <= 2;
  }

  while (!v129);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::PresolveContext::WriteObjectiveToProto(void)::$_0 &,std::pair<int,long long> *>(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 4);
      v5 = *a1;
      if (v4 >= *a1)
      {
        return 1;
      }

      *a1 = v4;
      *(a2 - 4) = v5;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,google::protobuf::internal::MapSorterLessThan<int> &,std::pair<int,void const*> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
        return 1;
      }

LABEL_15:
      v10 = (a1 + 32);
      v11 = *(a1 + 32);
      v12 = *(a1 + 16);
      v13 = *a1;
      if (v12 >= *a1)
      {
        if (v11 < v12)
        {
          *(a1 + 16) = v11;
          *(a1 + 32) = v12;
          v24 = *(a1 + 24);
          v25 = *(a1 + 40);
          *(a1 + 24) = v25;
          *(a1 + 40) = v24;
          if (v11 < v13)
          {
            *a1 = v11;
            *(a1 + 16) = v13;
            v26 = *(a1 + 8);
            *(a1 + 8) = v25;
            *(a1 + 24) = v26;
          }
        }
      }

      else if (v11 >= v12)
      {
        *a1 = v12;
        *(a1 + 16) = v13;
        v32 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v32;
        if (v11 < v13)
        {
          *(a1 + 16) = v11;
          *(a1 + 32) = v13;
          *(a1 + 24) = *(a1 + 40);
          *(a1 + 40) = v32;
        }
      }

      else
      {
        *a1 = v11;
        *(a1 + 32) = v13;
        v14 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 40) = v14;
      }

      v33 = a1 + 48;
      if ((a1 + 48) == a2)
      {
        return 1;
      }

      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *v33;
        v37 = *v10;
        if (*v33 < *v10)
        {
          break;
        }

LABEL_39:
        v10 = v33;
        v34 += 16;
        v33 += 16;
        if (v33 == a2)
        {
          return 1;
        }
      }

      v38 = *(v33 + 8);
      v39 = v34;
      do
      {
        v40 = a1 + v39;
        *(v40 + 48) = v37;
        *(v40 + 56) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          *a1 = v36;
          *(a1 + 8) = v38;
          if (++v35 != 8)
          {
            goto LABEL_39;
          }

          return v33 + 16 == a2;
        }

        v37 = *(v40 + 16);
        v39 -= 16;
      }

      while (v36 < v37);
      *(a1 + v39 + 48) = v36;
      *(a1 + v39 + 56) = v38;
      if (++v35 != 8)
      {
        goto LABEL_39;
      }

      return v33 + 16 == a2;
    }

    v15 = *(a1 + 16);
    v16 = *a1;
    v17 = *(a1 + 32);
    if (v15 < *a1)
    {
      if (v17 >= v15)
      {
        *a1 = v15;
        *(a1 + 16) = v16;
        v41 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v41;
        if (v17 >= v16)
        {
          v15 = v17;
          v19 = *(a2 - 4);
          if (v19 >= v17)
          {
            return 1;
          }
        }

        else
        {
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
          *(a1 + 24) = *(a1 + 40);
          *(a1 + 40) = v41;
          v15 = v16;
          v19 = *(a2 - 4);
          if (v19 >= v15)
          {
            return 1;
          }
        }
      }

      else
      {
        *a1 = v17;
        *(a1 + 32) = v16;
        v18 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 40) = v18;
        v15 = v16;
        v19 = *(a2 - 4);
        if (v19 >= v15)
        {
          return 1;
        }
      }

      goto LABEL_52;
    }

    if (v17 >= v15)
    {
      v15 = *(a1 + 32);
    }

    else
    {
      *(a1 + 16) = v17;
      *(a1 + 32) = v15;
      v27 = *(a1 + 24);
      v28 = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
      if (v17 < v16)
      {
        *a1 = v17;
        *(a1 + 16) = v16;
        v29 = *(a1 + 8);
        *(a1 + 8) = v28;
        *(a1 + 24) = v29;
        v19 = *(a2 - 4);
        if (v19 >= v15)
        {
          return 1;
        }

        goto LABEL_52;
      }
    }

    v19 = *(a2 - 4);
    if (v19 >= v15)
    {
      return 1;
    }

LABEL_52:
    *(a1 + 32) = v19;
    *(a2 - 4) = v15;
    v42 = *(a1 + 40);
    *(a1 + 40) = *(a2 - 1);
    *(a2 - 1) = v42;
    v43 = *(a1 + 32);
    v44 = *(a1 + 16);
    if (v43 >= v44)
    {
      return 1;
    }

    *(a1 + 16) = v43;
    *(a1 + 32) = v44;
    v45 = *(a1 + 24);
    v46 = *(a1 + 40);
    *(a1 + 24) = v46;
    *(a1 + 40) = v45;
    v47 = *a1;
    if (v43 >= *a1)
    {
      return 1;
    }

    *a1 = v43;
    *(a1 + 16) = v47;
    v48 = *(a1 + 8);
    *(a1 + 8) = v46;
    *(a1 + 24) = v48;
    return 1;
  }

  v6 = *(a1 + 16);
  v7 = *a1;
  v8 = *(a2 - 4);
  if (v6 >= *a1)
  {
    if (v8 >= v6)
    {
      return 1;
    }

    *(a1 + 16) = v8;
    *(a2 - 4) = v6;
    v20 = *(a1 + 24);
    *(a1 + 24) = *(a2 - 1);
    *(a2 - 1) = v20;
    v21 = *(a1 + 16);
    v22 = *a1;
    if (v21 >= *a1)
    {
      return 1;
    }

    *a1 = v21;
    *(a1 + 16) = v22;
    v23 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v23;
    return 1;
  }

  else
  {
    if (v8 < v6)
    {
      *a1 = v8;
      *(a2 - 4) = v7;
LABEL_14:
      v9 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v9;
      return 1;
    }

    *a1 = v6;
    *(a1 + 16) = v7;
    v30 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 24);
    *(a1 + 24) = v30;
    v31 = *(a2 - 4);
    if (v31 >= v7)
    {
      return 1;
    }

    *(a1 + 16) = v31;
    *(a2 - 4) = v7;
    *(a1 + 24) = *(a2 - 1);
    *(a2 - 1) = v30;
    return 1;
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::find_or_prepare_insert_non_soo<std::tuple<int,long long,int,long long,long long,int,int>>@<X0>(unint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  _X9 = result[2];
  __asm { PRFM            #4, [X9] }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = v10 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9)));
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = a2[4];
  v14 = (((v12 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v12 + v13));
  v15 = *(a2 + 3);
  v16 = *(a2 + 4);
  v17 = v16 + ((((v15 + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v14)));
  v18 = ((v17 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v17);
  v19 = a2[10];
  v20 = a2[11];
  v21 = ((((v18 + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v18 + v19))) + v20;
  v22 = ((v21 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v21);
  v23 = *result;
  v24 = vdup_n_s8(v22 & 0x7F);
  v25 = ((v22 >> 7) ^ (_X9 >> 12)) & *result;
  v26 = *(_X9 + v25);
  v27 = vceq_s8(v26, v24);
  if (v27)
  {
LABEL_2:
    while (1)
    {
      v28 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v23;
      v29 = result[3] + 56 * v28;
      _ZF = *v29 == v9 && *(v29 + 8) == v10;
      if (_ZF && *(v29 + 16) == v13 && *(v29 + 24) == v15 && *(v29 + 32) == v16 && *(v29 + 40) == v19 && *(v29 + 44) == v20)
      {
        break;
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v27)
      {
        goto LABEL_13;
      }
    }

    *a3 = _X9 + v28;
    *(a3 + 8) = v29;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_13:
    while (1)
    {
      v31 = vceq_s8(v26, 0x8080808080808080);
      if (v31)
      {
        break;
      }

      v3 += 8;
      v25 = (v3 + v25) & v23;
      v26 = *(_X9 + v25);
      v27 = vceq_s8(v26, v24);
      if (v27)
      {
        goto LABEL_2;
      }
    }

    v32 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v22, (v25 + (__clz(__rbit64(v31)) >> 3)) & v23, v3, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::GetPolicyFunctions(void)::value);
    v34 = v32[3] + 56 * result;
    *a3 = result + v32[2];
    *(a3 + 8) = v34;
    *(a3 + 16) = 1;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,56ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::tuple<int,long long,int,long long,long long,int,int>,int> *)#1}::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)));
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + a2[4];
  v4 = *(a2 + 3) + (((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3));
  v5 = *(a2 + 4) + (((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4));
  v6 = (((v5 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v5)) + a2[10];
  v7 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v6)) + a2[11];
  v8 = ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
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

uint64_t absl::lts_20240722::container_internal::hash_policy_traits<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,void>::hash_slot_fn_non_type_erased<absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)));
  v3 = (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2)) + a2[4];
  v4 = *(a2 + 3) + (((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3));
  v5 = *(a2 + 4) + (((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4));
  v6 = (((v5 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v5)) + a2[10];
  v7 = (((v6 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v6)) + a2[11];
  return ((v7 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v7);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::tuple<int,long long,int,long long,long long,int,int>,int>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,int,long long,long long,int,int>>,std::equal_to<std::tuple<int,long long,int,long long,long long,int,int>>,std::allocator<std::pair<std::tuple<int,long long,int,long long,long long,int,int> const,int>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
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

void OUTLINED_FUNCTION_0_13(uint64_t a1, uint64_t a2, const char *a3)
{

  absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, a3);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 216);
}

void operations_research::sat::PresolveTimer::~PresolveTimer(std::string *this, uint64_t a2, char *a3)
{
  v3 = this;
  v69 = *MEMORY[0x277D85DE8];
  *(this[2].__r_.__value_.__l.__size_ + 112) = *&this[2].__r_.__value_.__r.__words[2] + *(this[2].__r_.__value_.__l.__size_ + 112);
  memset(&v48, 0, sizeof(v48));
  data = this[3].__r_.__value_.__l.__data_;
  for (i = this[3].__r_.__value_.__l.__size_; data != i; data += 32)
  {
    v55 = COERCE_DOUBLE(" #");
    v56 = 2;
    v6 = data[23];
    if ((v6 & 0x80u) == 0)
    {
      v7 = data;
    }

    else
    {
      v7 = *data;
    }

    if ((v6 & 0x80u) != 0)
    {
      v6 = *(data + 1);
    }

    v53 = v7;
    v54 = v6;
    v51 = "=";
    v52 = 1;
    operations_research::sat::FormatCounter(&__p, *(data + 3), a3);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v49 = p_p;
    v50 = size;
    this = absl::lts_20240722::StrAppend(&v48, &v55, &v53, &v51, &v49);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = v3[2].__r_.__value_.__l.__data_;
  if ((*v10 & 1) == 0)
  {
    goto LABEL_51;
  }

  if (v3[1].__r_.__value_.__s.__data_[0] == 1)
  {
    v11 = absl::lts_20240722::GetCurrentTimeNanos(this) - v3[1].__r_.__value_.__l.__size_ + v3[1].__r_.__value_.__r.__words[2];
  }

  else
  {
    v11 = v3[1].__r_.__value_.__r.__words[2];
  }

  v55 = v11 * 0.000000001;
  v56 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  %.2es", 7, &v55, 1uLL, v45);
  v12 = v46;
  if ((v46 & 0x80u) == 0)
  {
    v13 = v45;
  }

  else
  {
    v13 = v45[0];
  }

  if ((v46 & 0x80u) != 0)
  {
    v12 = v45[1];
  }

  v39 = v12;
  v40 = v13;
  v55 = *&v3[2].__r_.__value_.__r.__words[2];
  v56 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("  %.2ed", 7, &v55, 1uLL, v43);
  v14 = v44;
  if ((v44 & 0x80u) == 0)
  {
    v15 = v43;
  }

  else
  {
    v15 = v43[0];
  }

  if ((v44 & 0x80u) != 0)
  {
    v14 = v43[1];
  }

  v37 = v14;
  v38 = v15;
  if (*&v3[2].__r_.__value_.__r.__words[2] < 1.0)
  {
    v16 = "  ";
  }

  else
  {
    v16 = " *";
  }

  v53 = "[";
  v54 = 1;
  v17 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v3;
  }

  else
  {
    v18 = v3->__r_.__value_.__r.__words[0];
  }

  if ((v17 & 0x80u) != 0)
  {
    v17 = v3->__r_.__value_.__l.__size_;
  }

  v51 = v18;
  v52 = v17;
  v49 = "]";
  v50 = 1;
  absl::lts_20240722::StrCat(&v53, &v51, &v49, &v42);
  v19 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  v20 = *&v42.__r_.__value_.__l.__data_;
  v21 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  v22 = *&v48.__r_.__value_.__l.__data_;
  absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(&v41, v3[4].__r_.__value_.__l.__data_, v3[4].__r_.__value_.__l.__size_, " ", 1uLL);
  v23 = &v48;
  if ((v21 & 0x80u) == 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = *(&v22 + 1);
    v23 = v22;
  }

  v25 = &v42;
  if ((v19 & 0x80u) == 0)
  {
    v26 = v19;
  }

  else
  {
    v26 = *(&v20 + 1);
    v25 = v20;
  }

  v55 = *&v40;
  v56 = v39;
  v57 = v38;
  v58 = v37;
  v59 = v16;
  v60 = 2;
  v61 = v25;
  v62 = v26;
  v63 = v23;
  v64 = v24;
  v65 = " ";
  v66 = 1;
  v27 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  v28 = &v41;
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v41.__r_.__value_.__l.__size_;
    v28 = v41.__r_.__value_.__r.__words[0];
  }

  v67 = v28;
  v68 = v27;
  absl::lts_20240722::strings_internal::CatPieces(&v55, 7, &__p);
  operations_research::SolverLogger::LogInfo(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_util.cc", 62, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }
  }

  else if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(v41.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_49:
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_75;
  }

LABEL_74:
  operator delete(v42.__r_.__value_.__l.__data_);
  if (v44 < 0)
  {
LABEL_75:
    operator delete(v43[0]);
    if (v46 < 0)
    {
      goto LABEL_76;
    }

LABEL_51:
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_50:
  if ((v46 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_76:
  operator delete(v45[0]);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_52:
    operator delete(v48.__r_.__value_.__l.__data_);
  }

LABEL_53:
  v29 = v3[4].__r_.__value_.__l.__data_;
  if (v29)
  {
    v30 = v3[4].__r_.__value_.__l.__size_;
    v31 = v3[4].__r_.__value_.__l.__data_;
    if (v30 != v29)
    {
      do
      {
        v32 = *(v30 - 1);
        v30 -= 3;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = v3[4].__r_.__value_.__l.__data_;
    }

    v3[4].__r_.__value_.__l.__size_ = v29;
    operator delete(v31);
  }

  v33 = v3[3].__r_.__value_.__l.__data_;
  if (v33)
  {
    v34 = v3[3].__r_.__value_.__l.__size_;
    v35 = v3[3].__r_.__value_.__l.__data_;
    if (v34 != v33)
    {
      do
      {
        v36 = *(v34 - 9);
        v34 -= 4;
        if (v36 < 0)
        {
          operator delete(*v34);
        }
      }

      while (v34 != v33);
      v35 = v3[3].__r_.__value_.__l.__data_;
    }

    v3[3].__r_.__value_.__l.__size_ = v33;
    operator delete(v35);
  }

  if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3->__r_.__value_.__l.__data_);
  }
}

void sub_23CCA4814(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::DomainDeductions::AddDeduction(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v32 = a3;
  if ((a3 & 0x80000000) != 0)
  {
    operations_research::sat::DomainDeductions::AddDeduction(a3, __x);
  }

  v7 = (2 * a2) ^ (a2 >> 31);
  v9 = *(a1 + 24);
  v8 = a1 + 24;
  if (v7 >= v9)
  {
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize(v8, v7 + 1);
    v11 = *(a1 + 80);
    v10 = *(a1 + 88);
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
    if (v7 + 1 <= v12)
    {
      if (v7 + 1 < v12)
      {
        v13 = v11 + 24 * (v7 + 1);
        if (v10 != v13)
        {
          v14 = *(a1 + 88);
          do
          {
            v16 = *(v14 - 24);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v10 - 16) = v15;
              operator delete(v15);
            }

            v10 = v14;
          }

          while (v14 != v13);
        }

        *(a1 + 88) = v13;
      }
    }

    else
    {
      std::vector<std::vector<int>>::__append(a1 + 80, v7 + 1 - v12);
    }
  }

  v17 = (*(a1 + 8) - *a1) >> 2;
  if (v17 <= v4)
  {
    v18 = (v4 + 1);
    __x[0] = 0;
    if (v18 > v17)
    {
      std::vector<int>::__append(a1, v18 - v17, __x);
    }
  }

  *__x = v7 | (v4 << 32);
  *__p = 0;
  if (*a4 >= 2uLL)
  {
    if (*a4)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(__p, a4);
    }

    else
    {
      *__p = *a4;
      *&__p[8] = *(a4 + 8);
    }
  }

  v33 = (a1 + 104);
  v34 = __x;
  v35 = __p;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::EmplaceDecomposable::operator()<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,std::piecewise_construct_t const&,std::tuple<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>&&>,std::tuple<operations_research::Domain&&>>(&v33, __x, &v34, &v35, &v29);
  if (__p[0])
  {
    operator delete(*&__p[8]);
  }

  if (v31 == 1)
  {
    __x[0] = v7;
    v19 = v7 >> 6;
    v20 = *(a1 + 32);
    v21 = *(v20 + 8 * v19);
    if ((v21 & (1 << v7)) == 0)
    {
      *(v20 + 8 * v19) = v21 | (1 << v7);
      std::vector<int>::push_back[abi:ne200100](a1 + 56, __x);
    }

    std::vector<int>::push_back[abi:ne200100](*(a1 + 80) + 24 * v7, &v32);
  }

  else
  {
    v22 = v30;
    if ((operations_research::Domain::IsIncludedIn((v30 + 8), a4) & 1) == 0)
    {
      operations_research::Domain::IntersectionWith(__x, a4, (v22 + 8));
      v23 = v30;
      if ((v30 + 8) == __x)
      {
        operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(__x);
      }

      else
      {
        if (*(v30 + 8))
        {
          operator delete(*(v30 + 16));
        }

        *(v23 + 8) = *__x;
        *(v23 + 16) = *__p;
      }

      __x[0] = v7;
      v24 = v7 >> 6;
      v25 = *(a1 + 32);
      v26 = *(v25 + 8 * v24);
      if ((v26 & (1 << v7)) == 0)
      {
        *(v25 + 8 * v24) = v26 | (1 << v7);
        std::vector<int>::push_back[abi:ne200100](a1 + 56, __x);
      }
    }
  }
}

void sub_23CCA4ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p)
{
  if (a11)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::DomainDeductions::ImpliedDomain(uint64_t *this@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x80000000) != 0)
  {
    operations_research::sat::DomainDeductions::ImpliedDomain(a3, &v24);
  }

  v5 = 0;
  v6 = (2 * a2) ^ (a2 >> 31);
  v7 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6))) + a3;
  v8 = 0x9DDFEA08EB382D69 * v7;
  v9 = (v7 * 0x9DDFEA08EB382D69) >> 64;
  _X10 = this[15];
  __asm { PRFM            #4, [X10] }

  v15 = v9 ^ v8;
  v16 = vdup_n_s8(v15 & 0x7F);
  v17 = this[13];
  v18 = ((v15 >> 7) ^ (_X10 >> 12)) & v17;
  v19 = *(_X10 + v18);
  v20 = vceq_s8(v19, v16);
  if (v20)
  {
LABEL_3:
    while (1)
    {
      v21 = this[16] + 32 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v17);
      if (*v21 == v6 && *(v21 + 4) == a3)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
        goto LABEL_8;
      }
    }

    *a4 = 0;
    v23 = *(v21 + 8);
    if (v23 >= 2)
    {
      if (v23)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(a4, (v21 + 8));
      }

      else
      {
        *a4 = v23;
        *(a4 + 8) = *(v21 + 16);
      }
    }
  }

  else
  {
LABEL_8:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v5 += 8;
      v18 = (v5 + v18) & v17;
      v19 = *(_X10 + v18);
      v20 = vceq_s8(v19, v16);
      if (v20)
      {
        goto LABEL_3;
      }
    }

    operations_research::Domain::AllValues(a4);
  }
}

void sub_23CCA4C64(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::DomainDeductions::ProcessClause(void *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = 4 * a3;
    v5 = 1;
    v6 = a2;
    v32 = &a2[a3];
    do
    {
      v7 = (2 * *v6) ^ (*v6 >> 31);
      if (v7 >= *(a1 + 6))
      {
        return;
      }

      v5 &= ((*(a1[4] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0;
      ++v6;
      v4 -= 4;
    }

    while (v4);
    if ((v5 & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v34 = a3;
      v35 = a1;
      while (1)
      {
        v33 = a2;
        v12 = a1[10] + 24 * ((2 * *a2) ^ (*a2 >> 31));
        v14 = *v12;
        v13 = *(v12 + 8);
        v36 = v13;
        if (*v12 != v13)
        {
          break;
        }

LABEL_8:
        a2 = v33 + 1;
        if (v33 + 1 == v32)
        {
          if (v10 != v11)
          {
            v29 = *a1;
            v30 = v10;
            do
            {
              v31 = *v30++;
              *(v29 + 4 * v31) = 0;
            }

            while (v30 != v11);
          }

          if (v8)
          {
            if ((v8 >> 2) < 0xAAAAAAAAAAAAAABLL)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          return;
        }
      }

      while (1)
      {
        v15 = *v14;
        if (!*(*a1 + 4 * *v14))
        {
          break;
        }

        v16 = *(*a1 + 4 * v15) + 1;
        *(*a1 + 4 * v15) = v16;
        if (a3 == v16)
        {
          goto LABEL_15;
        }

LABEL_12:
        if (++v14 == v13)
        {
          goto LABEL_8;
        }
      }

      v21 = v11 - v10;
      v22 = (v11 - v10) >> 2;
      v23 = v22 + 1;
      if ((v22 + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v24 = v9;
      if (-v10 >> 1 > v23)
      {
        v23 = -v10 >> 1;
      }

      if (-v10 >= 0x7FFFFFFFFFFFFFFCLL)
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

      v27 = (4 * v22);
      *v27 = v15;
      v11 = v27 + 1;
      memcpy(0, v10, v21);
      v10 = 0;
      a3 = v34;
      a1 = v35;
      v9 = v24;
      v13 = v36;
      v28 = *(*v35 + 4 * v15) + 1;
      *(*v35 + 4 * v15) = v28;
      if (v34 != v28)
      {
        goto LABEL_12;
      }

LABEL_15:
      if (v8 < v9)
      {
        *v8 = v15;
        v8 += 4;
      }

      else
      {
        v17 = v10;
        v18 = v8;
        v19 = v8 >> 2;
        v20 = v19 + 1;
        if ((v19 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v9 >> 1 > v20)
        {
          v20 = v9 >> 1;
        }

        if (v20)
        {
          if (!(v20 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v26 = (4 * v19);
        v9 = 0;
        *v26 = v15;
        v8 = (v26 + 1);
        memcpy(0, 0, v18);
        v10 = v17;
        a3 = v34;
        a1 = v35;
        v13 = v36;
      }

      goto LABEL_12;
    }
  }
}

void sub_23CCA5344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, void *a25)
{
  if (a20)
  {
    operator delete(__p);
  }

  std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](&a25);
  if (v26)
  {
    operator delete(v26);
    if (!v25)
    {
LABEL_5:
      std::vector<std::pair<int,operations_research::Domain>>::~vector[abi:ne200100](a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_5;
  }

  operator delete(v25);
  std::vector<std::pair<int,operations_research::Domain>>::~vector[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::AddLinearConstraintMultiple(operations_research::sat *this, uint64_t a2, const operations_research::sat::ConstraintProto *a3, operations_research::sat::ConstraintProto *a4)
{
  if (!this)
  {
    return 1;
  }

  v5 = this;
  __p = 0;
  v83 = 0;
  v84 = 0;
  if (*(a3 + 15) == 12)
  {
    v6 = *(a3 + 6);
    v7 = v6[4];
    v74 = v6 + 4;
    if (v6[4] < 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(a3);
    *(a3 + 15) = 12;
    v9 = *(a3 + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v9);
    *(a3 + 6) = v6;
    v7 = v6[4];
    v74 = v6 + 4;
    if (v7 < 1)
    {
LABEL_25:
      v22 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(a2 + 60) == 12)
      {
        v23 = *(a2 + 48);
      }

      else
      {
        v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      }

      v24 = *(v23 + 4);
      if (v24 > 0)
      {
        v25 = 0;
        while (1)
        {
          v27 = *(a2 + 60);
          v28 = v27 == 12 ? *(a2 + 48) : v22;
          v29 = *(v28[3] + v25);
          if (v29 < 0)
          {
            goto LABEL_55;
          }

          if (v27 == 12)
          {
            v30 = *(a2 + 48);
          }

          else
          {
            v30 = v22;
          }

          v31 = v30[6][v25];
          if ((v31 * v5) >> 64 == (v31 * v5) >> 63)
          {
            v32 = v31 * v5;
          }

          else
          {
            v32 = ((v31 ^ v5) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          v33 = v83;
          if (v83 < v84)
          {
            *v83 = v29;
            *(v33 + 1) = v32;
            v26 = v33 + 16;
            v83 = v33 + 16;
            if ((*(v33 + 1) + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v34 = v5;
            v35 = v22;
            v36 = __p;
            v37 = v83 - __p;
            v38 = (v83 - __p) >> 4;
            v39 = v38 + 1;
            if ((v38 + 1) >> 60)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v40 = v84 - __p;
            if ((v84 - __p) >> 3 > v39)
            {
              v39 = v40 >> 3;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFF0)
            {
              v41 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v39;
            }

            if (v41)
            {
              if (!(v41 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v42 = (v83 - __p) >> 4;
            v43 = 16 * v38;
            *v43 = v29;
            *(v43 + 8) = v32;
            v26 = (16 * v38 + 16);
            v44 = (16 * v38 - 16 * v42);
            memcpy(v44, v36, v37);
            __p = v44;
            v84 = 0;
            if (v36)
            {
              operator delete(v36);
            }

            v22 = v35;
            v5 = v34;
            v83 = v26;
            if ((*(v26 - 1) + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_55;
            }
          }

          if (v24 == ++v25)
          {
            goto LABEL_59;
          }
        }
      }

      v26 = v83;
LABEL_59:
      v47 = 126 - 2 * __clz((v26 - __p) >> 4);
      if (v26 == __p)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(__p, v26, &v79, v48, 1);
      v50 = __p;
      v51 = v83;
      if (__p == v83)
      {
        v52 = 0;
        v62 = (v83 - __p) >> 4 == 0;
      }

      else
      {
        LODWORD(v52) = 0;
        v53 = 0;
        v54 = 0;
        v55 = __p;
        do
        {
          while (*v55 != v53)
          {
            if (v54)
            {
              v59 = &v50[16 * v52];
              LODWORD(v52) = v52 + 1;
              *v59 = v53;
              *(v59 + 1) = v54;
              v53 = *v55;
              v54 = *(v55 + 1);
              v55 += 16;
              if (v55 == v51)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v53 = *v55;
              v54 = *(v55 + 1);
              v55 += 16;
              if (v55 == v51)
              {
                goto LABEL_73;
              }
            }
          }

          v56 = *(v55 + 1);
          v57 = (v54 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          v58 = __OFADD__(v54, v56);
          v54 += v56;
          if (v58)
          {
            v54 = v57;
          }

          if (v54 - 0x7FFFFFFFFFFFFFFFLL < 2)
          {
            goto LABEL_55;
          }

          v55 += 16;
        }

        while (v55 != v51);
LABEL_73:
        if (v54)
        {
          v60 = &v50[16 * v52];
          LODWORD(v52) = v52 + 1;
          *v60 = v53;
          *(v60 + 1) = v54;
        }

        v52 = v52;
        v61 = (v51 - v50) >> 4;
        v62 = v52 >= v61;
        if (v52 > v61)
        {
          std::vector<std::pair<int,long long>>::__append(&__p, v52 - v61);
          v50 = __p;
          v51 = v83;
          v6[10] = 0;
          v63 = v6 + 10;
          v6[4] = 0;
          if (v50 == v51)
          {
            goto LABEL_87;
          }

          goto LABEL_82;
        }
      }

      if (!v62)
      {
        v51 = &v50[16 * v52];
        v83 = v51;
      }

      v6[10] = 0;
      v63 = v6 + 10;
      v6[4] = 0;
      if (v50 == v51)
      {
LABEL_87:
        v81 = 0;
        if (*(a2 + 60) == 12)
        {
          v72 = *(a2 + 48);
        }

        else
        {
          v72 = v22;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(v72[9], *(v72 + 16), &v79, v49);
        operations_research::Domain::MultiplicationBy(&v77, &v79, &v81, v5);
        if (v79)
        {
          operator delete(v80[0]);
        }

        v79 = v77;
        *v80 = *v78;
        if (!v81)
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v77, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/presolve_util.cc", 225);
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v77);
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(v6 + 9), v6[16], &v77, *v78);
        operations_research::Domain::AdditionWith(v76, &v77, &v79, v73);
        operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(v76, v6);
        if (v76[0])
        {
          operator delete(v76[1]);
          if ((v77 & 1) == 0)
          {
LABEL_95:
            if ((v79 & 1) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_96;
          }
        }

        else if ((v77 & 1) == 0)
        {
          goto LABEL_95;
        }

        operator delete(v78[0]);
        if ((v79 & 1) == 0)
        {
LABEL_97:
          v8 = 1;
          v45 = __p;
          if (!__p)
          {
            return v8;
          }

          goto LABEL_56;
        }

LABEL_96:
        operator delete(v80[0]);
        goto LABEL_97;
      }

      do
      {
LABEL_82:
        v64 = *v50;
        v65 = *(v50 + 1);
        v67 = v6[4];
        v66 = v6[5];
        if (v67 == v66)
        {
          google::protobuf::RepeatedField<int>::Grow(v74, v66, (v66 + 1));
          v67 = *v74;
        }

        v68 = *(v6 + 3);
        v6[4] = v67 + 1;
        *(v68 + 4 * v67) = v64;
        v70 = v6[10];
        v69 = v6[11];
        if (v70 == v69)
        {
          google::protobuf::RepeatedField<long long>::Grow(v63, v69, (v69 + 1));
          v70 = *v63;
        }

        v71 = *(v6 + 6);
        v6[10] = v70 + 1;
        *(v71 + 8 * v70) = v65;
        v50 += 16;
      }

      while (v50 != v51);
      goto LABEL_87;
    }
  }

  v10 = 0;
  while (1)
  {
    v12 = *(*(v6 + 3) + 4 * v10);
    if (v12 < 0)
    {
      break;
    }

    v13 = *(*(v6 + 6) + 8 * v10);
    v14 = v83;
    if (v83 < v84)
    {
      *v83 = v12;
      *(v14 + 1) = v13;
      v11 = (v14 + 16);
    }

    else
    {
      v15 = __p;
      v16 = v83 - __p;
      v17 = (v83 - __p) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v19 = v84 - __p;
      if ((v84 - __p) >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v21 = 16 * v17;
      *v21 = v12;
      *(v21 + 8) = v13;
      v11 = 16 * v17 + 16;
      memcpy(0, v15, v16);
      __p = 0;
      v84 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    v83 = v11;
    if (v7 == ++v10)
    {
      goto LABEL_25;
    }
  }

LABEL_55:
  v8 = 0;
  v45 = __p;
  if (__p)
  {
LABEL_56:
    v83 = v45;
    operator delete(v45);
  }

  return v8;
}

void sub_23CCA5A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SubstituteVariable(operations_research::sat *this, uint64_t a2, uint64_t a3, const operations_research::sat::ConstraintProto *a4, operations_research::sat::ConstraintProto *a5)
{
  if ((this & 0x80000000) != 0)
  {
    operations_research::sat::SubstituteVariable(v15);
  }

  if (*(a4 + 15) == 12)
  {
    v5 = *(a4 + 6);
    v6 = *(v5 + 16);
    if (v6 > 0)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        while (1)
        {
          v9 = *(*(v5 + 24) + 4 * v7);
          if (v9 < 0 || v9 != this)
          {
            break;
          }

          v8 = (v8 + *(*(v5 + 48) + 8 * v7++));
          if (v6 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v9 < 0)
        {
          return 0;
        }

        ++v7;
      }

      while (v6 != v7);
      goto LABEL_18;
    }

    return 0;
  }

  if (off_2810BEE58 <= 0)
  {
    return 0;
  }

  v10 = 0;
  v8 = 0;
  do
  {
    while (1)
    {
      v11 = *(off_2810BEE60 + v10);
      if (v11 < 0 || v11 != this)
      {
        break;
      }

      v8 = (v8 + *(off_2810BEE78 + v10++));
      if (off_2810BEE58 == v10)
      {
        goto LABEL_18;
      }
    }

    if (v11 < 0)
    {
      return 0;
    }

    ++v10;
  }

  while (off_2810BEE58 != v10);
LABEL_18:
  if (!v8)
  {
    return 0;
  }

  if (a2 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = -a2;
  }

  if (v12 != 1)
  {
    operations_research::sat::SubstituteVariable(v12, v15);
  }

  if (a2 <= 0)
  {
    v13 = v8;
  }

  else
  {
    v13 = -v8;
  }

  return operations_research::sat::AddLinearConstraintMultiple(v13, a3, a4, a4);
}

void operations_research::sat::ActivityBoundHelper::AddAtMostOne(uint64_t a1, int *a2, unint64_t a3)
{
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a2;
    v5 = 0;
    v6 = &a2[a3];
    v8 = (a1 + 8);
    v7 = *(a1 + 8);
    v9 = a2;
    do
    {
      v10 = (2 * *v9) ^ (*v9 >> 31);
      v11 = *(a1 + 16);
      v12 = (v11 - v7) >> 3;
      v13 = 0xAAAAAAAAAAAAAAABLL * v12;
      if (v10 >= -1431655765 * v12)
      {
        v14 = v10 + 1;
        if (v14 > v13)
        {
          std::vector<std::vector<int>>::__append(a1 + 8, v14 - v13);
        }

        else if (v14 < v13)
        {
          v15 = v7 + 24 * v14;
          if (v11 != v15)
          {
            v16 = *(a1 + 16);
            do
            {
              v18 = *(v16 - 24);
              v16 -= 24;
              v17 = v18;
              if (v18)
              {
                *(v11 - 16) = v17;
                operator delete(v17);
              }

              v11 = v16;
            }

            while (v16 != v15);
          }

          *(a1 + 16) = v15;
        }
      }

      v7 = *v8;
      if (*(*v8 + 24 * v10 + 8) - *(*v8 + 24 * v10) > 0xC4uLL)
      {
        ++v5;
      }

      ++v9;
    }

    while (v9 != v6);
    if (a3 > v5 + 1)
    {
      v19 = (*a1)++;
      v23 = v19;
      v20 = 4 * a3;
      do
      {
        v21 = (*v8 + 24 * ((2 * *v4) ^ (*v4 >> 31)));
        if (v21[1] - *v21 <= 0xC7uLL)
        {
          std::vector<int>::push_back[abi:ne200100](v21, &v23);
        }

        ++v4;
        v20 -= 4;
      }

      while (v20);
    }
  }

  else if (a3 >= 2)
  {
    ++*a1;
  }
}

void operations_research::sat::ActivityBoundHelper::AddAllAtMostOnes(operations_research::sat::ActivityBoundHelper *this, const operations_research::sat::CpModelProto *a2)
{
  v3 = *(a2 + 6);
  v2 = a2 + 48;
  v4 = (v3 + 7);
  if ((v3 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = *(v2 + 2);
  if (v5)
  {
    v63 = &v4[8 * v5];
    do
    {
      v64 = v4;
      v7 = *v4;
      v8 = *(*v4 + 60);
      if (v8 == 29 || v8 == 26)
      {
        operations_research::sat::ActivityBoundHelper::AddAtMostOne(this, *(*(v7 + 48) + 24), *(*(v7 + 48) + 16));
      }

      else if (v8 == 4 && *(v7 + 16) == 1)
      {
        v10 = *(v7 + 48);
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v10 + 24);
          v13 = (2 * **(v7 + 24)) ^ (**(v7 + 24) >> 31);
          v65 = v13 + 1;
          v66 = &v12[v11];
          v14 = v13;
          v67 = v13;
          do
          {
            v15 = *v12;
            v16 = *(this + 1);
            v17 = *(this + 2);
            v18 = 0xAAAAAAAAAAAAAAABLL * (&v17[-v16] >> 3);
            if (v14 >= v18)
            {
              v36 = v65 - v18;
              if (v65 <= v18)
              {
                if (v65 < v18)
                {
                  v46 = (v16 + 24 * v65);
                  if (v17 != v46)
                  {
                    v47 = *(this + 2);
                    do
                    {
                      v49 = *(v47 - 3);
                      v47 -= 24;
                      v48 = v49;
                      if (v49)
                      {
                        *(v17 - 2) = v48;
                        operator delete(v48);
                      }

                      v17 = v47;
                    }

                    while (v47 != v46);
                  }

                  *(this + 2) = v46;
                  v17 = v46;
                  v14 = v67;
                }
              }

              else
              {
                v37 = *(this + 3);
                if (0xAAAAAAAAAAAAAAABLL * ((v37 - v17) >> 3) < v36)
                {
                  if ((v65 & 0x80000000) == 0)
                  {
                    v38 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v16) >> 3);
                    v39 = 2 * v38;
                    if (2 * v38 <= v65)
                    {
                      v39 = v65;
                    }

                    if (v38 >= 0x555555555555555)
                    {
                      v40 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v40 = v39;
                    }

                    if (v40 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

LABEL_80:
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

LABEL_81:
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if (24 * v36)
                {
                  bzero(*(this + 2), 24 * v36);
                  v14 = v67;
                  v17 += 24 * v36;
                }

                *(this + 2) = v17;
              }
            }

            v19 = *(this + 1);
            v20 = (v19 + 24 * v14);
            v21 = *v20;
            v22 = v20[1];
            v23 = (2 * ~v15) ^ (~v15 >> 31);
            v24 = &v17[-v19] >> 3;
            v25 = 0xAAAAAAAAAAAAAAABLL * v24;
            if (v23 >= -1431655765 * v24)
            {
              v41 = v23 + 1;
              v42 = v41 - v25;
              if (v41 <= v25)
              {
                if (v41 < v25)
                {
                  v50 = (v19 + 24 * v41);
                  if (v17 != v50)
                  {
                    v51 = v17;
                    do
                    {
                      v53 = *(v51 - 3);
                      v51 -= 24;
                      v52 = v53;
                      if (v53)
                      {
                        *(v17 - 2) = v52;
                        operator delete(v52);
                      }

                      v17 = v51;
                    }

                    while (v51 != v50);
                  }

                  *(this + 2) = v50;
                  v14 = v67;
                }
              }

              else
              {
                v43 = *(this + 3);
                if (0xAAAAAAAAAAAAAAABLL * ((v43 - v17) >> 3) < v42)
                {
                  if ((v41 & 0x80000000) == 0)
                  {
                    v44 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v19) >> 3);
                    if (2 * v44 > v41)
                    {
                      v41 = 2 * v44;
                    }

                    if (v44 >= 0x555555555555555)
                    {
                      v45 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v45 = v41;
                    }

                    if (v45 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    goto LABEL_80;
                  }

                  goto LABEL_81;
                }

                if (24 * v42)
                {
                  bzero(v17, 24 * v42);
                  v14 = v67;
                  v17 += 24 * v42;
                }

                *(this + 2) = v17;
              }
            }

            if ((v22 - v21) <= 0xC4)
            {
              v26 = *(this + 1);
              v27 = *(v26 + 24 * v23);
              v28 = *(v26 + 24 * v23 + 8);
              v29 = v28 - v27;
              if (v28 - v27 <= 0xC4)
              {
                v30 = v23;
                v31 = (*this)++;
                v32 = (v26 + 24 * v14);
                v33 = v32[1];
                v34 = v33 - *v32;
                if (v34 > 0xC7)
                {
                  goto LABEL_72;
                }

                v35 = v32[2];
                if (v33 >= v35)
                {
                  v54 = v35 - *v32;
                  if (v54 >> 1 <= (v34 >> 2) + 1)
                  {
                    v55 = (v34 >> 2) + 1;
                  }

                  else
                  {
                    v55 = v54 >> 1;
                  }

                  v56 = v54 >= 0x7FFFFFFFFFFFFFFCLL;
                  v57 = 0x3FFFFFFFFFFFFFFFLL;
                  if (!v56)
                  {
                    v57 = v55;
                  }

                  if (!(v57 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_80;
                }

                *v33 = v31;
                v32[1] = v33 + 1;
                v26 = *(this + 1);
                v27 = *(v26 + 24 * v30);
                v28 = *(v26 + 24 * v30 + 8);
                v29 = v28 - v27;
                if (v28 - v27 <= 0xC7)
                {
LABEL_72:
                  v58 = v26 + 24 * v30;
                  v59 = *(v58 + 16);
                  if (v28 >= v59)
                  {
                    v60 = v59 - v27;
                    v61 = v60 >> 1;
                    if (v60 >> 1 <= (v29 >> 2) + 1)
                    {
                      v61 = (v29 >> 2) + 1;
                    }

                    v56 = v60 >= 0x7FFFFFFFFFFFFFFCLL;
                    v62 = 0x3FFFFFFFFFFFFFFFLL;
                    if (!v56)
                    {
                      v62 = v61;
                    }

                    if (!(v62 >> 62))
                    {
                      operator new();
                    }

                    goto LABEL_80;
                  }

                  *v28 = v31;
                  *(v58 + 8) = v28 + 1;
                }
              }
            }

            ++v12;
          }

          while (v12 != v66);
        }
      }

      v4 = v64 + 8;
    }

    while (v64 + 8 != v63);
  }
}

uint64_t operations_research::sat::ActivityBoundHelper::ComputeActivity(void *a1, int a2, int *a3, unint64_t a4, uint64_t *a5)
{
  v6 = a4;
  v7 = a3;
  v11 = (a1 + 4);
  v10 = a1[4];
  a1[5] = v10;
  if (a4 > (a1[6] - v10) >> 4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = &a3[4 * a4];
    v13 = 0;
    v14 = a3;
    if (a2)
    {
      do
      {
        while (1)
        {
          v15 = *(v14 + 1);
          if (v15 > 0)
          {
            break;
          }

          LODWORD(v36) = *v14;
          *(&v36 + 1) = -v15;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v11, &v36);
          v14 += 4;
          if (v14 == v12)
          {
            goto LABEL_16;
          }
        }

        LODWORD(v36) = ~*v14;
        *(&v36 + 1) = v15;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v11, &v36);
        v13 -= v15;
        v14 += 4;
      }

      while (v14 != v12);
    }

    else
    {
      do
      {
        while (1)
        {
          v16 = *(v14 + 1);
          if ((v16 & 0x8000000000000000) == 0)
          {
            break;
          }

          LODWORD(v36) = ~*v14;
          *(&v36 + 1) = -v16;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v11, &v36);
          v13 += v16;
          v14 += 4;
          if (v14 == v12)
          {
            goto LABEL_16;
          }
        }

        LODWORD(v36) = *v14;
        *(&v36 + 1) = v16;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v11, &v36);
        v14 += 4;
      }

      while (v14 != v12);
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:
  v17 = operations_research::sat::ActivityBoundHelper::ComputeMaxActivityInternal(a1, a1[4], (a1[5] - a1[4]) >> 4, a5);
  if (a5 && v6 > 0)
  {
    v18 = *v11;
    v19 = v6 & 0x7FFFFFFF;
    v20 = (*a5 + 8);
    if (a2)
    {
      do
      {
        v22 = *v18;
        v18 += 4;
        v21 = v22;
        v23 = *v7;
        v7 += 4;
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v25 = v20;
        }

        else
        {
          v25 = v20 - 1;
        }

        if (v24)
        {
          v26 = v20 - 1;
        }

        else
        {
          v26 = v20;
        }

        v27 = -(*v25 + v13);
        *(v20 - 1) = -(*v26 + v13);
        *v20 = v27;
        v20 += 2;
        --v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v29 = *v18;
        v18 += 4;
        v28 = v29;
        v30 = *v7;
        v7 += 4;
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v32 = v20;
        }

        else
        {
          v32 = v20 - 1;
        }

        if (v31)
        {
          v33 = v20 - 1;
        }

        else
        {
          v33 = v20;
        }

        v34 = *v32 + v13;
        *(v20 - 1) = *v33 + v13;
        *v20 = v34;
        v20 += 2;
        --v19;
      }

      while (v19);
    }
  }

  if (a2)
  {
    return -(v17 + v13);
  }

  else
  {
    return v17 + v13;
  }
}

uint64_t operations_research::sat::ActivityBoundHelper::ComputeMaxActivityInternal(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  operations_research::sat::ActivityBoundHelper::PartitionIntoAmo(a1, a2, a3);
  v46 = 0;
  std::vector<long long>::assign((a1 + 168), a3, &v46);
  v46 = 0;
  std::vector<long long>::assign((a1 + 192), a3, &v46);
  v8 = *(a1 + 144);
  if (a3 >= 1)
  {
    v9 = *(a1 + 168);
    v10 = a3 & 0x7FFFFFFF;
    v11 = *(a1 + 192);
    v12 = (a2 + 8);
    v13 = *(a1 + 144);
    do
    {
      v16 = *v13++;
      v15 = v16;
      v18 = *v12;
      v12 += 2;
      v17 = v18;
      v15 *= 8;
      v19 = (v9 + v15);
      v20 = *(v9 + v15);
      v14 = (v11 + v15);
      if (v18 >= v20)
      {
        *v14 = v20;
        v14 = v19;
      }

      else if (v17 <= *v14)
      {
        goto LABEL_5;
      }

      *v14 = v17;
LABEL_5:
      --v10;
    }

    while (v10);
  }

  v21 = *(a1 + 152) - v8;
  if (v21)
  {
    v22 = v21 >> 2;
    v23 = *(a1 + 168);
    if (v22 > 0x13 && ((v22 - 1) <= 0x7FFFFFFE ? (v24 = (v22 - 1) >> 31 == 0) : (v24 = 0), v24))
    {
      v25 = v22 & 0xFFFFFFFC;
      v27 = v22 & 0xFFFFFFFC;
      v42 = v23 + 1;
      v43 = 0uLL;
      v44 = v25;
      v45 = 0uLL;
      do
      {
        v43 = vaddq_s64(v42[-1], v43);
        v45 = vaddq_s64(*v42, v45);
        v42 += 2;
        v44 -= 4;
      }

      while (v44);
      result = vaddvq_s64(vaddq_s64(v45, v43));
      if (v22 == v25)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
      result = 0;
      v27 = 0;
    }

    v28 = v27 + 1;
    do
    {
      result += v23->i64[v25];
      v25 = v28++;
    }

    while (v22 > v25);
  }

  else
  {
    result = 0;
  }

LABEL_20:
  if (a4)
  {
    v29 = (a4[1] - *a4) >> 4;
    if (a3 <= v29)
    {
      if (a3 < v29)
      {
        a4[1] = *a4 + 16 * a3;
      }
    }

    else
    {
      v30 = result;
      std::vector<std::array<long long,2ul>>::__append(a4, a3 - v29);
      result = v30;
    }

    if (a3 >= 1)
    {
      v31 = 0;
      v32 = *(a1 + 144);
      v33 = *(a1 + 168);
      v34 = a3 & 0x7FFFFFFF;
      do
      {
        while (1)
        {
          v36 = *(a2 + 8 + v31);
          v38 = *v32++;
          v37 = v38;
          v39 = *(v33 + 8 * v38);
          if (v36 == v39)
          {
            break;
          }

          v35 = *a4;
          *(v35 + v31) = result;
          *(v35 + v31 + 8) = v36 + result - v39;
          v31 += 16;
          if (!--v34)
          {
            return result;
          }
        }

        v40 = result - v36 + *(*(a1 + 192) + 8 * v37);
        v41 = *a4;
        *(v41 + v31) = v40;
        *(v41 + v31 + 8) = result;
        v31 += 16;
        --v34;
      }

      while (v34);
    }
  }

  return result;
}

unint64_t *operations_research::sat::ActivityBoundHelper::PartitionIntoAmo(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 112);
  v5 = *(a1 + 112);
  if (v5 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a1 + 112), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value, v5 < 0x80, 1u);
  }

  else
  {
    *(a1 + 120) = 0;
  }

  v7 = *(a1 + 56);
  *(a1 + 64) = v7;
  if (a3 > ((*(a1 + 72) - v7) >> 4))
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v99 = a3;
  v100 = a3;
  v8 = a1 + 56;
  if (a3 >= 1)
  {
    v9 = 0;
    v10 = (a1 + 128);
    do
    {
      v12 = a2 + 16 * v9;
      v13 = (2 * *v12) ^ (*v12 >> 31);
      v11 = *(v12 + 8);
      v14 = *(a1 + 8);
      if (v13 < (-1431655765 * ((*(a1 + 16) - v14) >> 3)))
      {
        v15 = (v14 + 24 * v13);
        v17 = *v15;
        v16 = v15[1];
        if (*v15 != v16)
        {
          do
          {
            v27 = *v17;
            v28 = *v6;
            if (*v6 > 1)
            {
              v24 = 0;
              _X9 = *v10;
              __asm { PRFM            #4, [X9] }

              v34 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
              v25 = (v34 >> 7) ^ (*v10 >> 12);
              v35 = vdup_n_s8(v34 & 0x7F);
              while (1)
              {
                v18 = v25 & v28;
                v19 = *(_X9 + v18);
                v20 = vceq_s8(v19, v35);
                if (v20)
                {
                  break;
                }

LABEL_18:
                v23 = vceq_s8(v19, 0x8080808080808080);
                if (v23)
                {
                  v26 = *(a1 + 136) + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v34, (v18 + (__clz(__rbit64(v23)) >> 3)) & v28, v24, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
                  goto LABEL_29;
                }

                v24 += 8;
                v25 = v24 + v18;
              }

              v21 = *(a1 + 136);
              while (1)
              {
                v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v28;
                if (*(v21 + 16 * v22) == v27)
                {
                  break;
                }

                v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v20)
                {
                  goto LABEL_18;
                }
              }

              v26 = v21 + 16 * v22;
            }

            else if (*(a1 + 120) > 1uLL)
            {
              v26 = a1 + 128;
              if (*v10 != v27)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v6, 3uLL);
              }
            }

            else
            {
              *(a1 + 120) = 2;
              v26 = a1 + 128;
LABEL_29:
              *v26 = v27;
              *(v26 + 8) = 0;
            }

            *(v26 + 8) += v11;
            ++v17;
          }

          while (v17 != v16);
          v8 = a1 + 56;
          v11 = *(a2 + 16 * v9 + 8);
        }
      }

      *&v110 = v11;
      DWORD2(v110) = v9;
      std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](v8, &v110);
      ++v9;
    }

    while (v9 != (v100 & 0x7FFFFFFF));
  }

  v36 = *(a1 + 56);
  v37 = *(a1 + 64);
  v38 = 126 - 2 * __clz((v37 - v36) >> 4);
  if (v37 == v36)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,std::pair<long long,int> *,false>(v36, v37, &v110, v39, 1);
  v40 = *(a1 + 144);
  v41 = (a1 + 144);
  v42 = (*(a1 + 152) - v40) >> 2;
  if (v99 <= v42)
  {
    v43 = v100;
    if (v99 < v42)
    {
      *(a1 + 152) = v40 + 4 * v99;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 144), v99 - v42);
    v43 = v100;
  }

  result = (a1 + 80);
  v45 = *(a1 + 80);
  if (v45 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a1 + 80), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::GetPolicyFunctions(void)::value, v45 < 0x80, 1u);
    result = (a1 + 80);
    if (v43 <= 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(a1 + 88) = 0;
    if (v43 <= 0)
    {
LABEL_39:
      v103 = 0;
      v46 = *v41;
      goto LABEL_40;
    }
  }

  v48 = 0;
  v103 = 0;
  v106 = (a1 + 96);
  v49 = (a1 + 128);
  v50 = v43 & 0x7FFFFFFF;
  v101 = v50;
  v102 = (a1 + 144);
  while (2)
  {
    while (1)
    {
      v104 = *(*(a1 + 56) + 16 * v48 + 8);
      v51 = a2 + 16 * v104;
      v52 = (2 * *v51) ^ (*v51 >> 31);
      v108 = *(v51 + 8);
      v109 = -1;
      v53 = *(a1 + 8);
      if (v52 < (-1431655765 * ((*(a1 + 16) - v53) >> 3)))
      {
        v54 = (v53 + 24 * v52);
        v55 = *v54;
        v107 = v54[1];
        if (*v54 != v107)
        {
          break;
        }
      }

LABEL_48:
      v46 = *v41;
      (*v41)[v104] = v103++;
      if (++v48 == v50)
      {
        goto LABEL_40;
      }
    }

    v56 = 0;
    while (1)
    {
      v57 = *v55;
      v58 = *result;
      if (*result > 1)
      {
        break;
      }

      if (*(a1 + 88) >= 2uLL)
      {
        v69 = *v106;
        _ZF = v69 == v57;
        if (v69 == v57)
        {
          v69 = a1 + 96;
        }

        v71 = &absl::lts_20240722::container_internal::kSooControl;
        if (!_ZF)
        {
          v71 = 0;
        }

        if (v71)
        {
          goto LABEL_104;
        }
      }

LABEL_70:
      v72 = *v6;
      if (*v6 > 1)
      {
        v74 = 0;
        _X9 = *v49;
        __asm { PRFM            #4, [X9] }

        v77 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57));
        v78 = vdup_n_s8(v77 & 0x7F);
        v79 = ((v77 >> 7) ^ (*v49 >> 12)) & v72;
        v80 = *(*v49 + v79);
        v81 = vceq_s8(v80, v78);
        if (!v81)
        {
          goto LABEL_77;
        }

LABEL_74:
        v82 = *(a1 + 136);
        while (1)
        {
          v83 = (v79 + (__clz(__rbit64(v81)) >> 3)) & v72;
          if (*(v82 + 16 * v83) == v57)
          {
            break;
          }

          v81 &= ((v81 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v81)
          {
LABEL_77:
            while (1)
            {
              v84 = vceq_s8(v80, 0x8080808080808080);
              if (v84)
              {
                break;
              }

              v74 += 8;
              v79 = (v74 + v79) & v72;
              v80 = *(_X9 + v79);
              v81 = vceq_s8(v80, v78);
              if (v81)
              {
                goto LABEL_74;
              }
            }

            v73 = *(a1 + 136) + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v77, (v79 + (__clz(__rbit64(v84)) >> 3)) & v72, v74, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
            result = (a1 + 80);
            goto LABEL_91;
          }
        }

        v85 = *(v82 + 16 * v83 + 8);
        if (v72 > 1)
        {
          goto LABEL_92;
        }

LABEL_81:
        if (*(a1 + 120) > 1uLL)
        {
          goto LABEL_85;
        }

LABEL_82:
        *(a1 + 120) = 2;
        v86 = a1 + 128;
LABEL_102:
        *v86 = v57;
        *(v86 + 8) = 0;
        *(v86 + 8) = -v108;
        if (v85 <= v56)
        {
          goto LABEL_52;
        }

        goto LABEL_103;
      }

      if (*(a1 + 120) > 1uLL)
      {
        if (*v49 != v57)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v6, 3uLL);
        }

        v85 = *(a1 + 136);
        if (*(a1 + 120) > 1uLL)
        {
LABEL_85:
          if (*v49 != v57)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v6, 3uLL);
          }

          *(a1 + 136) -= v108;
          if (v85 <= v56)
          {
            goto LABEL_52;
          }

          goto LABEL_103;
        }

        goto LABEL_82;
      }

      *(a1 + 120) = 2;
      v73 = a1 + 128;
LABEL_91:
      *v73 = v57;
      *(v73 + 8) = 0;
      v72 = *v6;
      v85 = 0;
      if (*v6 <= 1)
      {
        goto LABEL_81;
      }

LABEL_92:
      v87 = 0;
      _X9 = *v49;
      __asm { PRFM            #4, [X9] }

      v90 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57));
      v91 = vdup_n_s8(v90 & 0x7F);
      v92 = ((v90 >> 7) ^ (*v49 >> 12)) & v72;
      v93 = *(*v49 + v92);
      v94 = vceq_s8(v93, v91);
      if (!v94)
      {
        goto LABEL_96;
      }

LABEL_93:
      v95 = *(a1 + 136);
      while (1)
      {
        v96 = (v92 + (__clz(__rbit64(v94)) >> 3)) & v72;
        if (*(v95 + 16 * v96) == v57)
        {
          break;
        }

        v94 &= ((v94 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v94)
        {
LABEL_96:
          while (1)
          {
            v97 = vceq_s8(v93, 0x8080808080808080);
            if (v97)
            {
              break;
            }

            v87 += 8;
            v92 = (v87 + v92) & v72;
            v93 = *(_X9 + v92);
            v94 = vceq_s8(v93, v91);
            if (v94)
            {
              goto LABEL_93;
            }
          }

          v86 = *(a1 + 136) + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v6, v90, (v92 + (__clz(__rbit64(v97)) >> 3)) & v72, v87, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
          result = (a1 + 80);
          goto LABEL_102;
        }
      }

      *(v95 + 16 * v96 + 8) -= v108;
      if (v85 <= v56)
      {
        goto LABEL_52;
      }

LABEL_103:
      v109 = v57;
      v56 = v85;
LABEL_52:
      if (++v55 == v107)
      {
        v50 = v101;
        v41 = (a1 + 144);
        if (v109 != -1)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(result, &v109, &v110);
          if (v111 == 1)
          {
            **(&v110 + 1) = v109;
          }

          *(*(&v110 + 1) + 4) = v103;
          result = (a1 + 80);
        }

        goto LABEL_48;
      }
    }

    v59 = 0;
    _X9 = *v106;
    __asm { PRFM            #4, [X9] }

    v62 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v57));
    v63 = vdup_n_s8(v62 & 0x7F);
    v64 = ((v62 >> 7) ^ (*v106 >> 12)) & v58;
    v65 = *(*v106 + v64);
    v66 = vceq_s8(v65, v63);
    if (!v66)
    {
      goto LABEL_60;
    }

LABEL_57:
    v67 = *(a1 + 104);
    while (1)
    {
      v68 = (v64 + (__clz(__rbit64(v66)) >> 3)) & v58;
      if (*(v67 + 8 * v68) == v57)
      {
        break;
      }

      v66 &= ((v66 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v66)
      {
LABEL_60:
        while (!*&vceq_s8(v65, 0x8080808080808080))
        {
          v59 += 8;
          v64 = (v59 + v64) & v58;
          v65 = *(_X9 + v64);
          v66 = vceq_s8(v65, v63);
          if (v66)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_70;
      }
    }

    v69 = v67 + 8 * v68;
    if (!(_X9 + v68))
    {
      goto LABEL_70;
    }

LABEL_104:
    v98 = *(v69 + 4);
    v50 = v101;
    v41 = (a1 + 144);
    v46 = *v102;
    (*v102)[v104] = v98;
    if (++v48 != v101)
    {
      continue;
    }

    break;
  }

LABEL_40:
  for (i = *(a1 + 152); v46 != i; ++v46)
  {
    result = *v46;
    if (result >= v103)
    {
      operations_research::sat::ActivityBoundHelper::PartitionIntoAmo(result, v103, &v110);
    }
  }

  if (v103 > v100)
  {
    operations_research::sat::ActivityBoundHelper::PartitionIntoAmo(v103, v99, &v110);
  }

  return result;
}

void operations_research::sat::ActivityBoundHelper::PartitionLiteralsIntoAmo(uint64_t a1@<X0>, int *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = (a1 + 112);
  v6 = *(a1 + 112);
  if (v6 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a1 + 112), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value, v6 < 0x80, 1u);
  }

  else
  {
    *(a1 + 120) = 0;
  }

  v97 = a3;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = (a1 + 128);
    v9 = a2;
    do
    {
      v10 = (2 * *v9) ^ (*v9 >> 31);
      v11 = *(a1 + 8);
      if (v10 < (-1431655765 * ((*(a1 + 16) - v11) >> 3)))
      {
        v12 = (v11 + 24 * v10);
        v14 = *v12;
        v13 = v12[1];
        while (v14 != v13)
        {
          v24 = *v14;
          v25 = *v7;
          if (*v7 > 1)
          {
            v21 = 0;
            _X9 = *v8;
            __asm { PRFM            #4, [X9] }

            v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v24));
            v22 = (v31 >> 7) ^ (*v8 >> 12);
            v32 = vdup_n_s8(v31 & 0x7F);
            while (1)
            {
              v15 = v22 & v25;
              v16 = *(_X9 + v15);
              v17 = vceq_s8(v16, v32);
              if (v17)
              {
                break;
              }

LABEL_13:
              v20 = vceq_s8(v16, 0x8080808080808080);
              if (v20)
              {
                v23 = *(a1 + 136) + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v7, v31, (v15 + (__clz(__rbit64(v20)) >> 3)) & v25, v21, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
                goto LABEL_25;
              }

              v21 += 8;
              v22 = v21 + v15;
            }

            v18 = *(a1 + 136);
            while (1)
            {
              v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v25;
              if (*(v18 + 16 * v19) == v24)
              {
                break;
              }

              v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v17)
              {
                goto LABEL_13;
              }
            }

            v23 = v18 + 16 * v19;
          }

          else if (*(a1 + 120) > 1uLL)
          {
            v23 = a1 + 128;
            if (*v8 != v24)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v7, 3uLL);
            }
          }

          else
          {
            *(a1 + 120) = 2;
            v23 = a1 + 128;
LABEL_25:
            *v23 = v24;
            *(v23 + 8) = 0;
          }

          ++*(v23 + 8);
          ++v14;
        }
      }

      ++v9;
    }

    while (v9 != &a2[v97]);
  }

  v33 = *(a1 + 144);
  v34 = (a1 + 144);
  v35 = v97;
  v36 = (*(a1 + 152) - v33) >> 2;
  if (v97 <= v36)
  {
    v37 = a2;
    if (v97 < v36)
    {
      *(a1 + 152) = v33 + 4 * v97;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 144), v97 - v36);
    v37 = a2;
  }

  v38 = (a1 + 80);
  v39 = *(a1 + 80);
  if (v39 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a1 + 80), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::GetPolicyFunctions(void)::value, v39 < 0x80, 1u);
    v38 = (a1 + 80);
    if (v97)
    {
LABEL_32:
      v40 = 0;
      v98 = 0;
      v41 = 0;
      v101 = (a1 + 96);
      v42 = (a1 + 128);
      while (1)
      {
        v99 = v40;
        v100 = v41;
        v45 = (2 * v37[v40]) ^ (v37[v40] >> 31);
        v105 = -1;
        v46 = *(a1 + 8);
        if (v45 < (-1431655765 * ((*(a1 + 16) - v46) >> 3)))
        {
          v47 = (v46 + 24 * v45);
          v49 = *v47;
          v48 = v47[1];
          if (*v47 != v48)
          {
            break;
          }
        }

LABEL_34:
        v43 = v98++;
LABEL_35:
        v44 = *v34;
        *(*v34 + 4 * v99) = v43;
        v40 = v100 + 1;
        v41 = v100 + 1;
        if (v35 <= v40)
        {
          goto LABEL_97;
        }
      }

      v50 = 0;
      while (1)
      {
        v51 = *v49;
        v52 = *v38;
        if (*v38 > 1)
        {
          v53 = 0;
          _X9 = *v101;
          __asm { PRFM            #4, [X9] }

          v56 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51));
          v57 = vdup_n_s8(v56 & 0x7F);
          v58 = ((v56 >> 7) ^ (*v101 >> 12)) & v52;
          v59 = *(*v101 + v58);
          v60 = vceq_s8(v59, v57);
          if (!v60)
          {
            goto LABEL_47;
          }

LABEL_44:
          v61 = *(a1 + 104);
          while (1)
          {
            v62 = (v58 + (__clz(__rbit64(v60)) >> 3)) & v52;
            if (*(v61 + 8 * v62) == v51)
            {
              break;
            }

            v60 &= ((v60 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v60)
            {
LABEL_47:
              while (!*&vceq_s8(v59, 0x8080808080808080))
              {
                v53 += 8;
                v58 = (v53 + v58) & v52;
                v59 = *(_X9 + v58);
                v60 = vceq_s8(v59, v57);
                if (v60)
                {
                  goto LABEL_44;
                }
              }

              goto LABEL_57;
            }
          }

          v63 = v61 + 8 * v62;
          if (!(_X9 + v62))
          {
            goto LABEL_57;
          }

LABEL_91:
          v43 = *(v63 + 4);
          v37 = a2;
          v35 = v97;
          v34 = (a1 + 144);
          goto LABEL_35;
        }

        if (*(a1 + 88) >= 2uLL)
        {
          v63 = *v101;
          _ZF = v63 == v51;
          if (v63 == v51)
          {
            v63 = a1 + 96;
          }

          v65 = &absl::lts_20240722::container_internal::kSooControl;
          if (!_ZF)
          {
            v65 = 0;
          }

          if (v65)
          {
            goto LABEL_91;
          }
        }

LABEL_57:
        v66 = *v7;
        if (*v7 > 1)
        {
          break;
        }

        if (*(a1 + 120) > 1uLL)
        {
          if (*v42 != v51)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v7, 3uLL);
          }

          v79 = *(a1 + 136);
          if (*(a1 + 120) > 1uLL)
          {
LABEL_72:
            if (*v42 != v51)
            {
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v7, 3uLL);
            }

            --*(a1 + 136);
            if (v79 <= v50)
            {
              goto LABEL_39;
            }

            goto LABEL_90;
          }

          goto LABEL_69;
        }

        *(a1 + 120) = 2;
        v67 = a1 + 128;
LABEL_78:
        *v67 = v51;
        *(v67 + 8) = 0;
        v66 = *v7;
        v79 = 0;
        if (*v7 <= 1)
        {
          goto LABEL_68;
        }

LABEL_79:
        v81 = 0;
        _X9 = *v42;
        __asm { PRFM            #4, [X9] }

        v84 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51));
        v85 = vdup_n_s8(v84 & 0x7F);
        v86 = ((v84 >> 7) ^ (*v42 >> 12)) & v66;
        v87 = *(*v42 + v86);
        v88 = vceq_s8(v87, v85);
        if (!v88)
        {
          goto LABEL_83;
        }

LABEL_80:
        v89 = *(a1 + 136);
        while (1)
        {
          v90 = (v86 + (__clz(__rbit64(v88)) >> 3)) & v66;
          if (*(v89 + 16 * v90) == v51)
          {
            break;
          }

          v88 &= ((v88 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v88)
          {
LABEL_83:
            while (1)
            {
              v91 = vceq_s8(v87, 0x8080808080808080);
              if (v91)
              {
                break;
              }

              v81 += 8;
              v86 = (v81 + v86) & v66;
              v87 = *(_X9 + v86);
              v88 = vceq_s8(v87, v85);
              if (v88)
              {
                goto LABEL_80;
              }
            }

            v80 = *(a1 + 136) + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v7, v84, (v86 + (__clz(__rbit64(v91)) >> 3)) & v66, v81, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
            v38 = (a1 + 80);
            goto LABEL_89;
          }
        }

        --*(v89 + 16 * v90 + 8);
        if (v79 <= v50)
        {
          goto LABEL_39;
        }

LABEL_90:
        v105 = v51;
        v50 = v79;
LABEL_39:
        if (++v49 == v48)
        {
          v37 = a2;
          v35 = v97;
          v34 = (a1 + 144);
          if (v105 != -1)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,int>>>::find_or_prepare_insert<int>(v38, &v105, v106);
            if (v108 == 1)
            {
              *v107 = v105;
            }

            *(v107 + 4) = v98;
            v38 = (a1 + 80);
          }

          goto LABEL_34;
        }
      }

      v68 = 0;
      _X9 = *v42;
      __asm { PRFM            #4, [X9] }

      v71 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51));
      v72 = vdup_n_s8(v71 & 0x7F);
      v73 = ((v71 >> 7) ^ (*v42 >> 12)) & v66;
      v74 = *(*v42 + v73);
      v75 = vceq_s8(v74, v72);
      if (!v75)
      {
        goto LABEL_64;
      }

LABEL_61:
      v76 = *(a1 + 136);
      while (1)
      {
        v77 = (v73 + (__clz(__rbit64(v75)) >> 3)) & v66;
        if (*(v76 + 16 * v77) == v51)
        {
          break;
        }

        v75 &= ((v75 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v75)
        {
LABEL_64:
          while (1)
          {
            v78 = vceq_s8(v74, 0x8080808080808080);
            if (v78)
            {
              break;
            }

            v68 += 8;
            v73 = (v68 + v73) & v66;
            v74 = *(_X9 + v73);
            v75 = vceq_s8(v74, v72);
            if (v75)
            {
              goto LABEL_61;
            }
          }

          v67 = *(a1 + 136) + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v7, v71, (v73 + (__clz(__rbit64(v78)) >> 3)) & v66, v68, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
          v38 = (a1 + 80);
          goto LABEL_78;
        }
      }

      v79 = *(v76 + 16 * v77 + 8);
      if (v66 > 1)
      {
        goto LABEL_79;
      }

LABEL_68:
      if (*(a1 + 120) > 1uLL)
      {
        goto LABEL_72;
      }

LABEL_69:
      *(a1 + 120) = 2;
      v80 = a1 + 128;
LABEL_89:
      *v80 = v51;
      *(v80 + 8) = 0;
      *(v80 + 8) = -1;
      if (v79 <= v50)
      {
        goto LABEL_39;
      }

      goto LABEL_90;
    }
  }

  else
  {
    *(a1 + 88) = 0;
    if (v97)
    {
      goto LABEL_32;
    }
  }

  v44 = *v34;
LABEL_97:
  __p = 0;
  v103 = 0;
  v104 = 0;
  v92 = *(a1 + 152);
  if (v92 != v44)
  {
    if (((v92 - v44) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::CompactVectorVector<int,int>::ResetFromFlatMapping<std::vector<int>,absl::lts_20240722::Span<int const>>((a1 + 216), &__p, v37);
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  v93 = *(a1 + 216);
  v94 = *(a1 + 224);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v94 != v93)
  {
    if (!(((v94 - v93) >> 2) >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CCA7B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CompactVectorVector<int,int>::ResetFromFlatMapping<std::vector<int>,absl::lts_20240722::Span<int const>>(std::vector<int> *a1, int32x4_t **a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    a1->__end_ = a1->__begin_;
    a1[1].__end_ = a1[1].__begin_;
    a1[2].__end_ = a1[2].__begin_;
    return;
  }

  v8 = v4 - v5 - 4;
  if (v8 > 0x1B)
  {
    v11 = (v8 >> 2) + 1;
    v10 = &v5[4 * (v11 & 0x7FFFFFFFFFFFFFF8)];
    v12 = (v5 + 16);
    v13 = 0uLL;
    v14.i64[0] = 0x100000001;
    v14.i64[1] = 0x100000001;
    v15 = v11 & 0x7FFFFFFFFFFFFFF8;
    v16 = 0uLL;
    do
    {
      v13 = vmaxq_s32(v13, vaddq_s32(v12[-1], v14));
      v16 = vmaxq_s32(v16, vaddq_s32(*v12, v14));
      v12 += 2;
      v15 -= 8;
    }

    while (v15);
    v9 = vmaxvq_s32(vmaxq_s32(v13, v16));
    if (v11 == (v11 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    v10 = *a2;
  }

  do
  {
    v18 = v10->i32[0];
    v10 = (v10 + 4);
    v17 = v18;
    if (v9 <= v18 + 1)
    {
      v9 = v17 + 1;
    }
  }

  while (v10 != v4);
LABEL_11:
  v19 = v9;
  __u = 0;
  std::vector<int>::assign(a1 + 1, v9, &__u);
  v20 = *a2;
  v21 = a2[1];
  if (*a2 != v21)
  {
    begin = a1[1].__begin_;
    do
    {
      v23 = v20->i32[0];
      v20 = (v20 + 4);
      ++begin[v23];
    }

    while (v20 != v21);
  }

  v56 = 0;
  std::vector<int>::assign(a1, v19, &v56);
  if (v19 >= 2)
  {
    v24 = a1[1].__begin_;
    v25 = a1->__begin_ + 1;
    v26 = *a1->__begin_;
    v27 = v19 - 1;
    do
    {
      v28 = *v24++;
      v26 += v28;
      *v25++ = v26;
      --v27;
    }

    while (v27);
  }

  v29 = a1[2].__begin_;
  v30 = *a2;
  v31 = a2[1] - *a2;
  v32 = a1[2].__end_ - v29;
  if (v31 >> 2 <= v32)
  {
    if (v31 >> 2 < v32)
    {
      a1[2].__end_ = (v29 + v31);
    }
  }

  else
  {
    std::vector<int>::__append(a1 + 2, (v31 >> 2) - v32);
    v30 = *a2;
  }

  v33 = a2[1];
  v34 = a1->__begin_;
  if (v33 != v30)
  {
    v35 = 0;
    v36 = (v33 - v30) >> 2;
    v37 = a1[2].__begin_;
    v38 = 1;
    do
    {
      v39 = *(a3 + 4 * v35);
      v40 = v30->i32[v35];
      v41 = v34[v40];
      v34[v40] = v41 + 1;
      v37[v41] = v39;
      v35 = v38++;
    }

    while (v36 > v35);
  }

  if (v19 < 2)
  {
    goto LABEL_29;
  }

  v42 = (v19 - 1);
  if (v19 > 0x24 && (v47 = (v19 - 2), v48 = 4 * (v42 - 1), &v34[v47 + v48 / 0xFFFFFFFFFFFFFFFCLL] <= &v34[v47]) && (v49 = v42, &v34[v42 + v48 / 0xFFFFFFFFFFFFFFFCLL] <= &v34[v42]) && ((v47 - v42) & 0x3FFFFFFFFFFFFFF8) != 0)
  {
    v50 = (v19 - 1) & 0xFFFFFFFFFFFFFFF8;
    v43 = v19 - v50;
    v42 -= v50;
    v51 = &v34[v49 - 3];
    v52 = v19 + 4294967294u;
    v53 = v50;
    do
    {
      v54 = &v34[v52];
      v55 = *(v54 - 3);
      *(v51 - 1) = *(v54 - 7);
      *v51 = v55;
      v51 -= 8;
      v52 -= 8;
      v53 -= 8;
    }

    while (v53);
    if (v19 - 1 == v50)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v43 = v19;
  }

  v44 = v43 + 4294967294u;
  v45 = v42 + 1;
  v46 = &v34[v42];
  do
  {
    *v46-- = v34[v44--];
    --v45;
  }

  while (v45 > 1);
LABEL_29:
  *v34 = 0;
}

uint64_t operations_research::sat::ActivityBoundHelper::IsAmo(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1 + 14;
  v4 = a1[14];
  if (v4 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(a1 + 14, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value, v4 < 0x80, 1u);
    if (!a3)
    {
      return 1;
    }
  }

  else
  {
    a1[15] = 0;
    if (!a3)
    {
      return 1;
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = a1 + 16;
  while (1)
  {
    v9 = (2 * *(a2 + 4 * v6)) ^ (*(a2 + 4 * v6) >> 31);
    v10 = a1[1];
    if (v9 >= (-1431655765 * ((a1[2] - v10) >> 3)))
    {
      return 0;
    }

    v11 = (v10 + 24 * v9);
    v12 = *v11;
    v13 = v11[1];
    if (*v11 == v13)
    {
      return 0;
    }

    v38 = v7;
    v14 = 0;
    do
    {
      v25 = *v12;
      v26 = *v5;
      if (*v5 > 1)
      {
        v21 = 0;
        _X9 = *v8;
        __asm { PRFM            #4, [X9] }

        v33 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v25));
        v22 = (v33 >> 7) ^ (*v8 >> 12);
        v34 = vdup_n_s8(v33 & 0x7F);
        while (1)
        {
          v15 = v22 & v26;
          v16 = *(_X9 + v15);
          v17 = vceq_s8(v16, v34);
          if (v17)
          {
            break;
          }

LABEL_13:
          v20 = vceq_s8(v16, 0x8080808080808080);
          if (v20)
          {
            v23 = (a1[17] + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(v5, v33, (v15 + (__clz(__rbit64(v20)) >> 3)) & v26, v21, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value));
            goto LABEL_24;
          }

          v21 += 8;
          v22 = v21 + v15;
        }

        v18 = a1[17];
        while (1)
        {
          v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v26;
          if (*(v18 + 16 * v19) == v25)
          {
            break;
          }

          v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v17)
          {
            goto LABEL_13;
          }
        }

        v23 = (v18 + 16 * v19);
      }

      else if (a1[15] > 1uLL)
      {
        v23 = a1 + 16;
        if (*v8 != v25)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(v5, 3uLL);
        }
      }

      else
      {
        a1[15] = 2;
        v23 = a1 + 16;
LABEL_24:
        *v23 = v25;
        v23[1] = 0;
      }

      v24 = v23[1];
      v23[1] = v24 + 1;
      v14 |= v24 == v6;
      ++v12;
    }

    while (v12 != v13);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v7 = v38 + 1;
    v6 = v38 + 1;
    if (a3 <= v6)
    {
      return 1;
    }
  }
}

uint64_t operations_research::sat::ActivityBoundHelper::PresolveEnforcement(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v113 = *MEMORY[0x277D85DE8];
  if (!*(a4 + 16))
  {
    return 1;
  }

  if (*a5 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(a5, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, *a5 < 0x80, 1u);
    v10 = a1[36];
    if (v10 > 1)
    {
LABEL_4:
      absl::lts_20240722::container_internal::ClearBackingArray(a1 + 36, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v10 < 0x80, 1u);
      if (*(a4 + 16) < 1)
      {
        goto LABEL_52;
      }

      goto LABEL_8;
    }
  }

  else
  {
    a5[1] = 0;
    v10 = a1[36];
    if (v10 > 1)
    {
      goto LABEL_4;
    }
  }

  a1[37] = 0;
  if (*(a4 + 16) < 1)
  {
    goto LABEL_52;
  }

LABEL_8:
  v107 = a3;
  v11 = 0;
  v12 = 0;
  do
  {
    v29 = *(*(a4 + 24) + 4 * v11);
    v112[0] = *(*(a4 + 24) + 4 * v11);
    v30 = *a5;
    if (*a5 > 1)
    {
      v16 = 0;
      _X9 = a5[2];
      __asm { PRFM            #4, [X9] }

      v47 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29));
      v17 = (_X9 >> 12) ^ (v47 >> 7);
      v48 = vdup_n_s8(v47 & 0x7F);
      while (1)
      {
        v13 = v17 & v30;
        v14 = *(_X9 + v13);
        v15 = vceq_s8(v14, v48);
        if (v15)
        {
          break;
        }

LABEL_12:
        if (vceq_s8(v14, 0x8080808080808080))
        {
          v18 = 0;
          v19 = ~v29;
          __asm { PRFM            #4, [X9] }

          v24 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19));
          v25 = vdup_n_s8(v24 & 0x7F);
          v26 = ((_X9 >> 12) ^ (v24 >> 7)) & v30;
          v27 = *(_X9 + v26);
          v28 = vceq_s8(v27, v25);
          if (!v28)
          {
            goto LABEL_17;
          }

          do
          {
LABEL_15:
            if (*(a5[3] + 4 * ((v26 + (__clz(__rbit64(v28)) >> 3)) & v30)) == v19)
            {
              return 0;
            }

            v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v28);
LABEL_17:
          while (!*&vceq_s8(v27, 0x8080808080808080))
          {
            v18 += 8;
            v26 = (v18 + v26) & v30;
            v27 = *(_X9 + v26);
            v28 = vceq_s8(v27, v25);
            if (v28)
            {
              goto LABEL_15;
            }
          }

LABEL_24:
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a5, v112, &v109);
          v32 = v112[0];
          if (v111 == 1)
          {
            *v110 = v112[0];
          }

          v33 = (2 * ~v32) ^ (~v32 >> 31);
          v34 = a1[1];
          v35 = -1431655765 * ((a1[2] - v34) >> 3);
          if (v33 < v35)
          {
            v36 = v34 + 24 * v33;
            v37 = *v36;
            v38 = *(v36 + 8);
            if (v37 != v38)
            {
              v39 = a1[36];
              if (v39 > 1)
              {
                _X14 = a1[38];
                do
                {
                  v50 = 0;
                  v51 = *v37;
                  __asm { PRFM            #4, [X14] }

                  v53 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v51));
                  v54 = vdup_n_s8(v53 & 0x7F);
                  v55 = ((_X14 >> 12) ^ (v53 >> 7)) & v39;
                  v56 = *(_X14 + v55);
                  v57 = vceq_s8(v56, v54);
                  if (!v57)
                  {
                    goto LABEL_44;
                  }

                  do
                  {
LABEL_42:
                    if (*(a1[39] + 4 * ((v55 + (__clz(__rbit64(v57)) >> 3)) & v39)) == v51)
                    {
                      goto LABEL_37;
                    }

                    v57 &= ((v57 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  }

                  while (v57);
LABEL_44:
                  while (!*&vceq_s8(v56, 0x8080808080808080))
                  {
                    v50 += 8;
                    v55 = (v50 + v55) & v39;
                    v56 = *(_X14 + v55);
                    v57 = vceq_s8(v56, v54);
                    if (v57)
                    {
                      goto LABEL_42;
                    }
                  }

                  ++v37;
                }

                while (v37 != v38);
              }

              else if (a1[37] >= 2uLL)
              {
                while (*(a1 + 76) != *v37)
                {
                  if (++v37 == v38)
                  {
                    goto LABEL_32;
                  }
                }

                goto LABEL_37;
              }
            }
          }

LABEL_32:
          v40 = (2 * v32) ^ (v32 >> 31);
          if (v40 >= v35 || (v41 = (v34 + 24 * v40), v43 = *v41, v42 = v41[1], *v41 == v42))
          {
LABEL_36:
            *(*(a4 + 24) + 4 * v12++) = v112[0];
            goto LABEL_37;
          }

          while (1)
          {
            v108 = *v43;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a1 + 36, &v108, &v109);
            if ((v111 & 1) == 0)
            {
              return 0;
            }

            *v110 = v108;
            if (++v43 == v42)
            {
              goto LABEL_36;
            }
          }
        }

        v16 += 8;
        v17 = v16 + v13;
      }

      while (*(a5[3] + 4 * ((v13 + (__clz(__rbit64(v15)) >> 3)) & v30)) != v29)
      {
        v15 &= ((v15 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v15)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      if (a5[1] < 2)
      {
        goto LABEL_24;
      }

      v31 = *(a5 + 4);
      if (v31 != v29)
      {
        if ((v29 ^ v31) != 0xFFFFFFFF)
        {
          goto LABEL_24;
        }

        return 0;
      }
    }

LABEL_37:
    ++v11;
    v44 = *(a4 + 16);
  }

  while (v11 < v44);
  a3 = v107;
  if (v44 > v12)
  {
    *(a4 + 16) = v12;
  }

LABEL_52:
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v59 = &a2[a3];
  while (1)
  {
    v73 = *a2;
    v74 = *a5;
    if (*a5 > 1)
    {
      v63 = 0;
      _X10 = a5[2];
      __asm { PRFM            #4, [X10] }

      v77 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v73) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v73));
      v64 = (_X10 >> 12) ^ (v77 >> 7);
      v78 = vdup_n_s8(v77 & 0x7F);
      while (1)
      {
        v60 = v64 & v74;
        v61 = *(_X10 + v60);
        v62 = vceq_s8(v61, v78);
        if (v62)
        {
          break;
        }

LABEL_58:
        if (vceq_s8(v61, 0x8080808080808080))
        {
          v65 = 0;
          v66 = ~v73;
          __asm { PRFM            #4, [X10] }

          v68 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v66) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v66));
          v69 = vdup_n_s8(v68 & 0x7F);
          v70 = ((_X10 >> 12) ^ (v68 >> 7)) & v74;
          v71 = *(_X10 + v70);
          v72 = vceq_s8(v71, v69);
          if (!v72)
          {
            goto LABEL_63;
          }

LABEL_61:
          while (*(a5[3] + 4 * ((v70 + (__clz(__rbit64(v72)) >> 3)) & v74)) != v66)
          {
            v72 &= ((v72 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v72)
            {
LABEL_63:
              while (!*&vceq_s8(v71, 0x8080808080808080))
              {
                v65 += 8;
                v70 = (v65 + v70) & v74;
                v71 = *(_X10 + v70);
                v72 = vceq_s8(v71, v69);
                if (v72)
                {
                  goto LABEL_61;
                }
              }

              goto LABEL_77;
            }
          }

          goto LABEL_75;
        }

        v63 += 8;
        v64 = v63 + v60;
      }

      while (*(a5[3] + 4 * ((v60 + (__clz(__rbit64(v62)) >> 3)) & v74)) != v73)
      {
        v62 &= ((v62 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v62)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_75;
    }

    if (a5[1] <= 1)
    {
      break;
    }

    v79 = *(a5 + 4);
    LODWORD(v66) = ~v73;
    if (v79 != v73 && v79 != v66)
    {
      goto LABEL_77;
    }

LABEL_75:
    ++a2;
    result = 1;
    if (a2 == v59)
    {
      return result;
    }
  }

  LODWORD(v66) = ~v73;
LABEL_77:
  v112[0] = *a2;
  v112[1] = v66;
  v81 = v112;
  while (2)
  {
    v82 = *v81;
    v83 = (2 * v82) ^ (v82 >> 31);
    v84 = a1[1];
    if (v83 >= (-1431655765 * ((a1[2] - v84) >> 3)))
    {
      goto LABEL_78;
    }

    v85 = v84 + 24 * v83;
    v86 = *v85;
    v87 = *(v85 + 8);
    if (v86 == v87)
    {
      goto LABEL_78;
    }

    v88 = a1[36];
    if (v88 <= 1)
    {
      if (a1[37] >= 2uLL)
      {
        while (*(a1 + 76) != *v86)
        {
          if (++v86 == v87)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_95;
      }

LABEL_78:
      if (++v81 == &v113)
      {
        goto LABEL_75;
      }

      continue;
    }

    break;
  }

  _X12 = a1[38];
LABEL_87:
  v90 = 0;
  v91 = *v86;
  __asm { PRFM            #4, [X12] }

  v93 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v91) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v91));
  v94 = vdup_n_s8(v93 & 0x7F);
  v95 = ((_X12 >> 12) ^ (v93 >> 7)) & v88;
  v96 = *(_X12 + v95);
  v97 = vceq_s8(v96, v94);
  if (!v97)
  {
    goto LABEL_90;
  }

LABEL_88:
  while (*(a1[39] + 4 * ((v95 + (__clz(__rbit64(v97)) >> 3)) & v88)) != v91)
  {
    v97 &= ((v97 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v97)
    {
LABEL_90:
      while (!*&vceq_s8(v96, 0x8080808080808080))
      {
        v90 += 8;
        v95 = (v90 + v95) & v88;
        v96 = *(_X12 + v95);
        v97 = vceq_s8(v96, v94);
        if (v97)
        {
          goto LABEL_88;
        }
      }

      if (++v86 != v87)
      {
        goto LABEL_87;
      }

      goto LABEL_78;
    }
  }

LABEL_95:
  v98 = *a5;
  if (*a5 <= 1)
  {
    if (a5[1] >= 2 && *(a5 + 4) == v82)
    {
      return 0;
    }

LABEL_98:
    v108 = ~v82;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a5, &v108, &v109);
    if (v111 == 1)
    {
      *v110 = v108;
    }

    goto LABEL_78;
  }

  v99 = 0;
  _X11 = a5[2];
  __asm { PRFM            #4, [X11] }

  v102 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v82));
  v103 = vdup_n_s8(v102 & 0x7F);
  v104 = ((v102 >> 7) ^ (_X11 >> 12)) & v98;
  v105 = *(_X11 + v104);
  v106 = vceq_s8(v105, v103);
  if (!v106)
  {
    goto LABEL_103;
  }

LABEL_101:
  while (*(a5[3] + 4 * ((v104 + (__clz(__rbit64(v106)) >> 3)) & v98)) != v82)
  {
    v106 &= ((v106 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v106)
    {
LABEL_103:
      while (!*&vceq_s8(v105, 0x8080808080808080))
      {
        v99 += 8;
        v104 = (v99 + v104) & v98;
        v105 = *(_X11 + v104);
        v106 = vceq_s8(v105, v103);
        if (v106)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_98;
    }
  }

  return 0;
}