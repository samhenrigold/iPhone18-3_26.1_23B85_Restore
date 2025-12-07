void operations_research::glop::UpdateRow::~UpdateRow(operations_research::glop::UpdateRow *this)
{
  *(this + 103) = &unk_284F3A5F8;
  if (*(this + 855) < 0)
  {
    operator delete(*(this + 104));
    *(this + 93) = &unk_284F3A5F8;
    if ((*(this + 775) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 83) = &unk_284F3A5F8;
      if ((*(this + 695) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    *(this + 93) = &unk_284F3A5F8;
    if ((*(this + 775) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 94));
  *(this + 83) = &unk_284F3A5F8;
  if ((*(this + 695) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup((this + 584));
    operations_research::glop::GlopParameters::~GlopParameters((this + 256));
    v2 = *(this + 26);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  operator delete(*(this + 84));
  operations_research::StatsGroup::~StatsGroup((this + 584));
  operations_research::glop::GlopParameters::~GlopParameters((this + 256));
  v2 = *(this + 26);
  if (v2)
  {
LABEL_5:
    *(this + 27) = v2;
    operator delete(v2);
  }

LABEL_6:
  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 19);
  if (v4)
  {
    *(this + 20) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    *(this + 6) = v8;
    operator delete(v8);
  }
}

void operations_research::glop::VariableValues::~VariableValues(operations_research::glop::VariableValues *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 31);
  if (v4)
  {
    *(this + 32) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 25);
  if (v6)
  {
    *(this + 26) = v6;
    operator delete(v6);
  }

  v7 = *(this + 21);
  if (v7)
  {
    *(this + 22) = v7;
    operator delete(v7);
  }

  operations_research::StatsGroup::~StatsGroup((this + 88));
  v8 = *(this + 8);
  if (v8)
  {
    *(this + 9) = v8;
    operator delete(v8);
  }
}

void operations_research::glop::DualEdgeNorms::~DualEdgeNorms(operations_research::glop::DualEdgeNorms *this)
{
  v2 = *(this + 85);
  if (v2)
  {
    *(this + 86) = v2;
    operator delete(v2);
  }

  v3 = *(this + 82);
  if (v3)
  {
    *(this + 83) = v3;
    operator delete(v3);
  }

  operations_research::glop::GlopParameters::~GlopParameters((this + 320));
  *(this + 30) = &unk_284F3A5F8;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
LABEL_7:
      *(this + 10) = &unk_284F3A5F8;
      if ((*(this + 111) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else
  {
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_8:
    v4 = this;

    goto LABEL_10;
  }

LABEL_13:
  operator delete(*(this + 11));
  v4 = this;

LABEL_10:
  operations_research::StatsGroup::~StatsGroup(v4);
}

void operations_research::glop::PrimalEdgeNorms::~PrimalEdgeNorms(operations_research::glop::PrimalEdgeNorms *this)
{
  v2 = *(this + 117);
  if (v2)
  {
    *(this + 118) = v2;
    operator delete(v2);
  }

  v3 = *(this + 113);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 110);
  if (v4)
  {
    *(this + 111) = v4;
    operator delete(v4);
  }

  v5 = *(this + 106);
  if (v5)
  {
    *(this + 107) = v5;
    operator delete(v5);
  }

  v6 = *(this + 102);
  if (v6)
  {
    *(this + 103) = v6;
    operator delete(v6);
  }

  v7 = *(this + 99);
  if (v7)
  {
    *(this + 100) = v7;
    operator delete(v7);
  }

  v8 = *(this + 96);
  if (v8)
  {
    *(this + 97) = v8;
    operator delete(v8);
  }

  *(this + 85) = &unk_284F3A5F8;
  if (*(this + 711) < 0)
  {
    operator delete(*(this + 86));
    *(this + 75) = &unk_284F3A5F8;
    if ((*(this + 631) & 0x80000000) == 0)
    {
LABEL_17:
      *(this + 65) = &unk_284F3A5F8;
      if ((*(this + 551) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      operator delete(*(this + 66));
      *(this + 55) = &unk_284F3A5F8;
      if ((*(this + 471) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      operator delete(*(this + 56));
      goto LABEL_19;
    }
  }

  else
  {
    *(this + 75) = &unk_284F3A5F8;
    if ((*(this + 631) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(*(this + 76));
  *(this + 65) = &unk_284F3A5F8;
  if (*(this + 551) < 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  *(this + 55) = &unk_284F3A5F8;
  if (*(this + 471) < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  operations_research::StatsGroup::~StatsGroup((this + 360));
  operations_research::glop::GlopParameters::~GlopParameters((this + 24));
}

void operations_research::glop::VariablesInfo::~VariablesInfo(operations_research::glop::VariablesInfo *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 41) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    *(this + 29) = v5;
    operator delete(v5);
  }

  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  v7 = *(this + 20);
  if (v7)
  {
    *(this + 21) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }
}

void operations_research::glop::LinearProgram::~LinearProgram(operations_research::glop::LinearProgram *this)
{
  if (*(this + 439) < 0)
  {
    operator delete(*(this + 52));
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 45);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 41);
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 39) = v2;
    operator delete(v2);
  }

  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  v4 = *(this + 32);
  if (v4)
  {
    *(this + 33) = v4;
    operator delete(v4);
  }

  v5 = *(this + 29);
  if (v5)
  {
    *(this + 30) = v5;
    operator delete(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    v7 = *(this + 27);
    v8 = *(this + 26);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 26);
    }

    *(this + 27) = v6;
    operator delete(v8);
  }

  v10 = *(this + 23);
  if (v10)
  {
    *(this + 24) = v10;
    operator delete(v10);
  }

  v11 = *(this + 20);
  if (v11)
  {
    *(this + 21) = v11;
    operator delete(v11);
  }

  v12 = *(this + 17);
  if (v12)
  {
    *(this + 18) = v12;
    operator delete(v12);
  }

  v13 = *(this + 14);
  if (v13)
  {
    v14 = *(this + 15);
    v15 = *(this + 14);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 14);
    }

    *(this + 15) = v13;
    operator delete(v15);
  }

  v17 = *(this + 11);
  if (v17)
  {
    *(this + 12) = v17;
    operator delete(v17);
  }

  v18 = *(this + 8);
  if (v18)
  {
    *(this + 9) = v18;
    operator delete(v18);
  }

  v19 = *(this + 4);
  if (v19)
  {
    v20 = *(this + 5);
    v21 = *(this + 4);
    if (v20 != v19)
    {
      do
      {
        v23 = *(v20 - 6);
        v20 -= 6;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          MEMORY[0x23EED9440](v22, 0x1000C8077774924);
        }
      }

      while (v20 != v19);
      v21 = *(this + 4);
    }

    *(this + 5) = v19;
    operator delete(v21);
  }

  v24 = *this;
  if (*this)
  {
    v25 = *(this + 1);
    v26 = *this;
    if (v25 != v24)
    {
      do
      {
        v28 = *(v25 - 6);
        v25 -= 6;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x23EED9440](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
      v26 = *this;
    }

    *(this + 1) = v24;
    operator delete(v26);
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<long long,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(uint64_t a1, void *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91B0](&v6, a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91B0](v5, *a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CB9EE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<operations_research::sat::FeasibilityPump::LinearConstraintInternal>::__emplace_back_slow_path<operations_research::sat::FeasibilityPump::LinearConstraintInternal>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v8 = 40 * v2 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v12[4];
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12 += 5;
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[2];
      if (v14)
      {
        v9[3] = v14;
        operator delete(v14);
      }

      v9 += 5;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 8 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::resize_impl(result, 3uLL);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>::resize_impl(unint64_t *a1, unint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,4ul>(&v7, a1, v6);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, a2 - 16);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, v9 + 32);
        v27 = *(a2 - 16);
        v28 = *(v9 + 32);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return result;
          }

          v30 = *(a2 - 8);
          v29 = *(v9 + 40);
          if (v30 >= v29)
          {
            return result;
          }
        }

        else
        {
          v29 = *(v9 + 40);
          v30 = *(a2 - 8);
        }

        *(v9 + 32) = v27;
        *(a2 - 16) = v28;
        *(v9 + 40) = v30;
        *(a2 - 8) = v29;
        v31 = *(v9 + 32);
        v32 = *(v9 + 16);
        if (v31 >= v32)
        {
          if (v32 < v31)
          {
            return result;
          }

          v34 = *(v9 + 40);
          v33 = *(v9 + 24);
          if (v34 >= v33)
          {
            return result;
          }
        }

        else
        {
          v33 = *(v9 + 24);
          v34 = *(v9 + 40);
        }

        *(v9 + 16) = v31;
        *(v9 + 32) = v32;
        *(v9 + 24) = v34;
        *(v9 + 40) = v33;
        v35 = *v9;
        if (v31 >= *v9)
        {
          if (v35 < v31)
          {
            return result;
          }

          v36 = *(v9 + 8);
          if (v34 >= v36)
          {
            return result;
          }
        }

        else
        {
          v36 = *(v9 + 8);
        }

        *v9 = v31;
        *(v9 + 16) = v35;
        *(v9 + 8) = v34;
        *(v9 + 24) = v36;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 16);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v37 = v9 + 16;
      v39 = v9 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v9;
LABEL_56:
        v43 = v41;
        v41 = v37;
        v44 = *(v43 + 16);
        v45 = *v43;
        if (v44 >= *v43)
        {
          if (v45 < v44)
          {
            goto LABEL_55;
          }

          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
          if (v46 >= v47)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
        }

        *(v43 + 16) = v45;
        *(v41 + 8) = v47;
        v42 = v9;
        if (v43 == v9)
        {
          goto LABEL_54;
        }

        v48 = v40;
        while (1)
        {
          v51 = *(v9 + v48 - 16);
          if (v44 < v51)
          {
            v49 = *(v9 + v48 - 8);
          }

          else
          {
            if (v51 < v44)
            {
              v42 = v9 + v48;
LABEL_54:
              *v42 = v44;
              *(v42 + 8) = v46;
LABEL_55:
              v37 = v41 + 16;
              v40 += 16;
              if (v41 + 16 == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v49 = *(v9 + v48 - 8);
            if (v46 >= v49)
            {
              v42 = v43;
              goto LABEL_54;
            }
          }

          v43 -= 16;
          v50 = v9 + v48;
          *v50 = v51;
          *(v50 + 8) = v49;
          v48 -= 16;
          if (!v48)
          {
            v42 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v39)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v57 = v8;
        v8 = v37;
        v58 = *(v57 + 16);
        v59 = *v57;
        if (v58 < *v57)
        {
          break;
        }

        if (v59 >= v58)
        {
          v60 = *(v57 + 24);
          if (v60 < *(v57 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v37 += 16;
        if (v8 + 16 == a2)
        {
          return result;
        }
      }

      v60 = *(v57 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v59;
        *(j + 16) = *j;
        v59 = *(j - 24);
        if (v58 >= v59 && (v59 < v58 || v60 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v58;
      *j = v60;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v52 = (v12 - 2) >> 1;
        v53 = v52 + 1;
        v54 = v9 + 16 * v52;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v9, a3, (a2 - v9) >> 4, v54);
          v54 -= 16;
          --v53;
        }

        while (v53);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<double,int> *>(v9, a2, a3, v12);
          a2 -= 16;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8 + 16 * (v12 >> 1), v8, a2 - 16);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8, v8 + 16 * (v12 >> 1), a2 - 16);
      v15 = 16 * v13;
      v16 = 16 * v13 + v8 - 16;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8 + 16, v16, a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v8 + 32, v8 + 16 + v15, a2 - 48);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(v16, v14, v8 + 16 + v15);
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      v18 = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v18;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v19 = *(v8 - 16);
    if (v19 >= *v8 && (*v8 < v19 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(v8, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v8, v20);
    v9 = v20 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(v20 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 16;
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

  v23 = *(a2 - 16);
  v24 = *v9;
  if (v23 < *v9)
  {
    v25 = *(v9 + 8);
    v26 = *(a2 - 8);
LABEL_30:
    *v9 = v23;
    *(a2 - 16) = v24;
    *(v9 + 8) = v26;
    *(a2 - 8) = v25;
    return result;
  }

  if (v24 >= v23)
  {
    v26 = *(a2 - 8);
    v25 = *(v9 + 8);
    if (v26 < v25)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 8) < *(a1 + 8))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 8);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;
      *(a3 + 8) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 8);
      v16 = *(a2 + 8);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 8);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    *(a2 + 8) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 8);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 8);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 8) = v19;
    result = 1;
    *(a3 + 8) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 8);
    v11 = *(a3 + 8);
LABEL_9:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 8) = v11;
    *(a3 + 8) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 8);
      v15 = *(a2 + 8);
LABEL_11:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 8) = v15;
      result = 1;
      *(a2 + 8) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 8);
      v14 = *(a1 + 8);
      if (v15 < v14)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v3 < v9)
  {
    return 0;
  }

  v11 = *(a3 + 8);
  v10 = *(a2 + 8);
  if (v11 < v10)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 8);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 8);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 8) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 8))
  {
    i = a1;
    do
    {
      v6 = *(i + 16);
      i += 16;
      v7 = v6;
    }

    while (v2 >= v6 && (v7 < v2 || v3 >= *(i + 8)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 16; v2 < v4 || v4 >= v2 && v3 < *(a2 + 8); a2 -= 16)
    {
      v8 = *(a2 - 16);
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
      v11 = *(i + 16);
      i += 16;
      v9 = v11;
      v12 = *(i - 8);
      *(i - 8) = *(a2 + 8);
      *(a2 + 8) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 8)))
      {
        v13 = *(i + 16);
        i += 16;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 16);
          a2 -= 16;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 8));
    }

    while (i < a2);
  }

  if (i - 16 != a1)
  {
    *a1 = *(i - 16);
    *(a1 + 8) = *(i - 8);
  }

  *(i - 16) = v2;
  *(i - 8) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<double,int> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  while (1)
  {
    v5 = *(a1 + v2 + 16);
    if (v5 >= v3 && (v3 < v5 || *(a1 + v2 + 24) >= v4))
    {
      break;
    }

    v2 += 16;
  }

  v6 = a1 + v2 + 16;
  if (v2)
  {
    do
    {
      v7 = *(a2 - 16);
      a2 -= 16;
      v8 = v7;
    }

    while (v7 >= v3 && (v3 < v8 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v9 = *(a2 - 16);
        a2 -= 16;
        v10 = v9;
        if (v9 < v3)
        {
          break;
        }

        if (v3 < v10)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = a1 + v2 + 16;
  }

  else
  {
    v12 = *a2;
    v13 = a1 + v2 + 16;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 16 != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 8) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a2 - 16);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32);
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v28 = *(a2 - 8);
          v27 = *(a1 + 40);
          if (v28 >= v27)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v25;
        *(a2 - 16) = v26;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v32 = *(a1 + 40);
          v31 = *(a1 + 24);
          if (v32 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v29;
        *(a1 + 32) = v30;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (v29 >= *a1)
        {
          if (v33 < v29)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v32 >= v34)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v29;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16);
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
      v4 = *(a2 - 16);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v7 = *(a2 - 8);
        v6 = *(a1 + 8);
        if (v7 >= v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v4;
      *(a2 - 16) = v5;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,0>(a1, a1 + 16, a1 + 32);
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v11;
    v16 = *v8;
    if (*v11 >= *v8)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
      if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v16;
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
      if (v15 < v22)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v22 < v15)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v17 >= v20)
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
    *v14 = v15;
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

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 8);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 8);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 8) = v14;
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
              if (*v15 < v19 || v19 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            if (v12 < v20)
            {
              v16 = *(v15 + 8);
            }

            else
            {
              v16 = *(v15 + 8);
              if (v16 < v13)
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
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<double,int> *>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
        v12 = *(v9 + 4);
        v13 = *(v9 + 2);
        if (v13 < v12 || v12 >= v13 && *(v9 + 6) < *(v9 + 10))
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
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v21 = *(v17 + 2);
      v20 = *(v7 + 2);
      if (v21 >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v18;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (*v22 < v19)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v19 < v25)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v23 >= v20)
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
    *v22 = v19;
    *(v22 + 2) = v20;
  }

  return result;
}

BOOL GzipString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v20 = *MEMORY[0x277D85DE8];
  strm.next_in = 0;
  strm.avail_in = 0;
  strm.next_out = 0;
  memset(&strm.zalloc, 0, 24);
  if (deflateInit_(&strm, 9, "1.3.1", 112))
  {
    if (dword_2810BFF68 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_12, dword_2810BFF68))
    {
      return 0;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(__s, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/base/gzipstring.h", 73);
    v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__s, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Cannot initialize zlib compression.", 0x23uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__s);
    return 0;
  }

  strm.next_in = v8;
  strm.avail_in = v7;
  do
  {
    strm.next_out = __s;
    strm.avail_out = 0x8000;
    v10 = deflate(&strm, 4);
    v11 = *(v5 + 23);
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v5 + 8);
      if (v11 < strm.total_out)
      {
LABEL_5:
        std::string::append(v5, __s, strm.total_out - v11);
      }
    }

    else if (strm.total_out > v11)
    {
      goto LABEL_5;
    }
  }

  while (!v10);
  deflateEnd(&strm);
  v9 = v10 == 1;
  if (v10 != 1 && dword_2810BFF80 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFF78, dword_2810BFF80))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/base/gzipstring.h", 98);
    v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "Exception during zlib compression: (", 0x24uLL);
    v18 = v10;
    v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v14, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, ") ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<char *,0>(v15, &strm.msg);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
  }

  return v9;
}

