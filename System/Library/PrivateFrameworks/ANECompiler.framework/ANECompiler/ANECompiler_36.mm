uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v5 = a2 - a1;
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a2 - 1, *a3);
        goto LABEL_38;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        goto LABEL_38;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        goto LABEL_38;
    }
  }

  else
  {
    if (v5 < 2)
    {
      goto LABEL_38;
    }

    if (v5 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = *a3 + 24;
      if (*v9)
      {
        v10 = *v9 + 7 + 8 * v7;
      }

      else
      {
        v10 = *a3 + 24;
      }

      v11 = *(*v10 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      if (*v9)
      {
        v9 = *v9 + 7 + 8 * v8;
      }

      v12 = *(*v9 + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v13 = *(v12 + 23);
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = *(v11 + 23);
      }

      else
      {
        v15 = *(v11 + 8);
      }

      if (v14 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v13 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = *(v12 + 8);
      }

      if (v13 >= 0)
      {
        v18 = v12;
      }

      else
      {
        v18 = *v12;
      }

      if (v17 >= v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      v20 = memcmp(v16, v18, v19);
      v21 = v15 < v17;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (v21 == 1)
      {
        *a1 = v7;
        *(a2 - 1) = v8;
        return v21 & 1;
      }

LABEL_38:
      LOBYTE(v21) = 1;
      return v21 & 1;
    }
  }

  v22 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, *a3);
  v25 = a1 + 3;
  if (a1 + 3 != a2 && (v26 = *(*a3 + 24), (v26 & 1) != 0))
  {
    v29 = 0;
    v30 = v26 + 7;
    v31 = 12;
    v58 = a2;
    while (1)
    {
      v33 = *v22;
      v59 = *v25;
      v34 = *(*(v30 + 8 * v59) + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v35 = *(*(v30 + 8 * v33) + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v36 = *(v35 + 23);
      v37 = *(v34 + 23);
      if (v37 >= 0)
      {
        v38 = *(v34 + 23);
      }

      else
      {
        v38 = *(v34 + 8);
      }

      if (v37 >= 0)
      {
        v39 = (*(*(v30 + 8 * v59) + 40) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v39 = *v34;
      }

      if (v36 >= 0)
      {
        v40 = *(v35 + 23);
      }

      else
      {
        v40 = *(v35 + 8);
      }

      if (v36 >= 0)
      {
        v41 = (*(*(v30 + 8 * v33) + 40) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v41 = *v35;
      }

      if (v40 >= v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = v40;
      }

      v43 = memcmp(v39, v41, v42);
      v44 = v38 < v40;
      v24 = v43 < 0;
      if (v43)
      {
        v44 = v43 < 0;
      }

      if (v44)
      {
        break;
      }

      v32 = v58;
LABEL_42:
      v22 = v25;
      v31 += 4;
      if (++v25 == v32)
      {
        goto LABEL_35;
      }
    }

    v45 = v31;
    LODWORD(v46) = v33;
    while (1)
    {
      *(a1 + v45) = v46;
      v47 = v45 - 4;
      if (v45 == 4)
      {
        break;
      }

      v46 = *(a1 + v45 - 8);
      v48 = *(*(v30 + 8 * v46) + 40) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = *(v48 + 23);
      v50 = *(v34 + 23);
      if (v50 >= 0)
      {
        v51 = *(v34 + 23);
      }

      else
      {
        v51 = *(v34 + 8);
      }

      if (v50 >= 0)
      {
        v52 = v34;
      }

      else
      {
        v52 = *v34;
      }

      if (v49 >= 0)
      {
        v53 = *(v48 + 23);
      }

      else
      {
        v53 = *(v48 + 8);
      }

      if (v49 >= 0)
      {
        v54 = (*(*(v30 + 8 * v46) + 40) & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v54 = *v48;
      }

      if (v53 >= v51)
      {
        v55 = v51;
      }

      else
      {
        v55 = v53;
      }

      v56 = memcmp(v52, v54, v55);
      v57 = v56 < 0;
      if (!v56)
      {
        v57 = v51 < v53;
      }

      v45 = v47;
      if (!v57)
      {
        v32 = v58;
        v24 = v59;
        *(a1 + v47) = v59;
        if (++v29 != 8)
        {
          goto LABEL_42;
        }

        goto LABEL_84;
      }
    }

    v32 = v58;
    v24 = v59;
    *a1 = v59;
    if (++v29 != 8)
    {
      goto LABEL_42;
    }

LABEL_84:
    v27 = 0;
    v24 = v25 + 1 == v32;
  }

  else
  {
LABEL_35:
    v27 = 1;
  }

  LOBYTE(v21) = v27 | v24;
  return v21 & 1;
}

void *std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F3E548;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  operations_research::sat::CpModelProto::~CpModelProto((a1 + 9));
  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5 == a1 + 1)
  {
    (*(*v5 + 32))(v5);
    return a1;
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F3E548;
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  operations_research::sat::CpModelProto::~CpModelProto((a1 + 9));
  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5 == a1 + 1)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v2 = a1;
  v119 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4);
  if (*a2 != -1)
  {
    LODWORD(v95) = *a2;
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 446);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v101, "Boolean decision ", 0x11uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::Literal,0>(&v101, &v95);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v101);
    v8 = v2[5];
    v9 = v8[3];
    if (v9 > 1)
    {
      v12 = 0;
      _X12 = v8[5];
      __asm { PRFM            #4, [X12] }

      v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v19 = vdup_n_s8(v18 & 0x7F);
      v20 = ((v18 >> 7) ^ (_X12 >> 12)) & v9;
      v21 = *(_X12 + v20);
      v22 = vceq_s8(v21, v19);
      if (!v22)
      {
        goto LABEL_15;
      }

LABEL_12:
      v23 = v8[6];
      while (1)
      {
        v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v9;
        if (*(v23 + 16 * v24) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v22)
        {
LABEL_15:
          while (!*&vceq_s8(v21, 0x8080808080808080))
          {
            v12 += 8;
            v20 = (v12 + v20) & v9;
            v21 = *(_X12 + v20);
            v22 = vceq_s8(v21, v19);
            if (v22)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_21;
        }
      }

      v10 = (v23 + 16 * v24);
      if (_X12 + v24)
      {
        goto LABEL_19;
      }
    }

    else if (v8[4] >= 2uLL)
    {
      v11 = v8[5];
      v10 = v8 + 5;
      if (v11 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_19:
          v25 = v10[1];
LABEL_22:
          v26 = v95;
          v27 = v25[14];
          v28 = -858993459 * ((v25[15] - v27) >> 3);
          v29 = (v27 + 40 * v95);
          if (v95 >= v28)
          {
            v30 = v25 + 9;
          }

          else
          {
            v30 = v29;
          }

          v33 = *v30;
          v32 = v30 + 1;
          v31 = v33;
          if (v33)
          {
            v32 = *v32;
          }

          if ((v31 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v34 = 16 * (v31 >> 1);
            do
            {
              v101 = *v32;
              absl::lts_20240722::log_internal::LogMessage::LogMessage(&v98, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 449);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v98, " - associated with ", 0x13uLL);
              absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(&v98, &v101);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v98);
              v32 += 2;
              v34 -= 16;
            }

            while (v34);
            v26 = v95;
            v35 = v95;
          }

          else
          {
            v35 = v95;
          }

          v36 = v25[22];
          v37 = (v36 + 40 * v35);
          if (v26 >= (-858993459 * ((v25[23] - v36) >> 3)))
          {
            v38 = v25 + 17;
          }

          else
          {
            v38 = v37;
          }

          v41 = *v38;
          v40 = v38 + 1;
          v39 = v41;
          if (v41)
          {
            v40 = *v40;
          }

          if ((v39 & 0x1FFFFFFFFFFFFFFELL) != 0)
          {
            v42 = 16 * (v39 >> 1);
            do
            {
              v101 = *v40;
              absl::lts_20240722::log_internal::LogMessage::LogMessage(&v98, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 452);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v98, " - associated with ", 0x13uLL);
              v43 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(&v98, &v101);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, " == ", 4uLL);
              absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v43, &v101 + 1);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v98);
              v40 += 2;
              v42 -= 16;
            }

            while (v42);
          }

          goto LABEL_40;
        }
      }
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v6 = a2[2];
  v5 = (a2 + 2);
  if (v6 == -1)
  {
    return;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 455);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v101, "Integer decision ", 0x11uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(&v101, v5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v101);
LABEL_40:
  v44 = v2[5];
  v45 = v44[3];
  if (v45 > 1)
  {
    v46 = 0;
    _X12 = v44[5];
    __asm { PRFM            #4, [X12] }

    v49 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
    v50 = vdup_n_s8(v49 & 0x7F);
    v51 = ((v49 >> 7) ^ (_X12 >> 12)) & v45;
    v52 = *(_X12 + v51);
    v53 = vceq_s8(v52, v50);
    if (!v53)
    {
      goto LABEL_47;
    }

LABEL_44:
    v54 = v44[6];
    do
    {
      v55 = (v51 + (__clz(__rbit64(v53)) >> 3)) & v45;
      if (*(v54 + 16 * v55) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        v44 = (v54 + 16 * v55);
        goto LABEL_51;
      }

      v53 &= ((v53 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v53);
LABEL_47:
    while (!*&vceq_s8(v52, 0x8080808080808080))
    {
      v46 += 8;
      v51 = (v46 + v51) & v45;
      v52 = *(_X12 + v51);
      v53 = vceq_s8(v52, v50);
      if (v53)
      {
        goto LABEL_44;
      }
    }
  }

  else if (v44[4] >= 2uLL)
  {
    v44 += 5;
  }

LABEL_51:
  v56 = *(v44[1] + 8);
  *&v101 = "Diff since last call, level=";
  *(&v101 + 1) = 28;
  v57 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v56 & 0xFFFFFFF), v100, v7);
  v98 = v100;
  v99 = v57 - v100;
  v95 = "\n";
  v96 = 1;
  absl::lts_20240722::StrCat(&v101, &v98, &v95, &v89);
  v58 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v2[5]);
  v61 = v2[32];
  v60 = v2[33];
  if (v61 != v60)
  {
    v62 = v58;
    v88 = v2 + 12;
    v63 = v2[29];
    v87 = v58;
    do
    {
      v65 = *v61;
      v66 = *(v62 + 5);
      v67 = 8 * *(v2[6] + 4 * v65);
      v68 = *(v66 + v67);
      v69 = -*(v66 + (v67 ^ 8));
      v70 = (v63 + 16 * v65);
      v71 = *v70;
      v72 = v70[1];
      if (v68 != v71 || v72 != v69)
      {
        v74 = v2;
        if (*v88)
        {
          v75 = *v88 + 8 * v65 + 7;
        }

        else
        {
          v75 = v88;
        }

        v76 = *(*v75 + 40) & 0xFFFFFFFFFFFFFFFCLL;
        v77 = *(v76 + 23);
        if (v77 >= 0)
        {
          v78 = v76;
        }

        else
        {
          v78 = *v76;
        }

        if (v77 >= 0)
        {
          v79 = *(v76 + 23);
        }

        else
        {
          v79 = *(v76 + 8);
        }

        v80 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v71, v94, v59);
        *&v93 = v94;
        *(&v93 + 1) = v80 - v94;
        v82 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v74[29] + 16 * v65 + 8), v92, v81);
        v90 = v92;
        v91 = v82 - v92;
        *&v101 = v78;
        *(&v101 + 1) = v79;
        v102 = " [";
        v103 = 2;
        v104 = v93;
        v105 = ",";
        v106 = 1;
        v107 = v92;
        v108 = v82 - v92;
        v109 = "] -> [";
        v110 = 6;
        v84 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v68, v100, v83);
        v98 = v100;
        v99 = v84 - v100;
        v111 = v100;
        v112 = v84 - v100;
        v113 = ",";
        v114 = 1;
        v86 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v69, v97, v85);
        v95 = v97;
        v96 = v86 - v97;
        v115 = v97;
        v116 = v86 - v97;
        v117 = "]\n";
        v118 = 2;
        absl::lts_20240722::strings_internal::AppendPieces(&v89, &v101, 10);
        v2 = v74;
        v63 = v74[29];
        v64 = (v63 + 16 * v65);
        *v64 = v68;
        v64[1] = v69;
        v62 = v87;
      }

      ++v61;
    }

    while (v61 != v60);
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_search.cc", 474);
  absl::lts_20240722::log_internal::LogMessage::operator<<(&v101, &v89);
  std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v101, &v89);
}

void sub_23CAE6EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a44);
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23CAE6F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat24InstrumentSearchStrategyERKNS0_12CpModelProtoERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS4_9allocatorIS8_EEEERKNS4_8functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0::$_0(void *a1, void *a2)
{
  v4 = a2[3];
  if (v4)
  {
    if (v4 == a2)
    {
      a1[3] = a1;
      (*(*a2[3] + 24))(a2[3], a1);
    }

    else
    {
      a1[3] = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    a1[3] = 0;
  }

  v5 = a2[4];
  a1[5] = 0;
  a1[4] = v5;
  a1[6] = 0;
  a1[7] = 0;
  v7 = a2[5];
  v6 = a2[6];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::CpModelProto::CpModelProto((a1 + 8), 0, (a2 + 8));
  a1[28] = 0;
  a1[29] = 0;
  a1[30] = 0;
  v8 = a2[28];
  v9 = a2[29];
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a1[31] = 0;
  a1[32] = 0;
  a1[33] = 0;
  v11 = a2[31];
  v10 = a2[32];
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CAE71E0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v1);
  _Unwind_Resume(a1);
}

void *std::__function::__alloc_func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  operations_research::sat::CpModelProto::~CpModelProto((a1 + 8));
  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  result = a1[3];
  if (result == a1)
  {
    v6 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v6 = *(*result + 40);
  }

  return v6();
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::IntegerLiteral,0>(uint64_t a1, __int128 *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v9, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v9);
  v11 = *a2;
  operations_research::sat::IntegerLiteral::DebugString(&v10, &v11, v5);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v9);
  return a1;
}

void sub_23CAE73C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
    absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
  _Unwind_Resume(a1);
}