void sub_23CBA09B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::WriteProtoToFile(const void *a1@<X0>, std::string::size_type a2@<X1>, google::protobuf::MessageLite *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  memset(&v39, 0, sizeof(v39));
  google::protobuf::io::StringOutputStream::StringOutputStream(v38, &v39);
  v37[0] = a1;
  v37[1] = a2;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      BYTE4(__p[0]) = 0;
      LODWORD(__p[0]) = 16777473;
      google::protobuf::json::MessageToJsonString(a3, &v39, __p, &__dst);
      v17 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        absl::lts_20240722::status_internal::StatusRep::Unref(__dst.__r_.__value_.__l.__data_, v16);
      }

      if (v17 != 1)
      {
        v32 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/file_util.cc", 171);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "Printing to stream failed.", 0x1AuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
        operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_0::operator()(a7, v37, "google::protobuf::util::MessageToJsonString()", 45);
        goto LABEL_64;
      }
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_17;
      }

      *(__p + 1) = 0;
      LOBYTE(__p[0]) = 1;
      google::protobuf::json::MessageToJsonString(a3, &v39, __p, &__dst);
      v15 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
        absl::lts_20240722::status_internal::StatusRep::Unref(__dst.__r_.__value_.__l.__data_, v14);
      }

      if (v15 != 1)
      {
        v31 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&__dst, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/file_util.cc", 183);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "Printing to stream failed.", 0x1AuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__dst);
        operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_0::operator()(a7, v37, "google::protobuf::util::MessageToJsonString()", 45);
        goto LABEL_64;
      }
    }

    MEMORY[0x23EED9020](&v40, ".json");
    goto LABEL_17;
  }

  if (!a4)
  {
    google::protobuf::TextFormat::PrintToString(a3, &v39);
  }

  if (a4 != 1)
  {
LABEL_17:
    if (a5)
    {
      memset(&__dst, 0, sizeof(__dst));
      v18 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
      v19 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v39.__r_.__value_.__r.__words[2]) : v39.__r_.__value_.__l.__size_;
      GzipString(v18, v19, &__dst);
      v20 = v39.__r_.__value_.__r.__words[2];
      v21 = *&v39.__r_.__value_.__l.__data_;
      v39 = __dst;
      *&__dst.__r_.__value_.__l.__data_ = v21;
      __dst.__r_.__value_.__r.__words[2] = v20;
      std::string::append(&v40, ".gz");
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
      __dst.__r_.__value_.__s.__data_[a2] = 0;
      if (!a6)
      {
        goto LABEL_40;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if (!a6)
      {
        goto LABEL_40;
      }
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v40;
    }

    else
    {
      v22 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    std::string::append(&__dst, v22, size);
LABEL_40:
    if (dword_27E25CDC0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_1::operator() const(void)::site, dword_27E25CDC0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/util/file_util.cc", 197);
      v33 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, "Writing ", 8uLL);
      v34 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
      if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v39.__r_.__value_.__l.__size_;
      }

      v43[0] = v34;
      v35 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v33, v43);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, " bytes to '", 0xBuLL);
      v36 = absl::lts_20240722::log_internal::LogMessage::operator<<(v35, &__dst);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, "'", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = __dst.__r_.__value_.__l.__size_;
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v39;
    }

    else
    {
      v26 = v39.__r_.__value_.__r.__words[0];
    }

    if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v39.__r_.__value_.__l.__size_;
    }

    file::SetContents(p_dst, v25, v26, v27, 47802, a7);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v28 = __dst.__r_.__value_.__r.__words[0];
LABEL_63:
      operator delete(v28);
      goto LABEL_64;
    }

    goto LABEL_64;
  }

  if (google::protobuf::MessageLite::SerializeToZeroCopyStream(a3, v38))
  {
    MEMORY[0x23EED9020](&v40, ".bin");
    goto LABEL_17;
  }

  v43[0] = "SerializeToZeroCopyStream()";
  v43[1] = 27;
  __dst.__r_.__value_.__r.__words[0] = v37;
  __dst.__r_.__value_.__l.__size_ = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  __dst.__r_.__value_.__r.__words[2] = v43;
  v45 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  absl::lts_20240722::str_format_internal::FormatPack("WriteProtoToFile('%s') failed: %s", 33, &__dst, 2uLL, __p);
  if ((v42 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v30 = v42;
  }

  else
  {
    v30 = __p[1];
  }

  absl::lts_20240722::InternalError(v29, v30, a7);
  if (v42 < 0)
  {
    v28 = __p[0];
    goto LABEL_63;
  }

LABEL_64:
  if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_68:
    operator delete(v40.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_68;
  }
}

void sub_23CBA0F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::WriteProtoToFile(std::string_view,google::protobuf::Message const&,operations_research::ProtoWriteFormat,BOOL,BOOL)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = a3;
  v9[1] = a4;
  v10[0] = a2;
  v10[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  v10[2] = v9;
  v10[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
  absl::lts_20240722::str_format_internal::FormatPack("WriteProtoToFile('%s') failed: %s", 33, v10, 2uLL, __p);
  if ((v8 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = __p[1];
  }

  absl::lts_20240722::InternalError(v5, v6, a1);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23CBA10CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double *operations_research::ComputeScalingErrors(double *result, int a2, double *a3, double a4, uint64_t a5, double *a6, uint64_t a7, double *a8, double *a9)
{
  *a8 = 0.0;
  if (a2 < 1)
  {
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v9 = a2 & 0x7FFFFFFF;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      if (*result != 0.0)
      {
        v18 = *result * a4;
        v19 = round(v18);
        if (v18 == 0.0)
        {
          v10 = INFINITY;
        }

        else
        {
          v13 = fabs(v19 / v18 + -1.0);
          if (v10 < v13)
          {
            v10 = v13;
          }
        }

        *a8 = v10;
        v14 = v19 - v18;
        v15 = v14 * *a3;
        v16 = v14 * *a6;
        if (v15 >= v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        v11 = v11 + v17;
        if (v16 >= v15)
        {
          v16 = v15;
        }

        v12 = v12 + v16;
      }

      ++a6;
      ++a3;
      ++result;
      --v9;
    }

    while (v9);
  }

  v20 = fabs(v11);
  v21 = fabs(v12);
  if (v20 < v21)
  {
    v20 = v21;
  }

  *a9 = v20;
  return result;
}

long double operations_research::GetBestScalingOfDoublesToInt64(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    return 0.0;
  }

  v8 = 63 - __clz(a7);
  if (!a7)
  {
    v8 = 0;
  }

  v43 = v8;
  if (a2 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a7;
    v17 = a2 & 0x7FFFFFFF;
    v18 = 1;
    v19 = 1;
    v42 = v17;
    while (1)
    {
      v21 = *(a1 + 8 * v12);
      v22 = v21 * *(a3 + 8 * v12);
      v23 = v21 * *(a5 + 8 * v12);
      if (v22 <= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      if (v22 <= v23)
      {
        v23 = v22;
      }

      v25 = v23 <= 0.0 ? v23 : 0.0;
      v26 = v24 >= 0.0 ? v24 : 0.0;
      if (v25 == -INFINITY || v26 == INFINITY)
      {
        return 0.0;
      }

      if (v25 == 0.0 && v26 == 0.0)
      {
        v20 = v13;
        ++v12;
        ++v18;
        if (v12 == v17)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v26 <= -v25)
        {
          v27 = -v25;
        }

        else
        {
          v27 = v26;
        }

        v44 = v19;
        v28 = v43 - ilogb(v27);
        if (v28 >= 1023)
        {
          v29 = 1023;
        }

        else
        {
          v29 = v28;
        }

        v20 = v29 - (round(ldexp(fabs(v27), v29)) > v16);
        if (v44 & 1 | (v20 < v13) || ((v14 -= llround(ldexp(v25, v13)), v15 += llround(ldexp(v26, v13)), v14 <= a7) ? (v30 = v15 > a7) : (v30 = 1), !v30 ? (v31 = 0) : (v31 = 1), v20 = v13 - v31, v30))
        {
          do
          {
            v32 = 0;
            v14 = 0;
            v15 = 0;
            do
            {
              v33 = *(a1 + 8 * v32);
              v34 = v33 * *(a3 + 8 * v32);
              v35 = v33 * *(a5 + 8 * v32);
              if (v34 <= v35)
              {
                v36 = v34;
              }

              else
              {
                v36 = v35;
              }

              if (v34 <= v35)
              {
                v34 = v35;
              }

              if (v36 <= 0.0)
              {
                v37 = v36;
              }

              else
              {
                v37 = 0.0;
              }

              if (v34 >= 0.0)
              {
                v38 = v34;
              }

              else
              {
                v38 = 0.0;
              }

              v14 -= llround(ldexp(v37, v20));
              v15 += llround(ldexp(v38, v20));
              ++v32;
            }

            while (v18 != v32);
            v39 = v14 > a7 || v15 > a7;
            v40 = v39;
            v20 -= v40;
          }

          while (v39);
        }

        v19 = 0;
        v17 = v42;
        ++v12;
        ++v18;
        v13 = v20;
        if (v12 == v42)
        {
          goto LABEL_61;
        }
      }
    }
  }

  v20 = 0;
LABEL_61:

  return ldexp(1.0, v20);
}

uint64_t operations_research::ComputeGcdOfRoundedDoubles(uint64_t a1, int a2, double a3)
{
  if (a2 < 1)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 & 0x7FFFFFFF;
  do
  {
    v6 = fabs(round(*(a1 + 8 * v3) * a3));
    v7 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    if (v4)
    {
      v8 = v4;
      do
      {
        v4 = v7;
        v7 = v8 % v7;
        v8 = v4;
      }

      while (v7);
LABEL_7:
      if (++v3 >= v5)
      {
        break;
      }

      continue;
    }

    v4 = v6;
    if (++v3 >= v5)
    {
      break;
    }
  }

  while (v4 != 1);
  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void *operations_research::glop::InitialBasis::InitialBasis(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 0;
  result[1] = result;
  result[2] = result;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void operations_research::glop::InitialBasis::CompleteBixbyBasis(uint64_t a1, int a2, std::vector<int> *a3)
{
  v6 = **(a1 + 24);
  memset(v29, 0, sizeof(v29));
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(v28, 0, sizeof(v28));
  v7 = a3->__end_ - a3->__begin_;
  if (v6 > v7)
  {
    std::vector<int>::__append(a3, v6 - v7, &operations_research::glop::kInvalidCol);
  }

  else if (v6 < v7)
  {
    a3->__end_ = &a3->__begin_[v6];
  }

  v8 = **(a1 + 24);
  v26 = 0;
  v27 = 0;
  __p = 0;
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  operations_research::glop::InitialBasis::ComputeCandidates(a1, a2, &v22);
  v9 = v22;
  if (v23 != v22)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v9[v10];
      v13 = *(a1 + 24);
      v14 = v13[7];
      v15 = *(v14 + 8 * v12);
      v16 = v13[4] + 4 * v15;
      v17 = v13[1] + 8 * v15;
      v21[0] = *(v14 + (((v12 << 32) + 0x100000000) >> 29)) - v15;
      v21[1] = v16;
      v21[2] = v17;
      if (operations_research::glop::InfinityNorm(v21) == 1.0)
      {
        v20 = 0;
        v18 = operations_research::glop::RestrictedInfinityNorm(v21, v28, &v20);
        if (v18 > 0.99 || operations_research::glop::IsDominated(v21, &__p) && (v18 = operations_research::glop::RestrictedInfinityNorm(v21, v29, &v20), v18 != 0.0))
        {
          *(v29[0] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v20);
          operations_research::glop::SetSupportToFalse(v21, v28);
          v19 = v20;
          *(__p + v20) = fabs(v18) * 0.01;
          a3->__begin_[v19] = v12;
        }
      }

      v10 = v11;
      v9 = v22;
      ++v11;
    }

    while (v10 < v23 - v22);
  }

  if (v9)
  {
    v23 = v9;
    operator delete(v9);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28[0])
  {
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    operator delete(v29[0]);
  }
}

void sub_23CBA18D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
    v23 = a22;
    if (!a22)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v23 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  _Unwind_Resume(exception_object);
}

unint64_t operations_research::glop::InitialBasis::ComputeCandidates(uint64_t a1, int a2, unsigned int **a3)
{
  v5 = *a3;
  a3[1] = *a3;
  *a1 = 0;
  v17 = 0;
  if (a2 < 1)
  {
    v8 = 0.0;
    v10 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      if (*(**(a1 + 56) + v7) != 4 && (*(*(*(a1 + 24) + 56) + (((v7 << 32) + 0x100000000) >> 29)) - *(*(*(a1 + 24) + 56) + 8 * v7)) >= 1)
      {
        std::vector<int>::push_back[abi:ne200100](a3, &v17);
        v9 = v17;
        v8 = fabs(*(**(a1 + 32) + 8 * v17));
        if (*a1 >= v8)
        {
          v8 = *a1;
        }

        *a1 = v8;
        LODWORD(v7) = v9;
      }

      v7 = (v7 + 1);
      v17 = v7;
    }

    while (v7 < a2);
    v10 = *a3;
    v5 = a3[1];
  }

  v11 = 126 - 2 * __clz((v5 - v10) >> 2);
  v12 = v8 * 1000.0;
  if (v5 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = v8 == 0.0;
  v15 = 1.0;
  if (!v14)
  {
    v15 = v12;
  }

  *a1 = v15;
  v18 = *(a1 + 8);
  return std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v10, v5, &v18, v13, 1);
}

void operations_research::glop::InitialBasis::GetMarosBasis<false>(uint64_t a1, uint64_t a2, std::vector<int> *this)
{
  v3 = this;
  if (dword_27E25CDD8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&void operations_research::glop::InitialBasis::GetMarosBasis<false>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CDD8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v90, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 235);
    v83 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v90, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, "Starting Maros crash procedure.", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v90);
    v3 = this;
  }

  v6 = **(a1 + 24);
  v7 = v6;
  v8 = v3->__end_ - v3->__begin_;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v3->__end_ = &v3->__begin_[v6];
    }
  }

  else
  {
    std::vector<int>::__append(v3, v6 - v8);
  }

  v86 = (a2 - v6);
  if (v6 < 1)
  {
    goto LABEL_14;
  }

  begin = v3->__begin_;
  if (v6 > 7)
  {
    v10 = v6 & 0x7FFFFFF8;
    v11 = vdupq_n_s32(v86);
    v12 = xmmword_23CE38660;
    v13 = begin + 1;
    v14.i64[0] = 0x400000004;
    v14.i64[1] = 0x400000004;
    v15.i64[0] = 0x800000008;
    v15.i64[1] = 0x800000008;
    v16 = v10;
    do
    {
      v17 = vaddq_s32(v11, v12);
      v13[-1] = v17;
      *v13 = vaddq_s32(v17, v14);
      v12 = vaddq_s32(v12, v15);
      v13 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v10 == v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = v10 + a2 - v6;
  v19 = &begin->i32[v10];
  v20 = v6 - v10;
  do
  {
    *v19++ = v18++;
    --v20;
  }

  while (v20);
LABEL_14:
  if (a2 << 32)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v86 >= 1)
  {
    v21 = 0;
    v22 = **(a1 + 56);
    do
    {
      if (*(v22 + v21) == 4)
      {
        *((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v21);
      }

      ++v21;
    }

    while (v86 != v21);
  }

  v84 = v6;
  if (v86 < a2)
  {
    v23 = **(a1 + 56);
    v24 = v86;
    do
    {
      if (!*(v23 + v24))
      {
        *((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v24);
      }

      ++v24;
    }

    while (a2 != v24);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  *v96 = 0u;
  *v93 = 0u;
  *v94 = 0u;
  *v91 = 0u;
  v92 = 0u;
  *v90 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v90, v6, a2);
  if (v86 >= 1)
  {
    for (i = 0; i != v86; ++i)
    {
      v26 = *(a1 + 24);
      v27 = *(v26 + 56);
      v28 = *(v27 + 8 * i);
      v29 = *(v27 + (((i << 32) + 0x100000000) >> 29)) - v28;
      if (v29 >= 1)
      {
        v30 = (*(v26 + 32) + 4 * v28);
        do
        {
          v32 = *v30++;
          v31 = v32;
          if (((*((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v32) & 1) != 0 && (*(8 * (i >> 6)) & (1 << i)) != 0)
          {
            operations_research::glop::MatrixNonZeroPattern::AddEntry(v90, v31, i);
          }

          --v29;
        }

        while (v29);
      }
    }
  }

  v33 = this;
  if (v7 >= 1)
  {
    v34 = v91[1];
    v35 = a2 - v84;
    v36 = v7;
    do
    {
      if (!*v34++)
      {
        *((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v35);
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  v89 = -1;
  if (v84 < 1)
  {
    goto LABEL_91;
  }

LABEL_45:
  v38 = 0;
  v39 = 0x80000000;
  v40 = -1;
  do
  {
    if (((*(((a2 - v7 + v38) >> 3) & 0x1FFFFFFFFFFFFFF8) >> (a2 - v7 + v38)) & 1) == 0)
    {
      goto LABEL_46;
    }

    if ((*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1) > 3u)
    {
      v41 = -*(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v41 = *&asc_23CE490F0[4 * (*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1)] - *(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_46;
      }
    }

    v89 = v38;
    v40 = v38;
    v39 = v41;
LABEL_46:
    ++v38;
  }

  while (v7 != v38);
  if (v40 != -1)
  {
    v88 = -1;
    v42 = v90[0] + 32 * v40;
    v45 = *v42;
    v44 = (v42 + 1);
    v43 = v45;
    if (v45)
    {
      v44 = *v44;
    }

    if ((v43 & 0x7FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_43;
    }

    v46 = &v44[v43 >> 1];
    v47 = 0.0;
    v48 = 0x80000000;
    v49 = -1;
    while (1)
    {
      v50 = *v44;
      if ((*((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v50))
      {
        if ((*(**(a1 + 56) + v50) - 1) > 3u)
        {
          v51 = v50 << 32;
          v52 = 30 - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v51 = v50 << 32;
          v52 = dword_23CE49114[(*(**(a1 + 56) + v50) - 1)] - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_60;
          }
        }

        v53 = *(a1 + 24);
        v54 = v53[7];
        v55 = *(v54 + (v51 >> 29));
        v56 = *(v54 + ((v51 + 0x100000000) >> 29)) - v55;
        if (v56 < 1)
        {
          v47 = 0.0;
        }

        else
        {
          v57 = (v53[4] + 4 * v55);
          v58 = (v53[1] + 8 * v55);
          v47 = 0.0;
          v59 = 0.0;
          do
          {
            v60 = *v58++;
            v61 = v60;
            LODWORD(v60) = *v57++;
            v62 = fabs(v61);
            if (LODWORD(v60) == v40)
            {
              v47 = v62;
            }

            if (v59 < v62)
            {
              v59 = v62;
            }

            --v56;
          }

          while (v56);
          if (v47 < v59 * 0.001)
          {
            goto LABEL_60;
          }
        }

        v88 = *v44;
        v49 = v50;
        v48 = v52;
      }

LABEL_60:
      if (++v44 == v46)
      {
        if (v49 == -1)
        {
          goto LABEL_43;
        }

        v63 = **(a1 + 56);
        if ((*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1) > 3u)
        {
          v64 = 3;
          v65 = *(v63 + v49) - 1;
          if (v65 <= 3u)
          {
            goto LABEL_81;
          }

LABEL_78:
          if (v64 >= 3)
          {
            goto LABEL_43;
          }

LABEL_82:
          v33->__begin_[v40] = v49;
          if (dword_27E25CDF0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&void operations_research::glop::InitialBasis::GetMarosBasis<false>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#2}::operator() const(void)::site, dword_27E25CDF0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v87, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 341);
            v74 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v87, 2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "Slack variable ", 0xFuLL);
            v75 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v74, &v89);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v75, " replaced by column ", 0x14uLL);
            v76 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v75, &v88);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v76, ". Pivot coefficient magnitude: ", 0x1FuLL);
            v100[0] = v47;
            v77 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v76, v100);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v77, ".", 1uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v87);
            v33 = this;
          }

          v66 = v89;
          v67 = v88;
          *((v88 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v88);
          *(((v66 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v66 + v86));
          operations_research::glop::MatrixNonZeroPattern::DeleteRowAndColumn(v90, v66, v67);
          v68 = (v90[0] + 32 * v89);
          v71 = *v68;
          v69 = v68 + 1;
          v70 = v71;
          if (v71)
          {
            v69 = *v69;
          }

          if ((v70 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v72 = 4 * (v70 >> 1);
            do
            {
              v73 = *v69;
              v69 = (v69 + 4);
              *((v73 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v73);
              v72 -= 4;
            }

            while (v72);
          }
        }

        else
        {
          v64 = dword_23CE49124[(*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1)];
          v65 = *(v63 + v49) - 1;
          if (v65 > 3u)
          {
            goto LABEL_78;
          }

LABEL_81:
          if (v64 < dword_23CE49124[v65])
          {
            goto LABEL_82;
          }

LABEL_43:
          *(((v40 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v40 + v86));
        }

        v89 = -1;
        goto LABEL_45;
      }
    }
  }

LABEL_91:
  if (*(&v97 + 1))
  {
    *&v98 = *(&v97 + 1);
    operator delete(*(&v97 + 1));
  }

  if (v96[0])
  {
    operator delete(v96[0]);
  }

  if (v94[1])
  {
    operator delete(v94[1]);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  if (v91[1])
  {
    *&v92 = v91[1];
    operator delete(v91[1]);
  }

  v78 = v90[0];
  if (v90[0])
  {
    v79 = v90[1];
    v80 = v90[0];
    if (v90[1] != v90[0])
    {
      v81 = v90[1];
      do
      {
        v82 = *(v81 - 32);
        v81 -= 4;
        if (v82)
        {
          operator delete(*(v79 - 3));
        }

        v79 = v81;
      }

      while (v81 != v78);
      v80 = v90[0];
    }

    v90[1] = v78;
    operator delete(v80);
  }
}

void sub_23CBA23B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBA23CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, void **a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v35 = a29;
    if (!a29)
    {
LABEL_3:
      v36 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v35 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_4:
    v37 = a23;
    if (!a23)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a23;
  if (!a23)
  {
LABEL_5:
    v38 = a20;
    if (!a20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a20;
  if (!a20)
  {
LABEL_6:
    v39 = a17;
    if (!a17)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v38);
  v39 = a17;
  if (!a17)
  {
LABEL_7:
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_14:
  v40 = a18;
  v41 = v39;
  if (a18 != v39)
  {
    v42 = a18;
    do
    {
      v43 = *(v42 - 32);
      v42 -= 4;
      if (v43)
      {
        operator delete(*(v40 - 3));
      }

      v40 = v42;
    }

    while (v42 != v39);
    v41 = a17;
  }

  operator delete(v41);
  if (!v33)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::InitialBasis::GetMarosBasis<true>(uint64_t a1, uint64_t a2, std::vector<int> *this)
{
  v3 = this;
  if (dword_27E25CE08 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&void operations_research::glop::InitialBasis::GetMarosBasis<true>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CE08))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v90, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 235);
    v83 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v90, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, "Starting Maros crash procedure.", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v90);
    v3 = this;
  }

  v6 = **(a1 + 24);
  v7 = v6;
  v8 = v3->__end_ - v3->__begin_;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v3->__end_ = &v3->__begin_[v6];
    }
  }

  else
  {
    std::vector<int>::__append(v3, v6 - v8);
  }

  v86 = (a2 - v6);
  if (v6 < 1)
  {
    goto LABEL_14;
  }

  begin = v3->__begin_;
  if (v6 > 7)
  {
    v10 = v6 & 0x7FFFFFF8;
    v11 = vdupq_n_s32(v86);
    v12 = xmmword_23CE38660;
    v13 = begin + 1;
    v14.i64[0] = 0x400000004;
    v14.i64[1] = 0x400000004;
    v15.i64[0] = 0x800000008;
    v15.i64[1] = 0x800000008;
    v16 = v10;
    do
    {
      v17 = vaddq_s32(v11, v12);
      v13[-1] = v17;
      *v13 = vaddq_s32(v17, v14);
      v12 = vaddq_s32(v12, v15);
      v13 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v10 == v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = v10 + a2 - v6;
  v19 = &begin->i32[v10];
  v20 = v6 - v10;
  do
  {
    *v19++ = v18++;
    --v20;
  }

  while (v20);
LABEL_14:
  if (a2 << 32)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v86 >= 1)
  {
    v21 = 0;
    v22 = **(a1 + 56);
    do
    {
      if (*(v22 + v21) == 4 || *(**(a1 + 32) + 8 * v21) != 0.0)
      {
        *((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v21);
      }

      ++v21;
    }

    while (v86 != v21);
  }

  v84 = v6;
  if (v86 < a2)
  {
    v23 = **(a1 + 56);
    v24 = v86;
    do
    {
      if (!*(v23 + v24))
      {
        *((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v24);
      }

      ++v24;
    }

    while (a2 != v24);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  *v96 = 0u;
  *v93 = 0u;
  *v94 = 0u;
  *v91 = 0u;
  v92 = 0u;
  *v90 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v90, v6, a2);
  if (v86 >= 1)
  {
    for (i = 0; i != v86; ++i)
    {
      v26 = *(a1 + 24);
      v27 = *(v26 + 56);
      v28 = *(v27 + 8 * i);
      v29 = *(v27 + (((i << 32) + 0x100000000) >> 29)) - v28;
      if (v29 >= 1)
      {
        v30 = (*(v26 + 32) + 4 * v28);
        do
        {
          v32 = *v30++;
          v31 = v32;
          if (((*((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v32) & 1) != 0 && (*(8 * (i >> 6)) & (1 << i)) != 0)
          {
            operations_research::glop::MatrixNonZeroPattern::AddEntry(v90, v31, i);
          }

          --v29;
        }

        while (v29);
      }
    }
  }

  v33 = this;
  if (v7 >= 1)
  {
    v34 = v91[1];
    v35 = a2 - v84;
    v36 = v7;
    do
    {
      if (!*v34++)
      {
        *((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v35);
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  v89 = -1;
  if (v84 < 1)
  {
    goto LABEL_93;
  }

LABEL_47:
  v38 = 0;
  v39 = 0x80000000;
  v40 = -1;
  do
  {
    if (((*(((a2 - v7 + v38) >> 3) & 0x1FFFFFFFFFFFFFF8) >> (a2 - v7 + v38)) & 1) == 0)
    {
      goto LABEL_48;
    }

    if ((*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1) > 3u)
    {
      v41 = -*(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v41 = *&asc_23CE490F0[4 * (*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1)] - *(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_48;
      }
    }

    v89 = v38;
    v40 = v38;
    v39 = v41;
LABEL_48:
    ++v38;
  }

  while (v7 != v38);
  if (v40 != -1)
  {
    v88 = -1;
    v42 = v90[0] + 32 * v40;
    v45 = *v42;
    v44 = (v42 + 1);
    v43 = v45;
    if (v45)
    {
      v44 = *v44;
    }

    if ((v43 & 0x7FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_45;
    }

    v46 = &v44[v43 >> 1];
    v47 = 0.0;
    v48 = 0x80000000;
    v49 = -1;
    while (1)
    {
      v50 = *v44;
      if ((*((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v50))
      {
        if ((*(**(a1 + 56) + v50) - 1) > 3u)
        {
          v51 = v50 << 32;
          v52 = 30 - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v51 = v50 << 32;
          v52 = dword_23CE49114[(*(**(a1 + 56) + v50) - 1)] - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_62;
          }
        }

        v53 = *(a1 + 24);
        v54 = v53[7];
        v55 = *(v54 + (v51 >> 29));
        v56 = *(v54 + ((v51 + 0x100000000) >> 29)) - v55;
        if (v56 < 1)
        {
          v47 = 0.0;
        }

        else
        {
          v57 = (v53[4] + 4 * v55);
          v58 = (v53[1] + 8 * v55);
          v47 = 0.0;
          v59 = 0.0;
          do
          {
            v60 = *v58++;
            v61 = v60;
            LODWORD(v60) = *v57++;
            v62 = fabs(v61);
            if (LODWORD(v60) == v40)
            {
              v47 = v62;
            }

            if (v59 < v62)
            {
              v59 = v62;
            }

            --v56;
          }

          while (v56);
          if (v47 < v59 * 0.001)
          {
            goto LABEL_62;
          }
        }

        v88 = *v44;
        v49 = v50;
        v48 = v52;
      }

LABEL_62:
      if (++v44 == v46)
      {
        if (v49 == -1)
        {
          goto LABEL_45;
        }

        v63 = **(a1 + 56);
        if ((*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1) > 3u)
        {
          v64 = 3;
          v65 = *(v63 + v49) - 1;
          if (v65 <= 3u)
          {
            goto LABEL_83;
          }

LABEL_80:
          if (v64 >= 3)
          {
            goto LABEL_45;
          }

LABEL_84:
          v33->__begin_[v40] = v49;
          if (dword_27E25CE20 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&void operations_research::glop::InitialBasis::GetMarosBasis<true>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#2}::operator() const(void)::site, dword_27E25CE20))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v87, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 341);
            v74 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v87, 2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "Slack variable ", 0xFuLL);
            v75 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v74, &v89);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v75, " replaced by column ", 0x14uLL);
            v76 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v75, &v88);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v76, ". Pivot coefficient magnitude: ", 0x1FuLL);
            v100[0] = v47;
            v77 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v76, v100);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v77, ".", 1uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v87);
            v33 = this;
          }

          v66 = v89;
          v67 = v88;
          *((v88 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v88);
          *(((v66 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v66 + v86));
          operations_research::glop::MatrixNonZeroPattern::DeleteRowAndColumn(v90, v66, v67);
          v68 = (v90[0] + 32 * v89);
          v71 = *v68;
          v69 = v68 + 1;
          v70 = v71;
          if (v71)
          {
            v69 = *v69;
          }

          if ((v70 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v72 = 4 * (v70 >> 1);
            do
            {
              v73 = *v69;
              v69 = (v69 + 4);
              *((v73 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v73);
              v72 -= 4;
            }

            while (v72);
          }
        }

        else
        {
          v64 = dword_23CE49124[(*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1)];
          v65 = *(v63 + v49) - 1;
          if (v65 > 3u)
          {
            goto LABEL_80;
          }

LABEL_83:
          if (v64 < dword_23CE49124[v65])
          {
            goto LABEL_84;
          }

LABEL_45:
          *(((v40 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v40 + v86));
        }

        v89 = -1;
        goto LABEL_47;
      }
    }
  }

LABEL_93:
  if (*(&v97 + 1))
  {
    *&v98 = *(&v97 + 1);
    operator delete(*(&v97 + 1));
  }

  if (v96[0])
  {
    operator delete(v96[0]);
  }

  if (v94[1])
  {
    operator delete(v94[1]);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  if (v91[1])
  {
    *&v92 = v91[1];
    operator delete(v91[1]);
  }

  v78 = v90[0];
  if (v90[0])
  {
    v79 = v90[1];
    v80 = v90[0];
    if (v90[1] != v90[0])
    {
      v81 = v90[1];
      do
      {
        v82 = *(v81 - 32);
        v81 -= 4;
        if (v82)
        {
          operator delete(*(v79 - 3));
        }

        v79 = v81;
      }

      while (v81 != v78);
      v80 = v90[0];
    }

    v90[1] = v78;
    operator delete(v80);
  }
}

void sub_23CBA2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBA2E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, void **a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v35 = a29;
    if (!a29)
    {
LABEL_3:
      v36 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v35 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_4:
    v37 = a23;
    if (!a23)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a23;
  if (!a23)
  {
LABEL_5:
    v38 = a20;
    if (!a20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a20;
  if (!a20)
  {
LABEL_6:
    v39 = a17;
    if (!a17)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v38);
  v39 = a17;
  if (!a17)
  {
LABEL_7:
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_14:
  v40 = a18;
  v41 = v39;
  if (a18 != v39)
  {
    v42 = a18;
    do
    {
      v43 = *(v42 - 32);
      v42 -= 4;
      if (v43)
      {
        operator delete(*(v40 - 3));
      }

      v40 = v42;
    }

    while (v42 != v39);
    v41 = a17;
  }

  operator delete(v41);
  if (!v33)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::InitialBasis::CompleteTriangularBasis<false>(uint64_t a1, int a2, std::vector<int> *a3)
{
  v5 = **(a1 + 24);
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a3->__end_ - a3->__begin_;
  if (v5 > v6)
  {
    std::vector<int>::__append(a3, v5 - v6, &operations_research::glop::kInvalidCol);
  }

  else if (v5 < v6)
  {
    a3->__end_ = &a3->__begin_[v5];
  }

  v33 = 0;
  *__p = 0u;
  v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v24 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v24, 0, a2);
  if (a2 <= 0)
  {
    *a1 = 0x3FF0000000000000;
    v34 = *(a1 + 16);
  }

  else
  {
    v7 = 0;
    v8 = a2 & 0x7FFFFFFF;
    do
    {
      v9 = *(a1 + 24);
      v10 = *(v9 + 56);
      v11 = *(v10 + 8 * v7);
      v12 = *(v10 + (((v7 << 32) + 0x100000000) >> 29)) - v11;
      if (v12 >= 1)
      {
        v13 = (*(v9 + 32) + 4 * v11);
        do
        {
          v15 = *v13++;
          v14 = v15;
          if ((*((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v15))
          {
            operations_research::glop::MatrixNonZeroPattern::AddEntry(v24, v14, v7);
          }

          --v12;
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != v8);
    v16 = 0;
    *a1 = 0;
    do
    {
      v17 = fabs(*(**(a1 + 32) + 8 * v16));
      if (*a1 >= v17)
      {
        v17 = *a1;
      }

      *a1 = v17;
      if (*(v27[0] + v16) == 1)
      {
        operator new();
      }

      ++v16;
    }

    while (v8 != v16);
    v18 = 1.0;
    if (*a1 != 0.0)
    {
      v18 = *a1 * 1000.0;
    }

    *a1 = v18;
    v34 = *(a1 + 16);
  }

  if (__p[1])
  {
    *&v32 = __p[1];
    operator delete(__p[1]);
  }

  if (v30[0])
  {
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    operator delete(v28[1]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v25[1])
  {
    *&v26 = v25[1];
    operator delete(v25[1]);
  }

  v19 = v24[0];
  if (v24[0])
  {
    v20 = v24[1];
    v21 = v24[0];
    if (v24[1] != v24[0])
    {
      v22 = v24[1];
      do
      {
        v23 = *(v22 - 32);
        v22 -= 4;
        if (v23)
        {
          operator delete(*(v20 - 3));
        }

        v20 = v22;
      }

      while (v22 != v19);
      v21 = v24[0];
    }

    v24[1] = v19;
    operator delete(v21);
  }
}

void sub_23CBA390C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::InitialBasis::CompleteTriangularBasis<true>(uint64_t a1, int a2, std::vector<int> *a3)
{
  v5 = **(a1 + 24);
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a3->__end_ - a3->__begin_;
  if (v5 > v6)
  {
    std::vector<int>::__append(a3, v5 - v6, &operations_research::glop::kInvalidCol);
  }

  else if (v5 < v6)
  {
    a3->__end_ = &a3->__begin_[v5];
  }

  v34 = 0;
  *__p = 0u;
  v33 = 0u;
  v30 = 0u;
  *v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v25, 0, a2);
  if (a2 <= 0)
  {
    v19 = a1;
    *a1 = 0x3FF0000000000000;
  }

  else
  {
    v7 = 0;
    v8 = a2 & 0x7FFFFFFF;
    do
    {
      if (*(**(a1 + 32) + 8 * v7) == 0.0)
      {
        v9 = *(a1 + 24);
        v10 = *(v9 + 56);
        v11 = *(v10 + 8 * v7);
        v12 = *(v10 + (((v7 << 32) + 0x100000000) >> 29)) - v11;
        if (v12 >= 1)
        {
          v13 = (*(v9 + 32) + 4 * v11);
          do
          {
            v15 = *v13++;
            v14 = v15;
            if ((*((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v15))
            {
              operations_research::glop::MatrixNonZeroPattern::AddEntry(v25, v14, v7);
            }

            --v12;
          }

          while (v12);
        }
      }

      ++v7;
    }

    while (v7 != v8);
    v16 = 0;
    *a1 = 0;
    do
    {
      v17 = fabs(*(**(a1 + 32) + 8 * v16));
      if (*a1 >= v17)
      {
        v17 = *a1;
      }

      *a1 = v17;
      if (*(v28[0] + v16) == 1)
      {
        operator new();
      }

      ++v16;
    }

    while (v8 != v16);
    v18 = 1.0;
    if (*a1 != 0.0)
    {
      v18 = *a1 * 1000.0;
    }

    *a1 = v18;
    v19 = a1;
  }

  v35 = *(v19 + 16);
  if (__p[1])
  {
    *&v33 = __p[1];
    operator delete(__p[1]);
  }

  if (v31[0])
  {
    operator delete(v31[0]);
  }

  if (v29[1])
  {
    operator delete(v29[1]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v26[1])
  {
    *&v27 = v26[1];
    operator delete(v26[1]);
  }

  v20 = v25[0];
  if (v25[0])
  {
    v21 = v25[1];
    v22 = v25[0];
    if (v25[1] != v25[0])
    {
      v23 = v25[1];
      do
      {
        v24 = *(v23 - 32);
        v23 -= 4;
        if (v24)
        {
          operator delete(*(v21 - 3));
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = v25[0];
    }

    v25[1] = v20;
    operator delete(v22);
  }
}

void sub_23CBA4368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = **(*a1 + 56);
  v6 = *(v5 + a2);
  if ((v6 - 1) > 3u)
  {
    v7 = 2;
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
LABEL_5:
      v10 = v7 >= 2;
      if (v7 != 2)
      {
        return !v10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = dword_23CE49100[(v6 - 1)];
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
      goto LABEL_5;
    }
  }

  v11 = dword_23CE49100[v9];
  v10 = v7 >= v11;
  if (v7 != v11)
  {
    return !v10;
  }

LABEL_11:
  switch(v6)
  {
    case 1:
      v12 = 8 * a2;
      v13 = *(**(v4 + 40) + v12);
      break;
    case 2:
      v12 = 8 * a2;
      v13 = -*(**(v4 + 48) + v12);
      break;
    case 3:
      v12 = 8 * a2;
      v13 = *(**(v4 + 40) + v12) - *(**(v4 + 48) + v12);
      break;
    default:
      v12 = 8 * a2;
      v13 = 0.0;
      break;
  }

  v14 = **(v4 + 32);
  v15 = *v4;
  v16 = v13 + fabs(*(v14 + v12)) / *v4;
  switch(v8)
  {
    case 1:
      v22 = **(v4 + 40);
      v19 = 8 * a3;
      v20 = *(v22 + v19);
      break;
    case 2:
      v21 = **(v4 + 48);
      v19 = 8 * a3;
      v20 = -*(v21 + v19);
      break;
    case 3:
      v17 = *(v4 + 48);
      v18 = **(v4 + 40);
      v19 = 8 * a3;
      v20 = *(v18 + v19) - *(*v17 + v19);
      break;
    default:
      v19 = 8 * a3;
      v20 = 0.0;
      break;
  }

  return v16 < v20 + fabs(*(v14 + v19)) / v15;
}

BOOL operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(uint64_t *a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = **(*a1 + 56);
  v6 = *(v5 + a2);
  if ((v6 - 1) > 3u)
  {
    v7 = 2;
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
LABEL_5:
      v10 = v7 > 2;
      if (v7 != 2)
      {
        return v10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = dword_23CE49100[(v6 - 1)];
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
      goto LABEL_5;
    }
  }

  v11 = dword_23CE49100[v9];
  v10 = v7 > v11;
  if (v7 != v11)
  {
    return v10;
  }

LABEL_11:
  v12 = *(*(v4 + 24) + 56);
  v13 = *(v12 + (((a2 << 32) + 0x100000000) >> 29)) - *(v12 + 8 * a2);
  v14 = *(v12 + (((a3 << 32) + 0x100000000) >> 29)) - *(v12 + 8 * a3);
  if (v13 != v14)
  {
    return v13 > v14;
  }

  if (v6 == 3)
  {
    v15 = *(**(v4 + 40) + 8 * a2) - *(**(v4 + 48) + 8 * a2);
  }

  else if (v6 == 2)
  {
    v15 = -*(**(v4 + 48) + 8 * a2);
  }

  else
  {
    v15 = 0.0;
    if (v6 == 1)
    {
      v15 = *(**(v4 + 40) + 8 * a2);
    }
  }

  v16 = **(v4 + 32);
  v17 = v15 + fabs(*(v16 + 8 * a2)) / *v4;
  if (v8 == 3)
  {
    v18 = *(**(v4 + 40) + 8 * a3) - *(**(v4 + 48) + 8 * a3);
  }

  else if (v8 == 2)
  {
    v18 = -*(**(v4 + 48) + 8 * a3);
  }

  else
  {
    v18 = 0.0;
    if (v8 == 1)
    {
      v18 = *(**(v4 + 40) + 8 * a3);
    }
  }

  return v17 > v18 + fabs(*(v16 + 8 * a3)) / *v4;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::TriangularColumnComparator &,std::__wrap_iter<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>>(_BOOL8 result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 | 1;
      v12 = (result + 4 * (v10 | 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v14 = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v12[1]);
        v15 = 4;
        if (!v14)
        {
          v15 = 0;
        }

        v12 = (v12 + v15);
        if (v14)
        {
          v11 = v13;
        }
      }

      v16 = *v12;
      v17 = *v5;
      result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, *v5);
      if (!result)
      {
        while (1)
        {
          *v5 = v16;
          v5 = v12;
          if (v7 < v11)
          {
            break;
          }

          v20 = (2 * v11) | 1;
          v12 = (v6 + 4 * v20);
          v11 = 2 * v11 + 2;
          if (v11 < a3)
          {
            v18 = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v12[1]);
            if (v18)
            {
              v19 = 4;
            }

            else
            {
              v19 = 0;
            }

            v12 = (v12 + v19);
            if (!v18)
            {
              v11 = v20;
            }

            v16 = *v12;
            result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v17);
            if (result)
            {
              break;
            }
          }

          else
          {
            v11 = v20;
            v16 = *v12;
            result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v17);
            if (result)
            {
              break;
            }
          }
        }

        *v5 = v17;
      }
    }
  }

  return result;
}

char *std::pop_heap[abi:ne200100]<std::__wrap_iter<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>,operations_research::glop::InitialBasis::TriangularColumnComparator>(char *result, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v3 = (a2 - result) >> 2;
  if (v3 >= 2)
  {
    v5 = result;
    v6 = 0;
    v7 = *result;
    v8 = result;
    do
    {
      v9 = &v8[4 * v6 + 4];
      v10 = (2 * v6) | 1;
      v11 = 2 * v6 + 2;
      if (v11 < v3)
      {
        result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(&v22, *v9, *&v8[4 * v6 + 8]);
        v12 = result ? 4 : 0;
        v9 = (v9 + v12);
        if (result)
        {
          v10 = v11;
        }
      }

      *v8 = *v9;
      v8 = v9;
      v6 = v10;
    }

    while (v10 <= ((v3 - 2) >> 1));
    v13 = (a2 - 4);
    if (v9 == (a2 - 4))
    {
      *v9 = v7;
    }

    else
    {
      *v9 = *v13;
      *v13 = v7;
      v14 = (v9 - v5 + 4) >> 2;
      v15 = v14 < 2;
      v16 = v14 - 2;
      if (!v15)
      {
        v17 = v16 >> 1;
        v18 = &v5[4 * (v16 >> 1)];
        v19 = *v18;
        v20 = *v9;
        result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(&v22, *v18, *v9);
        if (result)
        {
          do
          {
            v21 = v18;
            *v9 = v19;
            if (!v17)
            {
              break;
            }

            v17 = (v17 - 1) >> 1;
            v18 = &v5[4 * v17];
            v19 = *v18;
            result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(&v22, *v18, v20);
            v9 = v21;
          }

          while ((result & 1) != 0);
          *v21 = v20;
        }
      }
    }
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(unint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  v76 = a5;
  while (1)
  {
    v8 = v9;
    v11 = (a2 - v9) >> 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v69 = *(a2 - 1);
        v70 = *v8;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v69, *v8);
        if (result)
        {
          *v8 = v69;
          *(a2 - 1) = v70;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(v8, v8 + 1, v8 + 2, a2 - 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(v8, v8 + 1, v8 + 2, v8 + 3, a3);
      v64 = *(a2 - 1);
      v65 = v8[3];
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v64, v65);
      if (!result)
      {
        return result;
      }

      v8[3] = v64;
      *(a2 - 1) = v65;
      v67 = v8[2];
      v66 = v8[3];
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v66, v67);
      if (!result)
      {
        return result;
      }

      v8[2] = v66;
      v8[3] = v67;
      v68 = v8[1];
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v66, v68);
      if (!result)
      {
        return result;
      }

      v8[1] = v66;
      v8[2] = v68;
      goto LABEL_98;
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v71 = (v11 - 2) >> 1;
        v72 = v71 + 1;
        v73 = &v8[v71];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a3, v11, v73--);
          --v72;
        }

        while (v72);

        return std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a2, a3);
      }

      return result;
    }

    v77 = v10;
    v12 = &v8[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v12;
      v16 = *v8;
      v17 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v12, *v8);
      v18 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v14, v15);
      if (v17)
      {
        if (v18)
        {
          *v8 = v14;
          goto LABEL_29;
        }

        *v8 = v15;
        *v12 = v16;
        v27 = *(a2 - 1);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v27, v16))
        {
          *v12 = v27;
LABEL_29:
          *(a2 - 1) = v16;
        }
      }

      else if (v18)
      {
        *v12 = v14;
        *(a2 - 1) = v15;
        v23 = *v12;
        v24 = *v8;
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v12, *v8))
        {
          *v8 = v23;
          *v12 = v24;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = v8[1];
      v31 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v29, v30);
      v32 = *(a2 - 2);
      v33 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v32, v29);
      if (v31)
      {
        if (v33)
        {
          v8[1] = v32;
          goto LABEL_43;
        }

        v8[1] = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v37, v30))
        {
          *v28 = v37;
LABEL_43:
          *(a2 - 2) = v30;
        }
      }

      else if (v33)
      {
        *v28 = v32;
        *(a2 - 2) = v29;
        v34 = *v28;
        v35 = v8[1];
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v28, v35))
        {
          v8[1] = v34;
          *v28 = v35;
        }
      }

      v40 = v12[1];
      v39 = v12 + 1;
      v38 = v40;
      v41 = v8[2];
      v42 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v40, v41);
      v43 = *(a2 - 3);
      v44 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v43, v40);
      if (v42)
      {
        if (v44)
        {
          v8[2] = v43;
          goto LABEL_52;
        }

        v8[2] = v38;
        *v39 = v41;
        v47 = *(a2 - 3);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v47, v41))
        {
          *v39 = v47;
LABEL_52:
          *(a2 - 3) = v41;
        }
      }

      else if (v44)
      {
        *v39 = v43;
        *(a2 - 3) = v38;
        v45 = *v39;
        v46 = v8[2];
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v39, v46))
        {
          v8[2] = v45;
          *v39 = v46;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v13, *v28);
      v51 = *v39;
      v52 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v39, v48);
      if (v50)
      {
        if (!v52)
        {
          *v28 = v48;
          *v13 = v49;
          v28 = v13;
          v48 = v51;
          if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v51, v49))
          {
            v53 = *v8;
            *v8 = v49;
            *v13 = v53;
            a5 = v76;
            if (v76)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

LABEL_60:
        *v28 = v51;
        *v39 = v49;
      }

      else if (v52)
      {
        *v13 = v51;
        *v39 = v48;
        v39 = v13;
        v48 = v49;
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v51, v49))
        {
          v59 = *v8;
          *v8 = v51;
          *v13 = v59;
          a5 = v76;
          if (v76)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v54 = *v8;
      *v8 = v48;
      *v13 = v54;
      a5 = v76;
      if (v76)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = *v8;
    v20 = *v12;
    v21 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v8, *v12);
    v22 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v14, v19);
    if (v21)
    {
      if (v22)
      {
        *v12 = v14;
        goto LABEL_38;
      }

      *v12 = v19;
      *v8 = v20;
      v36 = *(a2 - 1);
      if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v36, v20))
      {
        *v8 = v36;
LABEL_38:
        *(a2 - 1) = v20;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v22)
    {
      goto LABEL_39;
    }

    *v8 = v14;
    *(a2 - 1) = v19;
    v25 = *v8;
    v26 = *v12;
    if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v8, *v12))
    {
      goto LABEL_39;
    }

    *v12 = v25;
    *v8 = v26;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *(v8 - 1), *v8))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(v8, a2, a3);
      v9 = result;
      v56 = v77;
      goto LABEL_71;
    }