const void **operations_research::sat::IntegerLiteral::DebugString@<X0>(std::string *__return_ptr a1@<X8>, operations_research::sat::IntegerLiteral *this@<X0>, char *a3@<X2>)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if (*this)
  {
    v16 = "I";
    v17 = 1;
    v13 = v15;
    v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v5 / 2), v15, a3) - v15;
    v11 = "<=";
    v12 = 2;
    v7 = -*(this + 1);
  }

  else
  {
    v16 = "I";
    v17 = 1;
    v13 = v15;
    v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v5 >> 1), v15, a3) - v15;
    v11 = ">=";
    v12 = 2;
    v7 = *(this + 1);
  }

  v9[0] = v10;
  v9[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(v7, v10, v6) - v10;
  return absl::lts_20240722::StrCat(&v16, &v13, &v11, v9, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<char [8]>@<X0>(uint64_t *__return_ptr a1@<X8>, char *__s@<X1>, unint64_t *a3@<X0>)
{
  _X8 = a3[2];
  __asm { PRFM            #4, [X8] }

  v12 = strlen(__s);
  v15 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, __s, v12, v13, v14);
  v16 = 0;
  v17 = (((v15 + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v12));
  v18 = a3[2];
  v19 = *a3;
  v20 = vdup_n_s8(v17 & 0x7F);
  v21 = ((v17 >> 7) ^ (v18 >> 12)) & *a3;
  v22 = *(v18 + v21);
  v23 = vceq_s8(v22, v20);
  if (v23)
  {
LABEL_2:
    v24 = a3[3];
    v25 = v16;
    v26 = strlen(__s);
    v27 = v25;
    v28 = v26;
    v39 = v27;
    v40 = a1;
    v38 = v24;
    while (1)
    {
      v29 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v19;
      v30 = v24 + 1000 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v28)
      {
        v33 = v32 >= 0 ? v30 : *v30;
        result = memcmp(v33, __s, v28);
        if (!result)
        {
          break;
        }
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v16 = v39;
      a1 = v40;
      v24 = v38;
      if (!v23)
      {
        goto LABEL_11;
      }
    }

    v36 = 0;
    v37 = v18 + v29;
    a1 = v40;
  }

  else
  {
LABEL_11:
    while (1)
    {
      v35 = vceq_s8(v22, 0x8080808080808080);
      if (v35)
      {
        break;
      }

      v16 += 8;
      v21 = (v16 + v21) & v19;
      v22 = *(v18 + v21);
      v23 = vceq_s8(v22, v20);
      if (v23)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a3, v17, (v21 + (__clz(__rbit64(v35)) >> 3)) & v19, v16, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::GetPolicyFunctions(void)::value);
    v37 = a3[2] + result;
    v30 = a3[3] + 1000 * result;
    v36 = 1;
  }

  *a1 = v37;
  a1[1] = v30;
  *(a1 + 16) = v36;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,1000ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(absl::lts_20240722::container_internal::map_slot_type<std::string,operations_research::sat::SatParameters> *)#1}::operator()(uint64_t a1, uint64_t **a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2;
  v7 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v8, a4, a5);
  v10 = (((v9 + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v8));
  v11 = *(a1 + 8);
  v12 = v11[2];
  v13 = *v11;
  v14 = ((v10 >> 7) ^ (v12 >> 12)) & *v11;
  if (*(v12 + v14) >= -1)
  {
    v15 = 0;
    for (i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080; !i; i = *(v12 + v14) & ~(*(v12 + v14) << 7) & 0x8080808080808080)
    {
      v15 += 8;
      v14 = (v15 + v14) & v13;
    }

    v14 = (v14 + (__clz(__rbit64(i)) >> 3)) & v13;
  }

  else
  {
    v15 = 0;
  }

  v17 = v10 & 0x7F;
  *(v12 + v14) = v17;
  *(v12 + ((v14 - 7) & v13) + (v13 & 7)) = v17;
  std::pair<std::string const,operations_research::sat::SatParameters>::pair[abi:ne200100]((**(a1 + 16) + 1000 * v14), v5);
  operations_research::sat::SatParameters::~SatParameters((v5 + 3));
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  return v15;
}

std::string *std::pair<std::string const,operations_research::sat::SatParameters>::pair[abi:ne200100](std::string *this, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&a2->__r_.__value_.__l.__data_;
    this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  operations_research::sat::SatParameters::SatParameters(this[1].__r_.__value_.__r.__words, 0);
  if (this != a2)
  {
    size = this[1].__r_.__value_.__l.__size_;
    if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFELL);
      v6 = a2[1].__r_.__value_.__l.__size_;
      if ((v6 & 1) == 0)
      {
LABEL_7:
        if (size != v6)
        {
LABEL_8:
          operations_research::sat::SatParameters::CopyFrom(&this[1], &a2[1]);
          return this;
        }

LABEL_11:
        operations_research::sat::SatParameters::InternalSwap(&this[1], &a2[1]);
        return this;
      }
    }

    else
    {
      v6 = a2[1].__r_.__value_.__l.__size_;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (size != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t absl::lts_20240722::container_internal::hash_policy_traits<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,void>::hash_slot_fn_non_type_erased<absl::lts_20240722::container_internal::StringHash>(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v6, a4, a5);
  return (((v7 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7 + v6));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::transfer_slot_fn(int a1, std::string *this, uint64_t a3)
{
  std::pair<std::string const,operations_research::sat::SatParameters>::pair[abi:ne200100](this, a3);
  operations_research::sat::SatParameters::~SatParameters((a3 + 24));
  if (*(a3 + 23) < 0)
  {
    v4 = *a3;

    operator delete(v4);
  }
}

void *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN19operations_research3sat13SatParametersEEC2B8ne200100IJRA8_KcEJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSH_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSQ_IJXspT2_EEEE(void *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, v3, v4);
  }

  *(a1 + v5) = 0;
  operations_research::sat::SatParameters::SatParameters(a1 + 3, 0);
  return a1;
}

void sub_23CAE7CC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::find_or_prepare_insert_non_soo<std::string>@<X0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, unint64_t a4@<X3>, const unint64_t *a5@<X4>)
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
  v18 = vdup_n_s8(v16 & 0x7F);
  v19 = *a1;
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

  v25 = v23 & v19;
  v26 = *(v17 + (v23 & v19));
  v27 = vceq_s8(v26, v18);
  if (v27)
  {
LABEL_11:
    v28 = a1[3];
    v38 = v28;
    v39 = v15;
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v19;
      v30 = v28 + 1000 * v29;
      v31 = *(v30 + 23);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(v30 + 8);
      }

      if (v31 == v22)
      {
        v33 = v32 >= 0 ? (v28 + 1000 * v29) : *v30;
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
      v25 = (v15 + v25) & v19;
      v26 = *(v17 + v25);
      v27 = vceq_s8(v26, v18);
      if (v27)
      {
        goto LABEL_11;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v16, (v25 + (__clz(__rbit64(v35)) >> 3)) & v19, v15, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::GetPolicyFunctions(void)::value);
    v37 = a1[2] + result;
    v30 = a1[3] + 1000 * result;
    v36 = 1;
  }

  *a3 = v37;
  *(a3 + 8) = v30;
  *(a3 + 16) = v36;
  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::resize_impl(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::container_internal::StringHash,std::string>(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = a2;
    a2 = *a2;
    v5 = *(v6 + 1);
  }

  v7 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v5, a4, a5);
  return (((v7 + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v7 + v5));
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  *(a3 + 8) = 0uLL;
  a3->n128_u64[0] = 0;
  return result;
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    v10 = 24 * __n;
    if (24 * __n)
    {
      bzero(this->__end_, 24 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 24 * v5;
    v12 = 24 * __n;
    if (24 * __n)
    {
      bzero(v11, v12);
      v9 = (v11 + v12);
    }

    else
    {
      v9 = v11;
    }

    begin = this->__begin_;
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy(v15, this->__begin_, v14);
    this->__begin_ = v15;
    this->__end_ = v9;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void *std::vector<operations_research::sat::SatParameters>::__emplace_back_slow_path<operations_research::sat::SatParameters const&>(void **a1, uint64_t a2)
{
  v2 = 0x4FBCDA3AC10C9715 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x4325C53EF368EBLL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x9F79B47582192E2ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x4FBCDA3AC10C9715 * ((a1[2] - *a1) >> 4)) >= 0x2192E29F79B475)
  {
    v5 = 0x4325C53EF368EBLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x4325C53EF368EBLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = 16 * ((a1[1] - *a1) >> 4);
  operations_research::sat::SatParameters::SatParameters(v11, 0, a2);
  v6 = (976 * v2 + 976);
  v7 = a1[1];
  v8 = (976 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::SatParameters>,operations_research::sat::SatParameters*>(a1, *a1, v7, (v11 + *a1 - v7));
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_23CAE84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::SatParameters>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::SatParameters>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 976;
    operations_research::sat::SatParameters::~SatParameters((i - 976));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::SatParameters>,operations_research::sat::SatParameters*>(uint64_t a1, operations_research::sat::SatParameters *a2, operations_research::sat::SatParameters *a3, __n128 *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::SatParameters::SatParameters(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      v8 = a4->n128_u64[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = v7->n128_u64[1];
        if (v9)
        {
LABEL_11:
          if (v8 != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::SatParameters::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = v7->n128_u64[1];
        if (v9)
        {
          goto LABEL_11;
        }
      }

      if (v8 != v9)
      {
        goto LABEL_9;
      }

LABEL_3:
      operations_research::sat::SatParameters::InternalSwap(a4, v7);
LABEL_4:
      v7 += 61;
      a4 += 61;
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::SatParameters::~SatParameters(v6);
          v6 = (v6 + 976);
        }

        return;
      }
    }
  }
}

unint64_t AbslFlagHelpGenForcp_model_dump_prefix::NonConst@<X0>(void *a1@<X8>)
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

uint64_t AbslFlagDefaultGenForcp_model_dump_prefix::Gen(uint64_t this, void *a2)
{
  *this = 0x2F706D742FLL;
  *(this + 23) = 5;
  return this;
}

unint64_t AbslFlagHelpGenForcp_model_dump_models::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_export_model::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_dump_text_proto::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_dump_submodels::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_dump_problematic_lns::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_dump_response::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_params::NonConst@<X0>(void *a1@<X8>)
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

uint64_t AbslFlagDefaultGenForcp_model_params::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

unint64_t AbslFlagHelpGenFordebug_model_copy::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_check_intermediate_solutions::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_load_debug_solution::NonConst@<X0>(void *a1@<X8>)
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

uint64_t AbslFlagDefaultGenForcp_model_load_debug_solution::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

unint64_t AbslFlagHelpGenForcp_model_ignore_objective::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_ignore_hints::NonConst@<X0>(void *a1@<X8>)
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

unint64_t AbslFlagHelpGenForcp_model_fingerprint_model::NonConst@<X0>(void *a1@<X8>)
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

void operations_research::sat::CpModelStats(std::string *__return_ptr a1@<X8>, operations_research::sat *this@<X0>)
{
  v4 = this;
  v331 = *MEMORY[0x277D85DE8];
  v6 = xmmword_23CE306D0;
  v307 = xmmword_23CE306D0;
  v305 = xmmword_23CE306D0;
  v303 = xmmword_23CE306D0;
  v301 = xmmword_23CE306D0;
  v299 = xmmword_23CE306D0;
  v297 = xmmword_23CE306D0;
  v295 = xmmword_23CE306D0;
  v7 = *(this + 6);
  if (v7)
  {
    v8 = (v7 + 7);
  }

  else
  {
    v8 = (this + 48);
  }

  v281 = (this + 48);
  v9 = *(this + 14);
  v275 = a1;
  if (v9)
  {
    v268 = 0;
    v269 = 0;
    v279 = 0;
    v280 = 0;
    memset(v278, 0, sizeof(v278));
    v276 = 0;
    v10 = 0;
    v11 = 0;
    v12 = &v8[v9];
    v267 = v12;
    while (1)
    {
      v13 = *v8;
      v330[0].__r_.__value_.__r.__words[0] = 0;
      v14 = *(v13 + 60);
      if (v14 == 12)
      {
        v15 = *(*(v13 + 48) + 16);
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v16 = "kLinear2";
            goto LABEL_21;
          }

          if (v15 == 3)
          {
            v16 = "kLinear3";
            goto LABEL_21;
          }
        }

        else
        {
          if (!v15)
          {
            v16 = "kLinear0";
            goto LABEL_21;
          }

          if (v15 == 1)
          {
            v16 = "kLinear1";
LABEL_21:
            v330[0].__r_.__value_.__r.__words[0] = v16;
            goto LABEL_22;
          }
        }

        if (v15 >= 4)
        {
          v16 = "kLinearN";
          goto LABEL_21;
        }
      }

      else
      {
        v330[0].__r_.__value_.__r.__words[0] = operations_research::sat::ConstraintCaseName(v14);
      }

LABEL_22:
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v307, v330, &v312);
      if (v314 == 1)
      {
        v17 = v313;
        *v313 = v330[0].__r_.__value_.__r.__words[0];
        v17[2] = 0;
      }

      ++*(v313 + 2);
      if (*(v13 + 16))
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v305, v330, &v312);
        if (v314 == 1)
        {
          v18 = v313;
          *v313 = v330[0].__r_.__value_.__r.__words[0];
          v18[2] = 0;
        }

        ++*(v313 + 2);
        if (*(v13 + 16) >= 2)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v303, v330, &v312);
          if (v314 == 1)
          {
            v19 = v313;
            *v313 = v330[0].__r_.__value_.__r.__words[0];
            v19[2] = 0;
          }

          ++*(v313 + 2);
        }
      }

      v329[0].__r_.__value_.__r.__words[0] = v4;
      v20 = *(v13 + 60);
      if (v20 <= 20)
      {
        if (v20 <= 18)
        {
          if (v20 != 3)
          {
            if (v20 != 4)
            {
              goto LABEL_169;
            }

            v22 = *(v13 + 16);
            v23 = *(*(v13 + 48) + 16);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v301, v330, &v312);
            if (v314 == 1)
            {
              v24 = v313;
              *v313 = v330[0].__r_.__value_.__r.__words[0];
              v24[2] = 0;
            }

            *(v313 + 2) += v23 + v22;
            if (*(v13 + 60) == 12)
            {
              goto LABEL_175;
            }

            goto LABEL_7;
          }

LABEL_36:
          v21 = *(*(v13 + 48) + 16);
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v301, v330, &v312);
          goto LABEL_172;
        }

        if (v20 == 19)
        {
          HIDWORD(v269) += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v13);
          if (*(v13 + 60) == 12)
          {
            goto LABEL_175;
          }

          goto LABEL_7;
        }

        v25 = *(v13 + 48);
        v26 = *(v25 + 16);
        HIDWORD(v268) += v26;
        if (v26 < 1)
        {
          goto LABEL_169;
        }

        v274 = v13;
        v271 = v8;
        v27 = 0;
        v28 = *(v25 + 24);
        v29 = *(v4 + 6);
        v30 = *(v4 + 3);
        while (2)
        {
          v31 = (v29 + 7 + 8 * *(v28 + 4 * v27));
          if ((v29 & 1) == 0)
          {
            v31 = v281;
          }

          v32 = *v31;
          if (*(*v31 + 16))
          {
            ++v10;
          }

          v33 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v32 + 60) == 19)
          {
            v33 = *(v32 + 48);
          }

          v34 = v33[5];
          if (!v34)
          {
            v34 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v35 = *(v34 + 4);
          if (v35)
          {
            if (v30)
            {
              v36 = v34[3];
              v37 = 4 * v35;
              while (1)
              {
                v38 = *v36;
                if (~*v36 > *v36)
                {
                  v38 = ~v38;
                }

                v39 = *(v30 + 7 + 8 * v38);
                if (*(v39 + 16) != 2 || **(v39 + 24) != *(*(v39 + 24) + 8))
                {
                  break;
                }

                ++v36;
                v37 -= 4;
                if (!v37)
                {
                  goto LABEL_48;
                }
              }
            }

            else if (*(v30 + 16) == 2 && **(v30 + 24) == *(*(v30 + 24) + 8))
            {
              goto LABEL_48;
            }

            LODWORD(v276) = v276 + 1;
          }

LABEL_48:
          v11 += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v32);
          if (++v27 == v26)
          {
            goto LABEL_167;
          }

          continue;
        }
      }

      if (v20 > 25)
      {
        if (v20 == 26)
        {
          goto LABEL_36;
        }

        if (v20 != 27)
        {
          if (v20 != 29)
          {
            goto LABEL_169;
          }

          goto LABEL_36;
        }

        v21 = *(*(v13 + 48) + 32);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v295, v330, &v312);
LABEL_172:
        if (v314 == 1)
        {
          v106 = v313;
          *v313 = v330[0].__r_.__value_.__r.__words[0];
          v106[2] = 0;
        }

        *(v313 + 2) += v21;
        if (*(v13 + 60) == 12)
        {
          goto LABEL_175;
        }

        goto LABEL_7;
      }

      if (v20 != 21)
      {
        if (v20 != 22)
        {
          goto LABEL_169;
        }

        v40 = *(v13 + 48);
        v41 = *(v40 + 24);
        LODWORD(v268) = v41 + v268;
        if (v41 < 1)
        {
          goto LABEL_169;
        }

        v274 = v13;
        v271 = v8;
        v272 = v10;
        v273 = v11;
        v42 = 0;
        v45 = *(v40 + 48);
        v43 = (v40 + 48);
        v44 = v45;
        v46 = v4;
        v47 = *(v43 - 2);
        v48 = *(v46 + 6);
        v49 = *(v46 + 3);
        v50 = v49 + 7;
        v51 = v45 + 7;
        while (2)
        {
          v52 = (v48 + 7 + 8 * *(v47 + 4 * v42));
          if ((v48 & 1) == 0)
          {
            v52 = v281;
          }

          v53 = *v52;
          v205 = *(*v52 + 16) == 0;
          v54 = v279;
          if (!v205)
          {
            v54 = v279 + 1;
          }

          LODWORD(v279) = v54;
          v55 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
          if (*(v53 + 60) == 19)
          {
            v55 = *(v53 + 48);
          }

          v56 = v55[5];
          v57 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          if (v56)
          {
            v57 = v56;
          }

          v58 = *(v57 + 4);
          v59 = (v51 + 8 * v42);
          if (v58)
          {
            if (v49)
            {
              v65 = v57[3];
              v66 = 4 * v58;
              while (1)
              {
                v67 = *v65;
                if (~*v65 > *v65)
                {
                  v67 = ~v67;
                }

                v68 = *(v50 + 8 * v67);
                if (*(v68 + 16) != 2 || **(v68 + 24) != *(*(v68 + 24) + 8))
                {
                  break;
                }

                ++v65;
                v66 -= 4;
                if (!v66)
                {
                  goto LABEL_100;
                }
              }
            }

            else if (*(v49 + 16) == 2)
            {
              v60 = *(v49 + 24);
              v62 = *v60;
              v61 = v60[1];
              if ((v44 & 1) == 0)
              {
                v59 = v43;
              }

              v205 = v62 == v61;
              v63 = *(*v59 + 16);
              v64 = v278[1];
              if (!v205)
              {
                v64 = v278[1] + 1;
              }

              v278[1] = v64;
              if (!v63)
              {
                goto LABEL_74;
              }

              goto LABEL_104;
            }

            ++v278[1];
          }

LABEL_100:
          if ((v44 & 1) == 0)
          {
            v59 = v43;
          }

          v69 = *v59;
          v70 = *(v69 + 16);
          if (!v70)
          {
LABEL_74:
            HIDWORD(v279) += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v53);
            if (++v42 == v41)
            {
              goto LABEL_166;
            }

            continue;
          }

          break;
        }

        if (v49)
        {
          v71 = *(v69 + 24);
          v72 = 4 * v70;
          while (1)
          {
            v73 = *v71;
            if (~*v71 > *v71)
            {
              v73 = ~v73;
            }

            v74 = *(v50 + 8 * v73);
            if (*(v74 + 16) != 2 || **(v74 + 24) != *(*(v74 + 24) + 8))
            {
              break;
            }

            ++v71;
            v72 -= 4;
            if (!v72)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
LABEL_104:
          if (*(v49 + 16) == 2 && **(v49 + 24) == *(*(v49 + 24) + 8))
          {
            goto LABEL_74;
          }
        }

        ++HIDWORD(v276);
        goto LABEL_74;
      }

      v274 = v13;
      v75 = *(v13 + 48);
      v76 = *(v75 + 16);
      LODWORD(v269) = v76 + v269;
      if (v76 < 1)
      {
        goto LABEL_168;
      }

      v271 = v8;
      v272 = v10;
      v273 = v11;
      v77 = 0;
      v277 = *(v75 + 24);
      v78 = *(v75 + 48);
      v79 = *(v4 + 6);
      v80 = v79 + 7;
      v81 = *(v4 + 3);
      v82 = v81 + 7;
      do
      {
        v83 = (v80 + 8 * *(v277 + v77));
        if ((v79 & 1) == 0)
        {
          v83 = v281;
        }

        v84 = *v83;
        v85 = *(*v83 + 16);
        v86 = (v80 + 8 * *(v78 + 4 * v77));
        if (v85)
        {
          goto LABEL_128;
        }

        v87 = v281;
        if (v79)
        {
          v87 = (v80 + 8 * *(v78 + 4 * v77));
        }

        if (*(*v87 + 16))
        {
LABEL_128:
          ++v278[2];
        }

        v88 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (*(v84 + 60) == 19)
        {
          v88 = *(v84 + 48);
        }

        v89 = v88[5];
        if (!v89)
        {
          v89 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v90 = *(v89 + 4);
        if (v90)
        {
          if (v81)
          {
            v92 = v89[3];
            v93 = 4 * v90;
            while (1)
            {
              v94 = *v92;
              if (~*v92 > *v92)
              {
                v94 = ~v94;
              }

              v95 = *(v82 + 8 * v94);
              if (*(v95 + 16) != 2 || **(v95 + 24) != *(*(v95 + 24) + 8))
              {
                break;
              }

              ++v92;
              v93 -= 4;
              if (!v93)
              {
                goto LABEL_143;
              }
            }
          }

          else if (*(v81 + 16) == 2)
          {
            v91 = **(v81 + 24) == *(*(v81 + 24) + 8);
            goto LABEL_145;
          }

          v91 = 0;
        }

        else
        {
LABEL_143:
          v91 = 1;
        }

LABEL_145:
        if ((v79 & 1) == 0)
        {
          v86 = v281;
        }

        v96 = *v86;
        v97 = *(*v86 + 60);
        v98 = &operations_research::sat::_IntervalConstraintProto_default_instance_;
        if (v97 == 19)
        {
          v98 = *(v96 + 48);
        }

        v99 = v98[5];
        if (!v99)
        {
          v99 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v100 = *(v99 + 4);
        if (v100)
        {
          if (v81)
          {
            v102 = v99[3];
            v103 = 4 * v100;
            while (1)
            {
              v104 = *v102;
              if (~*v102 > *v102)
              {
                v104 = ~v104;
              }

              v105 = *(v82 + 8 * v104);
              if (*(v105 + 16) != 2 || **(v105 + 24) != *(*(v105 + 24) + 8))
              {
                break;
              }

              ++v102;
              v103 -= 4;
              if (!v103)
              {
                goto LABEL_162;
              }
            }
          }

          else if (*(v81 + 16) == 2)
          {
            v101 = **(v81 + 24) == *(*(v81 + 24) + 8);
            if (operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v84))
            {
              goto LABEL_120;
            }

            goto LABEL_121;
          }

          v101 = 0;
          if (operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v84))
          {
LABEL_120:
            v278[0] += operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v96);
          }
        }

        else
        {
LABEL_162:
          v101 = 1;
          if (operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(v329, v329, v84))
          {
            goto LABEL_120;
          }
        }

LABEL_121:
        LODWORD(v280) = v280 + (v91 ^ v101);
        HIDWORD(v280) += !v91 && !v101;
        ++v77;
      }

      while (v77 != v76);
LABEL_166:
      a1 = v275;
      v10 = v272;
      v11 = v273;
LABEL_167:
      v4 = this;
      v8 = v271;
      v12 = v267;
LABEL_168:
      v13 = v274;
LABEL_169:
      if (*(v13 + 60) == 12)
      {
LABEL_175:
        v107 = *(*(v13 + 48) + 16);
        if (v107 < 4)
        {
          goto LABEL_179;
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v299, v330, &v312);
        if (v314 == 1)
        {
          v108 = v313;
          *v313 = v330[0].__r_.__value_.__r.__words[0];
          v108[2] = 0;
        }

        *(v313 + 2) += v107;
        if (*(v13 + 60) == 12)
        {
LABEL_179:
          v109 = *(v13 + 48);
          if (*(v109 + 16) >= 2 && *(v109 + 64) >= 3)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>(&v297, v330, &v312);
            if (v314 == 1)
            {
              v110 = v313;
              *v313 = v330[0].__r_.__value_.__r.__words[0];
              v110[2] = 0;
            }

            ++*(v313 + 2);
          }
        }
      }

LABEL_7:
      if (++v8 == v12)
      {
        goto LABEL_184;
      }
    }
  }

  HIWORD(v276) = 0;
  v279 = 0;
  memset(v278, 0, sizeof(v278));
  v280 = 0;