LABEL_63:
    v55 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(v8, a2, a3);
    v56 = v77;
    if ((v57 & 1) == 0)
    {
      goto LABEL_69;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, v55, a3);
    v9 = (v55 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v55 + 1, a2, a3);
    if (result)
    {
      a4 = -v77;
      a2 = v55;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v77 + 1;
    if ((v58 & 1) == 0)
    {
LABEL_69:
      result = std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v8, v55, a3, -v77, a5 & 1);
      v9 = (v55 + 1);
LABEL_71:
      a5 = 0;
      a4 = -v56;
      goto LABEL_3;
    }
  }

  v60 = *v8;
  v61 = v8[1];
  v62 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v61, *v8);
  v63 = *(a2 - 1);
  result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v63, v61);
  if (!v62)
  {
    if (!result)
    {
      return result;
    }

    v8[1] = v63;
    *(a2 - 1) = v61;
    v66 = v8[1];
LABEL_98:
    v74 = *v8;
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v66, *v8);
    if (result)
    {
      *v8 = v66;
      v8[1] = v74;
    }

    return result;
  }

  if (result)
  {
    *v8 = v63;
  }

  else
  {
    *v8 = v61;
    v8[1] = v60;
    v75 = *(a2 - 1);
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v75, v60);
    if (!result)
    {
      return result;
    }

    v8[1] = v75;
  }

  *(a2 - 1) = v60;
  return result;
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(unsigned int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = *a2;
  v12 = *a1;
  v13 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a2, *a1);
  v14 = *a3;
  v15 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a3, v10);
  if (v13)
  {
    if (v15)
    {
      *a1 = v14;
    }

    else
    {
      *a1 = v11;
      *a2 = v12;
      v10 = *a3;
      v11 = *a3;
      if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a3, v12))
      {
        goto LABEL_11;
      }

      *a2 = v11;
    }

    *a3 = v12;
    v10 = v12;
    v11 = v12;
  }

  else
  {
    if (!v15)
    {
      v11 = v14;
      v18 = *a4;
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a4, v14);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    *a2 = v14;
    *a3 = v11;
    v16 = *a2;
    v17 = *a1;
    if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a2, *a1))
    {
      *a1 = v16;
      *a2 = v17;
      v11 = *a3;
      v18 = *a4;
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a4, *a3);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v18 = *a4;
  result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a4, v10);
  if (!result)
  {
    return result;
  }

LABEL_12:
  *a3 = v18;
  *a4 = v11;
  v20 = *a3;
  v21 = *a2;
  result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a3, *a2);
  if (result)
  {
    *a2 = v20;
    *a3 = v21;
    v22 = *a2;
    v23 = *a1;
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a2, *a1);
    if (result)
    {
      *a1 = v22;
      *a2 = v23;
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(unsigned int *result, unsigned int *a2, uint64_t *a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 1;
  if (result + 1 == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = result;
  while (2)
  {
    v10 = v5;
    v12 = *v8;
    v11 = v8[1];
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v11, *v8);
    if (!result)
    {
      goto LABEL_6;
    }

    v8[1] = v12;
    v9 = v4;
    if (v8 == v4)
    {
      goto LABEL_5;
    }

    v13 = *a3;
    v14 = v7;
    do
    {
      v15 = *(v4 + v14 - 4);
      if (v11 == v15)
      {
LABEL_4:
        v9 = v8;
        goto LABEL_5;
      }

      v16 = **(v13 + 56);
      v17 = *(v16 + v11);
      if ((v17 - 1) > 3u)
      {
        v18 = 2;
        v19 = *(v16 + v15);
        v20 = v19 - 1;
        if ((v19 - 1) > 3u)
        {
LABEL_15:
          v21 = v18 >= 2;
          if (v18 != 2)
          {
            goto LABEL_10;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v18 = dword_23CE49100[(v17 - 1)];
        v19 = *(v16 + v15);
        v20 = v19 - 1;
        if ((v19 - 1) > 3u)
        {
          goto LABEL_15;
        }
      }

      v22 = dword_23CE49100[v20];
      v21 = v18 >= v22;
      if (v18 != v22)
      {
LABEL_10:
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }

LABEL_19:
      if (v17 == 3)
      {
        v23 = *(**(v13 + 40) + 8 * v11) - *(**(v13 + 48) + 8 * v11);
        v24 = 8 * v15;
        if (v19 == 1)
        {
LABEL_31:
          v25 = *(**(v13 + 40) + v24);
          goto LABEL_33;
        }
      }

      else
      {
        if (v17 == 2)
        {
          v23 = -*(**(v13 + 48) + 8 * v11);
        }

        else
        {
          v23 = 0.0;
          if (v17 == 1)
          {
            v23 = *(**(v13 + 40) + 8 * v11);
            v24 = 8 * v15;
            if (v19 == 1)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }
        }

        v24 = 8 * v15;
        if (v19 == 1)
        {
          goto LABEL_31;
        }
      }

LABEL_26:
      if (v19 == 2)
      {
        v25 = -*(**(v13 + 48) + v24);
      }

      else if (v19 == 3)
      {
        v25 = *(**(v13 + 40) + v24) - *(**(v13 + 48) + v24);
      }

      else
      {
        v25 = 0.0;
      }

LABEL_33:
      if (v23 + fabs(*(**(v13 + 32) + 8 * v11)) / *v13 >= v25 + fabs(*(**(v13 + 32) + v24)) / *v13)
      {
        v9 = (v4 + v14);
        goto LABEL_5;
      }

LABEL_11:
      --v8;
      *(v4 + v14) = v15;
      v14 -= 4;
    }

    while (v14);
    v9 = v4;
LABEL_5:
    *v9 = v11;
LABEL_6:
    v5 = v10 + 1;
    v7 += 4;
    v8 = v10;
    if (v10 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(_BOOL8 result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = *a3;
      do
      {
        v8 = *v5;
        v9 = *v4;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v5, *v4);
        if (result)
        {
          *v5 = v9;
          v10 = *(v4 - 1);
          v11 = v4;
          if (v8 != v10)
          {
            v12 = **(v7 + 56);
            v13 = *(v12 + v8);
            v14 = (v13 - 1);
            v11 = v4;
            do
            {
              if (v14 > 3)
              {
                v15 = 2;
                v16 = *(v12 + v10);
                v17 = v16 - 1;
                if ((v16 - 1) > 3u)
                {
LABEL_13:
                  v18 = v15 >= 2;
                  if (v15 != 2)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_17;
                }
              }

              else
              {
                v15 = dword_23CE49100[v14];
                v16 = *(v12 + v10);
                v17 = v16 - 1;
                if ((v16 - 1) > 3u)
                {
                  goto LABEL_13;
                }
              }

              v19 = dword_23CE49100[v17];
              v18 = v15 >= v19;
              if (v15 != v19)
              {
LABEL_9:
                if (v18)
                {
                  break;
                }

                goto LABEL_10;
              }

LABEL_17:
              if (v13 == 3)
              {
                v20 = *(**(v7 + 40) + 8 * v8) - *(**(v7 + 48) + 8 * v8);
                v21 = 8 * v10;
                if (v16 == 1)
                {
LABEL_29:
                  v22 = *(**(v7 + 40) + v21);
                  goto LABEL_31;
                }
              }

              else
              {
                if (v13 == 2)
                {
                  v20 = -*(**(v7 + 48) + 8 * v8);
                }

                else
                {
                  v20 = 0.0;
                  if (v13 == 1)
                  {
                    v20 = *(**(v7 + 40) + 8 * v8);
                    v21 = 8 * v10;
                    if (v16 == 1)
                    {
                      goto LABEL_29;
                    }

                    goto LABEL_24;
                  }
                }

                v21 = 8 * v10;
                if (v16 == 1)
                {
                  goto LABEL_29;
                }
              }

LABEL_24:
              if (v16 == 2)
              {
                v22 = -*(**(v7 + 48) + v21);
              }

              else if (v16 == 3)
              {
                v22 = *(**(v7 + 40) + v21) - *(**(v7 + 48) + v21);
              }

              else
              {
                v22 = 0.0;
              }

LABEL_31:
              if (v20 + fabs(*(**(v7 + 32) + 8 * v8)) / *v7 >= v22 + fabs(*(**(v7 + 32) + v21)) / *v7)
              {
                break;
              }

LABEL_10:
              *v11 = v10;
              v10 = *(v11 - 2);
              --v11;
            }

            while (v8 != v10);
          }

          *v11 = v8;
        }

        ++v5;
        ++v4;
      }

      while (v5 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(int *a1, signed int *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v6, v8));
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v6, v10));
  }

  if (v7 < v4)
  {
    v11 = *a3;
    v12 = *v7;
    v13 = *v4;
    do
    {
      *v7++ = v13;
      *v4 = v12;
      v14 = *a3;
      v15 = *(*a3 + 56);
      v16 = *v15;
      v17 = *(*v15 + v6);
      while (1)
      {
        v12 = *v7;
        if (v6 == *v7)
        {
          goto LABEL_17;
        }

        if ((v17 - 1) > 3u)
        {
          break;
        }

        v18 = dword_23CE49100[(v17 - 1)];
        v19 = *(v16 + v12);
        v20 = v19 - 1;
        if ((v19 - 1) <= 3u)
        {
          goto LABEL_24;
        }

LABEL_21:
        v21 = v18 >= 2;
        if (v18 == 2)
        {
          goto LABEL_25;
        }

LABEL_15:
        if (!v21)
        {
          goto LABEL_40;
        }

LABEL_17:
        ++v7;
      }

      v18 = 2;
      v19 = *(v16 + v12);
      v20 = v19 - 1;
      if ((v19 - 1) > 3u)
      {
        goto LABEL_21;
      }

LABEL_24:
      v22 = dword_23CE49100[v20];
      v21 = v18 >= v22;
      if (v18 != v22)
      {
        goto LABEL_15;
      }

LABEL_25:
      if (v17 == 3)
      {
        v23 = *(**(v14 + 40) + 8 * v6) - *(**(v14 + 48) + 8 * v6);
        v24 = 8 * v12;
        if (v19 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v17 == 2)
      {
        v23 = -*(**(v14 + 48) + 8 * v6);
LABEL_31:
        v24 = 8 * v12;
        if (v19 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v23 = 0.0;
      if (v17 != 1)
      {
        goto LABEL_31;
      }

      v23 = *(**(v14 + 40) + 8 * v6);
      v24 = 8 * v12;
      if (v19 == 1)
      {
LABEL_37:
        v25 = *(**(v14 + 40) + v24);
        goto LABEL_39;
      }

LABEL_32:
      if (v19 == 2)
      {
        v25 = -*(**(v14 + 48) + v24);
      }

      else if (v19 == 3)
      {
        v25 = *(**(v14 + 40) + v24) - *(**(v14 + 48) + v24);
      }

      else
      {
        v25 = 0.0;
      }

LABEL_39:
      if (v23 + fabs(*(**(v14 + 32) + 8 * v6)) / *v14 >= v25 + fabs(*(**(v14 + 32) + v24)) / *v14)
      {
        goto LABEL_17;
      }

LABEL_40:
      v26 = *--v4;
      v13 = v26;
      if (v6 != v26)
      {
        v27 = **(v11 + 56);
        v28 = *(v27 + v6);
        v29 = (v28 - 1);
        do
        {
          if (v29 > 3)
          {
            v31 = 2;
            v32 = *(v27 + v13);
            v33 = v32 - 1;
            if ((v32 - 1) > 3u)
            {
LABEL_46:
              v34 = v31 >= 2;
              if (v31 != 2)
              {
                goto LABEL_42;
              }

              goto LABEL_50;
            }
          }

          else
          {
            v31 = dword_23CE49100[v29];
            v32 = *(v27 + v13);
            v33 = v32 - 1;
            if ((v32 - 1) > 3u)
            {
              goto LABEL_46;
            }
          }

          v35 = dword_23CE49100[v33];
          v34 = v31 >= v35;
          if (v31 != v35)
          {
LABEL_42:
            if (v34)
            {
              goto LABEL_13;
            }

            goto LABEL_43;
          }

LABEL_50:
          if (v28 == 3)
          {
            v36 = *(**(v11 + 40) + 8 * v6) - *(**(v11 + 48) + 8 * v6);
            v37 = v13 << 32;
            if (v32 == 1)
            {
LABEL_62:
              v38 = v37 >> 29;
              v39 = *(**(v11 + 40) + (v37 >> 29));
              goto LABEL_64;
            }
          }

          else
          {
            if (v28 == 2)
            {
              v36 = -*(**(v11 + 48) + 8 * v6);
            }

            else
            {
              v36 = 0.0;
              if (v28 == 1)
              {
                v36 = *(**(v11 + 40) + 8 * v6);
                v37 = v13 << 32;
                if (v32 == 1)
                {
                  goto LABEL_62;
                }

                goto LABEL_57;
              }
            }

            v37 = v13 << 32;
            if (v32 == 1)
            {
              goto LABEL_62;
            }
          }

LABEL_57:
          if (v32 == 2)
          {
            v38 = v37 >> 29;
            v39 = -*(**(v11 + 48) + (v37 >> 29));
          }

          else if (v32 == 3)
          {
            v38 = v37 >> 29;
            v39 = *(**(v11 + 40) + (v37 >> 29)) - *(**(v11 + 48) + (v37 >> 29));
          }

          else
          {
            v38 = v37 >> 29;
            v39 = 0.0;
          }

LABEL_64:
          if (v36 + fabs(*(**(v11 + 32) + 8 * v6)) / *v11 >= v39 + fabs(*(**(v11 + 32) + v38)) / *v11)
          {
            goto LABEL_13;
          }

LABEL_43:
          v30 = *--v4;
          v13 = v30;
        }

        while (v6 != v30);
      }

      v13 = v6;
LABEL_13:
      ;
    }

    while (v7 < v4);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

signed int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(signed int *a1, signed int *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = a1[++v6];
  }

  while (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v8, v7));
  v9 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v11, v7));
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, v7));
  }

  if (v9 < a2)
  {
    v12 = *a3;
    v13 = *a2;
    v14 = &a1[v6];
    v15 = a2;
    while (1)
    {
      *v14 = v13;
      *v15 = v8;
      v16 = v14[1];
      ++v14;
      v8 = v16;
      if (v16 != v7)
      {
        break;
      }

LABEL_12:
      v8 = v7;
LABEL_13:
      v17 = *a3;
      --v15;
      v18 = *(*a3 + 56);
      v19 = *v18;
      v20 = *(*v18 + v7);
      while (1)
      {
        v13 = *v15;
        if (*v15 == v7)
        {
          goto LABEL_16;
        }

        v21 = *(v19 + v13);
        if ((v21 - 1) > 3u)
        {
          break;
        }

        v22 = dword_23CE49100[(v21 - 1)];
        if ((v20 - 1) <= 3u)
        {
          goto LABEL_23;
        }

LABEL_20:
        v23 = v22 >= 2;
        if (v22 == 2)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!v23)
        {
          goto LABEL_10;
        }

LABEL_16:
        --v15;
      }

      v22 = 2;
      if ((v20 - 1) > 3u)
      {
        goto LABEL_20;
      }

LABEL_23:
      v24 = dword_23CE49100[(v20 - 1)];
      v23 = v22 >= v24;
      if (v22 != v24)
      {
        goto LABEL_14;
      }

LABEL_24:
      switch(v21)
      {
        case 1:
          v25 = *(**(v17 + 40) + 8 * v13);
          if (v20 == 3)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        case 2:
          v25 = -*(**(v17 + 48) + 8 * v13);
          if (v20 == 3)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        case 3:
          v25 = *(**(v17 + 40) + 8 * v13) - *(**(v17 + 48) + 8 * v13);
          if (v20 == 3)
          {
            goto LABEL_35;
          }

LABEL_30:
          if (v20 == 2)
          {
            v26 = -*(**(v17 + 48) + 8 * v7);
          }

          else
          {
            v26 = 0.0;
            if (v20 == 1)
            {
              v26 = *(**(v17 + 40) + 8 * v7);
            }
          }

          break;
        default:
          v25 = 0.0;
          if (v20 != 3)
          {
            goto LABEL_30;
          }

LABEL_35:
          v26 = *(**(v17 + 40) + 8 * v7) - *(**(v17 + 48) + 8 * v7);
          break;
      }

      if (v25 + fabs(*(**(v17 + 32) + 8 * v13)) / *v17 >= v26 + fabs(*(**(v17 + 32) + 8 * v7)) / *v17)
      {
        goto LABEL_16;
      }

LABEL_10:
      if (v14 >= v15)
      {
        goto LABEL_66;
      }
    }

    v27 = **(v12 + 56);
    v28 = *(v27 + v7);
    v29 = (v28 - 1);
    while (1)
    {
      v31 = *(v27 + v8);
      if ((v31 - 1) > 3u)
      {
        v32 = 2;
        if (v29 > 3)
        {
LABEL_45:
          v33 = v32 >= 2;
          if (v32 != 2)
          {
            goto LABEL_41;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v32 = dword_23CE49100[(v31 - 1)];
        if (v29 > 3)
        {
          goto LABEL_45;
        }
      }

      v34 = dword_23CE49100[v29];
      v33 = v32 >= v34;
      if (v32 != v34)
      {
LABEL_41:
        if (v33)
        {
          goto LABEL_13;
        }

        goto LABEL_42;
      }

LABEL_49:
      switch(v31)
      {
        case 1:
          v35 = 8 * v8;
          v36 = *(**(v12 + 40) + v35);
          if (v28 == 3)
          {
            goto LABEL_60;
          }

          break;
        case 2:
          v35 = 8 * v8;
          v36 = -*(**(v12 + 48) + v35);
          if (v28 == 3)
          {
            goto LABEL_60;
          }

          break;
        case 3:
          v35 = 8 * v8;
          v36 = *(**(v12 + 40) + v35) - *(**(v12 + 48) + v35);
          if (v28 == 3)
          {
            goto LABEL_60;
          }

          break;
        default:
          v35 = 8 * v8;
          v36 = 0.0;
          if (v28 == 3)
          {
LABEL_60:
            v37 = *(**(v12 + 40) + 8 * v7) - *(**(v12 + 48) + 8 * v7);
            goto LABEL_61;
          }

          break;
      }

      if (v28 == 2)
      {
        v37 = -*(**(v12 + 48) + 8 * v7);
      }

      else
      {
        v37 = 0.0;
        if (v28 == 1)
        {
          v37 = *(**(v12 + 40) + 8 * v7);
        }
      }

LABEL_61:
      if (v36 + fabs(*(**(v12 + 32) + v35)) / *v12 >= v37 + fabs(*(**(v12 + 32) + 8 * v7)) / *v12)
      {
        goto LABEL_13;
      }

LABEL_42:
      v30 = v14[1];
      ++v14;
      v8 = v30;
      if (v30 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  v14 = &a1[v6];
LABEL_66:
  result = v14 - 1;
  if (v14 - 1 != a1)
  {
    *a1 = *result;
  }

  *result = v7;
  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(int *a1, int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v16 = *a1;
        v17 = a1[1];
        v18 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v17, *a1);
        v19 = *(a2 - 1);
        v20 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v19, v17);
        if (v18)
        {
          if (v20)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v17;
            a1[1] = v16;
            v41 = *(a2 - 1);
            if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v41, v16))
            {
              goto LABEL_3;
            }

            a1[1] = v41;
          }

          *(a2 - 1) = v16;
          v7 = 1;
          return v7 & 1;
        }

        if (!v20)
        {
          goto LABEL_3;
        }

        a1[1] = v19;
        *(a2 - 1) = v17;
        v13 = *a1;
        v10 = a1[1];
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, *a1))
        {
          goto LABEL_3;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v8 = *(a2 - 1);
        v9 = a1[3];
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v8, v9))
        {
          goto LABEL_3;
        }

        a1[3] = v8;
        *(a2 - 1) = v9;
        v11 = a1[2];
        v10 = a1[3];
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, v11))
        {
          goto LABEL_3;
        }

        a1[2] = v10;
        a1[3] = v11;
        v12 = a1[1];
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, v12))
        {
          goto LABEL_3;
        }

        a1[1] = v10;
        a1[2] = v12;
        v13 = *a1;
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, *a1))
        {
          goto LABEL_3;
        }

        break;
      default:
        goto LABEL_18;
    }

    *a1 = v10;
    a1[1] = v13;
    v7 = 1;
    return v7 & 1;
  }

  if (v6 < 2)
  {
LABEL_3:
    v7 = 1;
    return v7 & 1;
  }

  if (v6 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v14, *a1))
    {
      *a1 = v14;
      *(a2 - 1) = v15;
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_3;
  }