LABEL_184:
  v292 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::EmptyNode(void)::empty_node;
  v293 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::EmptyNode(void)::empty_node;
  v294 = 0;
  v289 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v290 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v291 = 0;
  v111 = *(v4 + 3);
  if (v111)
  {
    v112 = (v111 + 7);
  }

  else
  {
    v112 = v4 + 24;
  }

  v277 = (v4 + 24);
  v113 = *(v4 + 8);
  if (v113)
  {
    LODWORD(v281) = 0;
    v114 = &v112[8 * v113];
    do
    {
      v115 = *(*v112 + 16);
      v116 = *(*v112 + 24);
      if (v115 == 2 && (v117 = *v116, *v116 == *(v116 + 8)))
      {
        v312 = *v116;
        if (!v294)
        {
          operator new();
        }

        LODWORD(v281) = v281 + 1;
        v118 = v292;
        v119 = *(v292 + 10);
        if (!*(v292 + 10))
        {
LABEL_202:
          LODWORD(v121) = 0;
          goto LABEL_203;
        }

        while (1)
        {
          v121 = 0;
          while (*&v118[8 * v121 + 16] < v117)
          {
            if (v119 == ++v121)
            {
              LODWORD(v121) = v119;
              break;
            }
          }

LABEL_203:
          if (v118[11])
          {
            break;
          }

          v120 = &v118[8 * v121 + 256];
          v118 = *v120;
          v119 = *(*v120 + 10);
          if (!*(*v120 + 10))
          {
            goto LABEL_202;
          }
        }

        v122 = v121;
        v123 = v118;
        while (v121 == v123[10])
        {
          LODWORD(v121) = v123[8];
          v123 = *v123;
          if (v123[11])
          {
            goto LABEL_189;
          }
        }

        if (v117 < *&v123[8 * v121 + 16])
        {
LABEL_189:
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::internal_emplace<long long>(&v292, v118, v122, &v312);
        }
      }

      else
      {
        operations_research::Domain::FromFlatSpanOfIntervals(v116, v115, v330, v6);
        v329[0].__r_.__value_.__r.__words[0] = v330;
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::insert_unique<operations_research::Domain,std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>(&v289, v330, &std::piecewise_construct, v329, &v312);
        ++*&v312[32 * v313 + 40];
        if (v330[0].__r_.__value_.__s.__data_[0])
        {
          operator delete(v330[0].__r_.__value_.__l.__size_);
        }
      }

      v112 += 8;
    }

    while (v112 != v114);
  }

  else
  {
    LODWORD(v281) = 0;
  }

  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  explicit = atomic_load_explicit(&qword_281A21620, memory_order_acquire);
  if (explicit)
  {
    if (explicit)
    {
      goto LABEL_215;
    }
  }

  else if (absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_fingerprint_model))
  {
LABEL_215:
    v312 = operations_research::sat::FingerprintModel(v4, 0xA5B85C5E198ED849);
    v313 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
    absl::lts_20240722::str_format_internal::FormatPack(" (model_fingerprint: %#x)", 25, &v312, 1uLL, &v286);
    v125 = *(v4 + 4);
    if (v125)
    {
      goto LABEL_225;
    }

    goto LABEL_219;
  }

  v288 = 0;
  LOBYTE(v286) = 0;
  v125 = *(v4 + 4);
  if (v125)
  {
LABEL_225:
    v132 = *(v4 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v133 = *(v132 + 23);
    v134 = *(v132 + 8);
    if ((v133 & 0x80u) != 0)
    {
      v132 = *v132;
      v133 = v134;
    }

    v135 = v288;
    v136 = &v286;
    if ((v288 & 0x80u) != 0)
    {
      v136 = v286;
      v135 = v287;
    }

    v312 = "optimization model '";
    v313 = 20;
    *&v314 = v132;
    *(&v314 + 1) = v133;
    v315 = "':";
    v316 = 2;
    v317 = v136;
    v318 = v135;
    v319 = "\n";
    v320 = 1;
    absl::lts_20240722::strings_internal::AppendPieces(a1, &v312, 5);
    goto LABEL_230;
  }

LABEL_219:
  if ((v125 & 8) != 0)
  {
    goto LABEL_225;
  }

  v126 = *(v4 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v127 = *(v126 + 23);
  v128 = *(v126 + 8);
  if ((v127 & 0x80u) != 0)
  {
    v126 = *v126;
    v127 = v128;
  }

  v129 = v288;
  v130 = &v286;
  if ((v288 & 0x80u) != 0)
  {
    v130 = v286;
    v129 = v287;
  }

  v312 = "satisfaction model '";
  v313 = 20;
  *&v314 = v126;
  *(&v314 + 1) = v127;
  v315 = "':";
  v316 = 2;
  v317 = v130;
  v318 = v129;
  v319 = "\n";
  v320 = 1;
  absl::lts_20240722::strings_internal::AppendPieces(a1, &v312, 5);
LABEL_230:
  v138 = *(v4 + 9);
  v137 = v4 + 72;
  v139 = (v138 + 7);
  if (v138)
  {
    v140 = v139;
  }

  else
  {
    v140 = v137;
  }

  v141 = *(v137 + 2);
  if (v141)
  {
    v142 = 8 * v141;
    while (1)
    {
      v143 = *v140;
      v144 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(*v140 + 16) + *(*v140 + 48)), &v330[0].__r_.__value_.__s.__data_[16], v131);
      v330[0].__r_.__value_.__r.__words[0] = &v330[0].__r_.__value_.__r.__words[2];
      v330[0].__r_.__value_.__l.__size_ = v144 - &v330[0].__r_.__value_.__r.__words[2];
      operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(*(v143 + 64), v329);
      v145 = HIBYTE(v329[0].__r_.__value_.__r.__words[2]);
      v146 = *&v329[0].__r_.__value_.__l.__data_;
      operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_DomainReductionStrategy>(*(v143 + 68), __p);
      v147 = v329;
      if ((v145 & 0x80u) == 0)
      {
        v148 = v145;
      }

      else
      {
        v148 = *(&v146 + 1);
        v147 = v146;
      }

      v312 = "Search strategy: on ";
      v313 = 20;
      v314 = *&v330[0].__r_.__value_.__l.__data_;
      v315 = " variables, ";
      v316 = 12;
      v317 = v147;
      v318 = v148;
      v319 = ", ";
      v320 = 2;
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      v150 = __p;
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p[0].__r_.__value_.__l.__size_;
        v150 = __p[0].__r_.__value_.__r.__words[0];
      }

      v321 = v150;
      v322 = size;
      v323 = "\n";
      v324 = 1;
      a1 = v275;
      absl::lts_20240722::strings_internal::AppendPieces(v275, &v312, 7);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
        if ((SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_236;
        }

LABEL_244:
        operator delete(v329[0].__r_.__value_.__l.__data_);
        v140 += 8;
        v142 -= 8;
        if (!v142)
        {
          break;
        }
      }

      else
      {
        if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_244;
        }

LABEL_236:
        v140 += 8;
        v142 -= 8;
        if (!v142)
        {
          break;
        }
      }
    }
  }

  v151 = *(this + 4);
  if ((v151 & 1) == 0)
  {
    v152 = 0;
    v153 = 0;
    if ((v151 & 8) != 0)
    {
      goto LABEL_247;
    }

LABEL_284:
    __src[0] = 0;
    __src[1] = 0;
    v285 = 0;
    if (v153 < 1)
    {
      goto LABEL_256;
    }

LABEL_285:
    v312 = "#BOOLs: ";
    v313 = 8;
    operations_research::sat::FormatCounter(__p, v153, v131);
    v176 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v177 = __p;
    }

    else
    {
      v177 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v176 = __p[0].__r_.__value_.__l.__size_;
    }

    v330[0].__r_.__value_.__r.__words[0] = v177;
    v330[0].__r_.__value_.__l.__size_ = v176;
    absl::lts_20240722::StrCat(&v312, v330, v329);
    operator new();
  }

  v160 = *(this + 16);
  v161 = *(v160 + 16);
  if (!v161)
  {
    goto LABEL_262;
  }

  v162 = *v277;
  if (*v277)
  {
    v153 = 0;
    v170 = *(v160 + 24);
    v171 = v162 + 7;
    v172 = 4 * v161;
    do
    {
      v173 = *v170;
      if (~*v170 > *v170)
      {
        v173 = ~v173;
      }

      v174 = *(v171 + 8 * v173);
      if (*(v174 + 16) == 2)
      {
        v175 = *(v174 + 24);
        if (!*v175 && v175[1] == 1)
        {
          ++v153;
        }
      }

      ++v170;
      v172 -= 4;
    }

    while (v172);
LABEL_283:
    v152 = v161 - v153;
    if ((v151 & 8) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_247;
  }

  if (*(v162 + 16) != 2)
  {
    v153 = 0;
    goto LABEL_283;
  }

  v163 = *(v162 + 24);
  if (*v163)
  {
LABEL_262:
    v153 = 0;
    v152 = *(v160 + 16);
    if ((v151 & 8) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_247;
  }

  if (v163[1] == 1)
  {
    v153 = *(v160 + 16);
  }

  else
  {
    v153 = 0;
  }

  v152 = v161 - v153;
  if ((v151 & 8) == 0)
  {
    goto LABEL_284;
  }

LABEL_247:
  v154 = *(this + 19);
  v155 = *(v154 + 16);
  if (v155)
  {
    v156 = *v277;
    if (*v277)
    {
      v164 = *(v154 + 24);
      v165 = v156 + 7;
      v166 = 4 * v155;
      do
      {
        v167 = *v164;
        if (~*v164 > *v164)
        {
          v167 = ~v167;
        }

        v168 = *(v165 + 8 * v167);
        if (*(v168 + 16) == 2)
        {
          v169 = *(v168 + 24);
          if (!*v169 && v169[1] == 1)
          {
            ++v153;
          }
        }

        ++v164;
        v166 -= 4;
      }

      while (v166);
    }

    else if (*(v156 + 16) == 2)
    {
      v157 = *(v156 + 24);
      if (!*v157)
      {
        if (v157[1] == 1)
        {
          v158 = v155;
        }

        else
        {
          v158 = 0;
        }

        v153 += v158;
      }
    }
  }

  v152 = v155 - v153;
  __src[0] = 0;
  __src[1] = 0;
  v285 = 0;
  if (v153 >= 1)
  {
    goto LABEL_285;
  }

LABEL_256:
  v159 = 0;
  if (v152 >= 1)
  {
    v312 = "#ints: ";
    v313 = 7;
    operations_research::sat::FormatCounter(__p, v152, v131);
    v178 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v179 = __p;
    }

    else
    {
      v179 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v178 = __p[0].__r_.__value_.__l.__size_;
    }

    v330[0].__r_.__value_.__r.__words[0] = v179;
    v330[0].__r_.__value_.__l.__size_ = v178;
    absl::lts_20240722::StrCat(&v312, v330, v329);
    operator new();
  }

  v180 = *(this + 4);
  if (v180)
  {
    v312 = " (";
    v313 = 2;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(&v282, __src[0], 0, " ", 1uLL);
    v183 = HIBYTE(v282.__r_.__value_.__r.__words[2]);
    if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v184 = &v282;
    }

    else
    {
      v184 = v282.__r_.__value_.__r.__words[0];
    }

    if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v183 = v282.__r_.__value_.__l.__size_;
    }

    v330[0].__r_.__value_.__r.__words[0] = v184;
    v330[0].__r_.__value_.__l.__size_ = v183;
    v329[0].__r_.__value_.__r.__words[0] = " in objective)";
    v329[0].__r_.__value_.__l.__size_ = 14;
    absl::lts_20240722::StrCat(&v312, v330, v329, &v283);
  }

  else
  {
    if ((v180 & 8) == 0)
    {
      *(&v283.__r_.__value_.__s + 23) = 0;
      v283.__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_314;
    }

    __p[0].__r_.__value_.__r.__words[0] = " (";
    __p[0].__r_.__value_.__l.__size_ = 2;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(&v282, __src[0], 0, " ", 1uLL);
    v181 = HIBYTE(v282.__r_.__value_.__r.__words[2]);
    if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v182 = &v282;
    }

    else
    {
      v182 = v282.__r_.__value_.__r.__words[0];
    }

    if ((v282.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v181 = v282.__r_.__value_.__l.__size_;
    }

    v310[0].__r_.__value_.__r.__words[0] = v182;
    v310[0].__r_.__value_.__l.__size_ = v181;
    __dst[0].__r_.__value_.__r.__words[0] = " in floating point objective)";
    __dst[0].__r_.__value_.__l.__size_ = 29;
    absl::lts_20240722::StrCat(&__p[0].__r_.__value_.__l.__data_, v310, __dst, &v283);
  }

  if (SHIBYTE(v282.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v282.__r_.__value_.__l.__data_);
  }

LABEL_314:
  v312 = "#Variables: ";
  v313 = 12;
  operations_research::sat::FormatCounter(v310, *(this + 8), v131);
  v185 = HIBYTE(v310[0].__r_.__value_.__r.__words[2]);
  if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v186 = v310;
  }

  else
  {
    v186 = v310[0].__r_.__value_.__r.__words[0];
  }

  if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v185 = v310[0].__r_.__value_.__l.__size_;
  }

  v330[0].__r_.__value_.__r.__words[0] = v186;
  v330[0].__r_.__value_.__l.__size_ = v185;
  v187 = HIBYTE(v283.__r_.__value_.__r.__words[2]);
  v188 = &v283;
  if ((v283.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v187 = v283.__r_.__value_.__l.__size_;
    v188 = v283.__r_.__value_.__r.__words[0];
  }

  v329[0].__r_.__value_.__r.__words[0] = v188;
  v329[0].__r_.__value_.__l.__size_ = v187;
  __p[0].__r_.__value_.__r.__words[0] = "\n";
  __p[0].__r_.__value_.__l.__size_ = 1;
  absl::lts_20240722::StrAppend(a1, &v312, v330, v329, __p);
  if ((SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v283.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_323;
    }

LABEL_326:
    operator delete(v283.__r_.__value_.__l.__data_);
    v189 = __src[0];
    if (!__src[0])
    {
      goto LABEL_332;
    }

    goto LABEL_330;
  }

  operator delete(v310[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v283.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_326;
  }

LABEL_323:
  v189 = __src[0];
  if (!__src[0])
  {
    goto LABEL_332;
  }

LABEL_330:
  while (v159 != v189)
  {
    v190 = *(v159 - 1);
    v159 -= 3;
    if (v190 < 0)
    {
      operator delete(*v159);
    }
  }

  operator delete(v189);
LABEL_332:
  operations_research::Domain::Domain(&v312, 0, 1);
  v192 = v289;
  v193 = *(v289 + 10);
  if (*(v289 + 10))
  {
    goto LABEL_335;
  }

  while (!v192[11])
  {
    v192 = *&v192[8 * v193 + 240];
    v193 = v192[10];
    if (v192[10])
    {
LABEL_335:
      v194 = 0;
      do
      {
        v195 = (v193 + v194) >> 1;
        if (operations_research::Domain::operator<(&v192[32 * v195 + 16], &v312))
        {
          v194 = v195 + 1;
        }

        else
        {
          v193 = (v193 + v194) >> 1;
        }
      }

      while (v194 != v193);
    }
  }

  while (v193 == v192[10])
  {
    LODWORD(v193) = v192[8];
    v192 = *v192;
    if (v192[11])
    {
      goto LABEL_345;
    }
  }

  if (operations_research::Domain::operator<(&v312, &v192[32 * v193 + 16]))
  {
LABEL_345:
    v196 = 0;
    if ((v312 & 1) == 0)
    {
      goto LABEL_347;
    }

    goto LABEL_346;
  }

  v205 = v192 == v290 && v193 == v290[10];
  v196 = !v205;
  if (v312)
  {
LABEL_346:
    operator delete(v313);
  }

LABEL_347:
  if (v196)
  {
    v197 = v330;
    operations_research::Domain::Domain(v330, 0, 1);
    v329[0].__r_.__value_.__r.__words[0] = v330;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::insert_unique<operations_research::Domain,std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>(&v289, v330, &std::piecewise_construct, v329, &v312);
    v199 = *&v312[32 * v313 + 40];
    if (v330[0].__r_.__value_.__s.__data_[0])
    {
      operator delete(v330[0].__r_.__value_.__l.__size_);
    }

    operations_research::sat::FormatCounter(v330, v199, v198);
    if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v200 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v200 = v330[0].__r_.__value_.__l.__size_;
      v197 = v330[0].__r_.__value_.__r.__words[0];
    }

    operations_research::Domain::Domain(__p, 0, 1);
    operations_research::Domain::ToString(v329, __p);
    v201 = HIBYTE(v329[0].__r_.__value_.__r.__words[2]);
    if ((v329[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v202 = v329;
    }

    else
    {
      v202 = v329[0].__r_.__value_.__r.__words[0];
    }

    if ((v329[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v201 = v329[0].__r_.__value_.__l.__size_;
    }

    v312 = "  - ";
    v313 = 4;
    *&v314 = v197;
    *(&v314 + 1) = v200;
    v315 = " Booleans in ";
    v316 = 13;
    v317 = v202;
    v318 = v201;
    v319 = "\n";
    v320 = 1;
    absl::lts_20240722::strings_internal::CatPieces(&v312, 5, v310);
    if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v329[0].__r_.__value_.__l.__data_);
      if ((__p[0].__r_.__value_.__s.__data_[0] & 1) == 0)
      {
LABEL_360:
        if ((SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_361:
          if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v203 = v310;
          }

          else
          {
            v203 = v310[0].__r_.__value_.__r.__words[0];
          }

          if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v204 = HIBYTE(v310[0].__r_.__value_.__r.__words[2]);
          }

          else
          {
            v204 = v310[0].__r_.__value_.__l.__size_;
          }

          if (v204 > 0x68)
          {
            v312 = v203;
            v313 = 50;
            v330[0].__r_.__value_.__r.__words[0] = " ... ";
            v330[0].__r_.__value_.__l.__size_ = 5;
            v329[0].__r_.__value_.__r.__words[0] = &v203[-2] + v204 - 2;
            v329[0].__r_.__value_.__l.__size_ = 50;
            absl::lts_20240722::StrCat(&v312, v330, v329, __dst);
          }

          else
          {
            if (v204 >= 0x17)
            {
              operator new();
            }

            *(&__dst[0].__r_.__value_.__s + 23) = v204;
            if (v204)
            {
              memmove(__dst, v203, v204);
            }

            __dst[0].__r_.__value_.__s.__data_[v204] = 0;
          }

          v206 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
          v207 = __dst;
          if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v206 = __dst[0].__r_.__value_.__l.__size_;
            v207 = __dst[0].__r_.__value_.__r.__words[0];
          }

          __p[0].__r_.__value_.__r.__words[0] = v207;
          __p[0].__r_.__value_.__l.__size_ = v206;
          a1 = v275;
          absl::lts_20240722::StrAppend(v275, __p);
          if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst[0].__r_.__value_.__l.__data_);
          }

          operations_research::Domain::Domain(v329, 0, 1);
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::equal_range<operations_research::Domain>(&v289, v329, &v312);
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::erase_range(&v289, v312, v313, v314, *(&v314 + 1), v330);
          if (v329[0].__r_.__value_.__s.__data_[0])
          {
            operator delete(v329[0].__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v310[0].__r_.__value_.__l.__data_);
          }

          goto LABEL_394;
        }

LABEL_382:
        operator delete(v330[0].__r_.__value_.__l.__data_);
        goto LABEL_361;
      }
    }

    else if ((__p[0].__r_.__value_.__s.__data_[0] & 1) == 0)
    {
      goto LABEL_360;
    }

    operator delete(__p[0].__r_.__value_.__l.__size_);
    if ((SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_361;
    }

    goto LABEL_382;
  }

LABEL_394:
  v209 = v290;
  v208 = v291;
  v210 = *v289;
  v211 = v290[10];
  if (v290[10])
  {
    v212 = 1;
  }

  else
  {
    v212 = *v289 != v290;
  }

  if (v291 <= 0x63)
  {
    LODWORD(v277) = v290[10];
    if (v212)
    {
      v213 = 0;
      do
      {
        v214 = &v210[32 * v213];
        operations_research::sat::FormatCounter(v330, *(v214 + 10), v191);
        v215 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
        v216 = *&v330[0].__r_.__value_.__l.__data_;
        operations_research::Domain::ToString(v329, (v214 + 16));
        v217 = HIBYTE(v329[0].__r_.__value_.__r.__words[2]);
        v218 = v330;
        if ((v215 & 0x80u) == 0)
        {
          v219 = v215;
        }

        else
        {
          v219 = *(&v216 + 1);
          v218 = v216;
        }

        v220 = v329;
        if ((v329[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v217 = v329[0].__r_.__value_.__l.__size_;
          v220 = v329[0].__r_.__value_.__r.__words[0];
        }

        v312 = "  - ";
        v313 = 4;
        *&v314 = v218;
        *(&v314 + 1) = v219;
        v315 = " in ";
        v316 = 4;
        v317 = v220;
        v318 = v217;
        v319 = "\n";
        v320 = 1;
        absl::lts_20240722::strings_internal::CatPieces(&v312, 5, v310);
        if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v329[0].__r_.__value_.__l.__data_);
          if ((SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_407;
          }
        }

        else if ((SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_407;
        }

        operator delete(v330[0].__r_.__value_.__l.__data_);
LABEL_407:
        if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v221 = v310;
        }

        else
        {
          v221 = v310[0].__r_.__value_.__r.__words[0];
        }

        if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v222 = HIBYTE(v310[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v222 = v310[0].__r_.__value_.__l.__size_;
        }

        if (v222 > 0x68)
        {
          v312 = v221;
          v313 = 50;
          v330[0].__r_.__value_.__r.__words[0] = " ... ";
          v330[0].__r_.__value_.__l.__size_ = 5;
          v329[0].__r_.__value_.__r.__words[0] = &v221[-2] + v222 - 2;
          v329[0].__r_.__value_.__l.__size_ = 50;
          absl::lts_20240722::StrCat(&v312, v330, v329, __dst);
          a1 = v275;
        }

        else
        {
          if (v222 >= 0x17)
          {
            operator new();
          }

          *(&__dst[0].__r_.__value_.__s + 23) = v222;
          if (v222)
          {
            memmove(__dst, v221, v222);
          }

          a1 = v275;
          __dst[0].__r_.__value_.__s.__data_[v222] = 0;
        }

        v223 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
        v224 = __dst;
        if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v223 = __dst[0].__r_.__value_.__l.__size_;
          v224 = __dst[0].__r_.__value_.__r.__words[0];
        }

        __p[0].__r_.__value_.__r.__words[0] = v224;
        __p[0].__r_.__value_.__l.__size_ = v223;
        absl::lts_20240722::StrAppend(a1, __p);
        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst[0].__r_.__value_.__l.__data_);
          if ((SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_427:
            if (v210[11])
            {
              goto LABEL_428;
            }

            goto LABEL_435;
          }
        }

        else if ((SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_427;
        }

        operator delete(v310[0].__r_.__value_.__l.__data_);
        if (v210[11])
        {
LABEL_428:
          if (++v213 == v210[10])
          {
            v225 = v210;
            while (1)
            {
              v226 = *v225;
              if (*(*v225 + 11))
              {
                break;
              }

              v227 = v225[8];
              v225 = *v225;
              if (v227 != v226[10])
              {
                v210 = v226;
                v213 = v227;
                goto LABEL_438;
              }
            }
          }

          continue;
        }

LABEL_435:
        v228 = &v210[8 * (v213 + 1) + 240];
        do
        {
          v210 = *v228;
          v229 = *(*v228 + 11);
          v228 = *v228 + 240;
        }

        while (!v229);
        v213 = 0;
LABEL_438:
        ;
      }

      while (v210 != v209 || v213 != v277);
    }

LABEL_466:
    v253 = v281;
    if (v281 < 1)
    {
      goto LABEL_494;
    }

    goto LABEL_467;
  }

  v230 = 0;
  if (v212)
  {
    v231 = 0;
    v232 = 0x8000000000000000;
    v233 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v234 = &v210[32 * v231];
      v235 = operations_research::Domain::Min((v234 + 16));
      if (v235 < v233)
      {
        v233 = v235;
      }

      v236 = operations_research::Domain::Max((v234 + 16));
      if (v232 <= v236)
      {
        v232 = v236;
      }

      if (v230 <= (*(v234 + 2) >> 1))
      {
        v230 = (*(v234 + 2) >> 1);
      }

      if (v210[11])
      {
        if (++v231 == v210[10])
        {
          v237 = v210;
          while (1)
          {
            v238 = *v237;
            if (*(*v237 + 11))
            {
              break;
            }

            v239 = v237[8];
            v237 = *v237;
            if (v239 != v238[10])
            {
              v210 = v238;
              v231 = v239;
              break;
            }
          }
        }
      }

      else
      {
        v240 = &v210[8 * (v231 + 1) + 240];
        do
        {
          v210 = *v240;
          v241 = *(*v240 + 11);
          v240 = *v240 + 240;
        }

        while (!v241);
        v231 = 0;
      }
    }

    while (v210 != v209 || v231 != v211);
    v208 = v291;
  }

  else
  {
    v233 = 0x7FFFFFFFFFFFFFFFLL;
    v232 = 0x8000000000000000;
  }

  operations_research::sat::FormatCounter(v310, v208, v191);
  v242 = HIBYTE(v310[0].__r_.__value_.__r.__words[2]);
  v243 = *&v310[0].__r_.__value_.__l.__data_;
  v245 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v233, &__p[0].__r_.__value_.__r.__words[2], v244);
  __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
  __p[0].__r_.__value_.__l.__size_ = v245 - &__p[0].__r_.__value_.__r.__words[2];
  v247 = v310;
  if ((v242 & 0x80u) == 0)
  {
    v248 = v242;
  }

  else
  {
    v248 = *(&v243 + 1);
    v247 = v243;
  }

  v312 = "  - ";
  v313 = 4;
  *&v314 = v247;
  *(&v314 + 1) = v248;
  v315 = " different domains in [";
  v316 = 23;
  v317 = &__p[0].__r_.__value_.__r.__words[2];
  v318 = v245 - &__p[0].__r_.__value_.__r.__words[2];
  v319 = ",";
  v320 = 1;
  v249 = v232;
  a1 = v275;
  v250 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v249, &v330[0].__r_.__value_.__r.__words[2], v246);
  v330[0].__r_.__value_.__r.__words[0] = &v330[0].__r_.__value_.__r.__words[2];
  v330[0].__r_.__value_.__l.__size_ = v250 - &v330[0].__r_.__value_.__r.__words[2];
  v321 = &v330[0].__r_.__value_.__r.__words[2];
  v322 = v250 - &v330[0].__r_.__value_.__r.__words[2];
  v323 = "] with a largest complexity of ";
  v324 = 31;
  v252 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v230, &v329[0].__r_.__value_.__r.__words[2], v251);
  v329[0].__r_.__value_.__r.__words[0] = &v329[0].__r_.__value_.__r.__words[2];
  v329[0].__r_.__value_.__l.__size_ = v252 - &v329[0].__r_.__value_.__r.__words[2];
  v325 = &v329[0].__r_.__value_.__s.__data_[16];
  v326 = v252 - &v329[0].__r_.__value_.__r.__words[2];
  v327 = ".\n";
  v328 = 2;
  absl::lts_20240722::strings_internal::AppendPieces(v275, &v312, 9);
  if ((SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_466;
  }

  operator delete(v310[0].__r_.__value_.__l.__data_);
  v253 = v281;
  if (v281 < 1)
  {
    goto LABEL_494;
  }

LABEL_467:
  v254 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v253, &v330[0].__r_.__value_.__s.__data_[16], v191);
  v330[0].__r_.__value_.__r.__words[0] = &v330[0].__r_.__value_.__r.__words[2];
  v330[0].__r_.__value_.__l.__size_ = v254 - &v330[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::strings_internal::JoinAlgorithm<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>> const,long long const&,long long const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(*v292, 0, v293, v293->__r_.__value_.__s.__data_[10], ",", 1uLL, v329);
  v255 = HIBYTE(v329[0].__r_.__value_.__r.__words[2]);
  if ((v329[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v256 = v329;
  }

  else
  {
    v256 = v329[0].__r_.__value_.__r.__words[0];
  }

  if ((v329[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v255 = v329[0].__r_.__value_.__l.__size_;
  }

  v312 = "  - ";
  v313 = 4;
  v314 = *&v330[0].__r_.__value_.__l.__data_;
  v315 = " constants in {";
  v316 = 15;
  v317 = v256;
  v318 = v255;
  v319 = "} \n";
  v320 = 3;
  absl::lts_20240722::strings_internal::CatPieces(&v312, 5, v310);
  if (SHIBYTE(v329[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v329[0].__r_.__value_.__l.__data_);
  }

  if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v257 = v310;
  }

  else
  {
    v257 = v310[0].__r_.__value_.__r.__words[0];
  }

  if ((v310[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v258 = HIBYTE(v310[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v258 = v310[0].__r_.__value_.__l.__size_;
  }

  if (v258 > 0x68)
  {
    v312 = v257;
    v313 = 50;
    v330[0].__r_.__value_.__r.__words[0] = " ... ";
    v330[0].__r_.__value_.__l.__size_ = 5;
    v329[0].__r_.__value_.__r.__words[0] = &v257[-2] + v258 - 2;
    v329[0].__r_.__value_.__l.__size_ = 50;
    absl::lts_20240722::StrCat(&v312, v330, v329, __dst);
  }

  else
  {
    if (v258 >= 0x17)
    {
      operator new();
    }

    *(&__dst[0].__r_.__value_.__s + 23) = v258;
    if (v258)
    {
      memmove(__dst, v257, v258);
    }

    __dst[0].__r_.__value_.__s.__data_[v258] = 0;
  }

  v259 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  v260 = __dst;
  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v259 = __dst[0].__r_.__value_.__l.__size_;
    v260 = __dst[0].__r_.__value_.__r.__words[0];
  }

  __p[0].__r_.__value_.__r.__words[0] = v260;
  __p[0].__r_.__value_.__l.__size_ = v259;
  a1 = v275;
  absl::lts_20240722::StrAppend(v275, __p);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_530;
    }

LABEL_494:
    memset(v310, 0, 24);
    v261 = *(&v307 + 1);
    if (*(&v307 + 1) >= 2uLL)
    {
      goto LABEL_495;
    }

    goto LABEL_497;
  }

  if ((SHIBYTE(v310[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_494;
  }

LABEL_530:
  operator delete(v310[0].__r_.__value_.__l.__data_);
  memset(v310, 0, 24);
  v261 = *(&v307 + 1);
  if (*(&v307 + 1) >= 2uLL)
  {
LABEL_495:
    if (v261 < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

LABEL_497:
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(0, 0, &v312, 0, 1);
  v263 = v310[0].__r_.__value_.__l.__size_;
  v262 = v310[0].__r_.__value_.__r.__words[0];
  absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(v330, v310[0].__r_.__value_.__l.__data_, v310[0].__r_.__value_.__l.__size_, "\n", 1uLL);
  v264 = HIBYTE(v330[0].__r_.__value_.__r.__words[2]);
  if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v265 = v330;
  }

  else
  {
    v265 = v330[0].__r_.__value_.__r.__words[0];
  }

  if ((v330[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v264 = v330[0].__r_.__value_.__l.__size_;
  }

  v312 = v265;
  v313 = v264;
  absl::lts_20240722::StrAppend(a1, &v312);
  if (SHIBYTE(v330[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v330[0].__r_.__value_.__l.__data_);
  }

  if (v262)
  {
    while (v263 != v262)
    {
      v266 = *(v263 - 1);
      v263 -= 3;
      if (v266 < 0)
      {
        operator delete(*v263);
      }
    }

    operator delete(v262);
  }

  if (v288 < 0)
  {
    operator delete(v286);
    if (!v291)
    {
      goto LABEL_514;
    }

    goto LABEL_513;
  }

  if (v291)
  {
LABEL_513:
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(v289);
  }

LABEL_514:
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::clear(&v292);
  if (v295 >= 2)
  {
    operator delete((v296 - (BYTE8(v295) & 1) - 8));
    if (v297 < 2)
    {
LABEL_516:
      if (v299 < 2)
      {
        goto LABEL_517;
      }

      goto LABEL_524;
    }
  }

  else if (v297 < 2)
  {
    goto LABEL_516;
  }

  operator delete((v298 - (BYTE8(v297) & 1) - 8));
  if (v299 < 2)
  {
LABEL_517:
    if (v301 < 2)
    {
      goto LABEL_518;
    }

    goto LABEL_525;
  }

LABEL_524:
  operator delete((v300 - (BYTE8(v299) & 1) - 8));
  if (v301 < 2)
  {
LABEL_518:
    if (v303 < 2)
    {
      goto LABEL_519;
    }

    goto LABEL_526;
  }

LABEL_525:
  operator delete((v302 - (BYTE8(v301) & 1) - 8));
  if (v303 < 2)
  {
LABEL_519:
    if (v305 < 2)
    {
      goto LABEL_520;
    }

    goto LABEL_527;
  }

LABEL_526:
  operator delete((v304 - (BYTE8(v303) & 1) - 8));
  if (v305 < 2)
  {
LABEL_520:
    if (v307 < 2)
    {
      return;
    }

LABEL_528:
    operator delete((v308 - (BYTE8(v307) & 1) - 8));
    return;
  }

LABEL_527:
  operator delete((v306 - (BYTE8(v305) & 1) - 8));
  if (v307 >= 2)
  {
    goto LABEL_528;
  }
}

void sub_23CAEC6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, unint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  if (*(v68 + 23) < 0)
  {
    operator delete(*v68);
  }

  absl::lts_20240722::btree_map<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>>::~btree_map(&a37);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::clear(&a40);
  if (a43 >= 2)
  {
    operator delete((a45 - (a44 & 1) - 8));
    if (a47 < 2)
    {
LABEL_5:
      if (a51 < 2)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if (a47 < 2)
  {
    goto LABEL_5;
  }

  operator delete((a49 - (a48 & 1) - 8));
  if (a51 < 2)
  {
LABEL_6:
    if (a55 < 2)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete((a53 - (a52 & 1) - 8));
  if (a55 < 2)
  {
LABEL_7:
    if (a59 < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete((a57 - (a56 & 1) - 8));
  if (a59 < 2)
  {
LABEL_8:
    if (a63 < 2)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete((a61 - (a60 & 1) - 8));
  if (a63 < 2)
  {
LABEL_9:
    if (a66 < 2)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }

LABEL_17:
    operator delete((a68 - (a67 & 1) - 8));
    _Unwind_Resume(a1);
  }

LABEL_16:
  operator delete((a65 - (a64 & 1) - 8));
  if (a66 < 2)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

BOOL operations_research::sat::CpModelStats(operations_research::sat::CpModelProto const&)::$_4::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 60) == 19)
  {
    v3 = *(a3 + 16);
    if (!v3)
    {
      goto LABEL_13;
    }

    v4 = *(*a1 + 24);
    if (v4)
    {
      v5 = *(a3 + 24);
      v6 = v4 + 7;
      v7 = 4 * v3;
      while (1)
      {
        v8 = *v5;
        if (~*v5 > *v5)
        {
          v8 = ~v8;
        }

        v9 = *(v6 + 8 * v8);
        if (*(v9 + 16) != 2 || **(v9 + 24) != *(*(v9 + 24) + 8))
        {
          return 0;
        }

        ++v5;
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_13;
        }
      }
    }

    if (*(v4 + 16) == 2 && **(v4 + 24) == *(*(v4 + 24) + 8))
    {
LABEL_13:
      v10 = *(a3 + 48);
      v11 = v10[3];
      if (!v11)
      {
        v11 = &operations_research::sat::_LinearExpressionProto_default_instance_;
      }

      v12 = *(v11 + 4);
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = *(*a2 + 24);
      if (v13)
      {
        v14 = v11[3];
        v15 = v13 + 7;
        v16 = 4 * v12;
        while (1)
        {
          v17 = *v14;
          if (~*v14 > *v14)
          {
            v17 = ~v17;
          }

          v18 = *(v15 + 8 * v17);
          if (*(v18 + 16) != 2 || **(v18 + 24) != *(*(v18 + 24) + 8))
          {
            return 0;
          }

          ++v14;
          v16 -= 4;
          if (!v16)
          {
            goto LABEL_26;
          }
        }
      }

      if (*(v13 + 16) == 2 && **(v13 + 24) == *(*(v13 + 24) + 8))
      {
LABEL_26:
        v19 = v10[5];
        if (!v19)
        {
          v19 = &operations_research::sat::_LinearExpressionProto_default_instance_;
        }

        v20 = *(v19 + 4);
        if (!v20)
        {
          goto LABEL_39;
        }

        v21 = *(*a2 + 24);
        if (v21)
        {
          v22 = v19[3];
          v23 = v21 + 7;
          v24 = 4 * v20;
          while (1)
          {
            v25 = *v22;
            if (~*v22 > *v22)
            {
              v25 = ~v25;
            }

            v26 = *(v23 + 8 * v25);
            if (*(v26 + 16) != 2 || **(v26 + 24) != *(*(v26 + 24) + 8))
            {
              return 0;
            }

            ++v22;
            v24 -= 4;
            if (!v24)
            {
              goto LABEL_39;
            }
          }
        }

        if (*(v21 + 16) == 2 && **(v21 + 24) == *(*(v21 + 24) + 8))
        {
LABEL_39:
          v27 = v10[4];
          if (!v27)
          {
            v27 = &operations_research::sat::_LinearExpressionProto_default_instance_;
          }

          v28 = *(v27 + 4);
          if (!v28)
          {
            return 1;
          }

          v29 = *(*a2 + 24);
          if (v29)
          {
            v31 = v27[3];
            v32 = v29 + 7;
            v33 = 4 * v28;
            result = 1;
            while (1)
            {
              v34 = *v31;
              if (~*v31 > *v31)
              {
                v34 = ~v34;
              }

              v35 = *(v32 + 8 * v34);
              if (*(v35 + 16) != 2 || **(v35 + 24) != *(*(v35 + 24) + 8))
              {
                break;
              }

              ++v31;
              v33 -= 4;
              if (!v33)
              {
                return result;
              }
            }
          }

          else if (*(v29 + 16) == 2)
          {
            return **(v29 + 24) == *(*(v29 + 24) + 8);
          }
        }
      }
    }
  }

  return 0;
}

std::string *absl::lts_20240722::StrAppend<>(std::string *a1, _OWORD *a2, __int128 *a3, _OWORD *a4, __int128 *a5, _OWORD *a6)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *a5;
  v9[2] = *a4;
  v9[3] = v7;
  v9[4] = *a6;
  return absl::lts_20240722::strings_internal::AppendPieces(a1, v9, 5);
}

void operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v20[6] = *MEMORY[0x277D85DE8];
  v16 = a1;
  v4 = operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v4, v2);
  if (ValueByNumber)
  {
    v6 = ValueByNumber[1];
    if (*(v6 + 23) < 0)
    {
      v12 = *v6;
      v13 = *(v6 + 1);

      std::string::__init_copy_ctor_external(a2, v12, v13);
    }

    else
    {
      v7 = *v6;
      a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a2->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    v20[0] = "Invalid enum value of: ";
    v20[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    v19[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v16);
    v19[1] = v8;
    v18[0] = " for enum type: ";
    v18[1] = 16;
    v9 = *(operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy_descriptor(v19[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v17[0] = v9;
    v17[1] = v10;
    absl::lts_20240722::StrCat(v20, v19, v18, v17, a2);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23CAED080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::ProtoEnumToString<operations_research::sat::DecisionStrategyProto_DomainReductionStrategy>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v20[6] = *MEMORY[0x277D85DE8];
  v16 = a1;
  v4 = operations_research::sat::DecisionStrategyProto_DomainReductionStrategy_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v4, v2);
  if (ValueByNumber)
  {
    v6 = ValueByNumber[1];
    if (*(v6 + 23) < 0)
    {
      v12 = *v6;
      v13 = *(v6 + 1);

      std::string::__init_copy_ctor_external(a2, v12, v13);
    }

    else
    {
      v7 = *v6;
      a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a2->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    v20[0] = "Invalid enum value of: ";
    v20[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    v19[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v16);
    v19[1] = v8;
    v18[0] = " for enum type: ";
    v18[1] = 16;
    v9 = *(operations_research::sat::DecisionStrategyProto_DomainReductionStrategy_descriptor(v19[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v17[0] = v9;
    v17[1] = v10;
    absl::lts_20240722::StrCat(v20, v19, v18, v17, a2);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23CAED1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::btree_map<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

std::string *operations_research::sat::CpSolverResponseStats@<X0>(operations_research::sat *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  v40 = *MEMORY[0x277D85DE8];
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  v38 = "CpSolverResponse summary:";
  v39 = 25;
  absl::lts_20240722::StrAppend(a3, &v38);
  v38 = "\nstatus: ";
  v39 = 9;
  operations_research::ProtoEnumToString<operations_research::sat::CpSolverStatus>(*(this + 66), &__p);
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

  v35 = p_p;
  v36 = size;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else if (!v3)
  {
    goto LABEL_12;
  }

  if (*(this + 66) != 3)
  {
    v38 = *(this + 18);
    v39 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::AppendPack(a3, "\nobjective: %.16g", 17, &v38, 1uLL);
    v38 = *(this + 19);
    v39 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::AppendPack(a3, "\nbest_bound: %.16g", 18, &v38, 1uLL);
    goto LABEL_13;
  }

LABEL_12:
  v38 = "\nobjective: NA";
  v39 = 14;
  absl::lts_20240722::StrAppend(a3, &v38);
  v38 = "\nbest_bound: NA";
  v39 = 15;
  absl::lts_20240722::StrAppend(a3, &v38);
LABEL_13:
  v38 = "\nintegers: ";
  v39 = 11;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 32), v37, v8);
  v35 = v37;
  v36 = v9 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nBOOLeans: ";
  v39 = 11;
  v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 20), v37, v10);
  v35 = v37;
  v36 = v11 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nconflicts: ";
  v39 = 12;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 21), v37, v12);
  v35 = v37;
  v36 = v13 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nbranches: ";
  v39 = 11;
  v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 22), v37, v14);
  v35 = v37;
  v36 = v15 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\npropagations: ";
  v39 = 15;
  v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 23), v37, v16);
  v35 = v37;
  v36 = v17 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\ninteger_propagations: ";
  v39 = 23;
  v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 24), v37, v18);
  v35 = v37;
  v36 = v19 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nrestarts: ";
  v39 = 11;
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 29), v37, v20);
  v35 = v37;
  v36 = v21 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nlp_iterations: ";
  v39 = 16;
  v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 30), v37, v22);
  v35 = v37;
  v36 = v23 - v37;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nwalltime: ";
  v39 = 11;
  v25 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, *(this + 25), v24);
  v35 = v37;
  v36 = v25;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\nusertime: ";
  v39 = 11;
  v27 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, *(this + 26), v26);
  v35 = v37;
  v36 = v27;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\ndeterministic_time: ";
  v39 = 21;
  v29 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, *(this + 27), v28);
  v35 = v37;
  v36 = v29;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v38 = "\ngap_integral: ";
  v39 = 15;
  v31 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, *(this + 28), v30);
  v35 = v37;
  v36 = v31;
  absl::lts_20240722::StrAppend(a3, &v38, &v35);
  v32 = *(this + 6);
  if (v32)
  {
    v38 = operations_research::fasthash64(*(this + 4), 8 * v32, 0xA5B85C5E198ED849);
    v39 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long long>;
    absl::lts_20240722::str_format_internal::AppendPack(a3, "\nsolution_fingerprint: %#x", 26, &v38, 1uLL);
  }

  v38 = "\n";
  v39 = 1;
  return absl::lts_20240722::StrAppend(a3, &v38);
}

void sub_23CAED730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::ProtoEnumToString<operations_research::sat::CpSolverStatus>(operations_research::sat *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v20[6] = *MEMORY[0x277D85DE8];
  v16 = a1;
  v4 = operations_research::sat::CpSolverStatus_descriptor(a1);
  ValueByNumber = google::protobuf::EnumDescriptor::FindValueByNumber(v4, v2);
  if (ValueByNumber)
  {
    v6 = ValueByNumber[1];
    if (*(v6 + 23) < 0)
    {
      v12 = *v6;
      v13 = *(v6 + 1);

      std::string::__init_copy_ctor_external(a2, v12, v13);
    }

    else
    {
      v7 = *v6;
      a2->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a2->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    v20[0] = "Invalid enum value of: ";
    v20[1] = 23;
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    v19[0] = absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(__p, &v16);
    v19[1] = v8;
    v18[0] = " for enum type: ";
    v18[1] = 16;
    v9 = *(operations_research::sat::CpSolverStatus_descriptor(v19[0]) + 8);
    v10 = *(v9 + 23);
    v11 = v9[1];
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = v11;
    }

    v17[0] = v9;
    v17[1] = v10;
    absl::lts_20240722::StrCat(v20, v19, v18, v17, a2);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23CAED924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SolveCpModel(operations_research::sat *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = a2;
  v5 = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  v38 = v5;
  v6 = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  v37 = v6;
  *v5 = 1;
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v6);
  *(v5 + 8) = CurrentTimeNanos;
  *v6 = 1;
  *(v6 + 1) = absl::lts_20240722::GetCurrentTimeNanos(CurrentTimeNanos);
  explicit = atomic_load_explicit(&qword_2810BDCB8, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_models) & 1) == 0)
  {
LABEL_4:
    v9 = atomic_load_explicit(&qword_2810BDB98, memory_order_acquire);
    if (v9)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_export_model) & 1) == 0)
    {
LABEL_13:
      v12 = atomic_load_explicit(&off_2810BDA08, memory_order_acquire);
      if ((~v12 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_params, &__dst);
      }

      else
      {
        v13 = v12 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v13 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, *v13, *(v13 + 8));
        }

        else
        {
          v14 = *v13;
          __dst.__r_.__value_.__r.__words[2] = *(v13 + 16);
          *&__dst.__r_.__value_.__l.__data_ = v14;
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (!size)
        {
          goto LABEL_35;
        }
      }

      else if (!*(&__dst.__r_.__value_.__s + 23))
      {
        goto LABEL_35;
      }

      v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v39);
      operations_research::sat::SatParameters::SatParameters(&__dst, 0, v16);
      operations_research::sat::SatParameters::SatParameters(__p, 0);
      v17 = atomic_load_explicit(&off_2810BDA08, memory_order_acquire);
      if ((~v17 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_params, &v40);
      }

      else
      {
        v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v18 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v40, *v18, *(v18 + 8));
        }

        else
        {
          v19 = *v18;
          v40.__r_.__value_.__r.__words[2] = *(v18 + 16);
          *&v40.__r_.__value_.__l.__data_ = v19;
        }
      }

      v48 = v40;
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v48;
      }

      else
      {
        v20 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = v48.__r_.__value_.__l.__size_;
      }

      if ((google::protobuf::TextFormat::ParseFromString(v20, v21, __p) & 1) == 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3770);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v40);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      operations_research::sat::SatParameters::MergeImpl(&__dst, __p, v22);
      v23 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v39);
      operations_research::sat::SatParameters::CopyFrom(v23, &__dst);
      operations_research::sat::SatParameters::~SatParameters(__p);
      operations_research::sat::SatParameters::~SatParameters(&__dst);