LABEL_18:
  v22 = a1 + 1;
  v21 = a1[1];
  v23 = *a1;
  v24 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v21, *a1);
  v26 = a1 + 2;
  v25 = a1[2];
  v27 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v25, v21);
  if (v24)
  {
    v29 = a1;
    v28 = a1 + 2;
    if (!v27)
    {
      *a1 = v21;
      a1[1] = v23;
      v30 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v25, v23);
      v29 = a1 + 1;
      v28 = a1 + 2;
      if (!v30)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (!v27)
    {
      goto LABEL_29;
    }

    *v22 = v25;
    *v26 = v21;
    v31 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v25, v23);
    v29 = a1;
    v28 = a1 + 1;
    if (!v31)
    {
      goto LABEL_29;
    }
  }

  *v29 = v25;
  *v28 = v23;
LABEL_29:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
LABEL_39:
    v40 = 1;
  }

  else
  {
    v33 = 0;
    v34 = 12;
    while (1)
    {
      v35 = *v32;
      v36 = *v26;
      if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v32, *v26))
      {
        break;
      }

LABEL_32:
      v26 = v32;
      v34 += 4;
      if (++v32 == a2)
      {
        goto LABEL_39;
      }
    }

    v37 = v34;
    do
    {
      *(a1 + v37) = v36;
      v38 = v37 - 4;
      if (v37 == 4)
      {
        *a1 = v35;
        if (++v33 != 8)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }

      v36 = *(a1 + v37 - 8);
      v39 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v35, v36);
      v37 = v38;
    }

    while (v39);
    *(a1 + v38) = v35;
    if (++v33 != 8)
    {
      goto LABEL_32;
    }

LABEL_38:
    v40 = 0;
    LOBYTE(v28) = v32 + 1 == a2;
  }

  v7 = v40 | v28;
  return v7 & 1;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(_BOOL8 result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v8 = a3;
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      v14 = *v12;
      if (v10 + 2 >= a3)
      {
        v23 = *a4;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, *a4);
        if (!result)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = v4 >> 1;
        v16 = v12[1];
        v17 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, v16);
        if (v17)
        {
          v14 = v16;
        }

        v7 = v15;
        v8 = a3;
        if (v17)
        {
          ++v12;
          v11 = v13;
        }

        v23 = *v5;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, *v5);
        if (!result)
        {
LABEL_17:
          while (1)
          {
            v20 = v12;
            *v5 = v14;
            if (v7 < v11)
            {
              break;
            }

            v21 = (2 * v11) | 1;
            v12 = (v6 + 4 * v21);
            v11 = 2 * v11 + 2;
            v14 = *v12;
            if (v11 < v8)
            {
              v18 = v12[1];
              v19 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, *v12, v18);
              if (v19)
              {
                v14 = v18;
                ++v12;
              }

              v8 = a3;
              if (!v19)
              {
                v11 = v21;
              }

              result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, v23);
              v5 = v20;
              if (result)
              {
                break;
              }
            }

            else
            {
              v11 = v21;
              result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, v23);
              v5 = v20;
              if (result)
              {
                break;
              }
            }
          }

          *v20 = v23;
        }
      }
    }
  }

  return result;
}

unint64_t std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(unint64_t result, unsigned int *a2, uint64_t *a3)
{
  v3 = (a2 - result) >> 2;
  if (v3 >= 2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = 0;
      v8 = *v5;
      v9 = *a3;
      v10 = v5;
      do
      {
        v12 = v10;
        v13 = &v10[v7];
        v10 = v13 + 1;
        v11 = v13[1];
        v14 = 2 * v7;
        v7 = (2 * v7) | 1;
        v15 = v14 + 2;
        if (v15 >= v3)
        {
          goto LABEL_7;
        }

        v18 = v13[2];
        v16 = v13 + 2;
        v17 = v18;
        if (v11 == v18)
        {
          goto LABEL_7;
        }

        v19 = **(v9 + 56);
        v20 = *(v19 + v11);
        if ((v20 - 1) > 3u)
        {
          v21 = 2;
          result = *(v19 + v17);
          v22 = result - 1;
          if ((result - 1) > 3u)
          {
LABEL_12:
            v23 = v21 >= 2;
            if (v21 != 2)
            {
              goto LABEL_13;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v21 = dword_23CE49100[(v20 - 1)];
          result = *(v19 + v17);
          v22 = result - 1;
          if ((result - 1) > 3u)
          {
            goto LABEL_12;
          }
        }

        v24 = dword_23CE49100[v22];
        v23 = v21 >= v24;
        if (v21 != v24)
        {
LABEL_13:
          if (!v23)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

LABEL_18:
        switch(v20)
        {
          case 1:
            v25 = *(**(v9 + 40) + 8 * v11);
            v26 = 8 * v17;
            if (result == 1)
            {
              goto LABEL_31;
            }

            break;
          case 2:
            v25 = -*(**(v9 + 48) + 8 * v11);
            v26 = 8 * v17;
            if (result == 1)
            {
              goto LABEL_31;
            }

            break;
          case 3:
            v25 = *(**(v9 + 40) + 8 * v11) - *(**(v9 + 48) + 8 * v11);
            v26 = 8 * v17;
            if (result == 1)
            {
              goto LABEL_31;
            }

            break;
          default:
            v25 = 0.0;
            v26 = 8 * v17;
            if (result == 1)
            {
LABEL_31:
              v27 = *(**(v9 + 40) + v26);
              goto LABEL_33;
            }

            break;
        }

        if (result == 2)
        {
          v27 = -*(**(v9 + 48) + v26);
        }

        else if (result == 3)
        {
          v27 = *(**(v9 + 40) + v26) - *(**(v9 + 48) + v26);
        }

        else
        {
          v27 = 0.0;
        }

LABEL_33:
        result = **(v9 + 32);
        if (v25 + fabs(*(result + 8 * v11)) / *v9 < v27 + fabs(*(result + v26)) / *v9)
        {
LABEL_6:
          v11 = v17;
          v10 = v16;
          v7 = v15;
        }

LABEL_7:
        *v12 = v11;
      }

      while (v7 <= ((v3 - 2) >> 1));
      if (v10 == --v4)
      {
        *v10 = v8;
      }

      else
      {
        *v10 = *v4;
        *v4 = v8;
        v28 = (v10 - v5 + 4) >> 2;
        v6 = v28 < 2;
        v29 = v28 - 2;
        if (!v6)
        {
          v30 = v29 >> 1;
          v31 = &v5[v29 >> 1];
          v32 = *v31;
          v33 = *v10;
          result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v31, *v10);
          if (result)
          {
            do
            {
              v34 = v31;
              *v10 = v32;
              if (!v30)
              {
                break;
              }

              v30 = (v30 - 1) >> 1;
              v31 = &v5[v30];
              v32 = *v31;
              result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v31, v33);
              v10 = v34;
            }

            while ((result & 1) != 0);
            *v34 = v33;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_to_proto_file::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_compressed_file::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_binary_file::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t absl::lts_20240722::flags_internal::FlagOps<int>(int a1, unsigned int *a2, char *__p)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
        return 4;
      }

      *__p = *a2;
      return 0;
    }

    if (!a1)
    {

      operator new();
    }

    if (a1 == 1)
    {
      operator delete(__p);
    }

    return 0;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return &absl::lts_20240722::base_internal::FastTypeTag<int>::dummy_var;
    }

    else
    {
      return MEMORY[0x277D827C0];
    }
  }

  if (a1 == 7)
  {
    LODWORD(v5) = *__p;
    if (absl::lts_20240722::flags_internal::AbslParseFlag(*a2, *(a2 + 1), &v5))
    {
      *__p = v5;
      return __p;
    }

    return 0;
  }

  if (a1 != 8)
  {
    if (a1 == 9)
    {
      return 80;
    }

    return 0;
  }

  absl::lts_20240722::flags_internal::Unparse(*a2, __p, &v5);
  if (__p[23] < 0)
  {
    operator delete(*__p);
  }

  *__p = v5;
  *(__p + 2) = v6;
  return 0;
}

unint64_t AbslFlagHelpGenForlp_dump_file_number::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_dir::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForlp_dump_dir::Gen(uint64_t this, void *a2)
{
  *this = 1886221359;
  *(this + 23) = 4;
  return this;
}

unint64_t AbslFlagHelpGenForlp_dump_file_basename::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForlp_dump_file_basename::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

unint64_t AbslFlagHelpGenForglop_params::NonConst@<X0>(void *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    *(a1 + v3) = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForglop_params::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

operations_research::glop::LPSolver *operations_research::glop::LPSolver::LPSolver(operations_research::glop::LPSolver *this)
{
  v2 = operations_research::glop::LinearProgram::LinearProgram(this);
  operations_research::SolverLogger::SolverLogger((v2 + 448));
  *(this + 68) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  operations_research::glop::GlopParameters::GlopParameters(this + 808, 0);
  *(this + 284) = 0;
  return this;
}

void sub_23CBA6FE4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 752);
  if (v4)
  {
    *(v1 + 760) = v4;
    operator delete(v4);
    v5 = *(v1 + 728);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 704);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(v1 + 728);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 736) = v5;
  operator delete(v5);
  v6 = *(v1 + 704);
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 680);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 712) = v6;
  operator delete(v6);
  v7 = *(v1 + 680);
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 656);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 688) = v7;
  operator delete(v7);
  v8 = *(v1 + 656);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 632);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 664) = v8;
  operator delete(v8);
  v9 = *(v1 + 632);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 608);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v1 + 640) = v9;
  operator delete(v9);
  v10 = *(v1 + 608);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 584);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v1 + 616) = v10;
  operator delete(v10);
  v11 = *(v1 + 584);
  if (!v11)
  {
LABEL_9:
    v12 = *v2;
    if (!*v2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(v1 + 592) = v11;
  operator delete(v11);
  v12 = *v2;
  if (!*v2)
  {
LABEL_11:
    std::unique_ptr<operations_research::glop::RevisedSimplex>::~unique_ptr[abi:ne200100]((v1 + 544));
    operations_research::SolverLogger::~SolverLogger((v1 + 448));
    operations_research::glop::LinearProgram::~LinearProgram(v1);
    _Unwind_Resume(a1);
  }

LABEL_10:
  *(v1 + 568) = v12;
  operator delete(v12);
  goto LABEL_11;
}

operations_research::glop::RevisedSimplex **std::unique_ptr<operations_research::glop::RevisedSimplex>::~unique_ptr[abi:ne200100](operations_research::glop::RevisedSimplex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::glop::RevisedSimplex::~RevisedSimplex(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::SolverLogger::~SolverLogger(operations_research::SolverLogger *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = *(this + 9);
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
      v4 = *(this + 9);
    }

    *(this + 10) = v2;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = *(this + 1);
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
      v7 = *(this + 1);
    }

    *(this + 2) = v5;
    operator delete(v7);
  }
}

void operations_research::glop::LPSolver::SetParameters(operations_research::glop::LPSolver *this, const operations_research::glop::GlopParameters *a2)
{
  operations_research::glop::GlopParameters::CopyFrom((this + 808), a2);
  explicit = atomic_load_explicit(&off_281A218B8, memory_order_acquire);
  if ((~explicit & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_glop_params, &v15);
  }

  else
  {
    v4 = explicit & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      v15.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v15.__r_.__value_.__l.__data_ = v5;
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v15.__r_.__value_.__l.__size_;
    operator delete(v15.__r_.__value_.__l.__data_);
    if (!size)
    {
      return;
    }
  }

  else if (!*(&v15.__r_.__value_.__s + 23))
  {
    return;
  }

  operations_research::glop::GlopParameters::GlopParameters(&v15, 0);
  v7 = atomic_load_explicit(&off_281A218B8, memory_order_acquire);
  if ((~v7 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_glop_params, &v16);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      v16.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&v16.__r_.__value_.__l.__data_ = v9;
    }
  }

  __p = v16;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  if ((google::protobuf::TextFormat::ParseFromString(p_p, v11, &v15) & 1) == 0)
  {
    v13 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 132);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::glop::GlopParameters::MergeImpl(this + 808, &v15, v12);
  operations_research::glop::GlopParameters::~GlopParameters(&v15);
}

void sub_23CBA73EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
    operations_research::glop::GlopParameters::~GlopParameters(&__p);
    _Unwind_Resume(a1);
  }

  operations_research::glop::GlopParameters::~GlopParameters(&__p);
  _Unwind_Resume(a1);
}

void sub_23CBA7568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<operations_research::TimeLimit>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CBA757C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  MEMORY[0x23EED9460](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::LPSolver::SolveWithTimeLimit(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, operations_research::TimeLimit *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 153, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v39, "SolveWithTimeLimit() called with a nullptr time_limit.", 0x36uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v39);
    return 9;
  }

  LODWORD(v5) = *(this + 284) + 1;
  *(this + 284) = v5;
  *(this + 138) = 0;
  explicit = atomic_load_explicit(&qword_281A21678, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_lp_dump_to_proto_file) & 1) == 0)
  {
    goto LABEL_47;
  }

  v7 = atomic_load_explicit(&off_281A21848, memory_order_acquire);
  if ((~v7 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_lp_dump_file_basename, &v39);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      v39.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&v39.__r_.__value_.__l.__data_ = v9;
    }
  }

  v37 = v39;
  size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v11 = *(a2 + 439);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 53);
    }

    if (v11)
    {
      std::string::operator=(&v37, (a2 + 416));
    }

    else
    {
      MEMORY[0x23EED9020](&v37, "linear_program_dump");
    }
  }

  v12 = atomic_load_explicit(&qword_281A21780, memory_order_acquire);
  if (!v12)
  {
    LODWORD(v12) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneWord(&FLAGS_lp_dump_file_number);
  }

  if ((v12 & 0x80000000) == 0)
  {
    v5 = atomic_load_explicit(&qword_281A21780, memory_order_acquire);
    if (!v5)
    {
      LODWORD(v5) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneWord(&FLAGS_lp_dump_file_number);
    }
  }

  v39.__r_.__value_.__r.__words[0] = v5;
  v39.__r_.__value_.__l.__size_ = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::AppendPack(&v37, "-%06d.pb", 8, &v39, 1uLL);
  v13 = atomic_load_explicit(&off_281A217D8, memory_order_acquire);
  if ((~v13 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_lp_dump_dir, &v38);
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      v38.__r_.__value_.__r.__words[2] = *(v14 + 16);
      *&v38.__r_.__value_.__l.__data_ = v15;
    }
  }

  __p = v38;
  v16 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v38.__r_.__value_.__l.__size_;
    p_p = v38.__r_.__value_.__r.__words[0];
  }

  v39.__r_.__value_.__r.__words[0] = p_p;
  v39.__r_.__value_.__l.__size_ = v16;
  v38.__r_.__value_.__r.__words[0] = "/";
  v38.__r_.__value_.__l.__size_ = 1;
  v18 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  v19 = &v37;
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v37.__r_.__value_.__l.__size_;
    v19 = v37.__r_.__value_.__r.__words[0];
  }

  v40[0].__r_.__value_.__r.__words[0] = v19;
  v40[0].__r_.__value_.__l.__size_ = v18;
  absl::lts_20240722::StrCat(&v39.__r_.__value_.__l.__data_, &v38, v40, &v36);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::MPModelProto::MPModelProto(&v39, 0);
  operations_research::glop::LinearProgramToMPModelProto(a2, &v39, v20);
  OneBool = atomic_load_explicit(&qword_281A21728, memory_order_acquire);
  if (!OneBool)
  {
    OneBool = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_lp_dump_binary_file);
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v36;
  }

  else
  {
    v22 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v36.__r_.__value_.__l.__size_;
  }

  v24 = atomic_load_explicit(&qword_281A216D0, memory_order_acquire);
  if (!v24)
  {
    LOBYTE(v24) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_lp_dump_compressed_file);
  }

  operations_research::WriteProtoToFile(v22, v23, &v39, OneBool & 1, v24 & 1, 1, &v38);
  if (v38.__r_.__value_.__r.__words[0] != 1)
  {
    absl::lts_20240722::status_internal::MakeCheckFailString(&v38, "WriteProtoToFile(filespec, proto, write_format, absl::GetFlag(FLAGS_lp_dump_compressed_file)) is OK");
  }

  operations_research::MPModelProto::~MPModelProto(&v39);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