LABEL_35:
      v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v39);
      v25 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v39);
      v26 = v25;
      v36 = v25;
      if (v24[290])
      {
        IsEnabled1 = 1;
      }

      else if (dword_2810BD770 >= 1)
      {
        IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_13::operator() const(void)::site, dword_2810BD770);
        v25 = v36;
      }

      else
      {
        IsEnabled1 = 0;
      }

      *v26 = IsEnabled1;
      *(v25 + 1) = v24[566];
      memset(v35, 0, sizeof(v35));
      if (v24[268] == 1)
      {
        v44[0] = &unk_284F3F800;
        v44[1] = v35;
        v45 = v44;
        operations_research::SolverLogger::AddInfoLoggingCallback(v25, v44);
        if (v45 == v44)
        {
          (*(*v45 + 32))(v45);
        }

        else if (v45)
        {
          (*(*v45 + 40))();
        }
      }

      v28 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v39);
      v29 = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
      if ((~v29 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &__dst);
      }

      else
      {
        v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v30 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__dst, *v30, *(v30 + 8));
        }

        else
        {
          v31 = *v30;
          __dst.__r_.__value_.__r.__words[2] = *(v30 + 16);
          *&__dst.__r_.__value_.__l.__data_ = v31;
        }
      }

      __p[0] = __dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = __dst.__r_.__value_.__l.__size_;
      }

      MEMORY[0x23EED9030](v28 + 488, v32, v33);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v34 = atomic_load_explicit(&qword_2810BDBF0, memory_order_acquire);
      if (v34)
      {
        if ((v34 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_response))
      {
        goto LABEL_62;
      }

      v42[0] = &unk_284F3F890;
      v43 = v42;
      operations_research::sat::SharedResponseManager::AddFinalResponsePostprocessor(v28, v42);
      if (v43 == v42)
      {
        (*(*v43 + 32))(v43);
      }

      else if (v43)
      {
        (*(*v43 + 40))();
      }

LABEL_62:
      v41 = 0;
      operator new();
    }

    v10 = (*(this + 15) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = v10[23];
    if ((v11 & 0x8000000000000000) != 0)
    {
      v11 = *(v10 + 1);
      if (!v11)
      {
LABEL_11:
        v10 = "unnamed_model";
        v11 = 13;
        goto LABEL_12;
      }

      v10 = *v10;
    }

    else if (!v10[23])
    {
      goto LABEL_11;
    }

LABEL_12:
    goto LABEL_13;
  }

  goto LABEL_4;
}

void sub_23CAF0AC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<WallTimer>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<WallTimer>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<WallTimer>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<WallTimer>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::anonymous namespace::DumpModelProto<operations_research::sat::CpModelProto>(uint64_t a1, const void *a2, std::string::size_type a3)
{
  v33 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  explicit = atomic_load_explicit(&qword_281A21518, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
LABEL_3:
      v7 = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
      if ((~v7 & 3) != 0)
      {
        absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &v30);
      }

      else
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v8 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *v8, *(v8 + 8));
        }

        else
        {
          v9 = *v8;
          v30.__r_.__value_.__r.__words[2] = *(v8 + 16);
          *&v30.__r_.__value_.__l.__data_ = v9;
        }
      }

      __p = v30;
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      p_p = &__p;
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v30.__r_.__value_.__l.__size_;
        p_p = v30.__r_.__value_.__r.__words[0];
      }

      v31 = p_p;
      v32 = size;
      v30.__r_.__value_.__r.__words[0] = a2;
      v30.__r_.__value_.__l.__size_ = a3;
      v28 = ".bin";
      v29 = 4;
      absl::lts_20240722::StrCat(&v31, &v30, &v28, &v26);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 197);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "Dumping ", 8uLL);
      v13 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v31, a2, a3);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, " binary proto to '", 0x12uLL);
      v14 = absl::lts_20240722::log_internal::LogMessage::operator<<(v13, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "'.", 2uLL);
      std::__function::__func<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::InstrumentSearchStrategy(operations_research::sat::CpModelProto const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v31, &v26);
      goto LABEL_12;
    }
  }

  else if (!absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_dump_text_proto))
  {
    goto LABEL_3;
  }

  v17 = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
  if ((~v17 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &v30);
  }

  else
  {
    v18 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v18 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *v18, *(v18 + 8));
    }

    else
    {
      v19 = *v18;
      v30.__r_.__value_.__r.__words[2] = *(v18 + 16);
      *&v30.__r_.__value_.__l.__data_ = v19;
    }
  }

  __p = v30;
  v20 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v21 = &__p;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v30.__r_.__value_.__l.__size_;
    v21 = v30.__r_.__value_.__r.__words[0];
  }

  v31 = v21;
  v32 = v20;
  v30.__r_.__value_.__r.__words[0] = a2;
  v30.__r_.__value_.__l.__size_ = a3;
  v28 = ".pb.txt";
  v29 = 7;
  absl::lts_20240722::StrCat(&v31, &v30, &v28, &v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v27 = v26;
  *(&v26.__r_.__value_.__s + 23) = 0;
  v26.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 193);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "Dumping ", 8uLL);
  v23 = absl::lts_20240722::log_internal::LogMessage::operator<<(&v31, a2, a3);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, " text proto to '", 0x10uLL);
  v24 = absl::lts_20240722::log_internal::LogMessage::operator<<(v23, &v27);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, "'.", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v31);
LABEL_12:
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v27;
  }

  else
  {
    v15 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v27.__r_.__value_.__l.__size_;
  }

  if (!operations_research::sat::WriteModelProtoToFile<operations_research::sat::CpModelProto>(a1, v15, v16))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v30, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 199);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v30);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_23CAF184C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  v40 = a1;
  if (a26 < 0)
  {
    operator delete(a21);
    v40 = a1;
  }

  _Unwind_Resume(v40);
}

double absl::lts_20240722::GetFlag<std::string>@<D0>(atomic_ullong *a1@<X0>, std::string *a2@<X8>)
{
  explicit = atomic_load_explicit(a1 + 10, memory_order_acquire);
  if ((~explicit & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(a1, &v7);
  }

  else
  {
    v4 = explicit & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v7, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      v7.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v7.__r_.__value_.__l.__data_ = v5;
    }
  }

  result = *&v7.__r_.__value_.__l.__data_;
  *a2 = v7;
  return result;
}

void sub_23CAF1984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(std::string const&)>::~function(uint64_t a1)
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

operations_research::sat::SharedResponseManager *operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

_DWORD *operations_research::sat::Model::GetOrCreate<operations_research::SigintHandler>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SigintHandler>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SigintHandler>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::SigintHandler>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::SigintHandler>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::SigintHandler>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::anonymous namespace::TestSolutionHintForFeasibility(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::SolverLogger *a3, operations_research::sat::SharedResponseManager *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((*(this + 16) & 2) != 0)
  {
    v5 = *(this + 17);
    v6 = *(v5 + 16);
    if (v6 == *(this + 8))
    {
      if (v6)
      {
        if ((v6 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v5)
      {
        v11 = *(this + 17);
      }

      else
      {
        v11 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
      }

      v12 = *(v11 + 4);
      if (v12 >= 1)
      {
        v13 = v11[3];
        v14 = v11[6];
        do
        {
          v16 = *v13++;
          v15 = v16;
          v18 = *v14++;
          v17 = v18;
          if (~v15 <= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = ~v15;
          }

          if (v15 >= 0)
          {
            v20 = v17;
          }

          else
          {
            v20 = -v17;
          }

          *(8 * v19) = v20;
          --v12;
        }

        while (v12);
      }

      if (operations_research::sat::SolutionIsFeasible(this, 0, 0, 0, 0))
      {
        if (a3)
        {
          BYTE7(v28) = 13;
          strcpy(&__p, "complete_hint");
          operations_research::sat::SharedResponseManager::NewSolution(a3, 0, 0, &__p, 0);
          if (SBYTE7(v28) < 0)
          {
            operator delete(__p);
          }
        }

        else if (*a2 == 1)
        {
          operator new();
        }
      }

      else if (*a2 == 1)
      {
        operator new();
      }
    }

    else if (*a2 == 1)
    {
      *&v25 = v26;
      *(&v25 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, v26, a3) - v26;
      v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 8), v24, v8);
      v22 = v24;
      v23 = v9 - v24;
      *&__p = "The solution hint is incomplete: ";
      *(&__p + 1) = 33;
      v28 = v25;
      v29 = " out of ";
      v30 = 8;
      v31 = v24;
      v32 = v9 - v24;
      v33 = " variables hinted.";
      v34 = 18;
      absl::lts_20240722::strings_internal::CatPieces(&__p, 5, &v21);
      operations_research::SolverLogger::LogInfo(a2, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3717, &v21);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_23CAF2330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(std::vector<long long> *)>::~function(uint64_t a1)
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SolutionObservers>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SolutionObservers>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t std::function<void ()(operations_research::sat::CpSolverResponse const&)>::~function(uint64_t a1)
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

uint64_t std::function<std::string ()(operations_research::sat::CpSolverResponse const&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(double)>::~function(uint64_t a1)
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

void operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  if (*(v4 + 284) == 1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v9, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3176);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v9, "Enumerating all solutions in parallel is not supported.", 0x37uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v9);
  }

  v5 = v4;
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  if ((operations_research::TimeLimit::LimitReached(v6) & 1) == 0)
  {
    operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeManager>(a2);
    operations_research::sat::SharedStatTables::SharedStatTables(&v8, v7);
    if (*(v5 + 690) == 1)
    {
      operator new();
    }

    operator new();
  }
}

void sub_23CAF779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  v42 = STACK[0x280];
  STACK[0x280] = 0;
  if (v42)
  {
  }

  if (__p)
  {
    (*(*__p + 8))(__p, a2, a3, a4, a5, a6, a7, a8);
  }

  operations_research::sat::SatParameters::~SatParameters(&STACK[0x650]);
  std::vector<std::unique_ptr<operations_research::sat::SubSolver>>::~vector[abi:ne200100](&a35);
  std::vector<std::unique_ptr<operations_research::sat::SubSolver>>::~vector[abi:ne200100](&a38);
  _Unwind_Resume(a1);
}

unint64_t *operations_research::sat::Model::Register<operations_research::SolverLogger>(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = &gtl::FastTypeId<operations_research::SolverLogger>(void)::d;
  v7 = a1[3];
  v5 = a1 + 3;
  v6 = v7;
  if (v7 > 1)
  {
    v10 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SolverLogger>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SolverLogger>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X12 >> 12)) & v6;
    v20 = *(_X12 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v6)) == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d)
      {
        goto LABEL_13;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v21);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v10 += 8;
      v19 = (v10 + v19) & v6;
      v20 = *(_X12 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v23, a2, a3);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v5, &v22, v23);
  if (v25 == 1)
  {
    v9 = v24;
    *v24 = v22;
    v9[1] = 0;
  }

  v24[1] = a2;
  return result;
}

unint64_t *operations_research::sat::Model::Register<operations_research::TimeLimit>(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = &gtl::FastTypeId<operations_research::TimeLimit>(void)::d;
  v7 = a1[3];
  v5 = a1 + 3;
  v6 = v7;
  if (v7 > 1)
  {
    v10 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::TimeLimit>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::TimeLimit>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X12 >> 12)) & v6;
    v20 = *(_X12 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v6)) == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d)
      {
        goto LABEL_13;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v21);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v10 += 8;
      v19 = (v10 + v19) & v6;
      v20 = *(_X12 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::TimeLimit>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v23, a2, a3);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v5, &v22, v23);
  if (v25 == 1)
  {
    v9 = v24;
    *v24 = v22;
    v9[1] = 0;
  }

  v24[1] = a2;
  return result;
}

unint64_t *operations_research::sat::Model::Register<operations_research::sat::SatParameters>(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d;
  v7 = a1[3];
  v5 = a1 + 3;
  v6 = v7;
  if (v7 > 1)
  {
    v10 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X12 >> 12)) & v6;
    v20 = *(_X12 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v6)) == &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d)
      {
        goto LABEL_13;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v21);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v10 += 8;
      v19 = (v10 + v19) & v6;
      v20 = *(_X12 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v23, a2, a3);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v5, &v22, v23);
  if (v25 == 1)
  {
    v9 = v24;
    *v24 = v22;
    v9[1] = 0;
  }

  v24[1] = a2;
  return result;
}

unint64_t *operations_research::sat::Model::Register<operations_research::sat::SharedStatistics>(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d;
  v7 = a1[3];
  v5 = a1 + 3;
  v6 = v7;
  if (v7 > 1)
  {
    v10 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X12 >> 12)) & v6;
    v20 = *(_X12 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v6)) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
      {
        goto LABEL_13;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v21);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v10 += 8;
      v19 = (v10 + v19) & v6;
      v20 = *(_X12 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v23, a2, a3);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v5, &v22, v23);
  if (v25 == 1)
  {
    v9 = v24;
    *v24 = v22;
    v9[1] = 0;
  }

  v24[1] = a2;
  return result;
}

unint64_t *operations_research::sat::Model::Register<operations_research::sat::SharedResponseManager>(void *a1, uint64_t *a2, uint64_t a3)
{
  v22 = &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d;
  v7 = a1[3];
  v5 = a1 + 3;
  v6 = v7;
  if (v7 > 1)
  {
    v10 = 0;
    _X12 = a1[5];
    __asm { PRFM            #4, [X12] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X12 >> 12)) & v6;
    v20 = *(_X12 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      if (*(a1[6] + 16 * ((v19 + (__clz(__rbit64(v21)) >> 3)) & v6)) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
      {
        goto LABEL_13;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v21);
LABEL_10:
    while (!*&vceq_s8(v20, 0x8080808080808080))
    {
      v10 += 8;
      v19 = (v10 + v19) & v6;
      v20 = *(_X12 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a1[4] >= 2uLL && a1[5] == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
  {
LABEL_13:
    operations_research::sat::Model::Register<operations_research::SolverLogger>(v23, a2, a3);
  }

  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v5, &v22, v23);
  if (v25 == 1)
  {
    v9 = v24;
    *v24 = v22;
    v9[1] = 0;
  }

  v24[1] = a2;
  return result;
}

void operations_research::sat::anonymous namespace::LoadCpModel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = a2;
  v4 = this;
  v229 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3);
  v191 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v3);
  v193 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v3);
  v192 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v3);
  if (*(v192 + 755) == 1)
  {
    v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GreaterThanAtLeastOneOfDetector>(v3);
    operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraints(v8, v3, 0);
    if ((operations_research::sat::SatSolver::FinishPropagation(v6) & 1) == 0)
    {
      *(v6 + 528) = 1;
      v11 = *(v3 + 23);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v3;
      }

      else
      {
        v12 = *v3;
      }

      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 1);
      }

      goto LABEL_28;
    }
  }

  if (*(v192 + 147) >= 2)
  {
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Prober>(v3);
    operations_research::sat::Prober::ProbeBooleanVariables(v9, 1.0);
    v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(v3);
    if ((operations_research::sat::BinaryImplicationGraph::ComputeTransitiveReduction(v10, 0) & 1) == 0)
    {
      *(v6 + 528) = 1;
      v11 = *(v3 + 23);
      if ((v11 & 0x80u) == 0)
      {
        v12 = v3;
      }

      else
      {
        v12 = *v3;
      }

      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v3 + 1);
      }

      goto LABEL_28;
    }
  }

  if (*(v6 + 528) == 1)
  {
    *(v6 + 528) = 1;
    v11 = *(v3 + 23);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = *v3;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v3 + 1);
    }

LABEL_28:
    *&v218 = v12;
    *(&v218 + 1) = v11;
    v226.__r_.__value_.__r.__words[0] = " [loading]";
    v226.__r_.__value_.__l.__size_ = 10;
    absl::lts_20240722::StrCat(&v218, &v226, &v217);
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v191, &v217);
    goto LABEL_236;
  }

  operations_research::sat::ExtractElementEncoding(v4, v3, v7);
  v14 = *(v3 + 3);
  v186 = (v3 + 24);
  if (v14 > 1)
  {
    v16 = 0;
    _X11 = *(v3 + 5);
    __asm { PRFM            #4, [X11] }

    v23 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d));
    v24 = vdup_n_s8(v23 & 0x7F);
    v25 = ((v23 >> 7) ^ (_X11 >> 12)) & v14;
    v26 = *(_X11 + v25);
    v27 = vceq_s8(v26, v24);
    if (!v27)
    {
      goto LABEL_33;
    }

LABEL_30:
    v28 = *(v3 + 6);
    while (1)
    {
      v29 = (v25 + (__clz(__rbit64(v27)) >> 3)) & v14;
      if (*(v28 + 16 * v29) == &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d)
      {
        break;
      }

      v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v27)
      {
LABEL_33:
        while (!*&vceq_s8(v26, 0x8080808080808080))
        {
          v16 += 8;
          v25 = (v16 + v25) & v14;
          v26 = *(_X11 + v25);
          v27 = vceq_s8(v26, v24);
          if (v27)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_40;
      }
    }

    v15 = (v28 + 16 * v29);
    if (!(_X11 + v29))
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (*(v3 + 4) < 2uLL)
    {
      goto LABEL_40;
    }

    v15 = v3 + 40;
    if (*(v3 + 5) != &gtl::FastTypeId<operations_research::sat::IntervalsRepository>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      goto LABEL_40;
    }
  }

  v30 = *(v15 + 1);
  if (v30)
  {
    operations_research::sat::IntervalsRepository::InitAllDecomposedEnergies(v30);
  }

LABEL_40:
  v194 = v3;
  v190 = v4;
  v187 = v6;
  if ((*(v4 + 16) & 1) != 0 && *(*(v4 + 16) + 64))
  {
    v31 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
    v33 = *(v4 + 16);
    if (!v33)
    {
      v33 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    v34 = *(v33 + 4);
    if (v34 < 1)
    {
      v36 = 0;
      v35 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = v33[6];
      v38 = v33[3];
      v39 = *(v31 + 5);
      do
      {
        while (1)
        {
          v41 = *v37++;
          v40 = v41;
          LODWORD(v41) = *v38;
          v38 = (v38 + 4);
          v42 = v41;
          v43 = ~v41 <= v41 ? v42 : ~v42;
          v44 = 8 * ((*v193)[v43] ^ (v42 >> 31));
          if (v40 >= 1)
          {
            break;
          }

          v35 += -*(v39 + (v44 ^ 8)) * v40;
          v36 += *(v39 + v44) * v40;
          if (!--v34)
          {
            goto LABEL_78;
          }
        }

        v35 += *(v39 + v44) * v40;
        v36 += -*(v39 + (v44 ^ 8)) * v40;
        --v34;
      }

      while (v34);
    }

LABEL_78:
    operations_research::Domain::FromFlatSpanOfIntervals(v33[9], *(v33 + 16), &v218, v32);
    v66 = operations_research::Domain::Domain(&v226, v35, v36);
    IsIncludedIn = operations_research::Domain::IsIncludedIn(v66, &v218);
    if (v226.__r_.__value_.__s.__data_[0])
    {
      operator delete(v226.__r_.__value_.__l.__size_);
    }

    v188 = IsIncludedIn ^ 1;
    if (v218)
    {
      operator delete(*(&v218 + 1));
    }
  }

  else
  {
    v188 = 0;
  }

  v195 = -1;
  if (*(v192 + 143) < 1)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_203;
    }

    v46 = *(v4 + 16);
    v218 = 0uLL;
    *&v219 = 0;
    v47 = *(v46 + 16);
    if (v47)
    {
      if ((v47 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    *&v219 = 0;
    *&v218 = 0;
    if (*(v192 + 315) == 1)
    {
      if (v188)
      {
      }

      else
      {
      }
    }

    else
    {
    }

    v45 = VariableLinkedToSumOf;
    v195 = VariableLinkedToSumOf;
LABEL_175:
    if (v45 != -1)
    {
      if (*(v4 + 16))
      {
        v119 = *(v4 + 16);
      }

      else
      {
        v119 = &operations_research::sat::_CpObjectiveProto_default_instance_;
      }

      v120 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(v3);
      v121 = v120;
      v122 = *(v119 + 12);
      if (v122 == 0.0)
      {
        v122 = 1.0;
      }

      *v120 = v122;
      *(v120 + 8) = v119[11];
      *(v120 + 16) = v45;
      v123 = *(v119 + 4);
      v125 = (v120 + 24);
      v124 = *(v120 + 24);
      v126 = (*(v120 + 32) - v124) >> 2;
      if (v123 <= v126)
      {
        if (v123 < v126)
        {
          *(v120 + 32) = v124 + 4 * v123;
        }
      }

      else
      {
        std::vector<int>::__append((v120 + 24), v123 - v126);
      }

      v127 = v121[6];
      v128 = (v121[7] - v127) >> 3;
      if (v123 <= v128)
      {
        if (v123 < v128)
        {
          v121[7] = v127 + 8 * v123;
        }
      }

      else
      {
        std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append((v121 + 6), v123 - v128);
      }

      if (*(v119 + 4) >= 1)
      {
        v129 = 0;
        do
        {
          v130 = v119[3];
          v131 = *(v130 + v129);
          if (~v131 <= v131)
          {
            v132 = *(v130 + v129);
          }

          else
          {
            v132 = ~v131;
          }

          v133 = *v193;
          *(*v125 + 4 * v129) = (*v193)[v132] ^ (v131 >> 31);
          v134 = v119[6][v129];
          *(v121[6] + 8 * v129) = v134;
          v135 = *(v130 + v129);
          if (~v135 <= v135)
          {
            v136 = v135;
          }

          else
          {
            v136 = ~v135;
          }

          v137 = v133[v136];
          if (v137 != -1)
          {
            LODWORD(v226.__r_.__value_.__l.__data_) = v137 ^ (v135 < 0) ^ (v134 < 1);
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(v121 + 9, &v226, &v218);
            if (v219 == 1)
            {
              **(&v218 + 1) = v226.__r_.__value_.__l.__data_;
            }
          }

          ++v129;
        }

        while (v129 < *(v119 + 4));
      }

      operator new();
    }

LABEL_203:
    v138 = *(v4 + 16);
    if (!v138)
    {
      v138 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (*(v138 + 16))
    {
      v139 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
      v141 = *(v190 + 16);
      if (!v141)
      {
        v141 = &operations_research::sat::_CpObjectiveProto_default_instance_;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v141[9], *(v141 + 16), &v204, v140);
      v142 = operations_research::sat::IntegerTrail::InitialVariableDomain(v139, -1);
      v209 = 0;
      if (*v142 >= 2uLL)
      {
        if (*v142)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v209, v142);
        }

        else
        {
          v209 = *v142;
          v210 = *(v142 + 8);
        }
      }

      if (dword_2810BFDE8 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFDE0, dword_2810BFDE8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v218, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1782);
        v177 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v218, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v177, "Objective offset:", 0x11uLL);
        v178 = *(v190 + 16);
        if (!v178)
        {
          v178 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v226.__r_.__value_.__r.__words[0] = v178[11];
        v179 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v177, &v226);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v179, " scaling_factor:", 0x10uLL);
        v180 = *(v190 + 16);
        if (!v180)
        {
          v180 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v226.__r_.__value_.__r.__words[0] = v180[12];
        absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v179, &v226);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v218);
      }

      if (dword_2810BFE00 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFDF8, dword_2810BFE00))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v218, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1784);
        v181 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v218, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v181, "Automatic internal objective domain: ", 0x25uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v181, &v209);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v218);
      }

      if (dword_2810BFE18 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFE10, dword_2810BFE18))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v218, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1785);
        v182 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v218, 3);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v182, "User specified internal objective domain: ", 0x2AuLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::Domain,0>(v182, &v204);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v218);
      }

      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&>(&v195, &operations_research::sat::kNoIntegerVariable, "objective_var != kNoIntegerVariable");
    }

    if (*operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v3) == 1)
    {
      v143 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(v194);
      *&v218 = "Initial num_BOOL: ";
      *(&v218 + 1) = 18;
      v145 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v187 + 4), &v226.__r_.__value_.__s.__data_[16], v144);
      v226.__r_.__value_.__r.__words[0] = &v226.__r_.__value_.__r.__words[2];
      v226.__r_.__value_.__l.__size_ = v145 - &v226.__r_.__value_.__r.__words[2];
      absl::lts_20240722::StrCat(&v218, &v226, &v217);
      operations_research::SolverLogger::LogInfo(v143, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1796, &v217);
      if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v217.__r_.__value_.__l.__data_);
      }
    }

    if ((operations_research::sat::SatSolver::FinishPropagation(v187) & 1) == 0)
    {
      *(v187 + 528) = 1;
      v117 = *(v194 + 23);
      if ((v117 & 0x80u) == 0)
      {
        v118 = v194;
      }

      else
      {
        v118 = *v194;
      }

      if ((v117 & 0x80u) != 0)
      {
        v117 = *(v194 + 1);
      }

      goto LABEL_235;
    }

    if (*(v190 + 16))
    {
      v146 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v194);
      v147 = *(v194 + 23);
      if ((v147 & 0x80u) == 0)
      {
        v148 = v194;
      }

      else
      {
        v148 = *v194;
      }

      if ((v147 & 0x80u) != 0)
      {
        v147 = *(v194 + 1);
      }

      *&v218 = v148;
      *(&v218 + 1) = v147;
      v226.__r_.__value_.__r.__words[0] = " (initial_propagation)";
      v226.__r_.__value_.__l.__size_ = 22;
      absl::lts_20240722::StrCat(&v218, &v226, &v217);
      operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(v191, &v217, *(*(v146 + 5) - 8), -*(*(v146 + 5) - 16));
      if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v217.__r_.__value_.__l.__data_);
      }

      v149 = *v186;
      if (*v186 > 1)
      {
        v150 = 0;
        _X11 = *(v194 + 5);
        __asm { PRFM            #4, [X11] }

        v153 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
        v154 = vdup_n_s8(v153 & 0x7F);
        v155 = ((v153 >> 7) ^ (_X11 >> 12)) & v149;
        v156 = *(_X11 + v155);
        v157 = vceq_s8(v156, v154);
        if (!v157)
        {
          goto LABEL_242;
        }

        do
        {
LABEL_240:
          if (*(*(v194 + 6) + 16 * ((v155 + (__clz(__rbit64(v157)) >> 3)) & v149)) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
          {
            goto LABEL_245;
          }

          v157 &= ((v157 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v157);
LABEL_242:
        while (!*&vceq_s8(v156, 0x8080808080808080))
        {
          v150 += 8;
          v155 = (v150 + v155) & v149;
          v156 = *(_X11 + v155);
          v157 = vceq_s8(v156, v154);
          if (v157)
          {
            goto LABEL_240;
          }
        }
      }

LABEL_245:
      operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(v194);
      operator new();
    }

    v158 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(v194);
    operations_research::sat::ConstructUserSearchStrategy(v190, v194, &v218);
    v160 = v158 + 10;
    v159 = v158[10];
    v161 = v158 + 7;
    v158[10] = 0;
    if (v159 == v158 + 7)
    {
      (*(*v159 + 32))(v159);
    }

    else if (v159)
    {
      (*(*v159 + 40))(v159);
    }

    v162 = *(&v219 + 1);
    v163 = v158 + 10;
    if (*(&v219 + 1))
    {
      if (*(&v219 + 1) == &v218)
      {
        *v160 = v161;
        (*(*v162 + 24))(v162, v158 + 7);
LABEL_255:
        if (*(&v219 + 1) == &v218)
        {
          (*(**(&v219 + 1) + 32))(*(&v219 + 1));
        }

        else if (*(&v219 + 1))
        {
          (*(**(&v219 + 1) + 40))();
        }

        operations_research::sat::ConstructHeuristicSearchStrategy(v190, v194, &v218);
        v165 = v158 + 14;
        v164 = v158[14];
        v166 = v158 + 11;
        v158[14] = 0;
        if (v164 == v158 + 11)
        {
          (*(*v164 + 32))(v164);
        }

        else if (v164)
        {
          (*(*v164 + 40))(v164);
        }

        v167 = *(&v219 + 1);
        v168 = v158 + 14;
        if (*(&v219 + 1))
        {
          if (*(&v219 + 1) == &v218)
          {
            *v165 = v166;
            (*(*v167 + 24))(v167, v158 + 11);
LABEL_268:
            if (*(&v219 + 1) == &v218)
            {
              (*(**(&v219 + 1) + 32))(*(&v219 + 1));
            }

            else if (*(&v219 + 1))
            {
              (*(**(&v219 + 1) + 40))();
            }

            operations_research::sat::ConstructIntegerCompletionSearchStrategy(v193, 0xFFFFFFFF, v194, &v218);
            v170 = v158 + 18;
            v169 = v158[18];
            v171 = v158 + 15;
            v158[18] = 0;
            if (v169 == v158 + 15)
            {
              (*(*v169 + 32))(v169);
            }

            else if (v169)
            {
              (*(*v169 + 40))(v169);
            }

            v172 = *(&v219 + 1);
            v173 = v158 + 18;
            if (*(&v219 + 1))
            {
              if (*(&v219 + 1) == &v218)
              {
                *v170 = v171;
                (*(*v172 + 24))(v172, v158 + 15);
LABEL_281:
                if (*(&v219 + 1) == &v218)
                {
                  (*(**(&v219 + 1) + 32))(*(&v219 + 1));
                }

                else if (*(&v219 + 1))
                {
                  (*(**(&v219 + 1) + 40))();
                }

                v174 = *v160;
                if (*v160)
                {
                  if (v174 == v161)
                  {
                    v216 = v215;
                    (*(*v174 + 24))(v174, v215);
                  }

                  else
                  {
                    v216 = (*(*v174 + 16))(v174);
                  }
                }

                else
                {
                  v216 = 0;
                }

                v175 = *v165;
                if (*v165)
                {
                  if (v175 == v166)
                  {
                    v214 = v213;
                    (*(*v175 + 24))(v175, v213);
LABEL_295:
                    v176 = *v170;
                    if (*v170)
                    {
                      if (v176 == v171)
                      {
                        v212 = v211;
                        (*(*v176 + 24))(v176, v211);
LABEL_300:
                        operations_research::sat::ConstructFixedSearchStrategy(v215, v213, v211, &v218);
                      }

                      v176 = (*(*v176 + 16))(v176);
                    }

                    v212 = v176;
                    goto LABEL_300;
                  }

                  v175 = (*(*v175 + 16))(v175);
                }

                v214 = v175;
                goto LABEL_295;
              }

              v173 = &v219 + 1;
              *v170 = *(&v219 + 1);
            }

            *v173 = 0;
            goto LABEL_281;
          }

          v168 = &v219 + 1;
          *v165 = *(&v219 + 1);
        }

        *v168 = 0;
        goto LABEL_268;
      }

      v163 = &v219 + 1;
      *v160 = *(&v219 + 1);
    }

    *v163 = 0;
    goto LABEL_255;
  }

  operations_research::sat::ComputeLinearRelaxation(&v226, v4, v3, v13);
  if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v3) + 528))
  {
    v45 = -1;
  }

  else
  {
    v48 = *&v226.__r_.__value_.__l.__data_;
    v50 = v227;
    v49 = v228;
    v51 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v3);
    v52 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v48 + 1) - v48) >> 3);
    v53 = v49 - v50;
    v54 = (*(v51 + 6) - *(v51 + 5)) >> 3;
    v220 = 0u;
    memset(v221, 0, 28);
    v218 = 0u;
    v219 = 0u;
    v224 = 0;
    v222 = 0;
    v223 = 0;
    v225 = 0;
    v55 = (v53 >> 6) - 858993459 * ((*(&v48 + 1) - v48) >> 3);
    DenseConnectedComponentsFinder::SetNumberOfNodes(&v218, v55 + v54);
    if (v52 >= 1)
    {
      v56 = 0;
      do
      {
        v57 = v226.__r_.__value_.__r.__words[0] + 40 * v56;
        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = *(v57 + 24);
          v60 = 4 * v58;
          do
          {
            DenseConnectedComponentsFinder::AddEdge(&v218, v56, (*v59++ & 0xFFFFFFFE) + v55);
            v60 -= 4;
          }

          while (v60);
        }

        ++v56;
      }

      while (v56 != (v52 & 0x7FFFFFFF));
    }

    v61 = (v53 >> 6) & 0x7FFFFFFF;
    if ((v53 >> 6) >= 1)
    {
      v62 = 0;
      v63 = *(v227 + 8);
      i = *(v227 + 16);
      if (v63 != i)
      {
        goto LABEL_72;
      }

      while (++v62 != v61)
      {
        v65 = v227 + (v62 << 6);
        v63 = *(v65 + 8);
        for (i = *(v65 + 16); v63 != i; ++v63)
        {
LABEL_72:
          DenseConnectedComponentsFinder::AddEdge(&v218, v62 - 858993459 * ((*(&v48 + 1) - v48) >> 3), (*v63 & 0xFFFFFFFE) + v55);
        }
      }
    }

    if (LODWORD(v221[3]))
    {
      if ((v221[3] & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    DenseConnectedComponentsFinder::GetComponentIds(&v218, &v209);
    if (v52 >= 1)
    {
      v68 = v209;
      v69 = v52 & 0x7FFFFFFF;
      do
      {
        v70 = *v68++;
        ++*(4 * v70);
        --v69;
      }

      while (v69);
    }

    v206 = 0;
    v207 = 0;
    v208 = 0;
    v217.__r_.__value_.__r.__words[0] = &v206;
    v217.__r_.__value_.__s.__data_[8] = 0;
    LODWORD(v217.__r_.__value_.__l.__data_) = 0;
    if (v54 >= 1)
    {
      v71 = 0;
      do
      {
        std::vector<int>::push_back[abi:ne200100](v206 + 24 * *(v209 + ((v71 & 0xFFFFFFFE) + v55)), &v217);
        v71 = LODWORD(v217.__r_.__value_.__l.__data_) + 2;
        LODWORD(v217.__r_.__value_.__l.__data_) = v71;
      }

      while (v71 < v54);
    }

    __src = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v194);
    v73 = *(v190 + 16);
    if (!v73)
    {
      v73 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    if (*(v73 + 10) >= 1)
    {
      v74 = 0;
      v75 = v73[3];
      v76 = *__src;
      v77 = v209;
      do
      {
        v78 = *(v75 + v74);
        if (~v78 > v78)
        {
          v78 = ~v78;
        }

        v79 = v77[(*(v76 + 4 * v78) & 0xFFFFFFFE) + v55];
        ++*(4 * v79);
        ++v74;
      }

      while (v74 < *(v73 + 10));
    }

    if (v52 >= 1)
    {
      v80 = 0;
      v81 = 0;
      do
      {
        v82 = *(v209 + v81);
        if (*(4 * v82) >= 2)
        {
          v83 = *(8 * v82);
          if (!v83)
          {
            operator new();
          }

          v84 = v226.__r_.__value_.__r.__words[0] + v80;
          v85 = *(v226.__r_.__value_.__r.__words[0] + v80 + 16);
          *&v204.__r_.__value_.__l.__data_ = *(v226.__r_.__value_.__r.__words[0] + v80);
          LODWORD(v204.__r_.__value_.__r.__words[2]) = v85;
          v86 = *(v226.__r_.__value_.__r.__words[0] + v80 + 24);
          *(v84 + 24) = 0;
          *(v84 + 32) = 0;
          v205 = v86;
          operations_research::sat::LinearProgrammingConstraint::AddLinearConstraint(v83, &v204);
          v87 = *(&v205 + 1);
          *(&v205 + 1) = 0;
          if (v87)
          {
            MEMORY[0x23EED9440](v87, 0x1000C8000313F17);
          }

          v88 = v205;
          *&v205 = 0;
          if (v88)
          {
            MEMORY[0x23EED9440](v88, 0x1000C8052888210);
          }
        }

        ++v81;
        v80 += 40;
      }

      while ((v52 & 0x7FFFFFFF) != v81);
    }

    v201 = 0;
    v202 = 0;
    v203 = 0;
    v4 = v190;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    if (*(v190 + 16))
    {
      v90 = *(v190 + 16);
      if (*(v90 + 10) < 1)
      {
        v89 = 0;
      }

      else
      {
        v89 = 0;
        v91 = 0;
        do
        {
          v92 = *(v90[3] + v91);
          if (~v92 <= v92)
          {
            v93 = *(v90[3] + v91);
          }

          else
          {
            v93 = ~v92;
          }

          v94 = *(*__src + 4 * v93);
          v95 = (v94 ^ (v92 >> 31));
          v96 = v90[6][v91];
          v97 = *(v209 + ((v94 & 0xFFFFFFFE) + v55));
          v98 = *(8 * v97);
          if (v98)
          {
            operations_research::sat::LinearProgrammingConstraint::SetObjectiveCoefficient(v98, v95, v96, v72);
            v196[0] = v95;
            v196[1] = v96;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v201 + 24 * v97, v196);
          }

          else
          {
            if (v89 < v200)
            {
              *v89 = v95;
              *(v89 + 8) = v96;
              v89 += 16;
            }

            else
            {
              v99 = v89;
              v100 = v89 >> 4;
              v101 = v100 + 1;
              if ((v100 + 1) >> 60)
              {
                v198 = 0;
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (v200 >> 3 > v101)
              {
                v101 = v200 >> 3;
              }

              if (v200 >= 0x7FFFFFFFFFFFFFF0)
              {
                v102 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v102 = v101;
              }

              if (v102)
              {
                if (!(v102 >> 60))
                {
                  operator new();
                }

                v198 = 0;
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v103 = (16 * v100);
              *v103 = v95;
              v103[1] = v96;
              v89 = 16 * v100 + 16;
              memcpy(0, 0, v99);
              v199 = v89;
              v200 = 0;
              v4 = v190;
            }

            v199 = v89;
          }

          ++v91;
          v90 = *(v4 + 16);
          if (!v90)
          {
            v90 = &operations_research::sat::_CpObjectiveProto_default_instance_;
          }
        }

        while (v91 < *(v90 + 10));
      }

      v198 = 0;
      if (*(v4 + 16))
      {
      }

      else
      {
        v45 = -1;
      }
    }

    else
    {
      v89 = 0;
      v45 = -1;
    }

    if (dword_2810BFDD0 >= 3)
    {
      v4 = v190;
      if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810BFDC8, dword_2810BFDD0))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v196, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1078);
        v183 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v196, 3);
        *v197 = v89 >> 4;
        v184 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v183, v197);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v184, " terms in the main objective linear equation (", 0x2EuLL);
        v197[0] = 0;
        v185 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v184, v197);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v185, " from LP constraints).", 0x16uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v196);
        v4 = v190;
      }
    }

    v105 = v201;
    v3 = v194;
    if (v201)
    {
      v106 = v202;
      v107 = v201;
      if (v202 != v201)
      {
        v108 = v202;
        do
        {
          v110 = *(v108 - 3);
          v108 -= 24;
          v109 = v110;
          if (v110)
          {
            *(v106 - 2) = v109;
            operator delete(v109);
          }

          v106 = v108;
        }

        while (v108 != v105);
        v107 = v201;
      }

      v202 = v105;
      operator delete(v107);
    }

    v111 = v206;
    if (v206)
    {
      v112 = v207;
      v113 = v206;
      if (v207 != v206)
      {
        v114 = v207;
        do
        {
          v116 = *(v114 - 3);
          v114 -= 24;
          v115 = v116;
          if (v116)
          {
            *(v112 - 2) = v115;
            operator delete(v115);
          }

          v112 = v114;
        }

        while (v114 != v111);
        v113 = v206;
      }

      v207 = v111;
      operator delete(v113);
    }

    if (v209)
    {
      *&v210 = v209;
      operator delete(v209);
    }

    if (v222)
    {
      v223 = v222;
      operator delete(v222);
    }

    if (v221[0])
    {
      v221[1] = v221[0];
      operator delete(v221[0]);
    }

    if (*(&v219 + 1))
    {
      *&v220 = *(&v219 + 1);
      operator delete(*(&v219 + 1));
    }

    if (v218)
    {
      *(&v218 + 1) = v218;
      operator delete(v218);
    }
  }

  operations_research::sat::LinearRelaxation::~LinearRelaxation(&v226);
  v195 = v45;
  if (*(v187 + 528) != 1)
  {
    goto LABEL_175;
  }

  *(v187 + 528) = 1;
  v117 = *(v3 + 23);
  if ((v117 & 0x80u) == 0)
  {
    v118 = v3;
  }

  else
  {
    v118 = *v3;
  }

  if ((v117 & 0x80u) != 0)
  {
    v117 = *(v3 + 1);
  }