LABEL_47:
  v25 = this + 448;
  v26 = *(this + 839);
  *(this + 448) = v26;
  *(this + 449) = *(this + 1098);
  if ((v26 & 1) == 0)
  {
    if (dword_27E25CE38 < 1)
    {
      goto LABEL_90;
    }

    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::LPSolver::SolveWithTimeLimit(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0::operator() const(void)::site, dword_27E25CE38))
    {
      *(this + 224) = 1;
    }

    else if ((*v25 & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  *(&v39.__r_.__value_.__s + 23) = 0;
  v39.__r_.__value_.__s.__data_[0] = 0;
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 179, &v39);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if (*v25 != 1)
    {
      goto LABEL_90;
    }
  }

  else if (*v25 != 1)
  {
    goto LABEL_90;
  }

  v39.__r_.__value_.__r.__words[0] = "Initial problem: ";
  v39.__r_.__value_.__l.__size_ = 17;
  operations_research::glop::LinearProgram::GetDimensionString(&v37, a2);
  v27 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v37;
  }

  else
  {
    v28 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v37.__r_.__value_.__l.__size_;
  }

  v38.__r_.__value_.__r.__words[0] = v28;
  v38.__r_.__value_.__l.__size_ = v27;
  absl::lts_20240722::StrCat(&v39.__r_.__value_.__l.__data_, &v38, v40);
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 180, v40);
  if (SHIBYTE(v40[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_62:
      if ((*v25 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
  if ((*v25 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_66:
  v39.__r_.__value_.__r.__words[0] = "Objective stats: ";
  v39.__r_.__value_.__l.__size_ = 17;
  operations_research::glop::LinearProgram::GetObjectiveStatsString(&v37.__r_.__value_.__l.__data_, a2);
  v29 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v37;
  }

  else
  {
    v30 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v37.__r_.__value_.__l.__size_;
  }

  v38.__r_.__value_.__r.__words[0] = v30;
  v38.__r_.__value_.__l.__size_ = v29;
  absl::lts_20240722::StrCat(&v39.__r_.__value_.__l.__data_, &v38, v40);
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 181, v40);
  if ((SHIBYTE(v40[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_77:
    operator delete(v37.__r_.__value_.__l.__data_);
    if ((*v25 & 1) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_78;
  }

  operator delete(v40[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  if ((*v25 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_78:
  v39.__r_.__value_.__r.__words[0] = "Bounds stats: ";
  v39.__r_.__value_.__l.__size_ = 14;
  operations_research::glop::LinearProgram::GetBoundsStatsString(&v37.__r_.__value_.__l.__data_, a2);
  v32 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v37;
  }

  else
  {
    v33 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v37.__r_.__value_.__l.__size_;
  }

  v38.__r_.__value_.__r.__words[0] = v33;
  v38.__r_.__value_.__l.__size_ = v32;
  absl::lts_20240722::StrCat(&v39.__r_.__value_.__l.__data_, &v38, v40);
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 182, v40);
  if (SHIBYTE(v40[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_85:
      if ((*v25 & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_89:
      v39.__r_.__value_.__r.__words[0] = "Parameters: ";
      v39.__r_.__value_.__l.__size_ = 12;
      google::protobuf::Message::ShortDebugString(&v37);
    }
  }

  else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_85;
  }

  operator delete(v37.__r_.__value_.__l.__data_);
  if (*v25)
  {
    goto LABEL_89;
  }

LABEL_90:
  if (operations_research::glop::LinearProgram::IsCleanedUp(a2))
  {
    if (operations_research::glop::LinearProgram::IsValid(a2, *(this + 140)))
    {
      operations_research::glop::LinearProgram::PopulateFromLinearProgram(this, a2);
      operations_research::glop::LinearProgram::RemoveNearZeroEntries(this, *(this + 141));
      operations_research::glop::Preprocessor::Preprocessor(&v39, (this + 808));
    }

    if (*v25 == 1)
    {
      operator new();
    }

    operations_research::glop::LPSolver::ResizeSolution(this, *(a2 + 6), -1431655765 * ((*(a2 + 1) - *a2) >> 4));
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 188, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v39, "The columns of the given linear program should be ordered ", 0x3AuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v39, "by row and contain no zero coefficients. Call CleanUp() ", 0x38uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v39, "on it before calling Solve().", 0x1DuLL);
    operations_research::glop::LPSolver::SolveWithTimeLimit(&v39, a2, this);
  }

  return 10;
}

void sub_23CBA8418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  operations_research::MPModelProto::~MPModelProto(&a47);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void operations_research::glop::LPSolver::ResizeSolution(void *a1, int a2, int a3)
{
  v24 = 0;
  v5 = a3;
  v6 = a1[70];
  v7 = (a1[71] - v6) >> 3;
  if (a3 <= v7)
  {
    if (a3 < v7)
    {
      a1[71] = v6 + 8 * a3;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 70), a3 - v7, &v24);
  }

  v24 = 0;
  v8 = a1[91];
  v9 = (a1[92] - v8) >> 3;
  if (v5 <= v9)
  {
    if (v5 < v9)
    {
      a1[92] = v8 + 8 * v5;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 91), v5 - v9, &v24);
  }

  v10 = a1[77];
  v11 = a1[76];
  if (v5 <= &v10[-v11])
  {
    if (v5 < &v10[-v11])
    {
      a1[77] = v11 + v5;
    }
  }

  else
  {
    v12 = a1[78];
    if (v12 - v10 < v5 - &v10[-v11])
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v5 + v11;
    memset(v10, 4, v5 - &v10[-v11]);
    a1[77] = v13;
  }

  v24 = 0;
  v14 = a2;
  v15 = a1[73];
  v16 = (a1[74] - v15) >> 3;
  if (a2 <= v16)
  {
    if (a2 < v16)
    {
      a1[74] = v15 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 73), a2 - v16, &v24);
  }

  v24 = 0;
  v17 = a1[94];
  v18 = (a1[95] - v17) >> 3;
  if (a2 <= v18)
  {
    if (a2 < v18)
    {
      a1[95] = v17 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 94), a2 - v18, &v24);
  }

  v19 = a1[80];
  v20 = a1[79];
  v21 = a2 - &v19[-v20];
  if (v14 <= &v19[-v20])
  {
    if (v14 < &v19[-v20])
    {
      a1[80] = v20 + v14;
    }
  }

  else
  {
    v22 = a1[81];
    if (v22 - v19 < v21)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = (v14 + v20);
    memset(v19, 4, v14 - &v19[-v20]);
    a1[80] = v23;
  }
}

void operations_research::glop::LPSolver::RunRevisedSimplexIfNeeded(operations_research::glop::RevisedSimplex **this, operations_research::glop::ProblemSolution *a2, operations_research::TimeLimit *a3)
{
  operations_research::glop::LinearProgram::ClearTransposeMatrix(this);
  if (*a2 == 6)
  {
    v5 = this[68];
    if (!v5)
    {
      operator new();
    }

    operations_research::glop::RevisedSimplex::SetParameters(v5, (this + 101));
  }
}

void sub_23CBA8E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::LPSolver::LoadAndVerifySolution(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, const operations_research::glop::ProblemSolution *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v9 = this;
  v144 = *MEMORY[0x277D85DE8];
  if (*(this + 448) == 1)
  {
    v141 = 0;
    LOBYTE(__p) = 0;
    this = operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 337, &__p);
    if (v141 < 0)
    {
      operator delete(__p);
      if ((*(v9 + 448) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v9 + 448) & 1) == 0)
    {
      goto LABEL_7;
    }

    operator new();
  }

LABEL_7:
  if (operations_research::glop::LPSolver::IsProblemSolutionConsistent(this, a2, a3, a4, a5, a6, a7))
  {
    v10 = (v9 + 560);
    if (v9 + 560 != a3 + 8)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v9 + 70, *(a3 + 1), *(a3 + 2), (*(a3 + 2) - *(a3 + 1)) >> 3);
    }

    if (v9 + 584 != a3 + 32)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v9 + 73, *(a3 + 4), *(a3 + 5), (*(a3 + 5) - *(a3 + 4)) >> 3);
    }

    if (v9 + 608 != a3 + 56)
    {
      std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(v9 + 76, *(a3 + 7), *(a3 + 8), *(a3 + 8) - *(a3 + 7));
    }

    if (v9 + 632 != a3 + 80)
    {
      std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(v9 + 79, *(a3 + 10), *(a3 + 11), *(a3 + 11) - *(a3 + 10));
    }

    v11 = *a3;
    operations_research::glop::LPSolver::ComputeReducedCosts(v9, a2);
    v12 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    if (v12 < 1)
    {
      v22 = 0.0;
    }

    else
    {
      v13 = *(a2 + 17);
      v14 = *v10;
      v15 = v12 & 0x7FFFFFFF;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        v18 = *v13++;
        v19 = v18;
        v20 = *v14++;
        v21 = v17 + v19 * v20;
        v22 = v16 + v21;
        v17 = v21 + v16 - (v16 + v21);
        v16 = v22;
        --v15;
      }

      while (v15);
    }

    v23 = operations_research::glop::LPSolver::ComputeDualObjective(v9, a2);
    if (*(v9 + 448) != 1)
    {
LABEL_45:
      if (!v11 && *(v9 + 995) == 1)
      {
        operations_research::glop::LPSolver::MovePrimalValuesWithinBounds(v9, a2);
        operations_research::glop::LPSolver::MoveDualValuesWithinBounds(v9, a2);
      }

      v28 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      if (v28 < 1)
      {
        v38 = 0.0;
      }

      else
      {
        v29 = *(a2 + 17);
        v30 = *v10;
        v31 = v28 & 0x7FFFFFFF;
        v32 = 0.0;
        v33 = 0.0;
        do
        {
          v34 = *v29++;
          v35 = v34;
          v36 = *v30++;
          v37 = v33 + v35 * v36;
          v38 = v32 + v37;
          v33 = v37 + v32 - (v32 + v37);
          v32 = v38;
          --v31;
        }

        while (v31);
      }

      v39 = (v38 + *(a2 + 49)) * *(a2 + 50);
      *(v9 + 97) = v39;
      if (*(v9 + 448) == 1)
      {
        __p = "Primal objective (after moving primal/dual values) = ";
        v140 = 53;
        v142 = v39;
        v143 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
        absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v142, 1uLL, &v132);
        v40 = v134;
        if ((v134 & 0x80u) == 0)
        {
          v41 = &v132;
        }

        else
        {
          v41 = v132;
        }

        if ((v134 & 0x80u) != 0)
        {
          v40 = v133;
        }

        v136 = v41;
        v137 = v40;
        absl::lts_20240722::StrCat(&__p, &v136, &v135);
        operations_research::SolverLogger::LogInfo(v9 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 376, &v135);
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
          if ((v134 & 0x80000000) == 0)
          {
            goto LABEL_61;
          }
        }

        else if ((v134 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        operator delete(v132);
      }

LABEL_61:
      operations_research::glop::LPSolver::ComputeReducedCosts(v9, a2);
      v42 = *(a2 + 6);
      v44 = *a2;
      v43 = *(a2 + 1);
      __p = 0;
      std::vector<double>::assign(v9 + 94, v42, &__p);
      v45 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v44) >> 4);
      if (v45 >= 1)
      {
        v46 = 0;
        v47 = v45 & 0x7FFFFFFF;
        do
        {
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v46);
          v49 = (*v10)[v46];
          if (v49 != 0.0)
          {
            v50 = SparseColumn[1];
            if (v50 >= 1)
            {
              v52 = SparseColumn[3];
              v51 = SparseColumn[4];
              v53 = *(v9 + 94);
              do
              {
                v54 = *v51++;
                v55 = v54;
                LODWORD(v54) = *v52++;
                *(v53 + 8 * SLODWORD(v54)) = *(v53 + 8 * SLODWORD(v54)) + v49 * v55;
                --v50;
              }

              while (v50);
            }
          }

          ++v46;
        }

        while (v46 != v47);
      }

      LOBYTE(v132) = 0;
      LOBYTE(v142) = 0;
      *v131 = 0;
      operations_research::glop::LPSolver::ComputeMaxRhsPerturbationToEnforceOptimality(v9, a2, &v132);
      operations_research::glop::LPSolver::ComputeMaxCostPerturbationToEnforceOptimality(v9, a2, &v142);
      v56 = *(v9 + 118);
      v57 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      v58 = 0.0;
      if (v57 >= 1)
      {
        v59 = 0;
        v60 = *(a2 + 20);
        v61 = *(a2 + 23);
        v62 = v57 & 0x7FFFFFFF;
        v63 = 0.0;
        v64 = *v10;
        while (1)
        {
          v66 = *v60;
          v67 = *v61;
          v68 = *v64;
          if (*v60 == *v61)
          {
            v65 = vabdd_f64(v68, v67);
            if (v63 < v65)
            {
              v63 = v65;
            }
          }

          else
          {
            if (v68 <= v67)
            {
              if (v68 >= v66)
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (v63 < v68 - v67)
              {
                v63 = v68 - v67;
              }

              v59 |= v68 - v67 > v56 * fmax(fabs(v67), 1.0);
              if (v68 >= v66)
              {
                goto LABEL_74;
              }
            }

            v65 = v66 - v68;
            if (v63 < v65)
            {
              v63 = v65;
            }

            v67 = *v60;
          }

          v59 |= v65 > v56 * fmax(fabs(v67), 1.0);
LABEL_74:
          ++v64;
          ++v61;
          ++v60;
          if (!--v62)
          {
            goto LABEL_86;
          }
        }
      }

      v59 = 0;
      v63 = 0.0;
LABEL_86:
      v69 = *(a2 + 6);
      if (v69 < 1)
      {
        v73 = 0;
      }

      else
      {
        v70 = *(v9 + 73);
        v71 = *(a2 + 8);
        v72 = *(a2 + 11);
        v73 = 0;
        v58 = 0.0;
        if (*(a2 + 408))
        {
          do
          {
            v74 = *v70++;
            v75 = v74;
            v76 = *v71++;
            v77 = v76;
            v78 = *v72++;
            v79 = v78;
            v80 = -v75;
            v81 = v73 | (v56 < -v75);
            if (v58 >= -v75)
            {
              v80 = v58;
            }

            if (v77 == -INFINITY)
            {
              v82 = v80;
            }

            else
            {
              v81 = v73;
              v82 = v58;
            }

            v83 = (v56 < v75) | v81;
            if (v82 >= v75)
            {
              v75 = v82;
            }

            if (v79 == INFINITY)
            {
              v73 = v83;
            }

            else
            {
              v73 = v81;
            }

            if (v79 == INFINITY)
            {
              v58 = v75;
            }

            else
            {
              v58 = v82;
            }

            --v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v84 = *v70++;
            v85 = v84;
            v86 = *v71++;
            v87 = v86;
            v88 = *v72++;
            v89 = v88;
            v90 = v73 | (v85 > v56);
            if (v58 >= v85)
            {
              v91 = v58;
            }

            else
            {
              v91 = v85;
            }

            if (v87 == -INFINITY)
            {
              v92 = v91;
            }

            else
            {
              v90 = v73;
              v92 = v58;
            }

            v93 = -v85;
            v94 = (v56 < v93) | v90;
            if (v92 >= v93)
            {
              v93 = v92;
            }

            if (v89 == INFINITY)
            {
              v73 = v94;
            }

            else
            {
              v73 = v90;
            }

            if (v89 == INFINITY)
            {
              v58 = v93;
            }

            else
            {
              v58 = v92;
            }

            --v69;
          }

          while (v69);
        }
      }

      operations_research::glop::LPSolver::ComputeActivityInfeasibility(v9, a2, &v131[1]);
      v96 = v95;
      operations_research::glop::LPSolver::ComputeReducedCostInfeasibility(v9, a2, v131);
      v99 = v98;
      if (v63 >= v96)
      {
        v100 = v63;
      }

      else
      {
        v100 = v96;
      }

      *(v9 + 99) = v100;
      if (v58 >= v99)
      {
        v99 = v58;
      }

      *(v9 + 100) = v99;
      if (*(v9 + 448) == 1)
      {
        __p = "Max. primal infeasibility = ";
        v140 = 28;
        v101 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v138, v100, v97);
        v136 = v138;
        v137 = v101;
        absl::lts_20240722::StrCat(&__p, &v136, &v135);
        operations_research::SolverLogger::LogInfo(v9 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 418, &v135);
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
          if ((*(v9 + 448) & 1) == 0)
          {
            goto LABEL_133;
          }
        }

        else if ((*(v9 + 448) & 1) == 0)
        {
          goto LABEL_133;
        }

        __p = "Max. dual infeasibility = ";
        v140 = 26;
        v102 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v138, *(v9 + 100), v97);
        v136 = v138;
        v137 = v102;
        absl::lts_20240722::StrCat(&__p, &v136, &v135);
        operations_research::SolverLogger::LogInfo(v9 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 420, &v135);
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }
      }