LABEL_235:
  *&v218 = v118;
  *(&v218 + 1) = v117;
  v226.__r_.__value_.__r.__words[0] = " [loading]";
  v226.__r_.__value_.__l.__size_ = 10;
  absl::lts_20240722::StrCat(&v218, &v226, &v217);
  operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v191, &v217);
LABEL_236:
  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }
}

void sub_23CAFBA5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::MinimizeL1DistanceWithHint(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v165 = *MEMORY[0x277D85DE8];
  memset(v154, 0, sizeof(v154));
  v155 = xmmword_23CE306D0;
  v160 = 0;
  v158 = 0;
  v159 = 0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelSharedTimeLimit>(a2);
  v143 = &gtl::FastTypeId<operations_research::sat::ModelSharedTimeLimit>(void)::d;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(&v155, &v143, v151);
  if (v153 == 1)
  {
    v6 = v152;
    *v152 = v143;
    v6[1] = 0;
  }

  v152[1] = v5;
  v7 = operations_research::sat::Model::GetOrCreate<WallTimer>(a2);
  v143 = &gtl::FastTypeId<WallTimer>(void)::d;
  if (v155 > 1)
  {
    v115 = 0;
    _X11 = v156;
    __asm { PRFM            #4, [X11] }

    v122 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<WallTimer>(void)::d));
    v123 = vdup_n_s8(v122 & 0x7F);
    v124 = ((v122 >> 7) ^ (v156 >> 12)) & v155;
    v125 = *(v156 + v124);
    v126 = vceq_s8(v125, v123);
    if (!v126)
    {
      goto LABEL_97;
    }

    do
    {
LABEL_95:
      if (*(v157 + 16 * ((v124 + (__clz(__rbit64(v126)) >> 3)) & v155)) == &gtl::FastTypeId<WallTimer>(void)::d)
      {
        goto LABEL_100;
      }

      v126 &= ((v126 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v126);
LABEL_97:
    while (!*&vceq_s8(v125, 0x8080808080808080))
    {
      v115 += 8;
      v124 = (v115 + v124) & v155;
      v125 = *(v156 + v124);
      v126 = vceq_s8(v125, v123);
      if (v126)
      {
        goto LABEL_95;
      }
    }
  }

  else if (*(&v155 + 1) >= 2uLL && v156 == &gtl::FastTypeId<WallTimer>(void)::d)
  {
LABEL_100:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v151, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/model.h", 184);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v151);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(&v155, &v143, v151);
  if (v153 == 1)
  {
    v8 = v152;
    *v152 = v143;
    v8[1] = 0;
  }

  v152[1] = v7;
  if ((*(this + 16) & 2) != 0)
  {
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
    if (!operations_research::sat::SharedResponseManager::ProblemIsSolved(v9, v10))
    {
      v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v154);
      if ((*(v11 + 284) & 1) == 0)
      {
        v12 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
        operations_research::sat::SatParameters::SatParameters(v151, 0, v12);
        operations_research::sat::SatParameters::CopyFrom(v11, v151);
        *(v11 + 57) = *(v11 + 174);
        *(v11 + 7) |= 0x40u;
        *(v11 + 315) = 0;
        *(v11 + 5) |= 0x400000u;
        operations_research::sat::CpModelProto::CpModelProto(&v143, 0, this);
        v136 = v9;
        v137 = a2;
        if (v150)
        {
          operations_research::sat::CpObjectiveProto::Clear(v150);
        }

        v145 &= ~1u;
        v13 = *(this + 17);
        if (!v13)
        {
          v13 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
        }

        v139 = this;
        if (*(v13 + 4) >= 1)
        {
          v14 = 0;
          v138 = (this + 24);
          do
          {
            v15 = *(v13[3] + v14);
            v16 = v13[6][v14];
            v17 = v147;
            v18 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v146, google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
            v19 = v18;
            v20 = (*v138 + 8 * v15 + 7);
            if ((*v138 & 1) == 0)
            {
              v20 = v138;
            }

            v21 = *v20;
            v22 = *(v21 + 24);
            v23 = v22[*(v21 + 16) - 1];
            v24 = *v22;
            v26 = *(v18 + 16);
            v25 = *(v18 + 20);
            v27 = (v18 + 16);
            if (v26 == v25)
            {
              google::protobuf::RepeatedField<long long>::Grow(v18 + 16, v25, (v25 + 1));
              v26 = *(v19 + 16);
              v25 = *(v19 + 20);
            }

            v28 = v24 - v16;
            v29 = *(v19 + 24);
            v30 = v26 + 1;
            *(v19 + 16) = v26 + 1;
            *(v29 + 8 * v26) = v28;
            if (v26 + 1 == v25)
            {
              google::protobuf::RepeatedField<long long>::Grow(v27, v25, (v25 + 1));
              v30 = *(v19 + 16);
              v29 = *(v19 + 24);
            }

            v31 = v23 - v16;
            *v27 = v30 + 1;
            *(v29 + 8 * v30) = v23 - v16;
            v32 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(v148, google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v33 = v32;
            if (*(v32 + 60) == 12)
            {
              v34 = *(v32 + 48);
            }

            else
            {
              operations_research::sat::ConstraintProto::clear_constraint(v32);
              *(v33 + 60) = 12;
              v35 = *(v33 + 8);
              if (v35)
              {
                v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v35);
              *(v33 + 48) = v34;
            }

            v37 = *(v34 + 4);
            v36 = *(v34 + 5);
            if (v37 == v36)
            {
              google::protobuf::RepeatedField<int>::Grow((v34 + 2), v36, (v36 + 1));
              v37 = *(v34 + 4);
              LODWORD(v36) = *(v34 + 5);
            }

            v38 = v34[3];
            v39 = (v37 + 1);
            *(v34 + 4) = v39;
            *(v38 + 4 * v37) = v17;
            v41 = *(v34 + 10);
            v40 = *(v34 + 11);
            if (v41 == v40)
            {
              google::protobuf::RepeatedField<long long>::Grow((v34 + 5), *(v34 + 11), (v40 + 1));
              v111 = *(v34 + 10);
              v39 = *(v34 + 4);
              v112 = *(v34 + 5);
              v113 = v34[6];
              *(v34 + 10) = v111 + 1;
              *(v113 + 8 * v111) = 1;
              if (v39 != v112)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v42 = v34[6];
              *(v34 + 10) = v41 + 1;
              *(v42 + 8 * v41) = 1;
              if (v39 != v36)
              {
                goto LABEL_32;
              }
            }

            google::protobuf::RepeatedField<int>::Grow((v34 + 2), v39, (v39 + 1));
            LODWORD(v39) = *(v34 + 4);
LABEL_32:
            v43 = v34[3];
            *(v34 + 4) = v39 + 1;
            *(v43 + 4 * v39) = v15;
            v45 = *(v34 + 10);
            v44 = *(v34 + 11);
            if (v45 == v44)
            {
              google::protobuf::RepeatedField<long long>::Grow((v34 + 5), v44, (v44 + 1));
              v45 = *(v34 + 10);
            }

            v46 = *(v34 + 16);
            v47 = v34[6];
            *(v34 + 10) = v45 + 1;
            *(v47 + 8 * v45) = -1;
            v48 = *(v34 + 17);
            if (v46 == v48)
            {
              google::protobuf::RepeatedField<long long>::Grow((v34 + 8), v48, (v48 + 1));
              v46 = *(v34 + 16);
              v48 = *(v34 + 17);
            }

            v49 = -v16;
            v50 = v34[9];
            v51 = v46 + 1;
            *(v34 + 16) = v46 + 1;
            *(v50 + 8 * v46) = v49;
            if (v46 + 1 == v48)
            {
              google::protobuf::RepeatedField<long long>::Grow((v34 + 8), v48, (v48 + 1));
              v51 = *(v34 + 16);
              v50 = v34[9];
            }

            *(v34 + 16) = v51 + 1;
            *(v50 + 8 * v51) = v49;
            v52 = v147;
            v53 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v146, google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
            v54 = v53;
            if (v28 >= 0)
            {
              v55 = v28;
            }

            else
            {
              v55 = -v28;
            }

            if (v31 >= 0)
            {
              v56 = v31;
            }

            else
            {
              v56 = -v31;
            }

            if (v55 <= v56)
            {
              v57 = v56;
            }

            else
            {
              v57 = v55;
            }

            v59 = *(v53 + 16);
            v58 = *(v53 + 20);
            v60 = (v53 + 16);
            if (v59 == v58)
            {
              google::protobuf::RepeatedField<long long>::Grow(v53 + 16, v58, (v58 + 1));
              v61 = v139;
              v114 = *(v54 + 16);
              v58 = *(v54 + 20);
              v62 = *(v54 + 24);
              v63 = v114 + 1;
              *(v54 + 16) = v114 + 1;
              *(v62 + 8 * v114) = 0;
              if (v114 + 1 != v58)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v61 = v139;
              v62 = *(v53 + 24);
              v63 = v59 + 1;
              *(v53 + 16) = v59 + 1;
              *(v62 + 8 * v59) = 0;
              if (v59 + 1 != v58)
              {
                goto LABEL_49;
              }
            }

            google::protobuf::RepeatedField<long long>::Grow(v60, v58, (v58 + 1));
            v63 = *(v54 + 16);
            v62 = *(v54 + 24);
LABEL_49:
            *v60 = v63 + 1;
            *(v62 + 8 * v63) = v57;
            v64 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(v148, google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
            v65 = v64;
            if (*(v64 + 60) != 27)
            {
              operations_research::sat::ConstraintProto::clear_constraint(v64);
              *(v65 + 60) = 27;
              v68 = *(v65 + 8);
              if (v68)
              {
                v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearArgumentProto>(v68);
              v66 = v69;
              *(v65 + 48) = v69;
              *(v69 + 16) |= 1u;
              v67 = *(v69 + 48);
              if (v67)
              {
                goto LABEL_58;
              }

LABEL_55:
              v70 = *(v66 + 8);
              if (v70)
              {
                v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v70);
              v67 = v71;
              *(v66 + 48) = v71;
              goto LABEL_58;
            }

            v66 = *(v64 + 48);
            *(v66 + 16) |= 1u;
            v67 = *(v66 + 48);
            if (!v67)
            {
              goto LABEL_55;
            }

LABEL_58:
            v73 = *(v67 + 16);
            v72 = *(v67 + 20);
            if (v73 == v72)
            {
              google::protobuf::RepeatedField<int>::Grow(v67 + 16, v72, (v72 + 1));
              v73 = *(v67 + 16);
            }

            v74 = *(v67 + 24);
            *(v67 + 16) = v73 + 1;
            *(v74 + 4 * v73) = v52;
            *(v66 + 16) |= 1u;
            v75 = *(v66 + 48);
            if (!v75)
            {
              v76 = *(v66 + 8);
              if (v76)
              {
                v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>(v76);
              v75 = v77;
              *(v66 + 48) = v77;
            }

            v79 = *(v75 + 40);
            v78 = *(v75 + 44);
            if (v79 == v78)
            {
              google::protobuf::RepeatedField<long long>::Grow(v75 + 40, v78, (v78 + 1));
              v79 = *(v75 + 40);
            }

            v80 = *(v75 + 48);
            *(v75 + 40) = v79 + 1;
            *(v80 + 8 * v79) = 1;
            v81 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v66 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            v82 = v81;
            v84 = *(v81 + 16);
            v83 = *(v81 + 20);
            v85 = (v81 + 16);
            if (v84 == v83)
            {
              google::protobuf::RepeatedField<int>::Grow(v81 + 16, v83, (v83 + 1));
              v84 = *v85;
            }

            v86 = *(v82 + 24);
            *(v82 + 16) = v84 + 1;
            *(v86 + 4 * v84) = v17;
            v88 = *(v82 + 40);
            v87 = *(v82 + 44);
            if (v88 == v87)
            {
              google::protobuf::RepeatedField<long long>::Grow(v82 + 40, v87, (v87 + 1));
              v88 = *(v82 + 40);
            }

            v89 = *(v82 + 48);
            *(v82 + 40) = v88 + 1;
            *(v89 + 8 * v88) = 1;
            v90 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v66 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearExpressionProto>);
            v91 = v90;
            v93 = *(v90 + 16);
            v92 = *(v90 + 20);
            v94 = (v90 + 16);
            if (v93 == v92)
            {
              google::protobuf::RepeatedField<int>::Grow(v90 + 16, v92, (v92 + 1));
              v93 = *v94;
            }

            v95 = *(v91 + 24);
            *(v91 + 16) = v93 + 1;
            *(v95 + 4 * v93) = v17;
            v97 = *(v91 + 40);
            v96 = *(v91 + 44);
            if (v97 == v96)
            {
              google::protobuf::RepeatedField<long long>::Grow(v91 + 40, v96, (v96 + 1));
              v97 = *(v91 + 40);
            }

            v98 = *(v91 + 48);
            *(v91 + 40) = v97 + 1;
            *(v98 + 8 * v97) = -1;
            v145 |= 1u;
            v99 = v150;
            if (!v150)
            {
              v100 = v144;
              if (v144)
              {
                v100 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v100);
              v99 = v101;
              v150 = v101;
            }

            v103 = *(v99 + 4);
            v102 = *(v99 + 5);
            if (v103 == v102)
            {
              google::protobuf::RepeatedField<int>::Grow(v99 + 16, v102, (v102 + 1));
              v103 = *(v99 + 4);
            }

            v104 = *(v99 + 3);
            *(v99 + 4) = v103 + 1;
            *(v104 + 4 * v103) = v52;
            v145 |= 1u;
            v105 = v150;
            if (!v150)
            {
              v106 = v144;
              if (v144)
              {
                v106 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
              }

              google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v106);
              v105 = v107;
              v150 = v107;
            }

            v109 = *(v105 + 10);
            v108 = *(v105 + 11);
            if (v109 == v108)
            {
              google::protobuf::RepeatedField<long long>::Grow(v105 + 40, v108, (v108 + 1));
              v109 = *(v105 + 10);
            }

            v110 = *(v105 + 6);
            *(v105 + 10) = v109 + 1;
            *(v110 + 8 * v109) = 1;
            ++v14;
            v13 = *(v61 + 17);
            if (!v13)
            {
              v13 = &operations_research::sat::_PartialVariableAssignment_default_instance_;
            }
          }

          while (v14 < *(v13 + 4));
        }

        v127 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v154);
        operations_research::sat::SharedResponseManager::InitializeObjective(v127, &v143, v128);
        operations_research::sat::ConfigureSearchHeuristics(v154, v130);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v154);
        v162 = 0;
        v163 = 0;
        v164 = 0;
        if (v149)
        {
          if ((v149 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v131 = operations_research::sat::ResetAndSolveIntegerProblem(&v162, v154);
        if (v162)
        {
          v163 = v162;
          operator delete(v162);
        }

        if (v131 == 2)
        {
          v133 = v141;
          v132 = v142;
          v134 = *(v137 + 23);
          if (v134 >= 0)
          {
            v135 = v137;
          }

          else
          {
            v135 = *v137;
          }

          if (v134 < 0)
          {
            v134 = *(v137 + 1);
          }

          v162 = v135;
          v163 = v134;
          v161[0] = " [repaired]";
          v161[1] = 11;
          absl::lts_20240722::StrCat(&v162, v161, &__p);
          operations_research::sat::SharedResponseManager::NewSolution(v136, v133, (v132 - v133) >> 3, &__p, v154);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v141)
          {
            v142 = v141;
            operator delete(v141);
          }
        }

        operations_research::sat::CpModelProto::~CpModelProto(&v143);
        operations_research::sat::SatParameters::~SatParameters(v151);
      }
    }
  }

  operations_research::sat::Model::~Model(v154);
}

void sub_23CAFCCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  operations_research::sat::CpModelProto::~CpModelProto(&a19);
  operations_research::sat::SatParameters::~SatParameters(&a39);
  operations_research::sat::Model::~Model(&STACK[0x4C0]);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::QuickSolveWithHint(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v46[122] = *MEMORY[0x277D85DE8];
  if ((*(v3 + 16) & 2) == 0)
  {
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v4);
  if (operations_research::sat::SharedResponseManager::ProblemIsSolved(v7, v8))
  {
    return;
  }

  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v5);
  if (v9[39].i8[3])
  {
    return;
  }

  v10 = v9;
  operations_research::sat::SatParameters::SatParameters(v38, 0, v9);
  v10[57] = v10[87].i32[0];
  v10[3].i32[1] |= 0x40u;
  v10[31].i32[0] = 6;
  v10[39].i8[3] = 0;
  v10[2] = vorr_s8(v10[2], 0x40000000002000);
  v36 = v10;
  operations_research::sat::SatParameters::SatParameters(v37, 0, v38);
  v43 = v10;
  operations_research::sat::SatParameters::SatParameters(v44, 0, v37);
  __p = v43;
  operations_research::sat::SatParameters::SatParameters(v46, 0, v44);
  v41 = __p;
  operations_research::sat::SatParameters::SatParameters(v42, 0, v46);
  v40 = 1;
  operations_research::sat::SatParameters::~SatParameters(v46);
  operations_research::sat::SatParameters::~SatParameters(v44);
  operations_research::sat::SatParameters::~SatParameters(v37);
  operations_research::sat::ConfigureSearchHeuristics(v5, v11);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v5);
  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>((v6 + 96), &__p);
  v13 = operations_research::sat::ResetAndSolveIntegerProblem(&__p, v5);
  if (__p)
  {
    v46[0] = __p;
    operator delete(__p);
  }

  v35 = v13;
  if (v13 == 2)
  {
    v14 = *&v34.__r_.__value_.__l.__data_;
    v15 = *(v5 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v5;
    }

    else
    {
      v16 = *v5;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v5 + 8);
    }

    __p = v16;
    v46[0] = v15;
    v43 = " [hint]";
    v44[0] = 7;
    absl::lts_20240722::StrCat(&__p, &v43, &v33);
    operations_research::sat::SharedResponseManager::NewSolution(v7, v14, (*(&v14 + 1) - v14) >> 3, &v33, v5);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (*(v6 + 16))
    {
      v23 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(v5) + 16);
      v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v5);
      operations_research::sat::SatSolver::Backtrack(v24, 0);
      v25 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v5);
      InnerObjectiveUpperBound = operations_research::sat::SharedResponseManager::GetInnerObjectiveUpperBound(v7, v26);
      if (InnerObjectiveUpperBound >= 0x8000000000000002)
      {
        v28 = -InnerObjectiveUpperBound;
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((operations_research::sat::IntegerTrail::Enqueue(v25, v23 ^ 1, v28, 0, 0, 0, 0) & 1) == 0)
      {
        v29 = *(v5 + 23);
        if ((v29 & 0x80u) == 0)
        {
          v30 = v5;
        }

        else
        {
          v30 = *v5;
        }

        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v5 + 8);
        }

        __p = v30;
        v46[0] = v29;
        v43 = " [hint]";
        v44[0] = 7;
        absl::lts_20240722::StrCat(&__p, &v43, &v33);
        operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v7, &v33);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (v10[35].i8[4] == 1)
    {
      v39[0] = &unk_284F3F4F0;
      v39[3] = v39;
      operations_research::sat::Model::Add<void>(v5, v39);
      std::function<void ()(operations_research::sat::Model *)>::~function(v39);
    }

    v22 = v34.__r_.__value_.__r.__words[0];
    if (!v34.__r_.__value_.__r.__words[0])
    {
      goto LABEL_42;
    }

    v34.__r_.__value_.__l.__size_ = v34.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v10[35].i8[2] == 1)
    {
      absl::lts_20240722::Mutex::Lock(v7 + 15, v12);
      v18 = v7[23];
      v17 = v7[24];
      absl::lts_20240722::Mutex::Unlock(v7 + 15);
      if (((v17 - v18) & 0x3FFFFFFFC0) == 0)
      {
        v19 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v5);
        if ((operations_research::TimeLimit::LimitReached(v19) & 1) == 0)
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 2081);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "QuickSolveWithHint() didn't find a feasible solution.", 0x35uLL);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, " The model name is '", 0x14uLL);
          v31 = absl::lts_20240722::log_internal::LogMessage::operator<<(&__p, (*(v6 + 120) & 0xFFFFFFFFFFFFFFFCLL));
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "'.", 2uLL);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " Status: ", 9uLL);
          v32 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::ConstraintProto::ConstraintCase,0>(v31, &v35);
          absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v32, ".");
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&__p);
        }
      }
    }

    if (v13 != 1)
    {
      goto LABEL_42;
    }

    v20 = *(v5 + 23);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v5 + 8);
    }

    __p = v21;
    v46[0] = v20;
    v43 = " [hint]";
    v44[0] = 7;
    absl::lts_20240722::StrCat(&__p, &v43, &v34);
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v7, &v34);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    v22 = v34.__r_.__value_.__r.__words[0];
  }

  operator delete(v22);
LABEL_42:
  if (v40 == 1)
  {
    operations_research::sat::SatParameters::CopyFrom(v41, v42);
    v40 = 0;
    operations_research::sat::SatParameters::~SatParameters(v42);
  }

  operations_research::sat::SatParameters::~SatParameters(v38);
}

void sub_23CAFD2F0(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void sub_23CAFD3F4(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters((v3 + 8));
  operations_research::sat::SatParameters::~SatParameters((v2 + 8));
  operations_research::sat::SatParameters::~SatParameters((v1 + 8));
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void sub_23CAFD428(_Unwind_Exception *a1)
{
  operations_research::sat::SatParameters::~SatParameters((v1 + 8));
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x418]);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  if (operations_research::sat::SharedResponseManager::ProblemIsSolved(v5, v6))
  {
    return;
  }

  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  if (*(v7 + 294))
  {
    return;
  }

  v8 = v7;
  v20[0] = this;
  v20[1] = a2;
  v20[2] = v5;
  v20[3] = 0x7FFFFFFFFFFFFFFELL;
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if ((operations_research::sat::SatSolver::ResetToLevelZero(v9) & 1) == 0)
  {

    goto LABEL_45;
  }

  operations_research::sat::ConfigureSearchHeuristics(a2, v10);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(v8 + 312) == 1)
  {
    operations_research::sat::ContinuousProber::ContinuousProber(&__p, this, a2);
    while (1)
    {
      v11 = operations_research::sat::ContinuousProber::Probe(&__p);
      if (v11 != 2)
      {
        break;
      }
    }

    if (v11 == 1)
    {
      operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
    }

    operations_research::sat::ContinuousProber::~ContinuousProber(&__p);
    return;
  }

  if (*(this + 16))
  {
    LODWORD(v17) = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a2) + 16);
    if (v17 == -1)
    {
    }

    if (v8[40])
    {
      operations_research::sat::Model::GetOrCreate<operations_research::sat::LbTreeSearch>(a2);
      operator new();
    }

    if (*(v8 + 315) != 1)
    {
      if (*(v8 + 323) == 1)
      {
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeWorker>(a2);
        operator new();
      }

      if ((*(v8 + 145) & 0x80000000) == 0)
      {
        operator new();
      }

      operator new();
    }

    if (*(v8 + 321) == 1)
    {
      v13 = operations_research::sat::Model::Mutable<operations_research::sat::HittingSetOptimizer>(a2);
      operations_research::sat::HittingSetOptimizer::Optimize(v13);
    }

    v16 = operations_research::sat::Model::Mutable<operations_research::sat::CoreBasedOptimizer>(a2);
    if (operations_research::sat::CoreBasedOptimizer::Optimize(v16) - 1 > 1)
    {
      return;
    }

LABEL_45:
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
    return;
  }

  while (1)
  {
    if (*(v8 + 323) == 1)
    {
      operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeWorker>(a2);
      v25 = 0;
      operator new();
    }

    operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(this + 24, &__p);
    v12 = operations_research::sat::ResetAndSolveIntegerProblem(&__p, a2);
    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }

    if (v12 != 2)
    {
      break;
    }

    if (*(v8 + 284) != 1)
    {
      return;
    }

    v21 = &unk_284F3F4F0;
    v23 = &v21;
    operations_research::sat::ExcludeCurrentSolutionAndBacktrack(void)::{lambda(operations_research::sat::Model *)#1}::operator()(&v22, a2);
    if (v23 == &v21)
    {
      (*(*v23 + 4))(v23);
    }

    else if (v23)
    {
      (*(*v23 + 5))();
    }
  }

  if (v12)
  {
    if (v12 == 1)
    {
      operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
    }
  }

  else
  {
    operations_research::sat::SharedResponseManager::NotifyThatImprovingProblemIsInfeasible(v5, a2);
    v14 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
    v15 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
    operations_research::sat::SatSolver::GetLastIncompatibleDecisions(&__p, v15);
    operations_research::sat::MinimizeCoreWithPropagation(v14, v15, &__p);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    if (__p.__begin_ != __p.__end_)
    {
      operator new();
    }

    operations_research::sat::SharedResponseManager::AddUnsatCore(v5, &v17);
    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
    }
  }
}

void sub_23CAFDB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CAFDBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CAFDBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CAFDBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

operations_research::sat::PresolveContext **std::unique_ptr<operations_research::sat::PresolveContext>::~unique_ptr[abi:ne200100](operations_research::sat::PresolveContext **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::PresolveContext::~PresolveContext(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::SolveWithParameters(operations_research::sat *this, const operations_research::sat::CpModelProto *a2)
{
  v9[126] = *MEMORY[0x277D85DE8];
  v3 = 0;
  v2 = 0;
  v4 = 0;
  v5 = xmmword_23CE306D0;
  v8 = 0;
  v6 = 0;
  v7 = 0;
  operations_research::sat::SatParameters::SatParameters(v9, 0, a2);
  v9[125] = 0;
  operator new();
}

void sub_23CAFDE7C(_Unwind_Exception *a1)
{
  std::function<operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::~function(v1 - 72);
  operations_research::sat::Model::~Model(&STACK[0x3D8]);
  _Unwind_Resume(a1);
}

void sub_23CAFDE98(_Unwind_Exception *a1)
{
  operator delete(v1);
  operations_research::sat::SatParameters::~SatParameters(&STACK[0x428]);
  operations_research::sat::Model::~Model(&STACK[0x3D8]);
  _Unwind_Resume(a1);
}

uint64_t std::function<operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::~function(uint64_t a1)
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

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(void **__p)
{
  v1 = __p;
  if (*(__p + 11))
  {
    if (*(__p + 10))
    {
      v2 = 32 * *(__p + 10);
      v3 = __p + 3;
      do
      {
        if (*(v3 - 1))
        {
          operator delete(*v3);
        }

        v3 += 4;
        v2 -= 32;
      }

      while (v2);
    }

    goto LABEL_12;
  }

  if (!*(__p + 10))
  {
LABEL_12:

    operator delete(v1);
    return;
  }

  v4 = *__p;
  do
  {
    v1 = v1[30];
  }

  while (!*(v1 + 11));
  v5 = *(v1 + 8);
  v6 = *v1;
  v7 = *&v6[8 * v5 + 240];
  if (v7[11])
  {
    goto LABEL_16;
  }

  do
  {
LABEL_18:
    v7 = *(v7 + 30);
  }

  while (!v7[11]);
  v5 = v7[8];
  v6 = *v7;
  v8 = v7[10];
  if (!v7[10])
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = 32 * v8;
  v10 = (v7 + 24);
  do
  {
    if (*(v10 - 1))
    {
      operator delete(*v10);
    }

    v10 += 4;
    v9 -= 32;
  }

  while (v9);
LABEL_24:
  while (1)
  {
    operator delete(v7);
    v11 = v6[10];
    if (v5 >= v11)
    {
      break;
    }

    ++v5;
    v7 = *&v6[8 * v5 + 240];
    if (!v7[11])
    {
      goto LABEL_18;
    }

LABEL_16:
    v8 = v7[10];
    if (v7[10])
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v12 = v6[8];
    v13 = *v6;
    if (v11)
    {
      v14 = 32 * v11;
      v15 = (v6 + 24);
      do
      {
        if (*(v15 - 1))
        {
          operator delete(*v15);
        }

        v15 += 4;
        v14 -= 32;
      }

      while (v14);
    }

    operator delete(v6);
    if (v13 == v4)
    {
      break;
    }

    v11 = v13[10];
    v6 = v13;
    if (v12 < v11)
    {
      v6 = v13;
      v5 = v12 + 1;
      v7 = *&v13[8 * v5 + 240];
      if (v7[11])
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

operations_research::sat::SharedBoundsManager **std::unique_ptr<operations_research::sat::SharedBoundsManager>::~unique_ptr[abi:ne200100](void ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SharedBoundsManager::~SharedBoundsManager(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

uint64_t *std::unique_ptr<operations_research::sat::SharedLPSolutionRepository>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = operations_research::sat::SharedSolutionRepository<double>::~SharedSolutionRepository(v2);
    MEMORY[0x23EED9460](v4, 0x1032C40716D7775);
    return v3;
  }

  return v1;
}

absl::lts_20240722::Mutex **std::unique_ptr<operations_research::sat::SharedIncompleteSolutionManager>::~unique_ptr[abi:ne200100](absl::lts_20240722::Mutex **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::deque<std::vector<operations_research::sat::Literal>>::~deque[abi:ne200100](v1 + 8);
    absl::lts_20240722::Mutex::~Mutex(v1);
    MEMORY[0x23EED9460]();
    return v2;
  }

  return result;
}

void sub_23CAFE49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  operations_research::sat::SatParameters::~SatParameters(va);
  if (*(v14 - 89) < 0)
  {
    operator delete(*(v14 - 112));
  }

  MEMORY[0x23EED9460](v13, 0x10F3C4048C2AEA2);
  _Unwind_Resume(a1);
}

void sub_23CAFE738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFE88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::function<void ()(operations_research::sat::CpModelProto,operations_research::sat::Model *)>::~function(va);
  MEMORY[0x23EED9460](v4, v3);
  _Unwind_Resume(a1);
}

void sub_23CAFE994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFEC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFEE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFF034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFF2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFF52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFF7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFFA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFFCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_23CAFFF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
  }

  MEMORY[0x23EED9460](v11, v10, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3::operator()(void *a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v63 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    v64 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
    v65 = 0;
    do
    {
      *&v71 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::insert_unique<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v63, v5, &std::piecewise_construct, &v71, &v73);
      ++*(v73 + 32 * BYTE8(v73) + 40);
      v5 += 3;
    }

    while (v5 != v4);
    v53 = a3;
    v54 = a4;
    v55 = a2;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v10 = v64;
    v11 = *v63;
    v12 = v64[10];
    if (*v63 != v64 || v12 != 0)
    {
      v14 = 0;
      v15 = "(";
      do
      {
        v16 = &v11[32 * v14];
        v17 = (v16 + 16);
        if (*(v16 + 10) == 1)
        {
          v18 = v61;
          if (v61 >= v62)
          {
            v61 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v60, v17);
          }

          else
          {
            if (v16[39] < 0)
            {
              std::string::__init_copy_ctor_external(v61, *(v16 + 2), *(v16 + 3));
            }

            else
            {
              v19 = *v17;
              v61->__r_.__value_.__r.__words[2] = *(v16 + 4);
              *&v18->__r_.__value_.__l.__data_ = v19;
            }

            v61 = v18 + 1;
          }
        }

        else
        {
          v20 = v16[39];
          if ((v20 & 0x80u) == 0)
          {
            v21 = v17;
          }

          else
          {
            v21 = *v17;
          }

          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v17 + 8);
          }

          *&v73 = v21;
          *(&v73 + 1) = v20;
          *&v71 = v15;
          *(&v71 + 1) = 1;
          v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v17 + 24), v70, v9);
          v68 = v70;
          v69 = v22 - v70;
          v66 = ")";
          v67 = 1;
          absl::lts_20240722::StrCat(&v73, &v71, &v68, &v66, &__p);
          v23 = v61;
          if (v61 >= v62)
          {
            v26 = v15;
            v27 = v60;
            v28 = v61 - v60;
            v29 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v60) >> 3);
            v30 = v29 + 1;
            if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v62 - v60) >> 3) > v30)
            {
              v30 = 0x5555555555555556 * ((v62 - v60) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v62 - v60) >> 3) >= 0x555555555555555)
            {
              v31 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v31 = v30;
            }

            if (v31)
            {
              if (v31 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v32 = (8 * ((v61 - v60) >> 3));
            *v32 = __p;
            memset(&__p, 0, sizeof(__p));
            v25 = (24 * v29 + 24);
            v33 = (24 * v29 - v28);
            memcpy(v32 - v28, v27, v28);
            v60 = v33;
            v61 = v25;
            v62 = 0;
            if (v27)
            {
              operator delete(v27);
              v61 = v25;
              v15 = v26;
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_37;
            }

            v15 = v26;
          }

          else
          {
            v24 = *&__p.__r_.__value_.__l.__data_;
            v61->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
            *&v23->__r_.__value_.__l.__data_ = v24;
            v25 = &v23[1];
          }

          v61 = v25;
        }

LABEL_37:
        if (v11[11])
        {
          if (++v14 == v11[10])
          {
            v34 = v11;
            while (1)
            {
              v35 = *v34;
              if (*(*v34 + 11))
              {
                break;
              }

              v36 = v34[8];
              v34 = *v34;
              if (v36 != v35[10])
              {
                v11 = v35;
                v14 = v36;
                break;
              }
            }
          }
        }

        else
        {
          v37 = &v11[8 * (v14 + 1) + 240];
          do
          {
            v11 = *v37;
            v38 = *(*v37 + 11);
            v37 = *v37 + 240;
          }

          while (!v38);
          v14 = 0;
        }
      }

      while (v11 != v10 || v14 != v12);
    }

    v39 = *a1;
    if (**a1)
    {
      v40 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xAAAAAAAAAAAAAAABLL * ((v55[1] - *v55) >> 3), v72, v9);
      *&v71 = v72;
      *(&v71 + 1) = v40 - v72;
      v68 = v53;
      v69 = v54;
      v41 = &byte_23CE7F131;
      v42 = v55[1] - *v55 != 24;
      if (v55[1] - *v55 != 24)
      {
        v41 = "s";
      }

      v66 = v41;
      v67 = v42;
      absl::lts_20240722::StrCat(&v68, &v66, &v58);
      v43 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      v44 = *&v58.__r_.__value_.__l.__data_;
      absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string *>,void>(&v57, v60, v61, ", ", 2uLL);
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
      v46 = &v58;
      if ((v43 & 0x80u) == 0)
      {
        v47 = v43;
      }

      else
      {
        v47 = *(&v44 + 1);
        v46 = v44;
      }

      v48 = v57.__r_.__value_.__r.__words[0];
      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v57.__r_.__value_.__l.__size_;
      }

      else
      {
        v48 = &v57;
      }

      v73 = v71;
      v74 = " ";
      v75 = 1;
      v76 = v46;
      v77 = v47;
      v78 = ": [";
      v79 = 3;
      v80 = v48;
      v81 = size;
      v82 = "]";
      v83 = 1;
      absl::lts_20240722::strings_internal::CatPieces(&v73, 6, &__p);
      operations_research::SolverLogger::LogInfo(v39, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3622, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_59:
          if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

LABEL_73:
          operator delete(v58.__r_.__value_.__l.__data_);
          v49 = v60;
          if (v60)
          {
            goto LABEL_61;
          }

          goto LABEL_68;
        }
      }

      else if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      operator delete(v57.__r_.__value_.__l.__data_);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_73;
      }
    }

LABEL_60:
    v49 = v60;
    if (v60)
    {
LABEL_61:
      p_data = &v61->__r_.__value_.__l.__data_;
      v51 = v49;
      if (v61 != v49)
      {
        do
        {
          v52 = *(p_data - 1);
          p_data -= 3;
          if (v52 < 0)
          {
            operator delete(*p_data);
          }
        }

        while (p_data != v49);
        v51 = v60;
      }

      v61 = v49;
      operator delete(v51);
    }

LABEL_68:
    if (v65)
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(v63);
    }
  }
}

void sub_23CB0065C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void **a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if (a19 < 0)
    {
LABEL_5:
      operator delete(a14);
      if ((a25 & 0x80000000) == 0)
      {
LABEL_9:
        std::vector<std::string>::~vector[abi:ne200100](&a32);
        absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(&a35);
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a20);
      goto LABEL_9;
    }
  }

  else if (a19 < 0)
  {
    goto LABEL_5;
  }

  if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void operations_research::sat::SharedSolutionRepository<long long>::TableLineStats(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v18[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(a1 + 4, a2);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = *a1;
    v5 = a1[1];
  }

  else
  {
    v6 = a1;
  }

  v18[0] = "'";
  v18[1] = 1;
  v17[0] = v6;
  v17[1] = v5;
  *&v16[0] = "':";
  *(&v16[0] + 1) = 2;
  absl::lts_20240722::StrCat(v18, v17, v16, &v11);
  operations_research::sat::FormatCounter(&v12, a1[5], v7);
  operations_research::sat::FormatCounter(&v13, a1[7], v8);
  operations_research::sat::FormatCounter(&v14, a1[6], v9);
  operations_research::sat::FormatCounter(&__p, a1[8], v10);
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a3, &v11, v16, 5uLL);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    operator delete(v12.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    operator delete(v11.__r_.__value_.__l.__data_);
    goto LABEL_9;
  }

LABEL_12:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  absl::lts_20240722::Mutex::Unlock(a1 + 4);
}