LABEL_133:
      v103 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      if (v103 < 1)
      {
        v109 = 0.0;
        goto LABEL_142;
      }

      v104 = *(v9 + 118);
      v105 = *(a2 + 17);
      v106 = *v10;
      v107 = v103 & 0x7FFFFFFF;
      if (v107 >= 4)
      {
        v110 = v103 & 3;
        v108 = v107 - v110;
        v111 = v106 + 1;
        v112 = v105 + 1;
        v109 = 0.0;
        __asm { FMOV            V1.2D, #1.0 }

        v118 = v107 - v110;
        do
        {
          v119 = vmulq_f64(vabsq_f64(v112[-1]), vmulq_n_f64(vmaxnmq_f64(vabsq_f64(v111[-1]), _Q1), v104));
          v120 = vmulq_f64(vabsq_f64(*v112), vmulq_n_f64(vmaxnmq_f64(vabsq_f64(*v111), _Q1), v104));
          v109 = v109 + v119.f64[0] + v119.f64[1] + v120.f64[0] + v120.f64[1];
          v111 += 2;
          v112 += 2;
          v118 -= 4;
        }

        while (v118);
        if (!v110)
        {
LABEL_142:
          if (*(v9 + 448) == 1 && (__p = "Objective error <= ", v140 = 19, v128 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v138, v109, v97), v136 = v138, v137 = v128, absl::lts_20240722::StrCat(&__p, &v136, &v135), operations_research::SolverLogger::LogInfo(v9 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 426, &v135), SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0))
          {
            operator delete(v135.__r_.__value_.__l.__data_);
            if (v11)
            {
              goto LABEL_145;
            }
          }

          else if (v11)
          {
LABEL_145:
            if (v11 != 7 || ((v131[1] | v59) & 1) == 0)
            {
              goto LABEL_177;
            }

            goto LABEL_147;
          }

          if (*(v9 + 995) != 1)
          {
LABEL_170:
            if (vabdd_f64(v22, v23) <= v109)
            {
              v11 = 0;
              if (((v131[1] | v59) & 1) == 0)
              {
                goto LABEL_177;
              }
            }

            else
            {
              if (*(v9 + 448) == 1)
              {
                operator new();
              }

              if (*(v9 + 1032))
              {
                goto LABEL_182;
              }

              v11 = 0;
              if (((v131[1] | v59) & 1) == 0)
              {
LABEL_177:
                if ((v11 & 0xFFFFFFF7) == 0)
                {
                  if ((v131[0] | v73))
                  {
                    if (*(v9 + 448) == 1)
                    {
                      operator new();
                    }

                    if (*(v9 + 1032))
                    {
LABEL_182:
                      IsOptimalSolutionOnFacet = 0;
                      LOBYTE(v11) = 11;
LABEL_185:
                      *(v9 + 784) = IsOptimalSolutionOnFacet;
                      return v11;
                    }
                  }

                  if (!v11)
                  {
                    IsOptimalSolutionOnFacet = operations_research::glop::LPSolver::IsOptimalSolutionOnFacet(v9, a2);
                    goto LABEL_185;
                  }
                }

                IsOptimalSolutionOnFacet = 0;
                goto LABEL_185;
              }
            }

LABEL_147:
            if (*(v9 + 448) == 1)
            {
              operator new();
            }

            if (*(v9 + 1032))
            {
              v11 = 11;
            }

            goto LABEL_177;
          }

          if (v63 == 0.0 && v58 == 0.0)
          {
            if (v132 == 1)
            {
              goto LABEL_157;
            }
          }

          else
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 433);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Primal/dual values have been moved to their bounds. ", 0x34uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Therefore the primal/dual infeasibilities should be ", 0x34uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "exactly zero (but not the residuals). If this message ", 0x36uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "appears, there is probably a bug in ", 0x24uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "MovePrimalValuesWithinBounds() or in ", 0x25uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "MoveDualValuesWithinBounds().", 0x1DuLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
            if (v132 == 1)
            {
LABEL_157:
              if (*(v9 + 448) == 1)
              {
                operator new();
              }

              if (*(v9 + 1032))
              {
                v11 = 11;
              }

              else
              {
                v11 = 0;
              }

              if (LOBYTE(v142) != 1)
              {
                goto LABEL_169;
              }

              goto LABEL_166;
            }
          }

          v11 = 0;
          if (LOBYTE(v142) != 1)
          {
            goto LABEL_169;
          }

LABEL_166:
          if (*(v9 + 448) == 1)
          {
            operator new();
          }

          if (*(v9 + 1032))
          {
            goto LABEL_182;
          }

LABEL_169:
          if (v11)
          {
            goto LABEL_177;
          }

          goto LABEL_170;
        }
      }

      else
      {
        v108 = 0;
        v109 = 0.0;
      }

      v121 = v107 - v108;
      v122 = v108;
      v123 = &v106->f64[v122];
      v124 = &v105->f64[v122];
      do
      {
        v125 = *v124++;
        v126 = v125;
        v127 = *v123++;
        v109 = v109 + fabs(v126) * (v104 * fmax(fabs(v127), 1.0));
        --v121;
      }

      while (v121);
      goto LABEL_142;
    }

    __p = "Primal objective (before moving primal/dual values) = ";
    v140 = 54;
    v142 = (v22 + *(a2 + 49)) * *(a2 + 50);
    v143 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v142, 1uLL, &v132);
    v24 = v134;
    if ((v134 & 0x80u) == 0)
    {
      v25 = &v132;
    }

    else
    {
      v25 = v132;
    }

    if ((v134 & 0x80u) != 0)
    {
      v24 = v133;
    }

    v136 = v25;
    v137 = v24;
    absl::lts_20240722::StrCat(&__p, &v136, &v135);
    operations_research::SolverLogger::LogInfo(v9 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 361, &v135);
    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
      if ((v134 & 0x80000000) == 0)
      {
LABEL_32:
        if ((*(v9 + 448) & 1) == 0)
        {
          goto LABEL_45;
        }

LABEL_36:
        __p = "Dual objective (before moving primal/dual values) = ";
        v140 = 52;
        v142 = (v23 + *(a2 + 49)) * *(a2 + 50);
        v143 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
        absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v142, 1uLL, &v132);
        v26 = v134;
        if ((v134 & 0x80u) == 0)
        {
          v27 = &v132;
        }

        else
        {
          v27 = v132;
        }

        if ((v134 & 0x80u) != 0)
        {
          v26 = v133;
        }

        v136 = v27;
        v137 = v26;
        absl::lts_20240722::StrCat(&__p, &v136, &v135);
        operations_research::SolverLogger::LogInfo(v9 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 364, &v135);
        if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v135.__r_.__value_.__l.__data_);
        }

        if (v134 < 0)
        {
          operator delete(v132);
        }

        goto LABEL_45;
      }
    }

    else if ((v134 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(v132);
    if ((*(v9 + 448) & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (*(v9 + 448) == 1)
  {
    operator new();
  }

  operations_research::glop::LPSolver::ResizeSolution(v9, *(a2 + 6), -1431655765 * ((*(a2 + 1) - *a2) >> 4));
  LOBYTE(v11) = 9;
  return v11;
}

void sub_23CBA9DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::ProblemSolution::~ProblemSolution(operations_research::glop::ProblemSolution *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

BOOL operations_research::glop::LPSolver::IsProblemSolutionConsistent(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, const operations_research::glop::ProblemSolution *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v8 = *(a3 + 7);
  v9 = (*(a3 + 16) - v8);
  if (v9 != v7)
  {
    return 0;
  }

  v10 = *(a2 + 6);
  v11 = *(a3 + 10);
  if (v10 != *(a3 + 22) - v11)
  {
    return 0;
  }

  v12 = *(a3 + 1);
  if (v9 != ((*(a3 + 2) - v12) >> 3))
  {
    return 0;
  }

  v13 = *(a3 + 4);
  if (v10 != ((*(a3 + 5) - v13) >> 3))
  {
    return 0;
  }

  v14 = *a3;
  result = 1;
  if (v14 <= 8 && ((1 << v14) & 0x181) != 0)
  {
    if (v7 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = v7 & 0x7FFFFFFF;
      while (1)
      {
        v19 = *(v12 + 8 * v16);
        v20 = *(*(a2 + 20) + 8 * v16);
        v21 = *(*(a2 + 23) + 8 * v16);
        v22 = *(v8 + v16);
        if (v22 <= 1)
        {
          if (*(v8 + v16))
          {
            if (v22 == 1 && v19 != v21 && v19 != v20)
            {
              return 0;
            }
          }

          else
          {
            ++v17;
          }
        }

        else
        {
          switch(v22)
          {
            case 2u:
              if (v19 != v20 || v20 == v21)
              {
                return 0;
              }

              break;
            case 3u:
              v27 = fabs(v21) == INFINITY;
              if (fabs(v19) != INFINITY && !v27)
              {
                if (vabdd_f64(v19, v21) > 0.0000001 || v20 == v21)
                {
LABEL_52:
                  return 0;
                }
              }

              else if (v19 != v21 || v20 == v21)
              {
                goto LABEL_52;
              }

              break;
            case 4u:
              v23 = v20 == -INFINITY && v21 == INFINITY;
              if (!v23 || v19 != 0.0)
              {
                return 0;
              }

              break;
          }
        }

        if (v18 == ++v16)
        {
          goto LABEL_54;
        }
      }
    }

    v17 = 0;
LABEL_54:
    if (v10 >= 1)
    {
      for (i = 0; v10 != i; ++i)
      {
        v32 = *(v13 + 8 * i);
        v33 = *(*(a2 + 8) + 8 * i);
        v34 = *(*(a2 + 11) + 8 * i);
        v35 = *(v11 + i);
        if (v35 <= 1)
        {
          if (*(v11 + i))
          {
            if (v35 == 1 && v34 - v33 > 1.0e-12)
            {
              return 0;
            }
          }

          else
          {
            if (v32 != 0.0)
            {
              v47 = i;
              v48 = v17;
              if (dword_2810BFFF8 >= 1)
              {
                v44 = v32;
                if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_13, dword_2810BFFF8))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 768);
                  v37 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v46, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, "Constraint ", 0xBuLL);
                  v38 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v37, &v47);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, " is BASIC, but its dual value is ", 0x21uLL);
                  v49 = v44;
                  v39 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v38, &v49);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, " instead of 0.", 0xEuLL);
                  goto LABEL_91;
                }
              }

              return 0;
            }

            ++v17;
          }
        }

        else
        {
          switch(v35)
          {
            case 2u:
              if (v33 == -INFINITY)
              {
                return 0;
              }

              break;
            case 3u:
              if (v34 == INFINITY)
              {
                return 0;
              }

              break;
            case 4u:
              if (v32 != 0.0)
              {
                v47 = i;
                v48 = v17;
                if (dword_2810C0010 >= 1)
                {
                  v45 = v32;
                  if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0008, dword_2810C0010))
                  {
                    absl::lts_20240722::log_internal::LogMessage::LogMessage(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 797);
                    v40 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v46, 1);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "Constraint ", 0xBuLL);
                    v41 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v40, &v47);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v41, " is FREE, but its dual value is ", 0x20uLL);
                    v49 = v45;
                    v42 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v41, &v49);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, " instead of 0.", 0xEuLL);
                    goto LABEL_91;
                  }
                }

                return 0;
              }

              if (v33 != -INFINITY || v34 != INFINITY)
              {
                return 0;
              }

              break;
          }
        }
      }
    }

    v48 = v17;
    if (v17 == v10)
    {
      return 1;
    }

    else
    {
      if (dword_2810C0028 < 1)
      {
        return 0;
      }

      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0020, dword_2810C0028);
      if (result)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 812);
        v43 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v46, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, "Wrong number of basic variables: ", 0x21uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v43, &v48);
LABEL_91:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v46);
        return 0;
      }
    }
  }

  return result;
}

void sub_23CBAA3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAA3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAA3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::LPSolver::ComputeReducedCosts(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v5 = (this + 728);
  v19 = 0;
  v6 = *(this + 91);
  v7 = (*(this + 92) - v6) >> 3;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      *(this + 92) = v6 + 8 * v4;
    }
  }

  else
  {
    std::vector<double>::__append(this + 728, v4 - v7, &v19);
  }

  if (v4 >= 1)
  {
    v8 = 0;
    v9 = v4 & 0x7FFFFFFF;
    do
    {
      v11 = *(*(a2 + 17) + 8 * v8);
      SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v8);
      v13 = SparseColumn[1];
      if (v13 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v14 = SparseColumn[3];
        v15 = SparseColumn[4];
        v10 = 0.0;
        do
        {
          v16 = *v14++;
          v17 = *(*(this + 73) + 8 * v16);
          v18 = *v15++;
          v10 = v10 + v17 * v18;
          --v13;
        }

        while (v13);
      }

      *(*v5 + 8 * v8++) = v11 - v10;
    }

    while (v8 != v9);
  }
}

double operations_research::glop::LPSolver::ComputeDualObjective(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v2 = *(a2 + 6);
  v3 = -1.0;
  if (!*(a2 + 408))
  {
    v3 = 1.0;
  }

  if (v2 >= 1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 11);
    v6 = *(this + 73);
    v7 = 0.0;
    v8 = 0.0;
    while (1)
    {
      v9 = *v4;
      v10 = *v6;
      v11 = v3 * *v6;
      if (v11 <= 0.0 || v9 == -INFINITY)
      {
        v13 = *v5;
        if (v11 >= 0.0 || v13 == INFINITY)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = v8 + v9 * v10;
        v16 = v7 + v15;
        v8 = v15 + v7 - (v7 + v15);
        v7 = v16;
        v13 = *v5;
        if (v11 >= 0.0 || v13 == INFINITY)
        {
          goto LABEL_5;
        }
      }

      v18 = v13 * v10 + v8;
      v19 = v18 + v7;
      v8 = v18 + v7 - (v18 + v7);
      v7 = v19;
LABEL_5:
      ++v6;
      ++v5;
      ++v4;
      if (!--v2)
      {
        goto LABEL_22;
      }
    }
  }

  v8 = 0.0;
  v7 = 0.0;
LABEL_22:
  v20 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v20 < 1)
  {
    return v7;
  }

  v21 = *(a2 + 23);
  v22 = *(this + 91);
  v23 = *(this + 76);
  v24 = v20 & 0x7FFFFFFF;
  v25 = *(a2 + 20);
  do
  {
    v29 = *v21;
    v30 = v3 * *v22;
    v32 = *v23++;
    v31 = v32;
    if (v32 == 2 && v30 > 0.0)
    {
      v26 = v30 * *v25;
    }

    else if (v31 == 3 && v30 < 0.0)
    {
      v26 = v29 * v30;
    }

    else
    {
      v26 = v29 * v30;
      if (v31 != 1)
      {
        v26 = 0.0;
      }
    }

    v27 = v8 + v3 * v26;
    result = v7 + v27;
    ++v22;
    v8 = v27 + v7 - (v7 + v27);
    ++v21;
    ++v25;
    v7 = result;
    --v24;
  }

  while (v24);
  return result;
}

void operations_research::glop::LPSolver::MovePrimalValuesWithinBounds(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v3 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v3 < 1)
  {
    v7 = 0.0;
    if ((*(this + 448) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v4 = *(a2 + 20);
  v5 = *(a2 + 23);
  v6 = v3 & 0x7FFFFFFF;
  v7 = 0.0;
  v8 = *(this + 70);
  do
  {
    v9 = *v4++;
    v10 = v9;
    v11 = *v5++;
    v12 = v11;
    v13 = *v8;
    v14 = *v8 - v11;
    if (v7 < v14)
    {
      v7 = v14;
    }

    if (v7 < v10 - v13)
    {
      v7 = v10 - v13;
    }

    if (v12 >= v13)
    {
      v12 = *v8;
    }

    if (v12 >= v10)
    {
      v10 = v12;
    }

    *v8++ = v10;
    --v6;
  }

  while (v6);
  if (*(this + 448))
  {
LABEL_15:
    v18[0] = "Max. primal values move = ";
    v18[1] = 26;
    v16[0] = v17;
    v16[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v17, v7, a2);
    absl::lts_20240722::StrCat(v18, v16, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 566, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CBAA7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::LPSolver::MoveDualValuesWithinBounds(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  v4 = -1.0;
  if (!*(a2 + 408))
  {
    v4 = 1.0;
  }

  if (v3 >= 1)
  {
    v5 = *(a2 + 8);
    v6 = *(this + 73);
    v7 = *(a2 + 11);
    v8 = 0.0;
    while (1)
    {
      v9 = v4 * *v6;
      if (*v5 == -INFINITY && v9 > 0.0)
      {
        goto LABEL_6;
      }

      if (*v7 == INFINITY && v9 < 0.0)
      {
        break;
      }

LABEL_9:
      *v6++ = v4 * v9;
      ++v7;
      ++v5;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    v9 = -v9;
LABEL_6:
    if (v8 < v9)
    {
      v8 = v9;
    }

    v9 = 0.0;
    goto LABEL_9;
  }

  v8 = 0.0;
LABEL_16:
  if (*(this + 448))
  {
    v13[0] = "Max. dual values move = ";
    v13[1] = 24;
    v11[0] = v12;
    v11[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v12, v8, a2);
    absl::lts_20240722::StrCat(v13, v11, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 590, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}