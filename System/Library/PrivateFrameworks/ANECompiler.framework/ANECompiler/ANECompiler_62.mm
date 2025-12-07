std::string *operations_research::sat::LinearPropagator::ConstraintDebugString@<X0>(operations_research::sat::LinearPropagator *this@<X0>, int a2@<W1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v4 = this;
  v38 = *MEMORY[0x277D85DE8];
  *&a4->__r_.__value_.__l.__data_ = 0uLL;
  a4->__r_.__value_.__r.__words[2] = 0;
  v5 = (*(*(this + 21) + 8 * ((*(this + 24) + a2) / 0xAAuLL)) + 24 * ((*(this + 24) + a2) % 0xAAuLL));
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
    v7 = v5[2];
    v26 = *(this + 29) + 8 * v7;
    if (v6 >= 8)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v26 = *(this + 32);
  v7 = v5[2];
  if (v6 < 8)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(this + 26) + 4 * v7;
  do
  {
    v12 = *(v26 + 8 * v8);
    v13 = *(*(*(v4 + 3) + 40) + 8 * *(v11 + 4 * v8)) * v12;
    if (v8 >= v5[3])
    {
      v14 = *(*(*(v4 + 3) + 40) + 8 * *(v11 + 4 * v8)) * v12;
    }

    else
    {
      v14 = 0;
    }

    v36 = " +";
    v37 = 2;
    v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v12, v35, a3);
    v33 = v35;
    v34 = v15 - v35;
    v31 = "*X";
    v32 = 2;
    v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v11 + 4 * v8), v30, v16);
    v28 = v30;
    v29 = v17 - v30;
    absl::lts_20240722::StrAppend(a4, &v36, &v33, &v31, &v28);
    v10 += v14;
    v9 += v13;
    ++v8;
    v4 = this;
  }

  while (v8 < *v5 >> 3);
LABEL_11:
  v18 = *(v5 + 2) + v10;
  v36 = " <= ";
  v37 = 4;
  v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v18, v35, a3);
  v33 = v35;
  v34 = v19 - v35;
  v31 = " slack=";
  v32 = 7;
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v18 - v9, v30, v20);
  v28 = v30;
  v29 = v21 - v30;
  absl::lts_20240722::StrAppend(a4, &v36, &v33, &v31, &v28);
  v36 = " enf=";
  v37 = 5;
  v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*v5 & 3), v35, v22);
  v33 = v35;
  v34 = v23 - v35;
  return absl::lts_20240722::StrAppend(a4, &v36, &v33);
}

void sub_23CC4E75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(a12 + 23) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearPropagator::ReportConflictingCycle(operations_research::sat::LinearPropagator *this, __n128 a2)
{
  *(this + 45) = *(this + 44);
  *(this + 39) = *(this + 38);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  __p.__r_.__value_.__r.__words[2] = &unk_23CE31C20;
  v3 = *(this + 115);
  v174 = *(this + 116);
  if (v3 == v174)
  {
    goto LABEL_87;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *&v176 = v4;
    *(&v176 + 1) = v5;
    v175 = v3;
    v7 = *(this + 24) + *v3;
    v8 = (*(*(this + 21) + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
    v9 = v8[1];
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *(this + 4);
      v11 = *(v10 + 72);
      v12 = *(v11 + (((v9 << 32) + 0x100000000) >> 30));
      v13 = *(v11 + 4 * v9);
      if (v12 != v13)
      {
        v14 = (*(v10 + 96) + 4 * v13);
        v15 = *(this + 45);
        v16 = 4 * (v12 - v13);
        do
        {
          while (1)
          {
            v17 = *v14 ^ 1;
            v18 = *(this + 46);
            if (v15 >= v18)
            {
              break;
            }

            *v15++ = v17;
            *(this + 45) = v15;
            ++v14;
            v16 -= 4;
            if (!v16)
            {
              goto LABEL_22;
            }
          }

          v19 = *(this + 44);
          v20 = v15 - v19;
          v21 = (v15 - v19) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v23 = v18 - v19;
          if (v23 >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (!(v24 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = (v15 - v19) >> 2;
          v26 = (4 * v21);
          v27 = (4 * v21 - 4 * v25);
          *v26 = v17;
          v15 = v26 + 1;
          memcpy(v27, v19, v20);
          *(this + 44) = v27;
          *(this + 45) = v15;
          *(this + 46) = 0;
          if (v19)
          {
            operator delete(v19);
          }

          *(this + 45) = v15;
          ++v14;
          v16 -= 4;
        }

        while (v16);
      }
    }

LABEL_22:
    v28 = *v8;
    if ((*v8 & 4) != 0)
    {
      v30 = *(this + 32);
      v29 = v8[2];
      if (v28 < 8)
      {
        goto LABEL_3;
      }

LABEL_26:
      v31 = 0;
      v6 = 0;
      v32 = *(this + 26) + 4 * v29;
      while (1)
      {
        while (v31 >= v8[3])
        {
          v36 = *(v32 + 4 * v31);
          v6 += *(*(*(this + 3) + 40) + 8 * v36) * *(v30 + 8 * v31);
          v37 = *(v30 + 8 * v31);
          v38 = 0;
          if (v36)
          {
            goto LABEL_31;
          }

LABEL_38:
          _X9 = __p.__r_.__value_.__r.__words[2];
          __asm { PRFM            #4, [X9] }

          v54 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36));
          a2.n128_u64[0] = vdup_n_s8(v54 & 0x7F);
          v55 = ((v54 >> 7) ^ (__p.__r_.__value_.__r.__words[2] >> 12)) & __p.__r_.__value_.__r.__words[0];
          v56 = *(__p.__r_.__value_.__r.__words[2] + v55);
          v57 = vceq_s8(v56, a2.n128_u64[0]);
          if (!v57)
          {
            goto LABEL_41;
          }

          do
          {
LABEL_39:
            v58 = (v55 + (__clz(__rbit64(v57)) >> 3)) & __p.__r_.__value_.__r.__words[0];
            if (v183[8 * v58] == v36)
            {
              v33 = &v183[8 * v58];
              v35 = *(v33 + 2);
              v34 = *(v33 + 3);
              goto LABEL_28;
            }

            v57 &= ((v57 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v57);
LABEL_41:
          while (1)
          {
            v59 = vceq_s8(v56, 0x8080808080808080);
            if (v59)
            {
              break;
            }

            v38 += 8;
            v55 = (v38 + v55) & __p.__r_.__value_.__r.__words[0];
            v56 = *(__p.__r_.__value_.__r.__words[2] + v55);
            v57 = vceq_s8(v56, a2.n128_u64[0]);
            if (v57)
            {
              goto LABEL_39;
            }
          }

          inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&__p, v54, (v55 + (__clz(__rbit64(v59)) >> 3)) & __p.__r_.__value_.__r.__words[0], v38, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::int128>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::int128>>>::GetPolicyFunctions(void)::value);
          v35 = 0;
          v34 = 0;
          v33 = &v183[8 * inserted];
          *v33 = *(v32 + 4 * v31);
          *(v33 + 2) = 0;
          *(v33 + 3) = 0;
LABEL_28:
          *(v33 + 1) = __PAIR128__(v34, v35) + v37;
          if (++v31 >= *v8 >> 3)
          {
            goto LABEL_4;
          }
        }

        v36 = *(v32 + 4 * v31);
        v37 = *(v30 + 8 * v31);
        v38 = 0;
        if ((v36 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_31:
        v39 = v36 & 0xFFFFFFFE;
        _X8 = __p.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X8] }

        v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39));
        a2.n128_u64[0] = vdup_n_s8(v46 & 0x7F);
        v47 = ((v46 >> 7) ^ (__p.__r_.__value_.__r.__words[2] >> 12)) & __p.__r_.__value_.__r.__words[0];
        v48 = *(__p.__r_.__value_.__r.__words[2] + v47);
        v49 = vceq_s8(v48, a2.n128_u64[0]);
        if (!v49)
        {
          goto LABEL_34;
        }

        do
        {
LABEL_32:
          v50 = (v47 + (__clz(__rbit64(v49)) >> 3)) & __p.__r_.__value_.__r.__words[0];
          if (v183[8 * v50] == v39)
          {
            v60 = &v183[8 * v50];
            v62 = *(v60 + 2);
            v61 = *(v60 + 3);
            goto LABEL_46;
          }

          v49 &= ((v49 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v49);
LABEL_34:
        while (1)
        {
          v51 = vceq_s8(v48, 0x8080808080808080);
          if (v51)
          {
            break;
          }

          v38 += 8;
          v47 = (v38 + v47) & __p.__r_.__value_.__r.__words[0];
          v48 = *(__p.__r_.__value_.__r.__words[2] + v47);
          v49 = vceq_s8(v48, a2.n128_u64[0]);
          if (v49)
          {
            goto LABEL_32;
          }
        }

        v63 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&__p, v46, (v47 + (__clz(__rbit64(v51)) >> 3)) & __p.__r_.__value_.__r.__words[0], v38, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::int128>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::int128>>>::GetPolicyFunctions(void)::value);
        v62 = 0;
        v61 = 0;
        v60 = &v183[8 * v63];
        *v60 = v39;
        *(v60 + 2) = 0;
        *(v60 + 3) = 0;
LABEL_46:
        *(v60 + 1) = __PAIR128__(v61, v62) - v37;
        if (++v31 >= *v8 >> 3)
        {
          goto LABEL_4;
        }
      }
    }

    v29 = v8[2];
    v30 = *(this + 29) + 8 * v29;
    if (v28 >= 8)
    {
      goto LABEL_26;
    }

LABEL_3:
    v6 = 0;
LABEL_4:
    v5 = (v176 + *(v8 + 2) + v6) >> 64;
    v4 = v176 + *(v8 + 2) + v6;
    v3 = v175 + 4;
  }

  while (v175 + 4 != v174);
  v177 = (v176 + *(v8 + 2) + v6) >> 64;
  if (__p.__r_.__value_.__l.__size_ >= 2)
  {
    v65 = __p.__r_.__value_.__r.__words[2];
    v66 = v183;
    if (*__p.__r_.__value_.__r.__words[2] <= -2)
    {
      do
      {
        v67 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
        v65 = (v65 + v67);
        v66 += 8 * v67;
      }

      while (*v65 < -1);
    }

    v68 = 0;
    v69 = 0;
    while (1)
    {
      v70 = *v66;
      v72 = *(v66 + 2);
      v71 = *(v66 + 3);
      if (__PAIR128__(v71, v72) < 1)
      {
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v85 = *(this + 3);
        v86 = *(*(v85 + 64) + 4 * (v70 ^ 1));
        v88 = v85 + 40;
        v87 = *(v85 + 40);
        if (v86 >= (*(v88 + 8) - v87) >> 3)
        {
          v89 = (8 * v70) ^ 8;
          v90 = *(v87 + v89);
          if (v90 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v90 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *v181 = v70 ^ 1;
          *&v181[2] = v90;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 304, v181);
          v87 = *(*(this + 3) + 40);
        }

        else
        {
          v89 = (8 * v70) ^ 8;
        }

        v91 = *(v87 + v89);
        v80 = (__PAIR128__(v71, v72) * -v91) >> 64;
        v81 = -(v91 * v72);
      }

      else
      {
        v73 = *(this + 3);
        v74 = *(*(v73 + 64) + 4 * v70);
        v76 = v73 + 40;
        v75 = *(v73 + 40);
        v77 = 8 * v70;
        if (v74 >= (*(v76 + 8) - v75) >> 3)
        {
          v78 = *(v75 + 8 * v70);
          *v181 = *v66;
          *&v181[2] = v78;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 304, v181);
          v75 = *(*(this + 3) + 40);
        }

        v79 = *(v75 + v77);
        v80 = (__PAIR128__(v71, v72) * v79) >> 64;
        v81 = v72 * v79;
      }

      _CF = __CFADD__(v81, v68);
      v68 += v81;
      v69 += _CF + v80;
LABEL_59:
      v83 = *(v65 + 1);
      v65 = (v65 + 1);
      LOBYTE(v82) = v83;
      v66 += 8;
      if (v83 <= -2)
      {
        do
        {
          v84 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
          v65 = (v65 + v84);
          v66 += 8 * v84;
          v82 = *v65;
        }

        while (v82 < -1);
      }

      if (v82 == 255)
      {
        goto LABEL_72;
      }
    }
  }

  v68 = 0;
  v69 = 0;
LABEL_72:
  if (__PAIR128__(v177, v4) >= __PAIR128__(v69, v68))
  {
LABEL_87:
    v113 = 0;
    if (!__p.__r_.__value_.__r.__words[0])
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v92 = *(this + 38);
  v93 = *(this + 39);
  v94 = 126 - 2 * __clz((v93 - v92) >> 4);
  if (v93 == v92)
  {
    v95 = 0;
  }

  else
  {
    v95 = v94;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,false>(v92, v93, v95, 1, a2);
  v97 = __PAIR128__(v69, v68) - __PAIR128__(v177, v4);
  if ((__PAIR128__(v69, v68) - __PAIR128__(v177, v4)) >= 2)
  {
    v98 = *(this + 41);
    *(this + 42) = v98;
    v99 = *(this + 38);
    v100 = *(this + 39);
    if (v99 != v100)
    {
      while (1)
      {
        v101 = 0;
        v102 = *v99 & 0xFFFFFFFE;
        _X10 = __p.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X10] }

        v105 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102));
        v106 = vdup_n_s8(v105 & 0x7F);
        v107 = ((v105 >> 7) ^ (__p.__r_.__value_.__r.__words[2] >> 12)) & __p.__r_.__value_.__r.__words[0];
        v108 = *(__p.__r_.__value_.__r.__words[2] + v107);
        for (i = vceq_s8(v108, v106); !i; i = vceq_s8(v108, v106))
        {
LABEL_81:
          if (vceq_s8(v108, 0x8080808080808080))
          {
            absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v96);
          }

          v101 += 8;
          v107 = (v101 + v107) & __p.__r_.__value_.__r.__words[0];
          v108 = *(__p.__r_.__value_.__r.__words[2] + v107);
        }

        while (1)
        {
          v110 = (v107 + (__clz(__rbit64(i)) >> 3)) & __p.__r_.__value_.__r.__words[0];
          if (v183[8 * v110] == v102)
          {
            break;
          }

          i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!i)
          {
            goto LABEL_81;
          }
        }

        v111 = abs128(*&v183[8 * v110 + 4]);
        if (v111 > 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_133;
        }

        *v181 = v111;
        std::vector<long long>::push_back[abi:ne200100](this + 328, v181);
        v99 += 4;
        if (v99 == v100)
        {
          v112 = *(this + 41);
          v98 = *(this + 42);
          goto LABEL_130;
        }
      }
    }

    v112 = v98;
LABEL_130:
    v164 = 0x7FFFFFFFFFFFFFFFLL;
    if (v97 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v164 = v97;
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(*(this + 3), v164 - 1, v112, (v98 - v112) >> 3, this + 38);
  }

LABEL_133:
  ++*(this + 126);
  if (dword_2810C0A00 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_23, dword_2810C0A00))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v181, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_propagation.cc", 1093);
    v172 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v181, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v172, "Simplified ", 0xBuLL);
    v184 = (*(this + 39) - *(this + 38)) >> 4;
    v173 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v172, &v184);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v173, " slack ", 7uLL);
    v180 = v97;
    absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::int128,0>(v173, &v180);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v181);
  }

  v165 = *(this + 3);
  v166 = *(this + 44);
  v167 = *(this + 45);
  v168 = *(this + 38);
  v169 = *(this + 39);
  v170 = *(v165 + 840);
  *(v170 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v170 + 72), v166, v167, (v167 - v166) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v165, v168, (v169 - v168) >> 4, (v170 + 72));
  v113 = 1;
  if (__p.__r_.__value_.__r.__words[0])
  {
LABEL_88:
    operator delete((__p.__r_.__value_.__r.__words[2] - (__p.__r_.__value_.__s.__data_[8] & 1) - 8));
  }

LABEL_89:
  if ((v113 & 1) == 0)
  {
    if (dword_2810C0A18 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0A10, dword_2810C0A18))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_propagation.cc", 1103);
      v171 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v171, "Cycle", 5uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
    }

    v114 = *(this + 44);
    *(this + 45) = v114;
    v115 = *(this + 38);
    *(this + 39) = v115;
    v116 = *(this + 115);
    v117 = *(this + 116);
    if (v116 == v117)
    {
      v159 = v115;
      v158 = v114;
    }

    else
    {
      v118 = -1;
      v178 = *(this + 116);
      do
      {
        *v181 = *v116;
        v119 = *(this + 24) + v181[0];
        v120 = *(this + 21);
        v121 = v119 / 0xAA;
        v122 = v119 % 0xAA;
        v123 = *(*(v120 + 8 * v121) + 24 * v122 + 4);
        if ((v123 & 0x80000000) == 0)
        {
          v124 = *(this + 4);
          v125 = *(v124 + 72);
          v126 = *(v125 + (((v123 << 32) + 0x100000000) >> 30));
          v127 = *(v125 + 4 * v123);
          if (v126 != v127)
          {
            v128 = (*(v124 + 96) + 4 * v127);
            v129 = *(this + 45);
            v130 = 4 * (v126 - v127);
            do
            {
              v131 = *v128 ^ 1;
              v132 = *(this + 46);
              if (v129 < v132)
              {
                *v129++ = v131;
              }

              else
              {
                v133 = *(this + 44);
                v134 = v129 - v133;
                v135 = (v129 - v133) >> 2;
                v136 = v135 + 1;
                if ((v135 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v137 = v132 - v133;
                if (v137 >> 1 > v136)
                {
                  v136 = v137 >> 1;
                }

                if (v137 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v138 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v138 = v136;
                }

                if (v138)
                {
                  if (!(v138 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v139 = v135;
                v140 = (4 * v135);
                v141 = &v140[-v139];
                *v140 = v131;
                v129 = v140 + 1;
                memcpy(v141, v133, v134);
                *(this + 44) = v141;
                *(this + 45) = v129;
                *(this + 46) = 0;
                if (v133)
                {
                  operator delete(v133);
                }
              }

              *(this + 45) = v129;
              ++v128;
              v130 -= 4;
            }

            while (v130);
            v120 = *(this + 21);
            v142 = *(this + 24) + v181[0];
            v121 = v142 / 0xAA;
            v122 = v142 % 0xAA;
            v117 = v178;
          }
        }

        v143 = (*(v120 + 8 * v121) + 24 * v122);
        v144 = *v143;
        if (v144 >= 8)
        {
          v145 = (*(this + 26) + 4 * v143[2]);
          v146 = 4 * (v144 >> 3);
          do
          {
            v147 = *v145;
            if (*v145 != v118 && (v181[1] ^ v147) != 1)
            {
              v148 = *(this + 3);
              v149 = *(*(v148 + 64) + 4 * v147);
              v151 = v148 + 40;
              v150 = *(v148 + 40);
              if (v149 >= (*(v151 + 8) - v150) >> 3)
              {
                v152 = *(v150 + 8 * v147);
                __p.__r_.__value_.__r.__words[0] = *v145;
                __p.__r_.__value_.__l.__size_ = v152;
                std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 304, &__p);
              }
            }

            ++v145;
            v146 -= 4;
          }

          while (v146);
        }

        v118 = v181[1];
        if (dword_2810C0A30 > 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0A28, dword_2810C0A30))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v180, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_propagation.cc", 1125);
          v153 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v180, 2);
          v154 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v153, &v181[1]);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v154, " [", 2uLL);
          v184 = *(*(*(this + 3) + 40) + 8 * v181[1]);
          v155 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v154, &v184);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v155, ",", 1uLL);
          v179 = -*(*(*(this + 3) + 40) + ((8 * v181[1]) ^ 8));
          v156 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v155, &v179);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v156, "] : ", 4uLL);
          operations_research::sat::LinearPropagator::ConstraintDebugString(this, v181[0], v157, &__p);
          absl::lts_20240722::log_internal::LogMessage::operator<<(v156, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v180);
        }

        ++v116;
      }

      while (v116 != v117);
      v158 = *(this + 44);
      v114 = *(this + 45);
      v159 = *(this + 38);
      v115 = *(this + 39);
    }

    ++*(this + 127);
    v160 = *(this + 3);
    v161 = (v115 - v159) >> 4;
    v162 = *(v160 + 840);
    *(v162 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v162 + 72), v158, v114, (v114 - v158) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v160, v159, v161, (v162 + 72));
  }

  return 0;
}

void sub_23CC4F52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a17);
  v23 = a1;
  if (__p)
  {
    operator delete((a22 - (a21 & 1) - 8));
    v23 = a1;
  }

  _Unwind_Resume(v23);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::int128,0>(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v8[0] = *a2;
  v8[1] = v3;
  absl::lts_20240722::int128::ToString(v8, &__p);
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

  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23CC4F664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::EnforcementPropagator::~EnforcementPropagator(operations_research::sat::EnforcementPropagator *this)
{
  operations_research::sat::EnforcementPropagator::~EnforcementPropagator(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F43B00;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    v5 = *(this + 27);
    v6 = *(this + 26);
    if (v5 != v4)
    {
      v7 = *(this + 27);
      do
      {
        v8 = *(v7 - 32);
        v7 -= 32;
        if (v8)
        {
          operator delete(*(v5 - 24));
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 26);
    }

    *(this + 27) = v4;
    operator delete(v6);
  }

  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    v11 = *(this + 19);
    v12 = *(this + 18);
    if (v11 != v10)
    {
      v13 = v11 - 32;
      do
      {
        v14 = *(v11 - 8);
        v11 -= 32;
        if (v11 == v14)
        {
          (*(*v14 + 32))(v14);
        }

        else if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        v13 -= 32;
      }

      while (v11 != v10);
      v12 = *(this + 18);
    }

    *(this + 19) = v10;
    operator delete(v12);
  }

  v15 = *(this + 15);
  if (v15)
  {
    *(this + 16) = v15;
    operator delete(v15);
  }

  v16 = *(this + 12);
  if (v16)
  {
    *(this + 13) = v16;
    operator delete(v16);
  }

  v17 = *(this + 9);
  if (v17)
  {
    *(this + 10) = v17;
    operator delete(v17);
  }

  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::sat::EnforcementStatus const&,operations_research::sat::EnforcementStatus const&>(unsigned int *a1, unsigned int *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v8, a3);
  v5 = *a1;
  if (v5 <= 3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, off_278BC3DB8[v5], *&asc_23CE4D1F8[8 * v5]);
  }

  v6 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v8);
  v7 = *a2;
  if (v7 <= 3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, off_278BC3DB8[v7], *&asc_23CE4D1F8[8 * v7]);
  }

  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v8);
}

void sub_23CC4F864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::ConstraintPropagationOrder::~ConstraintPropagationOrder(operations_research::sat::ConstraintPropagationOrder *this)
{
  std::deque<int>::~deque[abi:ne200100](this + 208);
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8 == (this + 8))
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }
}

void std::deque<int>::__add_front_capacity(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x400)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = (v5 + 1024);
  v10 = *(v2 - 8);
  a1[2] = (v2 - 8);
  std::__split_buffer<int *>::emplace_front<int *>(a1, &v10);
}

void sub_23CC4FD24(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::deque<int>::resize(unint64_t *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a2 > v3)
  {
    v4 = a2 - v3;

    std::deque<int>::__append(a1, v4);
    return;
  }

  if (a2 >= v3)
  {
    return;
  }

  v5 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 10));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *v8 + 4 * (a1[4] & 0x3FF);
    if (!a2)
    {
LABEL_12:
      v11 = v5 + v3;
      v12 = (v7 + 8 * ((v5 + v3) >> 10));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  v10 = a2 + ((v9 - *v8) >> 2);
  if (v10 >= 1)
  {
    v8 += 8 * (v10 >> 10);
    v9 = *v8 + 4 * (v10 & 0x3FF);
    goto LABEL_12;
  }

  v15 = 1023 - v10;
  v16 = 2046 - v10;
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v8 -= 8 * (v16 >> 10);
  v17 = v15 & 0x3FF;
  v19 = -v15;
  v18 = v19 < 0;
  v20 = v19 & 0x3FF;
  if (v18)
  {
    v21 = v17;
  }

  else
  {
    v21 = -v20;
  }

  v9 = *v8 + 4 * (1023 - v21);
  v11 = v5 + v3;
  v12 = (v7 + 8 * ((v5 + v3) >> 10));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_13:
    v14 = *v12 + 4 * (v11 & 0x3FF);
    if (v14 == v9)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = 0;
  if (!v9)
  {
    return;
  }

LABEL_22:
  v22 = ((v14 - *v12) >> 2) + ((v12 - v8) << 7) - ((v9 - *v8) >> 2);
  if (v22 >= 1)
  {
    v23 = v6 == v7 ? 0 : (v13 << 7) - 1;
    v24 = v3 - v22;
    a1[5] = v24;
    if (v23 - v5 - v24 >= 0x800)
    {
      do
      {
        operator delete(*(v6 - 8));
        v25 = a1[1];
        v6 = a1[2] - 8;
        a1[2] = v6;
        if (v6 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = ((v6 - v25) << 7) - 1;
        }
      }

      while (v26 - (a1[5] + a1[4]) > 0x7FF);
    }
  }
}

void std::deque<int>::__append(unint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    std::deque<int>::__add_back_capacity(a1, v11);
    v7 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v8 = a1[4] + v7;
  }

  v12 = (v4 + 8 * (v8 >> 10));
  if (v5 != v4)
  {
    v13 = (*v12 + 4 * (v8 & 0x3FF));
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = (v4 + 8 * (v8 >> 10));
    if (v13 != v14)
    {
      goto LABEL_21;
    }

    return;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 + ((v14 - *v12) >> 2);
  if (v15 < 1)
  {
    v17 = 1023 - v15;
    v18 = 2046 - v15;
    if (v17 >= 0)
    {
      v18 = v17;
    }

    v16 = &v12[-(v18 >> 10)];
    v19 = v17 & 0x3FF;
    v21 = -v17;
    v20 = v21 < 0;
    v22 = v21 & 0x3FF;
    if (v20)
    {
      v23 = v19;
    }

    else
    {
      v23 = -v22;
    }

    v14 = *v16 + 4 * (1023 - v23);
    if (v13 != v14)
    {
      do
      {
LABEL_21:
        v24 = v14;
        if (v12 != v16)
        {
          v24 = *v12 + 4096;
        }

        if (v13 == v24)
        {
          if (v12 == v16)
          {
            break;
          }
        }

        else
        {
          v25 = ((v24 - v13 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
          bzero(v13, v25);
          v7 += v25 >> 2;
          if (v12 == v16)
          {
            break;
          }
        }

        v26 = v12[1];
        ++v12;
        v13 = v26;
      }

      while (v26 != v14);
      a1[5] = v7;
    }
  }

  else
  {
    v16 = &v12[v15 >> 10];
    v14 = *v16 + 4 * (v15 & 0x3FF);
    if (v13 != v14)
    {
      goto LABEL_21;
    }
  }
}

void std::deque<int>::__add_back_capacity(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (a1[4] = v6 - (v7 << 10); v7; --v7)
    {
      v12 = a1[1];
      v14 = *v12;
      a1[1] = (v12 + 1);
      std::__split_buffer<int *>::emplace_back<int *&>(a1, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= v7 << 10; v7; --v7)
    {
      v13 = a1[1];
      v14 = *v13;
      a1[1] = (v13 + 1);
      std::__split_buffer<int *>::emplace_back<int *&>(a1, &v14);
    }
  }
}

void sub_23CC5076C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>::__emplace_back_slow_path<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 32 * v2;
  __p = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(32 * v2 + 0x18) = 32 * v2;
      (*(*v9 + 24))(v9);
      v8 = v18;
      goto LABEL_16;
    }

    *(32 * v2 + 0x18) = v9;
  }

  else
  {
    v10 = (v8 + 24);
  }

  *v10 = 0;
LABEL_16:
  v18 = v8 + 32;
  std::vector<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v12 = v17;
  while (1)
  {
    v13 = v18;
    if (v18 == v12)
    {
      break;
    }

    v18 -= 32;
    v14 = *(v13 - 8);
    if (v14 == v13 - 32)
    {
      (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      (*(*v14 + 40))(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_23CC50B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
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

uint64_t std::__split_buffer<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>::~__split_buffer(uint64_t a1)
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

void *operations_research::sat::Model::Delete<operations_research::sat::EnforcementPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F43BF0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::EnforcementPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F43BF0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::Model *)::$_0>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const> ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F43C28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::Model *)::$_0>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const> ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = v2[24] + *a2;
  return v2[26] + 4 * *(*(v2[21] + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA) + 8);
}

uint64_t std::__function::__func<operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::Model *)::$_0>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const> ()(int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16LinearPropagatorC1EPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16LinearPropagatorC1EPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16LinearPropagatorC1EPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16LinearPropagatorC1EPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::deque<operations_research::sat::LinearPropagator::ConstraintInfo>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 170;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      do
      {
        v7 -= 8;
      }

      while (v7 != v8);
      *(a1 + 16) = v7;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<operations_research::sat::LinearPropagator::ConstraintInfo>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v10);
}

void sub_23CC51580(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

char *std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__insert_with_size[abi:ne200100]<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v37 = (8 * ((__dst - v9) >> 3));
    v38 = v37;
    if ((a5 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v38 = &v37[8 * a5];
      memcpy(v37, __src, 8 * a5);
    }

    v39 = *(a1 + 8) - v5;
    memcpy(v38, v5, v39);
    v40 = &v38[v39];
    *(a1 + 8) = v5;
    v41 = *a1;
    v42 = &v5[-*a1];
    v43 = &v37[-v42];
    memcpy(&v37[-v42], *a1, v42);
    *a1 = v43;
    *(a1 + 8) = v40;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return v37;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 3;
  if (v14 >= a5)
  {
    v13 = 8 * a5;
    v24 = &__dst[8 * a5];
    v25 = (v8 - 8 * a5);
    if (v25 >= v8)
    {
      v29 = *(a1 + 8);
    }

    else
    {
      v26 = v25 + 1;
      if (v8 > (v25 + 1))
      {
        v26 = *(a1 + 8);
      }

      v27 = v26 + v13 + ~v8;
      v28 = v27 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v29 = *(a1 + 8);
      if (v28)
      {
        goto LABEL_68;
      }

      v30 = (v27 >> 3) + 1;
      v31 = 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
      v25 = (v25 + v31);
      v29 = (v8 + v31);
      v32 = (v8 + 16);
      v33 = (v8 + 16 - v13);
      v34 = v30 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *v33;
        *(v32 - 1) = *(v33 - 1);
        *v32 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      if (v30 != (v30 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_68:
        do
        {
          v36 = *v25++;
          *v29++ = v36;
        }

        while (v25 < v8);
      }
    }

    *(a1 + 8) = v29;
    if (v8 != v24)
    {
      v45 = v8 - v24;
      v46 = (v8 - v45);
      v47 = __src;
      v48 = a5;
      memmove(v46, __dst, v45);
      a5 = v48;
      __src = v47;
    }

    if ((a5 & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      return v5;
    }

    goto LABEL_63;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v17 = *(a1 + 8);
  }

  else
  {
    v16 = &__dst[a4] - __src - v8 - 8;
    if (v16 < 0x18)
    {
      v17 = *(a1 + 8);
    }

    else
    {
      v17 = *(a1 + 8);
      if ((__dst - __src) >= 0x20)
      {
        v18 = (v16 >> 3) + 1;
        v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
        v15 += v19;
        v17 = v8 + v19;
        v20 = (v8 + 16);
        v21 = &__src[v8 + 16 - __dst];
        v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v23 = *v21;
          *(v20 - 1) = *(v21 - 1);
          *v20 = v23;
          v20 += 2;
          v21 += 32;
          v22 -= 4;
        }

        while (v22);
        if (v18 == (v18 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_46;
        }
      }
    }

    do
    {
      v49 = *v15;
      v15 += 8;
      *v17 = v49;
      v17 += 8;
    }

    while (v15 != a4);
  }

LABEL_46:
  *(a1 + 8) = v17;
  if (v14 < 1)
  {
    return v5;
  }

  v50 = a5;
  v51 = &__dst[8 * a5];
  v52 = (v17 - 8 * a5);
  if (v52 >= v8)
  {
    v56 = v17;
  }

  else
  {
    v53 = v52 + 1;
    if (v8 > (v52 + 1))
    {
      v53 = v8;
    }

    v54 = &v53[v50] + ~v17;
    v55 = v54 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
    v56 = v17;
    if (v55)
    {
      goto LABEL_69;
    }

    v57 = (v54 >> 3) + 1;
    v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
    v52 = (v52 + v58);
    v56 = (v17 + v58);
    v59 = (v17 + 16);
    v60 = (v17 + 16 - v50 * 8);
    v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v62 = *v60;
      *(v59 - 1) = *(v60 - 1);
      *v59 = v62;
      v59 += 2;
      v60 += 2;
      v61 -= 4;
    }

    while (v61);
    if (v57 != (v57 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_69:
      do
      {
        v63 = *v52++;
        *v56++ = v63;
      }

      while (v52 < v8);
    }
  }

  *(a1 + 8) = v56;
  if (v17 != v51)
  {
    v64 = __src;
    memmove(v51, __dst, v17 - v51);
    __src = v64;
  }

  if (v8 == v5)
  {
    return v5;
  }

LABEL_63:
  memmove(v5, __src, v13);
  return v5;
}

__n128 std::__function::__func<operations_research::sat::LinearPropagator::AddConstraint(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinearPropagator::AddConstraint(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F43CB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void std::__function::__func<operations_research::sat::LinearPropagator::AddConstraint(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinearPropagator::AddConstraint(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::operator()(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 192) + *(a1 + 16);
  v6 = *(*(v4 + 168) + 8 * (v5 / 0xAA));
  v7 = *a3;
  *(v6 + 24 * (v5 % 0xAA)) = *(v6 + 24 * (v5 % 0xAA)) & 0xFFFFFFFC | *a3 & 3;
  if ((v7 & 0xFFFFFFFE) != 2)
  {
    return;
  }

  v9 = *(a1 + 16);
  v10 = v9 >> 6;
  v11 = *(v4 + 384);
  v12 = *(v11 + 8 * v10);
  if (((1 << v9) & v12) != 0)
  {
    operations_research::sat::GenericLiteralWatcher::CallOnNextPropagate(*(v4 + 40), *(v4 + 96));
    if (v7 != 3)
    {
      return;
    }

    goto LABEL_11;
  }

  v13 = *(v4 + 424);
  v14 = *(v4 + 416);
  *(v11 + 8 * v10) = (1 << v9) | v12;
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = ((v13 - v14) << 7) - 1;
  }

  v16 = *(v4 + 448);
  v17 = v16 + *(v4 + 440);
  if (v15 == v17)
  {
    std::deque<int>::__add_back_capacity((v4 + 408));
    v14 = *(v4 + 416);
    v16 = *(v4 + 448);
    v17 = *(v4 + 440) + v16;
  }

  *(*(v14 + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF)) = v9;
  *(v4 + 448) = v16 + 1;
  operations_research::sat::GenericLiteralWatcher::CallOnNextPropagate(*(v4 + 40), *(v4 + 96));
  if (v7 == 3)
  {
LABEL_11:
    v18 = *(v4 + 192) + *(a1 + 16);
    v19 = *(*(v4 + 168) + 8 * (v18 / 0xAA)) + 24 * (v18 % 0xAA);
    if ((*v19 & 0xFFFFFFFC) == 0x14 && *(v19 + 12) == 2)
    {
      v21 = *(v19 + 16);
      v22 = (*(v4 + 208) + 4 * *(v19 + 8));
      v23 = *(v4 + 72);
      if ((v3 & 0x80000000) != 0)
      {
        v28 = 0;
        v29 = 0;
      }

      else
      {
        v24 = *(v4 + 32);
        v25 = *(v24 + 72);
        v26 = *(v25 + (((v3 << 32) + 0x100000000) >> 30));
        v27 = *(v25 + 4 * v3);
        v28 = (*(v24 + 96) + 4 * v27);
        v29 = v26 - v27;
      }

      v30 = *v22;
      v31 = v22[1];

      operations_research::sat::PrecedenceRelations::PushConditionalRelation(v23, v28, v29, v30, v31, v21);
    }
  }
}

uint64_t std::__function::__func<operations_research::sat::LinearPropagator::AddConstraint(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinearPropagator::AddConstraint(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16LinearPropagator13AddConstraintEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEEEESF_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16LinearPropagator13AddConstraintEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEEEESF_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16LinearPropagator13AddConstraintEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEEEESF_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16LinearPropagator13AddConstraintEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEEEESF_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::LinearPropagator::PropagateOneConstraint(int)::$_0,std::allocator<operations_research::sat::LinearPropagator::PropagateOneConstraint(int)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F43D48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::LinearPropagator::PropagateOneConstraint(int)::$_0,std::allocator<operations_research::sat::LinearPropagator::PropagateOneConstraint(int)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::operator()(uint64_t a1, uint64_t *a2, int *a3, void **a4, std::vector<int> **a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a4;
  v9 = *a5;
  v10 = *(a1 + 8);
  (*a4)[1] = **a4;
  v9->__end_ = v9->__begin_;
  v11 = *(a1 + 20);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v10[4];
    v13 = *(v12 + 72);
    v14 = *(v13 + (((v11 << 32) + 0x100000000) >> 30));
    v15 = *(v13 + 4 * v11);
    if (v14 != v15)
    {
      v16 = (*(v12 + 96) + 4 * v15);
      v17 = 4 * (v14 - v15);
      do
      {
        v18 = *v16++;
        v28 = v18 ^ 1;
        std::vector<int>::push_back[abi:ne200100](v8, &v28);
        v17 -= 4;
      }

      while (v17);
    }
  }

  v10[42] = v10[41];
  v19 = *(a1 + 16);
  if ((v19 & 4) != 0)
  {
    v21 = v10[32];
    v20 = *(a1 + 24);
    if (v19 < 8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *(a1 + 24);
    v21 = (v10[29] + 8 * v20);
    if (v19 < 8)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = v10[26] + 4 * v20;
  v25 = v6 & 0xFFFFFFFE;
  do
  {
    v26 = *(v24 + 4 * v23);
    if (v25 != (v26 & 0xFFFFFFFE))
    {
      TrailIndexOfVarBefore = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(v10[3], v26, v7);
      if ((TrailIndexOfVarBefore & 0x80000000) == 0)
      {
        std::vector<int>::push_back[abi:ne200100](v9, &TrailIndexOfVarBefore);
        if (*(a1 + 40) >= 1)
        {
          std::vector<long long>::push_back[abi:ne200100]((v10 + 41), v21);
        }
      }

      v19 = *(a1 + 16);
    }

    ++v23;
    ++v21;
  }

  while (v23 < v19 >> 3);
LABEL_9:
  v22 = *(a1 + 40);
  if (v22 > 0)
  {
    operations_research::sat::IntegerTrail::RelaxLinearReason(v10[3], v22, v10[41], (v10[42] - v10[41]) >> 3, v9);
  }
}

uint64_t std::__function::__func<operations_research::sat::LinearPropagator::PropagateOneConstraint(int)::$_0,std::allocator<operations_research::sat::LinearPropagator::PropagateOneConstraint(int)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16LinearPropagator22PropagateOneConstraintEiE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16LinearPropagator22PropagateOneConstraintEiE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16LinearPropagator22PropagateOneConstraintEiE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16LinearPropagator22PropagateOneConstraintEiE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::int128>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::int128>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,true,false,16ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::TransferRelocatable<32ul>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,false>(unint64_t result, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = result;
  while (1)
  {
    result = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v52 = (v12 + 16);
        v53 = *(v12 + 16);
        v55 = a2[-1].n128_u32[0];
        v50 = a2 - 1;
        v54 = v55;
        if (v53 < *v12)
        {
          if (v54 >= v53)
          {
            v138 = *v12;
            *v12 = *v52;
            *v52 = v138;
            if (v50->n128_u32[0] >= *(v12 + 16))
            {
              return;
            }

            v129 = *v52;
            *v52 = *v50;
LABEL_109:
            *v50 = v129;
            return;
          }

LABEL_108:
          v129 = *v12;
          *v12 = *v50;
          goto LABEL_109;
        }

        if (v54 >= v53)
        {
          return;
        }

        v134 = *v52;
        *v52 = *v50;
        *v50 = v134;
LABEL_190:
        if (*(v12 + 16) < *v12)
        {
          v142 = *v12;
          *v12 = *v52;
          *v52 = v142;
        }

        return;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), a2[-1].n128_u64, a5);
          return;
        }

        goto LABEL_9;
      }

      v52 = (v12 + 16);
      v56 = *(v12 + 16);
      v57 = (v12 + 32);
      v58 = *(v12 + 32);
      if (v56 >= *v12)
      {
        if (v58 < v56)
        {
          v135 = *v52;
          *v52 = *v57;
          *v57 = v135;
          if (*(v12 + 16) < *v12)
          {
            v136 = *v12;
            *v12 = *v52;
            *v52 = v136;
          }
        }

        goto LABEL_187;
      }

      if (v58 >= v56)
      {
        v139 = *v12;
        *v12 = *v52;
        *v52 = v139;
        if (*(v12 + 32) >= *(v12 + 16))
        {
          goto LABEL_187;
        }

        v130 = *v52;
        *v52 = *v57;
      }

      else
      {
        v130 = *v12;
        *v12 = *v57;
      }

      *v57 = v130;
LABEL_187:
      if (v9->n128_u32[0] >= v57->n128_u32[0])
      {
        return;
      }

      v140 = *v57;
      *v57 = *v9;
      *v9 = v140;
      if (v57->n128_u32[0] >= v52->n128_u32[0])
      {
        return;
      }

      v141 = *v52;
      *v52 = *v57;
      *v57 = v141;
      goto LABEL_190;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v51 = a2[-1].n128_i32[0];
      v50 = a2 - 1;
      if (v51 >= *v12)
      {
        return;
      }

      goto LABEL_108;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v59 = (v12 + 16);
      v61 = v12 == a2 || v59 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v61)
        {
          do
          {
            v97 = v59;
            v98 = *(result + 16);
            if (v98 < *result)
            {
              v145 = *(result + 28);
              v137 = *(result + 20);
              do
              {
                *v59 = v59[-1];
                v99 = v59[-2].n128_i32[0];
                --v59;
              }

              while (v98 < v99);
              v59->n128_u32[0] = v98;
              v59->n128_u32[3] = v145;
              *(v59->n128_u64 + 4) = v137;
            }

            v59 = (v97 + 16);
            result = v97;
          }

          while ((v97 + 16) != a2);
        }

        return;
      }

      if (v61)
      {
        return;
      }

      v62 = 0;
      v63 = v12;
      while (1)
      {
        v65 = v59;
        v66 = *(v63 + 16);
        if (v66 < *v63)
        {
          v143 = *(v63 + 28);
          v131 = *(v63 + 20);
          v67 = v62;
          do
          {
            *(v12 + v67 + 16) = *(v12 + v67);
            if (!v67)
            {
              v64 = v12;
              goto LABEL_123;
            }

            v68 = *(v12 + v67 - 16);
            v67 -= 16;
          }

          while (v66 < v68);
          v64 = v12 + v67 + 16;
LABEL_123:
          *v64 = v66;
          *(v64 + 12) = v143;
          *(v64 + 4) = v131;
        }

        v59 = v65 + 1;
        v62 += 16;
        v63 = v65;
        if (&v65[1] == a2)
        {
          return;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v14 = v12 + 16 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u32[0];
    if (v13 < 0x81)
    {
      v18 = *v12;
      if (*v12 < *v14)
      {
        if (v16 >= v18)
        {
          v116 = *v14;
          *v14 = *v12;
          a5 = v116;
          *v12 = v116;
          if (v9->n128_u32[0] >= *v12)
          {
            goto LABEL_37;
          }

          v107 = *v12;
          *v12 = *v9;
        }

        else
        {
          v107 = *v14;
          *v14 = *v9;
        }

        a5 = v107;
        *v9 = v107;
LABEL_37:
        --a3;
        v19 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v110 = *v12;
      *v12 = *v9;
      a5 = v110;
      *v9 = v110;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      v111 = *v14;
      *v14 = *v12;
      a5 = v111;
      *v12 = v111;
      --a3;
      v19 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 16) < v19)
      {
        goto LABEL_62;
      }

      v104 = *(v12 + 12);
      v101 = *(v12 + 4);
      if (v19 >= v9->n128_u32[0])
      {
        v44 = v12 + 16;
        do
        {
          v12 = v44;
          if (v44 >= a2)
          {
            break;
          }

          v44 += 16;
        }

        while (v19 >= *v12);
      }

      else
      {
        do
        {
          v43 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v43);
      }

      v45 = a2;
      if (v12 < a2)
      {
        v45 = a2;
        do
        {
          v46 = v45[-1].n128_i32[0];
          --v45;
        }

        while (v19 < v46);
      }

      while (v12 < v45)
      {
        v128 = *v12;
        *v12 = *v45;
        a5 = v128;
        *v45 = v128;
        do
        {
          v47 = *(v12 + 16);
          v12 += 16;
        }

        while (v19 >= v47);
        do
        {
          v48 = v45[-1].n128_i32[0];
          --v45;
        }

        while (v19 < v48);
      }

      v49 = (v12 - 16);
      if (v12 - 16 != result)
      {
        a5 = *v49;
        *result = *v49;
      }

      a4 = 0;
      *(v12 - 16) = v19;
      *(v12 - 4) = v104;
      *(v12 - 12) = v101;
    }

    else
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v108 = *v14;
          *v14 = *v9;
          *v9 = v108;
          if (*v14 < *v12)
          {
            v109 = *v12;
            *v12 = *v14;
            *v14 = v109;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v112 = *v12;
          *v12 = *v14;
          *v14 = v112;
          if (v9->n128_u32[0] >= *v14)
          {
            goto LABEL_28;
          }

          v106 = *v14;
          *v14 = *v9;
        }

        else
        {
          v106 = *v12;
          *v12 = *v9;
        }

        *v9 = v106;
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
          v114 = *v21;
          *v21 = *v10;
          *v10 = v114;
          if (v21->n128_u32[0] < v20->n128_u32[0])
          {
            v115 = *v20;
            *v20 = *v21;
            *v21 = v115;
          }
        }
      }

      else
      {
        if (v23 >= v22)
        {
          v117 = *v20;
          *v20 = *v21;
          *v21 = v117;
          if (v10->n128_u32[0] >= v21->n128_u32[0])
          {
            goto LABEL_42;
          }

          v113 = *v21;
          *v21 = *v10;
        }

        else
        {
          v113 = *v20;
          *v20 = *v10;
        }

        *v10 = v113;
      }

LABEL_42:
      v24 = (v12 + 32);
      v27 = *(v14 + 16);
      v25 = (v14 + 16);
      v26 = v27;
      v28 = v11->n128_u32[0];
      if (v27 >= *(v12 + 32))
      {
        if (v28 < v26)
        {
          v119 = *v25;
          *v25 = *v11;
          *v11 = v119;
          if (v25->n128_u32[0] < v24->n128_u32[0])
          {
            v120 = *v24;
            *v24 = *v25;
            *v25 = v120;
          }
        }
      }

      else
      {
        if (v28 >= v26)
        {
          v121 = *v24;
          *v24 = *v25;
          *v25 = v121;
          if (v11->n128_u32[0] >= v25->n128_u32[0])
          {
            goto LABEL_51;
          }

          v118 = *v25;
          *v25 = *v11;
        }

        else
        {
          v118 = *v24;
          *v24 = *v11;
        }

        *v11 = v118;
      }

LABEL_51:
      v29 = *v15;
      v30 = v25->n128_u32[0];
      if (*v15 >= v21->n128_u32[0])
      {
        if (v30 < v29)
        {
          v123 = *v15;
          *v15 = *v25;
          *v25 = v123;
          if (*v15 < v21->n128_u32[0])
          {
            v124 = *v21;
            *v21 = *v15;
            *v15 = v124;
          }
        }
      }

      else
      {
        if (v30 >= v29)
        {
          v125 = *v21;
          *v21 = *v15;
          *v15 = v125;
          if (v25->n128_u32[0] >= *v15)
          {
            goto LABEL_60;
          }

          v122 = *v15;
          *v15 = *v25;
        }

        else
        {
          v122 = *v21;
          *v21 = *v25;
        }

        *v25 = v122;
      }

LABEL_60:
      v126 = *v12;
      *v12 = *v15;
      a5 = v126;
      *v15 = v126;
      --a3;
      v19 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v31 = 0;
      v103 = *(v12 + 12);
      v100 = *(v12 + 4);
      do
      {
        v32 = *(v12 + v31 + 16);
        v31 += 16;
      }

      while (v32 < v19);
      v33 = v12 + v31;
      v34 = a2;
      if (v31 == 16)
      {
        v34 = a2;
        do
        {
          if (v33 >= v34)
          {
            break;
          }

          v36 = v34[-1].n128_i32[0];
          --v34;
        }

        while (v36 >= v19);
      }

      else
      {
        do
        {
          v35 = v34[-1].n128_i32[0];
          --v34;
        }

        while (v35 >= v19);
      }

      v12 += v31;
      if (v33 < v34)
      {
        v37 = v34;
        do
        {
          v127 = *v12;
          *v12 = *v37;
          a5 = v127;
          *v37 = v127;
          do
          {
            v38 = *(v12 + 16);
            v12 += 16;
          }

          while (v38 < v19);
          do
          {
            v39 = v37[-1].n128_i32[0];
            --v37;
          }

          while (v39 >= v19);
        }

        while (v12 < v37);
      }

      v40 = (v12 - 16);
      if (v12 - 16 != result)
      {
        a5 = *v40;
        *result = *v40;
      }

      *(v12 - 16) = v19;
      *(v12 - 4) = v103;
      *(v12 - 12) = v100;
      if (v33 < v34)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,false>(result, (v12 - 16), a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *>(result, v12 - 16, a5);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *>(v12, a2, v42))
        {
          a2 = (v12 - 16);
          if (v41)
          {
            return;
          }

          goto LABEL_1;
        }

        if ((v41 & 1) == 0)
        {
          goto LABEL_81;
        }
      }
    }
  }

  if (v12 == a2)
  {
    return;
  }

  v69 = (v13 - 2) >> 1;
  v70 = v69;
  while (2)
  {
    v72 = 16 * v70;
    if (v69 >= (16 * v70) >> 4)
    {
      v73 = (v72 >> 3) | 1;
      v74 = v12 + 16 * v73;
      if ((v72 >> 3) + 2 >= v13)
      {
        v77 = v12 + v72;
        v78 = *v77;
        if (*v74 >= *v77)
        {
LABEL_143:
          v144 = *(v77 + 12);
          v132 = *(v77 + 4);
          while (1)
          {
            v81 = v77;
            v77 = v74;
            *v81 = *v74;
            if (v69 < v73)
            {
              break;
            }

            v82 = (2 * v73) | 1;
            v74 = v12 + 16 * v82;
            v73 = 2 * v73 + 2;
            if (v73 < v13)
            {
              v79 = *v74;
              v80 = *(v74 + 16);
              if (*v74 <= v80)
              {
                v79 = *(v74 + 16);
              }

              if (*v74 >= v80)
              {
                v73 = v82;
              }

              else
              {
                v74 += 16;
              }

              if (v79 < v78)
              {
                break;
              }
            }

            else
            {
              v73 = v82;
              if (*v74 < v78)
              {
                break;
              }
            }
          }

          *v77 = v78;
          *(v77 + 12) = v144;
          *(v77 + 4) = v132;
        }
      }

      else
      {
        v75 = *v74;
        v76 = *(v74 + 16);
        if (*v74 <= v76)
        {
          v75 = *(v74 + 16);
        }

        if (*v74 < v76)
        {
          v74 += 16;
          v73 = (v72 >> 3) + 2;
        }

        v77 = v12 + v72;
        v78 = *v77;
        if (v75 >= *v77)
        {
          goto LABEL_143;
        }
      }
    }

    v71 = v70-- <= 0;
    if (!v71)
    {
      continue;
    }

    break;
  }

  do
  {
    v83 = 0;
    v133 = *v12;
    v84 = (v13 - 2) >> 1;
    n128_u64 = v12;
    do
    {
      while (1)
      {
        v89 = &n128_u64[v83];
        v88 = v89 + 1;
        v90 = (2 * v83) | 1;
        v83 = 2 * v83 + 2;
        if (v83 < v13)
        {
          break;
        }

        v83 = v90;
        *n128_u64 = *v88;
        n128_u64 = v89[1].n128_u64;
        if (v90 > v84)
        {
          goto LABEL_163;
        }
      }

      v87 = v89[2].n128_i32[0];
      v86 = v89 + 2;
      if (v86[-1].n128_u32[0] >= v87)
      {
        v83 = v90;
      }

      else
      {
        v88 = v86;
      }

      *n128_u64 = *v88;
      n128_u64 = v88;
    }

    while (v83 <= v84);
LABEL_163:
    if (v88 == --a2)
    {
      *v88 = v133;
    }

    else
    {
      *v88 = *a2;
      *a2 = v133;
      v91 = (&v88[1] - v12) >> 4;
      v71 = v91 < 2;
      v92 = v91 - 2;
      if (!v71)
      {
        v93 = v92 >> 1;
        v94 = (v12 + 16 * v93);
        v95 = v88->n128_u32[0];
        if (v94->n128_u32[0] < v88->n128_u32[0])
        {
          v105 = v88->n128_i32[3];
          v102 = *(v88->n128_u64 + 4);
          do
          {
            v96 = v88;
            v88 = v94;
            *v96 = *v94;
            if (!v93)
            {
              break;
            }

            v93 = (v93 - 1) >> 1;
            v94 = (v12 + 16 * v93);
          }

          while (v94->n128_u32[0] < v95);
          v88->n128_u32[0] = v95;
          v88->n128_u32[3] = v105;
          *(v88->n128_u64 + 4) = v102;
        }
      }
    }

    v71 = v13-- <= 2;
  }

  while (!v71);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(__n128 *a1, __n128 *a2, int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = (a1 + 16);
      v9 = *(a1 + 16);
      v11 = *(a2 - 16);
      v6 = (a2 - 16);
      v10 = v11;
      if (v9 < *a1)
      {
        if (v10 >= v9)
        {
          v30 = *a1;
          *a1 = *v8;
          *v8 = v30;
          if (v6->n128_u32[0] >= *(a1 + 16))
          {
            goto LABEL_3;
          }

          v12 = *v8;
          *v8 = *v6;
LABEL_15:
          *v6 = v12;
          v4 = 1;
          return v4 & 1;
        }

LABEL_14:
        v12 = *a1;
        *a1 = *v6;
        goto LABEL_15;
      }

      if (v10 >= v9)
      {
        goto LABEL_3;
      }

      v25 = *v8;
      *v8 = *v6;
      *v6 = v25;
      if (*(a1 + 16) >= *a1)
      {
        goto LABEL_3;
      }

LABEL_53:
      v43 = *a1;
      *a1 = *v8;
      *v8 = v43;
      goto LABEL_3;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16), a3);
        v4 = 1;
        return v4 & 1;
      }

      goto LABEL_16;
    }

    v8 = (a1 + 16);
    v19 = *(a1 + 16);
    v20 = (a1 + 32);
    v21 = *(a1 + 32);
    v22 = (a2 - 16);
    v23 = *a1;
    if (v19 >= *a1)
    {
      if (v21 < v19)
      {
        v28 = *v8;
        *v8 = *v20;
        *v20 = v28;
        if (v8->n128_u32[0] < v23)
        {
          v29 = *a1;
          *a1 = *v8;
          *v8 = v29;
        }
      }
    }

    else
    {
      if (v21 < v19)
      {
        v24 = *a1;
        *a1 = *v20;
LABEL_49:
        *v20 = v24;
        goto LABEL_50;
      }

      v40 = *a1;
      *a1 = *v8;
      *v8 = v40;
      if (v21 < *(a1 + 16))
      {
        v24 = *v8;
        *v8 = *v20;
        goto LABEL_49;
      }
    }

LABEL_50:
    if (v22->n128_u32[0] >= v20->n128_u32[0])
    {
      goto LABEL_3;
    }

    v41 = *v20;
    *v20 = *v22;
    *v22 = v41;
    if (v20->n128_u32[0] >= v8->n128_u32[0])
    {
      goto LABEL_3;
    }

    v42 = *v8;
    *v8 = *v20;
    *v20 = v42;
    if (*(a1 + 16) >= *a1)
    {
      goto LABEL_3;
    }

    goto LABEL_53;
  }

  if (v3 < 2)
  {
LABEL_3:
    v4 = 1;
    return v4 & 1;
  }

  if (v3 == 2)
  {
    v7 = *(a2 - 16);
    v6 = (a2 - 16);
    if (v7 >= *a1)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

LABEL_16:
  v13 = (a1 + 32);
  v14 = *(a1 + 32);
  v15 = (a1 + 16);
  v16 = *(a1 + 16);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v26 = *v15;
      *v15 = *v13;
      *v13 = v26;
      if (v15->n128_u32[0] < v17)
      {
        v27 = *a1;
        *a1 = *v15;
        *v15 = v27;
      }
    }

    goto LABEL_36;
  }

  if (v14 < v16)
  {
    v18 = *a1;
    *a1 = *v13;
LABEL_35:
    *v13 = v18;
    goto LABEL_36;
  }

  v31 = *a1;
  *a1 = *v15;
  *v15 = v31;
  if (v14 < *(a1 + 16))
  {
    v18 = *v15;
    *v15 = *v13;
    goto LABEL_35;
  }

LABEL_36:
  v32 = a1 + 48;
  if (a1 + 48 == a2)
  {
LABEL_46:
    v39 = 1;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v36 = *v32;
      if (*v32 < v13->n128_u32[0])
      {
        v44 = *(v32 + 4);
        v45 = *(v32 + 12);
        v37 = v33;
        do
        {
          *(a1 + v37 + 48) = *(a1 + v37 + 32);
          if (v37 == -32)
          {
            v35 = a1;
            goto LABEL_39;
          }

          v38 = *(a1 + v37 + 16);
          v37 -= 16;
        }

        while (v36 < v38);
        v35 = a1 + v37 + 48;
LABEL_39:
        *v35 = v36;
        *(v35 + 4) = v44;
        *(v35 + 12) = v45;
        if (++v34 == 8)
        {
          break;
        }
      }

      v13 = v32;
      v33 += 16;
      v32 += 16;
      if (v32 == a2)
      {
        goto LABEL_46;
      }
    }

    v39 = 0;
    LOBYTE(v32) = v32 + 16 == a2;
  }

  v4 = v39 | v32;
  return v4 & 1;
}

void operations_research::sat::AppendRelaxationForEqualityEncoding(int a1, void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v5 = a2[3];
  if (v5 > 1)
  {
    v7 = 0;
    _X9 = a2[5];
    __asm { PRFM            #4, [X9] }

    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v15 = (v14 >> 7) ^ (_X9 >> 12);
    v16 = vdup_n_s8(v14 & 0x7F);
    v17 = a2[6];
    v18 = v15 & v5;
    v19 = *(_X9 + v18);
    v20 = vceq_s8(v19, v16);
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_8:
    while (1)
    {
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v5;
      if (*(v17 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
LABEL_10:
        while (!*&vceq_s8(v19, 0x8080808080808080))
        {
          v7 += 8;
          v18 = (v7 + v18) & v5;
          v19 = *(_X9 + v18);
          v20 = vceq_s8(v19, v16);
          if (v20)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_14;
      }
    }

    v22 = (v17 + 16 * v21);
    if (_X9 + v21)
    {
      goto LABEL_4;
    }

LABEL_14:
    v6 = 0;
    if (v5 > 1)
    {
      goto LABEL_15;
    }

LABEL_5:
    if (a2[4] < 2uLL)
    {
      return;
    }

    v34 = a2 + 5;
    v36 = &absl::lts_20240722::container_internal::kSooControl;
    if (a2[5] != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      v36 = 0;
    }

    if (!v36)
    {
      return;
    }

    goto LABEL_30;
  }

  if (a2[4] < 2uLL)
  {
    goto LABEL_14;
  }

  v22 = a2 + 5;
  v35 = &absl::lts_20240722::container_internal::kSooControl;
  if (a2[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v35 = 0;
    v22 = a2[3];
  }

  if (!v35)
  {
    goto LABEL_14;
  }

LABEL_4:
  v6 = v22[1];
  if (v5 <= 1)
  {
    goto LABEL_5;
  }

LABEL_15:
  v23 = 0;
  _X9 = a2[5];
  __asm { PRFM            #4, [X9] }

  v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
  v27 = (v26 >> 7) ^ (_X9 >> 12);
  v28 = vdup_n_s8(v26 & 0x7F);
  v29 = a2[6];
  v30 = v27 & v5;
  v31 = *(_X9 + v30);
  v32 = vceq_s8(v31, v28);
  if (!v32)
  {
    goto LABEL_18;
  }

LABEL_16:
  while (1)
  {
    v33 = (v30 + (__clz(__rbit64(v32)) >> 3)) & v5;
    if (*(v29 + 16 * v33) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      break;
    }

    v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v32)
    {
LABEL_18:
      while (!*&vceq_s8(v31, 0x8080808080808080))
      {
        v23 += 8;
        v30 = (v23 + v30) & v5;
        v31 = *(_X9 + v30);
        v32 = vceq_s8(v31, v28);
        if (v32)
        {
          goto LABEL_16;
        }
      }

      return;
    }
  }

  v34 = (v29 + 16 * v33);
  if (!(_X9 + v33))
  {
    return;
  }

LABEL_30:
  if (!v6)
  {
    return;
  }

  v37 = v34[1];
  if (!v37)
  {
    return;
  }

  v162 = 0;
  v163 = 0;
  v164 = 0;
  v159 = xmmword_23CE306D0;
  v42 = operations_research::sat::IntegerEncoder::PartialDomainEncoding(v6, a1);
  v43 = *v42;
  v44 = *(v42 + 8);
  if (*v42 == v44)
  {
    goto LABEL_188;
  }

  v142 = a3;
  v143 = a1;
  v139 = a5;
  v140 = a4;
  v141 = v37;
  v45 = 0;
  v46 = 0;
  v146 = *(v42 + 8);
  do
  {
    v151 = *v43;
    v47 = DWORD2(v151);
    v48 = *(v6 + 224);
    v49 = (*(v6 + 232) - v48) >> 2;
    if (SDWORD2(v151) < v49 && *(v48 + 4 * SDWORD2(v151)) != -1 || (v50 = (DWORD2(v151) ^ 1), (DWORD2(v151) ^ 1) < v49) && *(v48 + 4 * v50) != -1)
    {
      v52 = v46;
      v53 = v46 >> 4;
      if (((v46 >> 4) + 1) >> 60)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v46 >> 4 != -1)
      {
        if (!(((v46 >> 4) + 1) >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(16 * v53) = v151;
      v46 = 16 * v53 + 16;
      memcpy(0, 0, v52);
      v45 = 0;
      v54 = v163;
      if (v163 < v164)
      {
        *v163 = v47;
        v51 = (v54 + 4);
      }

      else
      {
        v55 = v162;
        v56 = v163 - v162;
        v57 = (v163 - v162) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v59 = v164 - v162;
        if ((v164 - v162) >> 1 > v58)
        {
          v58 = v59 >> 1;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v60 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          if (!(v60 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(4 * v57) = v47;
        v51 = 4 * v57 + 4;
        memcpy(0, v55, v56);
        v162 = 0;
        v163 = v51;
        v164 = 0;
        if (v55)
        {
          operator delete(v55);
        }

        v45 = 0;
        v44 = v146;
      }

      v163 = v51;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v159, &v151, &v155);
      if (BYTE8(__p) == 1)
      {
        *__p = v151;
      }
    }

    ++v43;
  }

  while (v43 != v44);
  if (*(&v159 + 1) < 2uLL)
  {
    goto LABEL_188;
  }

  if (a1)
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v155, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 70);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v155);
  }

  v61 = a2[3];
  if (v61 <= 1)
  {
    if (a2[4] < 2uLL)
    {
      goto LABEL_143;
    }

    v50 = (a2 + 5);
    if (a2[5] != &gtl::FastTypeId<operations_research::sat::IntegerDomains>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
    {
      goto LABEL_143;
    }

LABEL_75:
    v50 = *(v50 + 1);
    if (!v50)
    {
      goto LABEL_143;
    }

    v72 = v50;
    v50 = *v50;
    if (a1 >> 1 >= (-1431655765 * ((*(v72 + 1) - v50) >> 3)))
    {
      goto LABEL_143;
    }

    v73 = v50 + 3 * (a1 >> 1);
    v74 = *v73;
    if (*v73 > 1)
    {
      v77 = *v73 & 1;
      v78 = v73 + 1;
      v76 = v73[1];
      if (v74)
      {
        v78 = v73[1];
      }

      v75 = *v78;
    }

    else
    {
      v75 = 0;
      v76 = v73[1];
      v77 = *v73;
    }

    if (!v77)
    {
      v76 = v73 + 1;
    }

    if ((v74 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v79 = &v76[2 * (v74 >> 1)];
      _X10 = v160;
      if (v159 >= 2)
      {
        v81 = 0x7FFFFFFFFFFFFFFELL;
        while (2)
        {
          v82 = 0;
          __asm { PRFM            #4, [X10] }

          v84 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v75) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v75));
          v85 = vdup_n_s8(v84 & 0x7F);
          v86 = ((v160 >> 12) ^ (v84 >> 7)) & v159;
          v87 = *(v160 + v86);
          v88 = vceq_s8(v87, v85);
          if (!v88)
          {
            goto LABEL_99;
          }

LABEL_97:
          while (*(v161 + 8 * ((v86 + (__clz(__rbit64(v88)) >> 3)) & v159)) != v75)
          {
            v88 &= ((v88 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v88)
            {
LABEL_99:
              while (!*&vceq_s8(v87, 0x8080808080808080))
              {
                v82 += 8;
                v86 = (v82 + v86) & v159;
                v87 = *(v160 + v86);
                v88 = vceq_s8(v87, v85);
                if (v88)
                {
                  goto LABEL_97;
                }
              }

              v81 = v75;
              goto LABEL_109;
            }
          }

          if (v75 == v76[1])
          {
            v76 += 2;
            if (v76 != v79)
            {
              v75 = *v76;
            }
          }

          else
          {
            ++v75;
          }

          if (v76 != v79)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v81 = v75;
        while (v81 == v160)
        {
          if (v76[1] == v160)
          {
            v76 += 2;
            if (v76 == v79)
            {
              v81 = v160;
            }

            else
            {
              v81 = *v76;
            }
          }

          else
          {
            v81 = v160 + 1;
          }

          if (v76 == v79)
          {
            goto LABEL_94;
          }
        }
      }
    }

    else
    {
LABEL_94:
      v81 = 0x7FFFFFFFFFFFFFFELL;
    }

LABEL_109:
    operations_research::Domain::Negation(&v155, v73);
    if (v155 > 1)
    {
      v91 = v155 & 1;
      p_p = &__p;
      v90 = __p;
      if (v155)
      {
        p_p = __p;
      }

      v89 = *p_p;
    }

    else
    {
      v89 = 0;
      v90 = __p;
      v91 = v155;
    }

    v93 = 0x8000000000000002;
    v50 = &__p;
    if (v91)
    {
      v50 = v90;
    }

    if ((v155 & 0x1FFFFFFFFFFFFFFELL) != 0)
    {
      v94 = &v50[v155 >> 1];
      _X12 = v160;
      if (v159 >= 2)
      {
        while (2)
        {
          v96 = 0;
          __asm { PRFM            #4, [X12] }

          v98 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed - v89) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed - v89));
          v99 = vdup_n_s8(v98 & 0x7F);
          v100 = ((v160 >> 12) ^ (v98 >> 7)) & v159;
          v101 = *(v160 + v100);
          v102 = vceq_s8(v101, v99);
          if (!v102)
          {
            goto LABEL_129;
          }

LABEL_127:
          while (*(v161 + 8 * ((v100 + (__clz(__rbit64(v102)) >> 3)) & v159)) != -v89)
          {
            v102 &= ((v102 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v102)
            {
LABEL_129:
              while (!*&vceq_s8(v101, 0x8080808080808080))
              {
                v96 += 8;
                v100 = (v96 + v100) & v159;
                v101 = *(v160 + v100);
                v102 = vceq_s8(v101, v99);
                if (v102)
                {
                  goto LABEL_127;
                }
              }

              v93 = -v89;
              goto LABEL_139;
            }
          }

          if (v89 == *(v50 + 1))
          {
            if (++v50 != v94)
            {
              v89 = *v50;
            }
          }

          else
          {
            ++v89;
          }

          if (v50 != v94)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        if (*(&v159 + 1) >= 2uLL)
        {
          while (!(v160 + v89))
          {
            if (v89 == *(v50 + 1))
            {
              if (++v50 != v94)
              {
                v89 = *v50;
              }
            }

            else
            {
              ++v89;
            }

            if (v50 == v94)
            {
              goto LABEL_139;
            }
          }
        }

        v93 = -v89;
      }
    }

LABEL_139:
    if (v91)
    {
      operator delete(v90);
    }

    if (v81 == 0x7FFFFFFFFFFFFFFELL)
    {
      v61 = a2[3];
      goto LABEL_143;
    }

    if (v81 == v93)
    {
      operations_research::sat::LinearConstraintBuilder::LinearConstraintBuilder(&v155, a2, v81, v81);
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v155, v143, 1);
      if (!v46)
      {
LABEL_200:
        operations_research::sat::LinearConstraintBuilder::Build(&v155, &v151);
        if (!operations_research::sat::PossibleOverflow(v141, &v151, v134))
        {
          std::vector<std::vector<operations_research::sat::Literal>>::push_back[abi:ne200100](v142 + 24, &v162);
          std::vector<operations_research::sat::LinearConstraint>::push_back[abi:ne200100](v142, &v151);
          ++*v140;
        }

        operations_research::sat::LinearConstraint::~LinearConstraint(&v151);
        goto LABEL_186;
      }

      v133 = 0;
      while ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v155, *(v133 + 8), v81 - *v133) & 1) != 0)
      {
        v133 += 16;
        if (v133 == v46)
        {
          goto LABEL_200;
        }
      }

      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v151, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 216);
    }

    else
    {
      operations_research::sat::LinearConstraintBuilder::LinearConstraintBuilder(&v155, a2, v81, 0x7FFFFFFFFFFFFFFELL);
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v155, v143, 1);
      if (!v46)
      {
LABEL_207:
        operations_research::sat::LinearConstraintBuilder::Build(&v155, &v148);
        if (!operations_research::sat::PossibleOverflow(v141, &v148, v136))
        {
          std::vector<operations_research::sat::LinearConstraint>::push_back[abi:ne200100](v142, &v148);
          ++*v139;
        }

        operations_research::sat::LinearConstraintBuilder::LinearConstraintBuilder(&v151, a2, 0x8000000000000002, v93);
        operations_research::sat::LinearConstraintBuilder::AddTerm(&v151, v143, 1);
        if (v46)
        {
          for (i = 0; i != v46; i += 16)
          {
            if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v151, *(i + 8), v93 - *i) & 1) == 0)
            {
              absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v147, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 250);
              absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v147);
            }
          }
        }

        operations_research::sat::LinearConstraintBuilder::Build(&v151, v147);
        if (!operations_research::sat::PossibleOverflow(v141, v147, v138))
        {
          std::vector<operations_research::sat::LinearConstraint>::push_back[abi:ne200100](v142, v147);
          ++*v139;
        }

        std::vector<std::vector<operations_research::sat::Literal>>::push_back[abi:ne200100](v142 + 24, &v162);
        operations_research::sat::LinearConstraint::~LinearConstraint(v147);
        if (v153[1])
        {
          *&v154 = v153[1];
          operator delete(v153[1]);
        }

        operations_research::sat::LinearConstraint::~LinearConstraint(&v148);
        goto LABEL_186;
      }

      v135 = 0;
      while ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v155, *(v135 + 8), v81 - *v135) & 1) != 0)
      {
        v135 += 16;
        if (v135 == v46)
        {
          goto LABEL_207;
        }
      }

      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v151, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 235);
    }

    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v151);
  }

  v50 = 0;
  _X9 = a2[5];
  __asm { PRFM            #4, [X9] }

  v64 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerDomains>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerDomains>(void)::d));
  v65 = (v64 >> 7) ^ (_X9 >> 12);
  v66 = vdup_n_s8(v64 & 0x7F);
  v67 = a2[6];
  v68 = v65 & v61;
  v69 = *(_X9 + v68);
  v70 = vceq_s8(v69, v66);
  if (!v70)
  {
    goto LABEL_70;
  }

  do
  {
LABEL_68:
    v71 = (v68 + (__clz(__rbit64(v70)) >> 3)) & v61;
    if (*(v67 + 16 * v71) == &gtl::FastTypeId<operations_research::sat::IntegerDomains>(void)::d)
    {
      v50 = (v67 + 16 * v71);
      if (!(_X9 + v71))
      {
        goto LABEL_143;
      }

      goto LABEL_75;
    }

    v70 &= ((v70 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v70);
LABEL_70:
  while (!*&vceq_s8(v69, 0x8080808080808080))
  {
    v50 = (v50 + 8);
    v68 = (v50 + v68) & v61;
    v69 = *(_X9 + v68);
    v70 = vceq_s8(v69, v66);
    if (v70)
    {
      goto LABEL_68;
    }
  }

LABEL_143:
  v103 = MEMORY[0];
  if (v61 > 1)
  {
    v50 = 0;
    _X9 = a2[5];
    __asm { PRFM            #4, [X9] }

    v107 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v108 = (v107 >> 7) ^ (_X9 >> 12);
    v109 = vdup_n_s8(v107 & 0x7F);
    v110 = a2[6];
    v111 = v108 & v61;
    v112 = *(_X9 + v111);
    v113 = vceq_s8(v112, v109);
    if (!v113)
    {
      goto LABEL_149;
    }

    do
    {
LABEL_147:
      v114 = (v111 + (__clz(__rbit64(v113)) >> 3)) & v61;
      if (*(v110 + 16 * v114) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v50 = (v110 + 16 * v114);
        v104 = (_X9 + v114);
        goto LABEL_155;
      }

      v113 &= ((v113 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v113);
LABEL_149:
    while (!*&vceq_s8(v112, 0x8080808080808080))
    {
      v50 = (v50 + 8);
      v111 = (v50 + v111) & v61;
      v112 = *(_X9 + v111);
      v113 = vceq_s8(v112, v109);
      if (v113)
      {
        goto LABEL_147;
      }
    }

LABEL_145:
    v104 = 0;
  }

  else
  {
    if (a2[4] < 2uLL)
    {
      goto LABEL_145;
    }

    v50 = (a2 + 5);
    v104 = &absl::lts_20240722::container_internal::kSooControl;
    if (a2[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      v104 = 0;
      v50 = v61;
    }
  }

LABEL_155:
  if (v104)
  {
    v104 = *(v50 + 1);
  }

  v155 = v104;
  __p = xmmword_23CE4D220;
  v157 = 0u;
  v158 = 0u;
  if (v61 > 1)
  {
    v117 = 0;
    _X11 = a2[5];
    __asm { PRFM            #4, [X11] }

    v120 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v121 = (v120 >> 7) ^ (_X11 >> 12);
    v122 = vdup_n_s8(v120 & 0x7F);
    v123 = a2[6];
    v124 = v121 & v61;
    v125 = *(_X11 + v124);
    v126 = vceq_s8(v125, v122);
    if (!v126)
    {
      goto LABEL_165;
    }

LABEL_163:
    while (1)
    {
      v127 = (v124 + (__clz(__rbit64(v126)) >> 3)) & v61;
      if (*(v123 + 16 * v127) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v126 &= ((v126 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v126)
      {
LABEL_165:
        while (!*&vceq_s8(v125, 0x8080808080808080))
        {
          v117 += 8;
          v124 = (v117 + v124) & v61;
          v125 = *(_X11 + v124);
          v126 = vceq_s8(v125, v122);
          if (v126)
          {
            goto LABEL_163;
          }
        }

        goto LABEL_168;
      }
    }

    v115 = (v123 + 16 * v127);
    v116 = (_X11 + v127);
    if (_X11 + v127)
    {
      goto LABEL_169;
    }
  }

  else if (a2[4] >= 2uLL && (v115 = a2 + 5, a2[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d))
  {
    v116 = &absl::lts_20240722::container_internal::kSooControl;
    if (&absl::lts_20240722::container_internal::kSooControl)
    {
LABEL_169:
      v116 = v115[1];
    }
  }

  else
  {
LABEL_168:
    v116 = 0;
  }

  *&v151 = v116;
  *(&v151 + 1) = MEMORY[0];
  v152 = MEMORY[0];
  *v153 = 0u;
  v154 = 0u;
  operations_research::sat::LinearConstraintBuilder::AddTerm(&v151, v143, 1);
  if (v46)
  {
    while (1)
    {
      v128 = *v45;
      v129 = *(v45 + 2);
      if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v155, v129, 1) & 1) == 0)
      {
        break;
      }

      *&v147[0] = v128 - v103;
      if (v128 != v103)
      {
        *&v148 = 0;
        if (v128 - v103 < 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(v147, &v148, "delta >= IntegerValue(0)");
        }

        if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v151, v129, v103 - v128) & 1) == 0)
        {
          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v148, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 190);
          goto LABEL_219;
        }
      }

      v45 += 2;
      if (v45 == v46)
      {
        goto LABEL_178;
      }
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v148, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 185);
LABEL_219:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v148);
  }

LABEL_178:
  operations_research::sat::LinearConstraintBuilder::Build(&v151, &v148);
  if (!operations_research::sat::PossibleOverflow(v141, &v148, v130))
  {
    operations_research::sat::LinearConstraintBuilder::Build(&v155, v147);
    std::vector<operations_research::sat::LinearConstraint>::push_back[abi:ne200100](v142, v147);
    operations_research::sat::LinearConstraint::~LinearConstraint(v147);
    std::vector<operations_research::sat::LinearConstraint>::push_back[abi:ne200100](v142, &v148);
    std::vector<std::vector<operations_research::sat::Literal>>::push_back[abi:ne200100](v142 + 24, &v162);
    ++*v140;
  }

  v131 = v150;
  v150 = 0;
  if (v131)
  {
    MEMORY[0x23EED9440](v131, 0x1000C8000313F17);
  }

  v132 = v149;
  v149 = 0;
  if (v132)
  {
    MEMORY[0x23EED9440](v132, 0x1000C8052888210);
  }

  if (v153[1])
  {
    *&v154 = v153[1];
    operator delete(v153[1]);
  }

LABEL_186:
  if (*(&v157 + 1))
  {
    *&v158 = *(&v157 + 1);
    operator delete(*(&v157 + 1));
  }

LABEL_188:
  if (v159 >= 2)
  {
    operator delete((v160 - (BYTE8(v159) & 1) - 8));
  }

  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }
}

void sub_23CC544A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a22);
  if (a38)
  {
    a39 = a38;
    operator delete(a38);
    if (!v39)
    {
LABEL_5:
      if (*(v40 - 160) < 2uLL)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if (!v39)
  {
    goto LABEL_5;
  }

  operator delete(v39);
  if (*(v40 - 160) < 2uLL)
  {
LABEL_6:
    v42 = *(v40 - 120);
    if (!v42)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete((*(v40 - 144) - (*(v40 - 152) & 1) - 8));
  v42 = *(v40 - 120);
  if (!v42)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v40 - 112) = v42;
  operator delete(v42);
  _Unwind_Resume(a1);
}

double operations_research::sat::LinearConstraintBuilder::LinearConstraintBuilder(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[3];
  if (v4 > 1)
  {
    v6 = 0;
    _X11 = a2[5];
    __asm { PRFM            #4, [X11] }

    v13 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v14 = vdup_n_s8(v13 & 0x7F);
    v15 = ((v13 >> 7) ^ (_X11 >> 12)) & v4;
    v16 = *(_X11 + v15);
    v17 = vceq_s8(v16, v14);
    if (!v17)
    {
      goto LABEL_8;
    }

LABEL_5:
    v18 = a2[6];
    while (1)
    {
      v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v4;
      if (*(v18 + 16 * v19) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
LABEL_8:
        while (!*&vceq_s8(v16, 0x8080808080808080))
        {
          v6 += 8;
          v15 = (v6 + v15) & v4;
          v16 = *(_X11 + v15);
          v17 = vceq_s8(v16, v14);
          if (v17)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v20 = (v18 + 16 * v19);
    v5 = (_X11 + v19);
    if (!(_X11 + v19))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a2[4] < 2uLL)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_13;
  }

  v23 = a2[5];
  v22 = a2 + 5;
  v5 = &absl::lts_20240722::container_internal::kSooControl;
  if (v23 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v20 = v22;
  }

  else
  {
    v5 = 0;
    v20 = 0;
  }

  if (v5)
  {
LABEL_12:
    v5 = v20[1];
  }

LABEL_13:
  *a1 = v5;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t std::vector<operations_research::sat::LinearConstraint>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 4);
    *v3 = v4;
    v5 = *(a2 + 24);
    *(a2 + 24) = 0uLL;
    *(v3 + 24) = v5;
    result = v3 + 40;
    *(a1 + 8) = v3 + 40;
  }

  return result;
}

void *std::vector<std::vector<operations_research::sat::Literal>>::push_back[abi:ne200100](uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v4 = a2[1];
    if (v4 != *a2)
    {
      if (((v4 - *a2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    result = v3 + 3;
    *(a1 + 8) = v3 + 3;
    *(a1 + 8) = v3 + 3;
  }

  return result;
}

void sub_23CC54918(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendPartialGreaterThanEncodingRelaxation(int a1, void *a2, void *a3)
{
  v4 = a2[3];
  if (v4 > 1)
  {
    v5 = 0;
    _X9 = a2[5];
    __asm { PRFM            #4, [X9] }

    v12 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
    v13 = (v12 >> 7) ^ (_X9 >> 12);
    v14 = vdup_n_s8(v12 & 0x7F);
    v15 = a2[6];
    v16 = v13 & v4;
    v17 = *(_X9 + v16);
    v18 = vceq_s8(v17, v14);
    if (!v18)
    {
      goto LABEL_7;
    }

LABEL_5:
    while (1)
    {
      v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v4;
      if (*(v15 + 16 * v19) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
LABEL_7:
        while (!*&vceq_s8(v17, 0x8080808080808080))
        {
          v5 += 8;
          v16 = (v5 + v16) & v4;
          v17 = *(_X9 + v16);
          v18 = vceq_s8(v17, v14);
          if (v18)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_17;
      }
    }

    v20 = (v15 + 16 * v19);
    if (!(_X9 + v19))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (a2[4] < 2uLL)
    {
      goto LABEL_17;
    }

    v20 = a2 + 5;
    v22 = &absl::lts_20240722::container_internal::kSooControl;
    if (a2[5] != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
    {
      v22 = 0;
      v20 = a2[3];
    }

    if (!v22)
    {
LABEL_17:
      v21 = 0;
      if (v4 > 1)
      {
        goto LABEL_18;
      }

LABEL_12:
      if (a2[4] < 2uLL)
      {
        return;
      }

      v34 = a2 + 5;
      v35 = &absl::lts_20240722::container_internal::kSooControl;
      if (a2[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v35 = 0;
      }

      if (!v35)
      {
        return;
      }

LABEL_29:
      if (!v21)
      {
        return;
      }

      v36 = v34[1];
      if (!v36)
      {
        return;
      }

      v38 = a1;
      operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(v36, a1, &v104);
      v39 = v104;
      if (v104 == v105)
      {
LABEL_97:
        if (v39)
        {
          v105 = v39;
          operator delete(v39);
        }

        return;
      }

      v93 = v21;
      v40 = *(*(v21 + 40) + 8 * v38);
      v41 = a2[3];
      if (v41 > 1)
      {
        v43 = 0;
        _X9 = a2[5];
        __asm { PRFM            #4, [X9] }

        v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v47 = (v46 >> 7) ^ (_X9 >> 12);
        v48 = vdup_n_s8(v46 & 0x7F);
        v49 = a2[6];
        v50 = v47 & v41;
        v51 = *(_X9 + v50);
        v52 = vceq_s8(v51, v48);
        if (!v52)
        {
          goto LABEL_40;
        }

LABEL_38:
        while (1)
        {
          v53 = (v50 + (__clz(__rbit64(v52)) >> 3)) & v41;
          if (*(v49 + 16 * v53) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v52 &= ((v52 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v52)
          {
LABEL_40:
            while (!*&vceq_s8(v51, 0x8080808080808080))
            {
              v43 += 8;
              v50 = (v43 + v50) & v41;
              v51 = *(_X9 + v50);
              v52 = vceq_s8(v51, v48);
              if (v52)
              {
                goto LABEL_38;
              }
            }

            goto LABEL_46;
          }
        }

        v42 = (v49 + 16 * v53);
        if (_X9 + v53)
        {
          goto LABEL_44;
        }
      }

      else if (a2[4] >= 2uLL)
      {
        v42 = a2 + 5;
        if (a2[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          if (&absl::lts_20240722::container_internal::kSooControl)
          {
LABEL_44:
            v54 = v42[1];
            goto LABEL_47;
          }
        }
      }

LABEL_46:
      v54 = 0;
LABEL_47:
      v92 = v36;
      v94 = v38;
      v95 = a2;
      v99 = v54;
      v100 = v40;
      v101 = 0x7FFFFFFFFFFFFFFELL;
      *__p = 0u;
      v103 = 0u;
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v99, v38, 1);
      v55 = v104;
      v56 = v105;
      if (v104 != v105)
      {
        v57 = 0xFFFFFFFFLL;
        do
        {
          v59 = *v55;
          if (v40 < *v55 && (v58 = *(v55 + 8), (operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v99, *(v55 + 8), v40 - *v55) & 1) != 0))
          {
            if (v57 != -1)
            {
              operator new();
            }
          }

          else
          {
            v58 = v57;
            v59 = v40;
          }

          v55 += 16;
          v40 = v59;
          v57 = v58;
        }

        while (v55 != v56);
      }

      operations_research::sat::LinearConstraintBuilder::Build(&v99, &v96);
      v60 = a3[1];
      if (v60 >= a3[2])
      {
        v63 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v96);
      }

      else
      {
        v61 = v96;
        *(v60 + 16) = v97;
        *v60 = v61;
        v62 = v98;
        v98 = 0uLL;
        *(v60 + 24) = v62;
        v63 = v60 + 40;
      }

      a3[1] = v63;
      v64 = *(&v98 + 1);
      *(&v98 + 1) = 0;
      if (v64)
      {
        MEMORY[0x23EED9440](v64, 0x1000C8000313F17);
      }

      v65 = v98;
      *&v98 = 0;
      if (v65)
      {
        MEMORY[0x23EED9440](v65, 0x1000C8052888210);
      }

      v66 = a3;
      if (__p[1])
      {
        *&v103 = __p[1];
        operator delete(__p[1]);
      }

      v67 = *(*(v93 + 40) + ((v94 ^ 1) << 32 >> 29));
      v68 = a2[3];
      if (v68 > 1)
      {
        v71 = 0;
        _X11 = a2[5];
        __asm { PRFM            #4, [X11] }

        v74 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v75 = (v74 >> 7) ^ (_X11 >> 12);
        v76 = vdup_n_s8(v74 & 0x7F);
        v77 = a2[6];
        v78 = v75 & v68;
        v79 = *(_X11 + v78);
        v80 = vceq_s8(v79, v76);
        if (!v80)
        {
          goto LABEL_72;
        }

LABEL_70:
        while (1)
        {
          v81 = (v78 + (__clz(__rbit64(v80)) >> 3)) & v68;
          if (*(v77 + 16 * v81) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v80 &= ((v80 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v80)
          {
LABEL_72:
            while (!*&vceq_s8(v79, 0x8080808080808080))
            {
              v71 += 8;
              v78 = (v71 + v78) & v68;
              v79 = *(_X11 + v78);
              v80 = vceq_s8(v79, v76);
              if (v80)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_75;
          }
        }

        v69 = (v77 + 16 * v81);
        v70 = (_X11 + v81);
        if (_X11 + v81)
        {
          goto LABEL_76;
        }
      }

      else if (a2[4] >= 2uLL && (v69 = a2 + 5, v95[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d))
      {
        v70 = &absl::lts_20240722::container_internal::kSooControl;
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_76:
          v70 = v69[1];
        }
      }

      else
      {
LABEL_75:
        v70 = 0;
      }

      v99 = v70;
      v100 = v67;
      v101 = 0x7FFFFFFFFFFFFFFELL;
      *__p = 0u;
      v103 = 0u;
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v99, v94, -1);
      operations_research::sat::IntegerEncoder::PartialGreaterThanEncoding(v92, v94 ^ 1, &v96);
      v83 = *(&v96 + 1);
      v82 = v96;
      if (v96 == *(&v96 + 1))
      {
        v84 = v66;
        if (!v96)
        {
LABEL_80:
          operations_research::sat::LinearConstraintBuilder::Build(&v99, &v96);
          v85 = *(v84 + 8);
          if (v85 >= *(v84 + 16))
          {
            v88 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(v84, &v96);
          }

          else
          {
            v86 = v96;
            *(v85 + 16) = v97;
            *v85 = v86;
            v87 = v98;
            v98 = 0uLL;
            *(v85 + 24) = v87;
            v88 = v85 + 40;
          }

          *(v84 + 8) = v88;
          v90 = *(&v98 + 1);
          *(&v98 + 1) = 0;
          if (v90)
          {
            MEMORY[0x23EED9440](v90, 0x1000C8000313F17);
          }

          v91 = v98;
          *&v98 = 0;
          if (v91)
          {
            MEMORY[0x23EED9440](v91, 0x1000C8052888210);
          }

          if (__p[1])
          {
            *&v103 = __p[1];
            operator delete(__p[1]);
          }

          v39 = v104;
          goto LABEL_97;
        }
      }

      else
      {
        do
        {
          v89 = *v82;
          if (v67 < *v82 && operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v99, v82[2], v67 - *v82))
          {
            v67 = v89;
          }

          v82 += 4;
        }

        while (v82 != v83);
        v82 = v96;
        v84 = v66;
        if (!v96)
        {
          goto LABEL_80;
        }
      }

      *(&v96 + 1) = v82;
      operator delete(v82);
      goto LABEL_80;
    }
  }

  v21 = v20[1];
  if (v4 <= 1)
  {
    goto LABEL_12;
  }

LABEL_18:
  v23 = 0;
  _X9 = a2[5];
  __asm { PRFM            #4, [X9] }

  v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v27 = (v26 >> 7) ^ (_X9 >> 12);
  v28 = vdup_n_s8(v26 & 0x7F);
  v29 = a2[6];
  v30 = v27 & v4;
  v31 = *(_X9 + v30);
  v32 = vceq_s8(v31, v28);
  if (!v32)
  {
    goto LABEL_21;
  }

LABEL_19:
  while (1)
  {
    v33 = (v30 + (__clz(__rbit64(v32)) >> 3)) & v4;
    if (*(v29 + 16 * v33) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      break;
    }

    v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v32)
    {
LABEL_21:
      while (!*&vceq_s8(v31, 0x8080808080808080))
      {
        v23 += 8;
        v30 = (v23 + v30) & v4;
        v31 = *(_X9 + v30);
        v32 = vceq_s8(v31, v28);
        if (v32)
        {
          goto LABEL_19;
        }
      }

      return;
    }
  }

  v34 = (v29 + 16 * v33);
  if (_X9 + v33)
  {
    goto LABEL_29;
  }
}

void sub_23CC551F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a13);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
    v25 = *(v23 - 112);
    if (!v25)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v25 = *(v23 - 112);
    if (!v25)
    {
      goto LABEL_3;
    }
  }

  *(v23 - 104) = v25;
  operator delete(v25);
  _Unwind_Resume(a1);
}

void operations_research::sat::AppendBoolOrRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v8 = *(a2 + 3);
  if (v8 > 1)
  {
    v10 = 0;
    _X11 = *(a2 + 5);
    __asm { PRFM            #4, [X11] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X11 >> 12)) & v8;
    v20 = *(_X11 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_8;
    }

LABEL_5:
    v22 = *(a2 + 6);
    while (1)
    {
      v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v8;
      if (*(v22 + 16 * v23) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v21)
      {
LABEL_8:
        while (!*&vceq_s8(v20, 0x8080808080808080))
        {
          v10 += 8;
          v19 = (v10 + v19) & v8;
          v20 = *(_X11 + v19);
          v21 = vceq_s8(v20, v18);
          if (v21)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v24 = (v22 + 16 * v23);
    v9 = (_X11 + v23);
    if (!(_X11 + v23))
    {
      goto LABEL_13;
    }

LABEL_12:
    v9 = *(v24 + 1);
    goto LABEL_13;
  }

  if (*(a2 + 4) < 2uLL)
  {
LABEL_3:
    v9 = 0;
    goto LABEL_13;
  }

  v43 = *(a2 + 5);
  v42 = a2 + 40;
  v9 = &absl::lts_20240722::container_internal::kSooControl;
  if (v43 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v24 = v42;
  }

  else
  {
    v9 = 0;
    v24 = 0;
  }

  if (v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  v47 = v9;
  v48 = xmmword_23CE4D220;
  *__p = 0u;
  v50 = 0u;
  v25 = *(this + 4);
  if (v25)
  {
    v26 = *(this + 3);
    v27 = 4 * v25;
    while (1)
    {
      v28 = *v26;
      v29 = ~*v26;
      if (*v26 <= v29)
      {
        v28 = ~v28;
      }

      if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v47, __PAIR64__(*(*(v7 + 48) + 4 * v28), v29) >> 31, 1) & 1) == 0)
      {
        break;
      }

      ++v26;
      v27 -= 4;
      if (!v27)
      {
        goto LABEL_19;
      }
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 339);
LABEL_45:
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v44);
  }

LABEL_19:
  v30 = *(this + 6);
  if (*(this + 15) != 3)
  {
    v30 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  v31 = *(v30 + 4);
  if (v31)
  {
    v32 = v30[3];
    v33 = 4 * v31;
    while (1)
    {
      v34 = *v32;
      v35 = ~*v32 <= *v32 ? *v32 : ~v34;
      if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v47, __PAIR64__(*(*(v7 + 48) + 4 * v35), v34) >> 31, 1) & 1) == 0)
      {
        break;
      }

      ++v32;
      v33 -= 4;
      if (!v33)
      {
        goto LABEL_28;
      }
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v44, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 342);
    goto LABEL_45;
  }

LABEL_28:
  operations_research::sat::LinearConstraintBuilder::Build(&v47, &v44);
  v36 = *(a3 + 1);
  if (v36 >= *(a3 + 2))
  {
    v39 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v44);
  }

  else
  {
    v37 = v44;
    *(v36 + 16) = v45;
    *v36 = v37;
    v38 = v46;
    v46 = 0uLL;
    *(v36 + 24) = v38;
    v39 = v36 + 40;
  }

  *(a3 + 1) = v39;
  v40 = *(&v46 + 1);
  *(&v46 + 1) = 0;
  if (v40)
  {
    MEMORY[0x23EED9440](v40, 0x1000C8000313F17);
  }

  v41 = v46;
  *&v46 = 0;
  if (v41)
  {
    MEMORY[0x23EED9440](v41, 0x1000C8052888210);
  }

  if (__p[1])
  {
    *&v50 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_23CC55604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a9);
  v20 = a1;
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
    v20 = a1;
  }

  _Unwind_Resume(v20);
}

void operations_research::sat::AppendBoolAndRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4, operations_research::sat::ActivityBoundHelper *a5)
{
  if (*(this + 4))
  {
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    v10 = &operations_research::sat::_BoolArgumentProto_default_instance_;
    v64 = a3;
    if (*(this + 4) == 1)
    {
      if (*(this + 15) == 4)
      {
        v10 = *(this + 6);
      }

      if (*(v10 + 4))
      {
        operator new();
      }
    }

    else
    {
      v11 = *(a2 + 3);
      if (v11 > 1)
      {
        v15 = 0;
        _X12 = *(a2 + 5);
        __asm { PRFM            #4, [X12] }

        v22 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v23 = vdup_n_s8(v22 & 0x7F);
        v24 = ((v22 >> 7) ^ (_X12 >> 12)) & v11;
        v25 = *(_X12 + v24);
        v26 = vceq_s8(v25, v23);
        if (!v26)
        {
          goto LABEL_20;
        }

LABEL_17:
        v27 = *(a2 + 6);
        while (1)
        {
          v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v11;
          if (*(v27 + 16 * v28) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v26)
          {
LABEL_20:
            while (!*&vceq_s8(v25, 0x8080808080808080))
            {
              v15 += 8;
              v24 = (v15 + v24) & v11;
              v25 = *(_X12 + v24);
              v26 = vceq_s8(v25, v23);
              if (v26)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_9;
          }
        }

        v43 = (v27 + 16 * v28);
        v12 = (_X12 + v28);
        if (_X12 + v28)
        {
          goto LABEL_10;
        }
      }

      else if (*(a2 + 4) >= 2uLL)
      {
        v45 = *(a2 + 5);
        v44 = (a2 + 40);
        v12 = &absl::lts_20240722::container_internal::kSooControl;
        if (v45 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v43 = v44;
        }

        else
        {
          v12 = 0;
          v43 = &operations_research::sat::_BoolArgumentProto_default_instance_;
        }

        if (v12)
        {
LABEL_10:
          v12 = v43[1];
        }
      }

      else
      {
LABEL_9:
        v12 = 0;
      }

      v70 = v12;
      *__p = 0u;
      v73 = 0u;
      v71 = 0u;
      if (*(this + 15) == 4)
      {
        v10 = *(this + 6);
      }

      v13 = v10[3];
      v14 = *(v10 + 4);
      if (a4)
      {
        if (v14)
        {
          operator new();
        }

        operations_research::sat::ActivityBoundHelper::PartitionLiteralsIntoAmo(a4, 0, 0, &v68);
        v46 = v68;
        v47 = v69;
        if (v68 != v69)
        {
          while (1)
          {
            v49 = *v46;
            v48 = v46[1];
            __p[0] = 0;
            *&v73 = __p[1];
            if ((v48 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              break;
            }

LABEL_59:
            v53 = *(this + 4);
            if (v53)
            {
              v54 = *(this + 3);
              v55 = 4 * v53;
              while (1)
              {
                v56 = *v54;
                v57 = ~*v54;
                if (*v54 <= v57)
                {
                  v56 = ~v56;
                }

                if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v70, __PAIR64__(*(*(v9 + 48) + 4 * v56), v57) >> 31, -1) & 1) == 0)
                {
                  break;
                }

                ++v54;
                v55 -= 4;
                if (!v55)
                {
                  goto LABEL_65;
                }
              }

              absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 397);
              goto LABEL_81;
            }

LABEL_65:
            operations_research::sat::LinearConstraintBuilder::BuildConstraint(&v70, 0x8000000000000002, 0, &v65);
            v58 = *(a3 + 1);
            if (v58 >= *(a3 + 2))
            {
              v61 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v65);
            }

            else
            {
              v59 = v65;
              *(v58 + 16) = v66;
              *v58 = v59;
              v60 = v67;
              v67 = 0uLL;
              *(v58 + 24) = v60;
              v61 = v58 + 40;
            }

            *(a3 + 1) = v61;
            v62 = *(&v67 + 1);
            *(&v67 + 1) = 0;
            if (v62)
            {
              MEMORY[0x23EED9440](v62, 0x1000C8000313F17);
            }

            v63 = v67;
            *&v67 = 0;
            if (v63)
            {
              MEMORY[0x23EED9440](v63, 0x1000C8052888210);
            }

            v46 += 2;
            if (v46 == v47)
            {
              v46 = v68;
              goto LABEL_73;
            }
          }

          v50 = 4 * v48;
          while (1)
          {
            v51 = *v49;
            v52 = ~*v49 <= *v49 ? *v49 : ~v51;
            if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v70, __PAIR64__(*(*(v9 + 48) + 4 * v52), v51) >> 31, 1) & 1) == 0)
            {
              break;
            }

            ++v49;
            v50 -= 4;
            if (!v50)
            {
              goto LABEL_59;
            }
          }

          absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 393);
LABEL_81:
          absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v65);
        }

LABEL_73:
        if (v46)
        {
          v69 = v46;
          operator delete(v46);
        }
      }

      else if (v14)
      {
        v29 = &v13[v14];
        do
        {
          v30 = *v13;
          __p[0] = 0;
          *&v73 = __p[1];
          v31 = ~v30;
          if (v30 <= ~v30)
          {
            v30 = ~v30;
          }

          if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v70, __PAIR64__(*(*(v9 + 48) + 4 * v30), v31) >> 31, 1) & 1) == 0)
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 405);
            goto LABEL_81;
          }

          v32 = *(this + 4);
          if (v32)
          {
            v33 = *(this + 3);
            v34 = 4 * v32;
            do
            {
              v35 = *v33;
              v36 = ~*v33;
              if (*v33 <= v36)
              {
                v35 = ~v35;
              }

              if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v70, __PAIR64__(*(*(v9 + 48) + 4 * v35), v36) >> 31, -1) & 1) == 0)
              {
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v65, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 408);
                goto LABEL_81;
              }

              ++v33;
              v34 -= 4;
            }

            while (v34);
          }

          operations_research::sat::LinearConstraintBuilder::BuildConstraint(&v70, 0x8000000000000002, 0, &v65);
          v37 = *(v64 + 1);
          if (v37 >= *(v64 + 2))
          {
            v40 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(v64, &v65);
          }

          else
          {
            v38 = v65;
            *(v37 + 16) = v66;
            *v37 = v38;
            v39 = v67;
            v67 = 0uLL;
            *(v37 + 24) = v39;
            v40 = v37 + 40;
          }

          *(v64 + 1) = v40;
          v41 = *(&v67 + 1);
          *(&v67 + 1) = 0;
          if (v41)
          {
            MEMORY[0x23EED9440](v41, 0x1000C8000313F17);
          }

          v42 = v67;
          *&v67 = 0;
          if (v42)
          {
            MEMORY[0x23EED9440](v42, 0x1000C8052888210);
          }

          ++v13;
        }

        while (v13 != v29);
      }

      if (__p[1])
      {
        *&v73 = __p[1];
        operator delete(__p[1]);
      }
    }
  }
}

void sub_23CC55E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (v25)
  {
    operator delete(v25);
    v27 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendAtMostOneRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  if (*(this + 4))
  {
    return;
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v6 = *(this + 6);
  if (*(this + 15) != 26)
  {
    v6 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v6 + 4, __p);
  v7 = *(a3 + 4);
  v8 = *(a3 + 5);
  if (v7 < v8)
  {
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = *__p;
    *(v7 + 2) = v20;
    v9 = (v7 + 24);
LABEL_19:
    *(a3 + 4) = v9;
    return;
  }

  v10 = *(a3 + 3);
  v11 = v7 - v10;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
  v13 = v12 + 1;
  if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
  if (2 * v14 > v13)
  {
    v13 = 2 * v14;
  }

  if (v14 >= 0x555555555555555)
  {
    v15 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (v15 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v16 = 24 * v12;
  *v16 = *__p;
  *(v16 + 16) = v20;
  __p[1] = 0;
  v20 = 0;
  __p[0] = 0;
  v9 = 24 * v12 + 24;
  v17 = 24 * v12 - v11;
  memcpy((v16 - v11), v10, v11);
  *(a3 + 3) = v17;
  *(a3 + 4) = v9;
  *(a3 + 5) = 0;
  if (!v10)
  {
    goto LABEL_19;
  }

  operator delete(v10);
  v18 = __p[0];
  *(a3 + 4) = v9;
  if (v18)
  {
    __p[1] = v18;
    operator delete(v18);
  }
}

void sub_23CC56110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendExactlyOneRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  if (*(this + 4))
  {
    return;
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v8 = *(this + 6);
  if (*(this + 15) != 29)
  {
    v8 = &operations_research::sat::_BoolArgumentProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v8 + 4, &v48);
  v9 = v48;
  v10 = v49;
  if (v49 == v48)
  {
LABEL_8:
    v11 = *(a2 + 3);
    if (v11 > 1)
    {
      v19 = 0;
      _X11 = *(a2 + 5);
      __asm { PRFM            #4, [X11] }

      v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v27 = vdup_n_s8(v26 & 0x7F);
      v28 = ((v26 >> 7) ^ (_X11 >> 12)) & v11;
      v29 = *(_X11 + v28);
      v30 = vceq_s8(v29, v27);
      if (!v30)
      {
        goto LABEL_21;
      }

LABEL_18:
      v31 = *(a2 + 6);
      while (1)
      {
        v32 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v11;
        if (*(v31 + 16 * v32) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v30)
        {
LABEL_21:
          while (!*&vceq_s8(v29, 0x8080808080808080))
          {
            v19 += 8;
            v28 = (v19 + v28) & v11;
            v29 = *(_X11 + v28);
            v30 = vceq_s8(v29, v27);
            if (v30)
            {
              goto LABEL_18;
            }
          }

          goto LABEL_10;
        }
      }

      v38 = (v31 + 16 * v32);
      v12 = (_X11 + v32);
      if (_X11 + v32)
      {
        goto LABEL_11;
      }
    }

    else if (*(a2 + 4) >= 2uLL)
    {
      v40 = *(a2 + 5);
      v39 = a2 + 40;
      v12 = &absl::lts_20240722::container_internal::kSooControl;
      if (v40 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v38 = v39;
      }

      else
      {
        v12 = 0;
        v38 = 0;
      }

      if (v12)
      {
LABEL_11:
        v12 = *(v38 + 1);
      }
    }

    else
    {
LABEL_10:
      v12 = 0;
    }

    v44 = v12;
    v45 = vdupq_n_s64(1uLL);
    *__p = 0u;
    v47 = 0u;
    v13 = v48;
    for (i = v49; v13 != i; ++v13)
    {
      if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v44, *v13, 1) & 1) == 0)
      {
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 436);
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v41);
      }
    }

    operations_research::sat::LinearConstraintBuilder::Build(&v44, &v41);
    v15 = *(a3 + 1);
    if (v15 >= *(a3 + 2))
    {
      v18 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v41);
    }

    else
    {
      v16 = v41;
      *(v15 + 16) = v42;
      *v15 = v16;
      v17 = v43;
      v43 = 0uLL;
      *(v15 + 24) = v17;
      v18 = v15 + 40;
    }

    *(a3 + 1) = v18;
    v33 = *(&v43 + 1);
    *(&v43 + 1) = 0;
    if (v33)
    {
      MEMORY[0x23EED9440](v33, 0x1000C8000313F17);
    }

    v34 = v43;
    *&v43 = 0;
    if (v34)
    {
      MEMORY[0x23EED9440](v34, 0x1000C8052888210);
    }

    if (__p[1])
    {
      *&v47 = __p[1];
      operator delete(__p[1]);
    }

    v35 = v48;
    if (v48)
    {
LABEL_47:
      v49 = v35;
      operator delete(v35);
    }
  }

  else
  {
    while ((operations_research::sat::IntegerEncoder::LiteralOrNegationHasView(v7, *v9, 0, 0) & 1) != 0)
    {
      if (++v9 == v10)
      {
        goto LABEL_8;
      }
    }

    v36 = *(a3 + 4);
    if (v36 >= *(a3 + 5))
    {
      v37 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(a3 + 24, &v48);
    }

    else
    {
      *v36 = 0;
      v36[1] = 0;
      v36[2] = 0;
      if (v49 != v48)
      {
        if (((v49 - v48) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v37 = v36 + 3;
      *(a3 + 4) = v36 + 3;
    }

    *(a3 + 4) = v37;
    v35 = v48;
    if (v48)
    {
      goto LABEL_47;
    }
  }
}

void sub_23CC564C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  v22 = *(v20 - 72);
  if (!v22)
  {
    _Unwind_Resume(exception_object);
  }

  *(v20 - 64) = v22;
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::CreateAlternativeLiteralsWithView(operations_research::sat *this@<X0>, operations_research::sat::Model *a2@<X2>, operations_research::sat::LinearRelaxation *a3@<X3>, void *a4@<X1>, unint64_t **a5@<X8>)
{
  v6 = this;
  v54 = *MEMORY[0x277D85DE8];
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a4);
  if (v6 == 2)
  {
    v49 = xmmword_23CE48D30;
    v48 = &unk_284F3F128;
    v50 = &v48;
    v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
    v12 = operations_research::sat::IntegerTrail::AddIntegerVariable(v11, v49, *(&v49 + 1));
    if (v50 == &v48)
    {
      (*(*v50 + 4))(v50);
    }

    else if (v50)
    {
      (*(*v50 + 5))(v50);
    }

    LiteralAssociatedToEquality = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v8, v12, 1);
    v46 = xmmword_23CE48D30;
    v45 = &unk_284F3F128;
    v47 = &v45;
    v32 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
    v33 = operations_research::sat::IntegerTrail::AddIntegerVariable(v32, v46, *(&v46 + 1));
    if (v47 == &v45)
    {
      (*(*v47 + 4))(v47);
    }

    else if (v47)
    {
      (*(*v47 + 5))();
    }

    operations_research::sat::IntegerEncoder::AssociateToIntegerEqualValue(v8, LiteralAssociatedToEquality ^ 1u, v33, 1);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    operator new();
  }

  if (v6 == 1)
  {
    v52 = vdupq_n_s64(1uLL);
    v51 = &unk_284F3F128;
    v53 = &v51;
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
    v10 = operations_research::sat::IntegerTrail::AddIntegerVariable(v9, v52.i64[0], v52.i64[1]);
    if (v53 == &v51)
    {
      (*(*v53 + 4))(v53);
    }

    else if (v53)
    {
      (*(*v53 + 5))();
    }

    operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v8, v10, 1);
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v13 = a4[3];
  if (v13 > 1)
  {
    v17 = 0;
    _X11 = a4[5];
    __asm { PRFM            #4, [X11] }

    v24 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v25 = vdup_n_s8(v24 & 0x7F);
    v26 = ((v24 >> 7) ^ (_X11 >> 12)) & v13;
    v27 = *(_X11 + v26);
    v28 = vceq_s8(v27, v25);
    if (!v28)
    {
      goto LABEL_25;
    }

LABEL_22:
    v29 = a4[6];
    while (1)
    {
      v30 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v13;
      if (*(v29 + 16 * v30) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v28)
      {
LABEL_25:
        while (!*&vceq_s8(v27, 0x8080808080808080))
        {
          v17 += 8;
          v26 = (v17 + v26) & v13;
          v27 = *(_X11 + v26);
          v28 = vceq_s8(v27, v25);
          if (v28)
          {
            goto LABEL_22;
          }
        }

LABEL_11:
        v14 = 0;
LABEL_13:
        v37 = v14;
        v38 = vdupq_n_s64(1uLL);
        *__p = 0u;
        v40 = 0u;
        if (v6 >= 1)
        {
          do
          {
            v43 = xmmword_23CE48D30;
            v42 = &unk_284F3F128;
            v44 = &v42;
            v15 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
            v16 = operations_research::sat::IntegerTrail::AddIntegerVariable(v15, v43, *(&v43 + 1));
            if (v44 == &v42)
            {
              (*(*v44 + 4))(v44);
            }

            else if (v44)
            {
              (*(*v44 + 5))();
            }

            v36 = 0;
            v36 = operations_research::sat::IntegerEncoder::GetOrCreateLiteralAssociatedToEquality(v8, v16, 1);
            std::vector<int>::push_back[abi:ne200100](a5, &v36);
            if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v37, v36, 1) & 1) == 0)
            {
              absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 480);
              absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v35);
            }

            --v6;
          }

          while (v6);
        }

        operations_research::sat::ExactlyOneConstraint(a5, v41);
      }
    }

    v34 = (v29 + 16 * v30);
    v14 = (_X11 + v30);
    if (!(_X11 + v30))
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a4[4] < 2uLL)
    {
      goto LABEL_11;
    }

    v34 = a4 + 5;
    v14 = &absl::lts_20240722::container_internal::kSooControl;
    if (a4[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      v14 = 0;
      v34 = 0;
    }

    if (!v14)
    {
      goto LABEL_13;
    }
  }

  v14 = v34[1];
  goto LABEL_13;
}

void sub_23CC56C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a11);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  v34 = *v32;
  if (!*v32)
  {
    _Unwind_Resume(a1);
  }

  *(v32 + 8) = v34;
  operator delete(v34);
  _Unwind_Resume(a1);
}

void operations_research::sat::AppendCircuitRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v111 = *MEMORY[0x277D85DE8];
  if (*(this + 4))
  {
    return;
  }

  v5 = a2;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 15) == 15)
  {
    v8 = *(this + 6);
  }

  else
  {
    v8 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  v9 = *(v8 + 16);
  v10 = *(v8 + 4);
  if (v9 != v10)
  {
    operations_research::sat::AppendCircuitRelaxation(v9, v10, &v96);
  }

  v11 = *(v8 + 10);
  if (v9 != v11)
  {
    operations_research::sat::AppendCircuitRelaxation(v9, v11, &v96);
  }

  v102[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v102[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v103 = 0;
  v100[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v100[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v101 = 0;
  if (v9 >= 1)
  {
    v12 = 0;
    v13 = 4 * v9;
    do
    {
      LODWORD(v96) = 0;
      v14 = *(this + 15);
      v15 = *(this + 6);
      if (v14 == 15)
      {
        v16 = *(this + 6);
      }

      else
      {
        v16 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
      }

      v17 = *(v16[9] + v12);
      if (~v17 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = ~v17;
      }

      v19 = __PAIR64__(*(*(v7 + 48) + 4 * v18), v17) >> 31;
      LODWORD(v96) = v19;
      if (v14 == 15)
      {
        v20 = *(v15[3] + v12);
      }

      else
      {
        v20 = *(off_2810BED38 + v12);
        v15 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
      }

      LODWORD(v104) = v20;
      LODWORD(v107[0]) = *(v15[6] + v12);
      v108 = &unk_284F435C8;
      v109[0] = v19;
      v110 = &v108;
      operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}::operator()(v109, v5);
      if (v110 == &v108)
      {
        (*(*v110 + 4))(v110);
      }

      else if (v110)
      {
        (*(*v110 + 5))();
      }

      v21 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(v100, &v104);
      std::vector<int>::push_back[abi:ne200100](v21, &v96);
      v22 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(v102, v107);
      std::vector<int>::push_back[abi:ne200100](v22, &v96);
      v12 += 4;
    }

    while (v13 != v12);
  }

  v107[0] = v100;
  v107[1] = v102;
  v23 = v107;
  v94 = v5 + 40;
  v24 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v25 = vdup_n_s8(v24 & 0x7F);
  v93 = v24 >> 7;
  v26 = (a3 + 24);
  v92 = v5;
  do
  {
    v91 = v23;
    v27 = (*v23)[1];
    v28 = ***v23;
    v95 = v27[10];
    if (v28 != v27 || v27[10] != 0)
    {
      v30 = 0;
      while (1)
      {
        v31 = &v28[32 * v30];
        v32 = *(v31 + 3);
        v33 = *(v31 + 4);
        v34 = (v31 + 24);
        if ((v33 - v32) >= 5)
        {
          break;
        }

LABEL_80:
        if (v28[11])
        {
          if (++v30 == v28[10])
          {
            v71 = v28;
            while (1)
            {
              v72 = *v71;
              if (*(*v71 + 11))
              {
                break;
              }

              v73 = v71[8];
              v71 = *v71;
              if (v73 != v72[10])
              {
                v28 = v72;
                v30 = v73;
                break;
              }
            }
          }
        }

        else
        {
          v74 = &v28[8 * (v30 + 1) + 240];
          do
          {
            v28 = *v74;
            v75 = *(*v74 + 11);
            v74 = *v74 + 240;
          }

          while (!v75);
          v30 = 0;
        }

        if (v28 == v27 && v30 == v95)
        {
          goto LABEL_25;
        }
      }

      v35 = *(v5 + 3);
      if (v35 > 1)
      {
        v37 = 0;
        _X9 = *v94;
        __asm { PRFM            #4, [X9] }

        v43 = (v93 ^ (*v94 >> 12)) & v35;
        v44 = *(*v94 + v43);
        v45 = vceq_s8(v44, v25);
        if (!v45)
        {
          goto LABEL_40;
        }

LABEL_37:
        v46 = *(v5 + 6);
        while (1)
        {
          v47 = (v43 + (__clz(__rbit64(v45)) >> 3)) & v35;
          if (*(v46 + 16 * v47) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v45 &= ((v45 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v45)
          {
LABEL_40:
            while (!*&vceq_s8(v44, 0x8080808080808080))
            {
              v37 += 8;
              v43 = (v37 + v43) & v35;
              v44 = *&_X9[v43];
              v45 = vceq_s8(v44, v25);
              if (v45)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_44;
          }
        }

        v48 = (v46 + 16 * v47);
        if (&_X9[v47])
        {
          goto LABEL_35;
        }
      }

      else if (*(v5 + 4) >= 2uLL)
      {
        v48 = *v94;
        if (*v94 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v48 = v94;
        }

        v59 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v94 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v59 = 0;
        }

        if (v59)
        {
LABEL_35:
          v36 = *(v48 + 1);
          goto LABEL_45;
        }
      }

LABEL_44:
      v36 = 0;
LABEL_45:
      v96 = v36;
      v97 = xmmword_23CE4D220;
      v98 = 0u;
      v99 = 0u;
      v49 = *v34;
      v50 = v34[1];
      if (*v34 != v50)
      {
        do
        {
          if ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v96, *v49, 1) & 1) == 0)
          {
            absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v104, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 517);
            absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v104);
          }

          ++v49;
        }

        while (v49 != v50);
      }

      v52 = *(a3 + 4);
      v51 = *(a3 + 5);
      if (v52 >= v51)
      {
        v55 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *v26) >> 3);
        v56 = v55 + 1;
        if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v57 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *v26) >> 3);
        if (2 * v57 > v56)
        {
          v56 = 2 * v57;
        }

        if (v57 >= 0x555555555555555)
        {
          v58 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v58 = v56;
        }

        *(&v106 + 1) = v26;
        if (v58)
        {
          if (v58 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v60 = 24 * v55;
        *&v104 = 0;
        *(&v104 + 1) = v60;
        v105 = 24 * v55;
        *&v106 = 0;
        *(v60 + 8) = 0;
        *(v60 + 16) = 0;
        *v60 = 0;
        v61 = v34[1] - *v34;
        if (v61)
        {
          if ((v61 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v54 = (v60 + 24);
        v62 = *(a3 + 3);
        v63 = *(a3 + 4) - v62;
        v64 = v60 - v63;
        memcpy((v60 - v63), v62, v63);
        *(a3 + 3) = v64;
        *(a3 + 4) = v60 + 24;
        *(a3 + 5) = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v52 = 0;
        v52[1] = 0;
        v52[2] = 0;
        v53 = v34[1] - *v34;
        if (v53)
        {
          if ((v53 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v54 = v52 + 3;
        *(a3 + 4) = v52 + 3;
      }

      *(a3 + 4) = v54;
      operations_research::sat::LinearConstraintBuilder::Build(&v96, &v104);
      v26 = (a3 + 24);
      v66 = *(a3 + 1);
      v65 = *(a3 + 2);
      if (v66 >= v65)
      {
        v76 = *a3;
        v77 = v66 - *a3;
        v78 = 0xCCCCCCCCCCCCCCCDLL * (v77 >> 3) + 1;
        if (v78 > 0x666666666666666)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v79 = 0xCCCCCCCCCCCCCCCDLL * ((v65 - v76) >> 3);
        if (2 * v79 > v78)
        {
          v78 = 2 * v79;
        }

        if (v79 >= 0x333333333333333)
        {
          v80 = 0x666666666666666;
        }

        else
        {
          v80 = v78;
        }

        if (v80)
        {
          if (v80 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v81 = 8 * (v77 >> 3);
        *v81 = v104;
        *(v81 + 16) = v105;
        v82 = v106;
        v106 = 0uLL;
        *(v81 + 24) = v82;
        v83 = v81 - v77;
        if (v76 != v66)
        {
          v84 = v76;
          v85 = v83;
          do
          {
            v86 = *v84;
            *(v85 + 16) = *(v84 + 4);
            *v85 = v86;
            v87 = *(v84 + 3);
            v84[3] = 0;
            v84[4] = 0;
            *(v85 + 24) = v87;
            v84 += 5;
            v85 += 40;
          }

          while (v84 != v66);
          do
          {
            v88 = v76[4];
            v76[4] = 0;
            if (v88)
            {
              MEMORY[0x23EED9440](v88, 0x1000C8000313F17);
            }

            v89 = v76[3];
            v76[3] = 0;
            if (v89)
            {
              MEMORY[0x23EED9440](v89, 0x1000C8052888210);
            }

            v76 += 5;
          }

          while (v76 != v66);
          v76 = *a3;
        }

        v90 = v81 + 40;
        *a3 = v83;
        *(a3 + 1) = v81 + 40;
        *(a3 + 2) = 0;
        if (v76)
        {
          operator delete(v76);
        }

        v5 = v92;
        v26 = (a3 + 24);
        *(a3 + 1) = v90;
        v69 = *(&v106 + 1);
        *(&v106 + 1) = 0;
        if (!v69)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v67 = v104;
        *(v66 + 16) = v105;
        *v66 = v67;
        v68 = v106;
        v106 = 0uLL;
        *(v66 + 24) = v68;
        *(a3 + 1) = v66 + 40;
        v69 = *(&v106 + 1);
        *(&v106 + 1) = 0;
        if (!v69)
        {
LABEL_76:
          v70 = v106;
          *&v106 = 0;
          if (v70)
          {
            MEMORY[0x23EED9440](v70, 0x1000C8052888210);
          }

          if (*(&v98 + 1))
          {
            *&v99 = *(&v98 + 1);
            operator delete(*(&v98 + 1));
          }

          goto LABEL_80;
        }
      }

      MEMORY[0x23EED9440](v69, 0x1000C8000313F17);
      goto LABEL_76;
    }

LABEL_25:
    v23 = v91 + 1;
  }

  while (v91 + 1 != &v108);
  if (v101)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v100[0]);
  }

  if (v103)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v102[0]);
  }
}

void sub_23CC575F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AppendRoutesRelaxation(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v138 = *MEMORY[0x277D85DE8];
  if (*(this + 4))
  {
    return;
  }

  v5 = a2;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  if (*(this + 15) == 23)
  {
    v8 = *(this + 6);
  }

  else
  {
    v8 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  v9 = *(v8 + 16);
  v10 = *(v8 + 4);
  if (v9 != v10)
  {
    operations_research::sat::AppendRoutesRelaxation(v9, v10, &v123);
  }

  v11 = *(v8 + 10);
  if (v9 != v11)
  {
    operations_research::sat::AppendRoutesRelaxation(v9, v11, &v123);
  }

  v129[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v129[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v130 = 0;
  v127[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v127[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<operations_research::sat::Literal>,std::less<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::Literal>>>,256,false>>::EmptyNode(void)::empty_node;
  v128 = 0;
  if (v9 >= 1)
  {
    v12 = 0;
    v13 = 4 * v9;
    do
    {
      LODWORD(v123) = 0;
      v14 = *(this + 15);
      v15 = *(this + 6);
      if (v14 == 23)
      {
        v16 = *(this + 6);
      }

      else
      {
        v16 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
      }

      v17 = *(v16[9] + v12);
      if (~v17 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = ~v17;
      }

      v19 = __PAIR64__(*(*(v7 + 48) + 4 * v18), v17) >> 31;
      LODWORD(v123) = v19;
      if (v14 == 23)
      {
        v20 = *(v15[3] + v12);
      }

      else
      {
        v20 = *(qword_2810BED90 + v12);
        v15 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
      }

      LODWORD(v131) = v20;
      LODWORD(v134[0]) = *(v15[6] + v12);
      v135 = &unk_284F435C8;
      v136[0] = v19;
      v137 = &v135;
      operations_research::sat::NewIntegerVariableFromLiteral(operations_research::sat::Literal)::{lambda(operations_research::sat::Model *)#1}::operator()(v136, v5);
      if (v137 == &v135)
      {
        (*(*v137 + 4))(v137);
      }

      else if (v137)
      {
        (*(*v137 + 5))();
      }

      v21 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(v127, &v131);
      std::vector<int>::push_back[abi:ne200100](v21, &v123);
      v22 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(v129, v134);
      std::vector<int>::push_back[abi:ne200100](v22, &v123);
      v12 += 4;
    }

    while (v13 != v12);
  }

  v134[0] = v127;
  v134[1] = v129;
  v23 = v134;
  v120 = v5 + 40;
  v24 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v25 = vdup_n_s8(v24 & 0x7F);
  v118 = (a3 + 24);
  v119 = v24 >> 7;
  do
  {
    v117 = v23;
    v26 = (*v23)[1];
    v27 = ***v23;
    v122 = v26[10];
    if (v27 != v26 || v26[10] != 0)
    {
      v29 = 0;
      v121 = (*v23)[1];
      while (1)
      {
        v30 = &v27[32 * v29];
        v32 = *(v30 + 4);
        v31 = v30 + 16;
        if (v32)
        {
          if (*(v31 + 2) - *(v31 + 1) >= 5uLL)
          {
            break;
          }
        }

LABEL_81:
        if (v27[11])
        {
          if (++v29 == v27[10])
          {
            v73 = v27;
            while (1)
            {
              v74 = *v73;
              if (*(*v73 + 11))
              {
                break;
              }

              v75 = v73[8];
              v73 = *v73;
              if (v75 != v74[10])
              {
                v27 = v74;
                v29 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v76 = &v27[8 * (v29 + 1) + 240];
          do
          {
            v27 = *v76;
            v77 = *(*v76 + 11);
            v76 = *v76 + 240;
          }

          while (!v77);
          v29 = 0;
        }

        if (v27 == v26 && v29 == v122)
        {
          goto LABEL_25;
        }
      }

      v33 = *(v5 + 3);
      if (v33 > 1)
      {
        v35 = 0;
        _X9 = *v120;
        __asm { PRFM            #4, [X9] }

        v41 = (v119 ^ (*v120 >> 12)) & v33;
        v42 = *(*v120 + v41);
        v43 = vceq_s8(v42, v25);
        if (!v43)
        {
          goto LABEL_41;
        }

LABEL_38:
        v44 = *(v5 + 6);
        while (1)
        {
          v45 = (v41 + (__clz(__rbit64(v43)) >> 3)) & v33;
          if (*(v44 + 16 * v45) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v43 &= ((v43 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v43)
          {
LABEL_41:
            while (!*&vceq_s8(v42, 0x8080808080808080))
            {
              v35 += 8;
              v41 = (v35 + v41) & v33;
              v42 = *&_X9[v41];
              v43 = vceq_s8(v42, v25);
              if (v43)
              {
                goto LABEL_38;
              }
            }

            goto LABEL_45;
          }
        }

        v46 = (v44 + 16 * v45);
        if (&_X9[v45])
        {
          goto LABEL_36;
        }
      }

      else if (*(v5 + 4) >= 2uLL)
      {
        v46 = *v120;
        if (*v120 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v46 = v120;
        }

        v58 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v120 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v58 = 0;
        }

        if (v58)
        {
LABEL_36:
          v34 = *(v46 + 1);
          goto LABEL_46;
        }
      }

LABEL_45:
      v34 = 0;
LABEL_46:
      v123 = v34;
      v124 = xmmword_23CE4D220;
      v125 = 0u;
      v126 = 0u;
      v47 = *(v31 + 1);
      v48 = *(v31 + 2);
      if (v47 != v48)
      {
        while ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v123, *v47, 1) & 1) != 0)
        {
          if (++v47 == v48)
          {
            goto LABEL_49;
          }
        }

        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v131, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 561);
LABEL_117:
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v131);
      }

LABEL_49:
      v50 = *(a3 + 4);
      v49 = *(a3 + 5);
      if (v50 >= v49)
      {
        v54 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *v118) >> 3);
        v55 = v54 + 1;
        if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v56 = 0xAAAAAAAAAAAAAAABLL * ((v49 - *v118) >> 3);
        if (2 * v56 > v55)
        {
          v55 = 2 * v56;
        }

        if (v56 >= 0x555555555555555)
        {
          v57 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v57 = v55;
        }

        *(&v133 + 1) = a3 + 24;
        if (v57)
        {
          if (v57 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v59 = 24 * v54;
        *&v131 = 0;
        *(&v131 + 1) = v59;
        v132 = 24 * v54;
        *&v133 = 0;
        *(v59 + 8) = 0;
        *(v59 + 16) = 0;
        *v59 = 0;
        v61 = *(v31 + 1);
        v60 = *(v31 + 2);
        if (v60 != v61)
        {
          if (((v60 - v61) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v53 = (v59 + 24);
        v62 = *(a3 + 3);
        v63 = *(a3 + 4) - v62;
        v64 = v59 - v63;
        memcpy((v59 - v63), v62, v63);
        *(a3 + 3) = v64;
        *(a3 + 4) = v59 + 24;
        *(a3 + 5) = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        *v50 = 0;
        v50[1] = 0;
        v50[2] = 0;
        v52 = *(v31 + 1);
        v51 = *(v31 + 2);
        if (v51 != v52)
        {
          if (((v51 - v52) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v53 = v50 + 3;
        *(a3 + 4) = v50 + 3;
      }

      v65 = v5;
      *(a3 + 4) = v53;
      operations_research::sat::LinearConstraintBuilder::Build(&v123, &v131);
      v67 = *(a3 + 1);
      v66 = *(a3 + 2);
      if (v67 >= v66)
      {
        v78 = *a3;
        v79 = v67 - *a3;
        v80 = 0xCCCCCCCCCCCCCCCDLL * (v79 >> 3) + 1;
        if (v80 > 0x666666666666666)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v81 = 0xCCCCCCCCCCCCCCCDLL * ((v66 - v78) >> 3);
        if (2 * v81 > v80)
        {
          v80 = 2 * v81;
        }

        if (v81 >= 0x333333333333333)
        {
          v82 = 0x666666666666666;
        }

        else
        {
          v82 = v80;
        }

        if (v82)
        {
          if (v82 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v83 = 8 * (v79 >> 3);
        *v83 = v131;
        *(v83 + 16) = v132;
        v84 = v133;
        v133 = 0uLL;
        *(v83 + 24) = v84;
        v85 = v83 - v79;
        if (v78 != v67)
        {
          v86 = v78;
          v87 = v85;
          do
          {
            v88 = *v86;
            *(v87 + 16) = *(v86 + 4);
            *v87 = v88;
            v89 = *(v86 + 3);
            v86[3] = 0;
            v86[4] = 0;
            *(v87 + 24) = v89;
            v86 += 5;
            v87 += 40;
          }

          while (v86 != v67);
          do
          {
            v90 = v78[4];
            v78[4] = 0;
            if (v90)
            {
              MEMORY[0x23EED9440](v90, 0x1000C8000313F17);
            }

            v91 = v78[3];
            v78[3] = 0;
            if (v91)
            {
              MEMORY[0x23EED9440](v91, 0x1000C8052888210);
            }

            v78 += 5;
          }

          while (v78 != v67);
          v78 = *a3;
        }

        v92 = v83 + 40;
        *a3 = v85;
        *(a3 + 1) = v92;
        *(a3 + 2) = 0;
        v5 = v65;
        if (v78)
        {
          operator delete(v78);
        }

        v26 = v121;
        *(a3 + 1) = v92;
        v71 = *(&v133 + 1);
        *(&v133 + 1) = 0;
        if (!v71)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v68 = v131;
        *(v67 + 16) = v132;
        *v67 = v68;
        v69 = v133;
        v133 = 0uLL;
        *(v67 + 24) = v69;
        v70 = v67 + 40;
        v5 = v65;
        v26 = v121;
        *(a3 + 1) = v70;
        v71 = *(&v133 + 1);
        *(&v133 + 1) = 0;
        if (!v71)
        {
LABEL_77:
          v72 = v133;
          *&v133 = 0;
          if (v72)
          {
            MEMORY[0x23EED9440](v72, 0x1000C8052888210);
          }

          if (*(&v125 + 1))
          {
            *&v126 = *(&v125 + 1);
            operator delete(*(&v125 + 1));
          }

          goto LABEL_81;
        }
      }

      MEMORY[0x23EED9440](v71, 0x1000C8000313F17);
      goto LABEL_77;
    }

LABEL_25:
    v23 = v117 + 1;
  }

  while (v117 + 1 != &v135);
  v93 = *(v5 + 3);
  if (v93 > 1)
  {
    v95 = 0;
    _X9 = *v120;
    __asm { PRFM            #4, [X9] }

    v98 = (v119 ^ (*v120 >> 12)) & v93;
    v99 = *(*v120 + v98);
    v100 = vceq_s8(v99, v25);
    if (!v100)
    {
      goto LABEL_126;
    }

LABEL_123:
    v101 = *(v5 + 6);
    while (1)
    {
      v102 = (v98 + (__clz(__rbit64(v100)) >> 3)) & v93;
      if (*(v101 + 16 * v102) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v100 &= ((v100 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v100)
      {
LABEL_126:
        while (!*&vceq_s8(v99, 0x8080808080808080))
        {
          v95 += 8;
          v98 = (v95 + v98) & v93;
          v99 = *&_X9[v98];
          v100 = vceq_s8(v99, v25);
          if (v100)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_130;
      }
    }

    v103 = (v101 + 16 * v102);
    if (&_X9[v102])
    {
      goto LABEL_121;
    }

LABEL_130:
    v94 = 0;
  }

  else
  {
    if (*(v5 + 4) < 2uLL)
    {
      goto LABEL_130;
    }

    v103 = *v120;
    if (*v120 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      v103 = v120;
    }

    v116 = &absl::lts_20240722::container_internal::kSooControl;
    if (*v120 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      v116 = 0;
    }

    if (!v116)
    {
      goto LABEL_130;
    }

LABEL_121:
    v94 = *(v103 + 1);
  }

  v123 = v94;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  LODWORD(v131) = 0;
  v104 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(v129, &v131);
  v105 = *v104;
  v106 = *(v104 + 1);
  if (*v104 != v106)
  {
    while ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v123, *v105, 1) & 1) != 0)
    {
      if (++v105 == v106)
      {
        goto LABEL_134;
      }
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v131, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 573);
    goto LABEL_117;
  }

LABEL_134:
  LODWORD(v131) = 0;
  v107 = absl::lts_20240722::container_internal::btree_map_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>>::operator[]<int>(v127, &v131);
  v108 = *v107;
  v109 = *(v107 + 1);
  if (*v107 != v109)
  {
    while ((operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v123, *v108, -1) & 1) != 0)
    {
      if (++v108 == v109)
      {
        goto LABEL_137;
      }
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v131, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 576);
    goto LABEL_117;
  }

LABEL_137:
  operations_research::sat::LinearConstraintBuilder::Build(&v123, &v131);
  v110 = *(a3 + 1);
  if (v110 >= *(a3 + 2))
  {
    v113 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(a3, &v131);
  }

  else
  {
    v111 = v131;
    *(v110 + 16) = v132;
    *v110 = v111;
    v112 = v133;
    v133 = 0uLL;
    *(v110 + 24) = v112;
    v113 = v110 + 40;
  }

  *(a3 + 1) = v113;
  v114 = *(&v133 + 1);
  *(&v133 + 1) = 0;
  if (v114)
  {
    MEMORY[0x23EED9440](v114, 0x1000C8000313F17);
  }

  v115 = v133;
  *&v133 = 0;
  if (v115)
  {
    MEMORY[0x23EED9440](v115, 0x1000C8052888210);
  }

  if (*(&v125 + 1))
  {
    *&v126 = *(&v125 + 1);
    operator delete(*(&v125 + 1));
  }

  if (v128)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v127[0]);
  }

  if (v130)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(v129[0]);
  }
}

void sub_23CC582A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, _BYTE *a26, uint64_t a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(a26);
  }

  if (a31)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,std::vector<int>,std::less<int>,std::allocator<std::pair<int const,std::vector<int>>>,256,false>>::clear_and_delete(a29);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::AddCircuitCutGenerator(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v6 = *(this + 15);
  v7 = *(this + 6);
  if (v6 == 15)
  {
    v8 = *(this + 6);
  }

  else
  {
    v8 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  v9 = 4 * *(v8 + 4);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v6 == 15)
  {
    v10 = v7;
  }

  else
  {
    v10 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  v11 = 4 * *(v10 + 10);
  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v12 = *(this + 6);
  if (*(this + 15) != 15)
  {
    v12 = &operations_research::sat::_CircuitConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v12 + 16, &v17);
  v13 = operations_research::sat::ReindexArcs<std::vector<int>>(&v22, &v19, 0);
  memset(v16, 0, sizeof(v16));
  if (v23 != v22)
  {
    if (((v23 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(v15, 0, sizeof(v15));
  if (v20 != v19)
  {
    if (((v20 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(__p, 0, sizeof(__p));
  if (v18 != v17)
  {
    if (((v18 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::CreateStronglyConnectedGraphCutGenerator(v13, v16, v15, __p, a2, v25);
}

void sub_23CC5891C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC58A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    JUMPOUT(0x23CC589B0);
  }

  JUMPOUT(0x23CC58984);
}

void sub_23CC58A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    JUMPOUT(0x23CC589C0);
  }

  JUMPOUT(0x23CC5898CLL);
}

void sub_23CC58A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (!a22)
  {
    JUMPOUT(0x23CC589E8);
  }

  JUMPOUT(0x23CC589E4);
}

void sub_23CC58A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (!a25)
  {
    JUMPOUT(0x23CC589F8);
  }

  JUMPOUT(0x23CC589F4);
}

void operations_research::sat::AddRoutesCutGenerator(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  v60[8] = *MEMORY[0x277D85DE8];
  v6 = *(this + 15);
  if (v6 == 23)
  {
    v7 = *(this + 6);
  }

  else
  {
    v7 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  v8 = 4 * *(v7 + 4);
  if (v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v6 == 23)
  {
    v9 = *(this + 6);
  }

  else
  {
    v9 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  v10 = 4 * *(v9 + 10);
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
  v11 = *(this + 6);
  if (*(this + 15) != 23)
  {
    v11 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
  }

  operations_research::sat::CpModelMapping::Literals<google::protobuf::RepeatedField<int>>(v11 + 16, &v58);
  v50 = a2;
  if (*(this + 15) == 23)
  {
    v12 = *(this + 6);
    v13 = *(v12 + 16);
    if (v13 < 1)
    {
      v17 = 0;
      goto LABEL_36;
    }

    v14 = *(v12 + 24);
    v15 = *(v12 + 48);
    if (v13 >= 8)
    {
      v16 = v13 & 0x7FFFFFF8;
      v19 = v14 + 1;
      v20 = v15 + 1;
      v21 = 0uLL;
      v22.i64[0] = 0x100000001;
      v22.i64[1] = 0x100000001;
      v23 = v16;
      v24 = 0uLL;
      do
      {
        v21 = vmaxq_s32(vmaxq_s32(v21, vaddq_s32(v19[-1], v22)), vaddq_s32(v20[-1], v22));
        v24 = vmaxq_s32(vmaxq_s32(v24, vaddq_s32(*v19, v22)), vaddq_s32(*v20, v22));
        v19 += 2;
        v20 += 2;
        v23 -= 8;
      }

      while (v23);
      v17 = vmaxvq_s32(vmaxq_s32(v21, v24));
      if (v16 == v13)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v25 = &v14->i32[v16];
    v26 = &v15->i32[v16];
    v27 = v13 - v16;
    do
    {
      v29 = *v25++;
      v28 = v29;
      if (v17 <= v29 + 1)
      {
        v30 = v28 + 1;
      }

      else
      {
        v30 = v17;
      }

      v32 = *v26++;
      v31 = v32;
      if (v30 <= v32 + 1)
      {
        v17 = v31 + 1;
      }

      else
      {
        v17 = v30;
      }

      --v27;
    }

    while (v27);
LABEL_36:
    v33 = *(v12 + 88);
    if (v33 && *(v12 + 112))
    {
      v34 = 4 * v33;
      if (v34)
      {
        goto LABEL_39;
      }

      goto LABEL_58;
    }

    goto LABEL_63;
  }

  if (dword_2810BED88 < 1)
  {
    v17 = 0;
    goto LABEL_55;
  }

  if (dword_2810BED88 > 7)
  {
    v18 = dword_2810BED88 & 0x7FFFFFF8;
    v35 = (qword_2810BED90 + 16);
    v36 = (qword_2810BEDA8 + 16);
    v37 = 0uLL;
    v38.i64[0] = 0x100000001;
    v38.i64[1] = 0x100000001;
    v39 = v18;
    v40 = 0uLL;
    do
    {
      v37 = vmaxq_s32(vmaxq_s32(v37, vaddq_s32(v35[-1], v38)), vaddq_s32(v36[-1], v38));
      v40 = vmaxq_s32(vmaxq_s32(v40, vaddq_s32(*v35, v38)), vaddq_s32(*v36, v38));
      v35 += 2;
      v36 += 2;
      v39 -= 8;
    }

    while (v39);
    v17 = vmaxvq_s32(vmaxq_s32(v37, v40));
    if (v18 == dword_2810BED88)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v41 = (qword_2810BED90 + 4 * v18);
  v42 = (qword_2810BEDA8 + 4 * v18);
  v43 = dword_2810BED88 - v18;
  do
  {
    v45 = *v41++;
    v44 = v45;
    if (v17 <= v45 + 1)
    {
      v46 = v44 + 1;
    }

    else
    {
      v46 = v17;
    }

    v48 = *v42++;
    v47 = v48;
    if (v46 <= v48 + 1)
    {
      v17 = v47 + 1;
    }

    else
    {
      v17 = v46;
    }

    --v43;
  }

  while (v43);
LABEL_55:
  if (dword_2810BEDD0 && qword_2810BEDE8)
  {
    v34 = 4 * dword_2810BEDD0;
    if (v34)
    {
LABEL_39:
      if (v34 < 0x7FFFFFFFFFFFFFFDLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

LABEL_58:
    memset(v54, 0, sizeof(v54));
    memset(v53, 0, sizeof(v53));
    memset(v52, 0, sizeof(v52));
    if (v59 != v58)
    {
      if (((v59 - v58) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    memset(v51, 0, sizeof(v51));
    if (*(this + 15) == 23)
    {
      v49 = *(this + 6);
    }

    else
    {
      v49 = &operations_research::sat::_RoutesConstraintProto_default_instance_;
    }

    operations_research::sat::CreateCVRPCutGenerator(v17, v54, v53, v52, v51, v49[14], v50, v60);
  }

LABEL_63:
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  memset(__p, 0, sizeof(__p));
  if (v59 != v58)
  {
    if (((v59 - v58) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::CreateStronglyConnectedGraphCutGenerator(v17, v57, v56, __p, v50, v60);
}

void sub_23CC595AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC59744()
{
  if (v0)
  {
    JUMPOUT(0x23CC59730);
  }

  JUMPOUT(0x23CC5970CLL);
}

void sub_23CC59750()
{
  if (v0)
  {
    JUMPOUT(0x23CC59730);
  }

  JUMPOUT(0x23CC5970CLL);
}

void sub_23CC5975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a12)
  {
    JUMPOUT(0x23CC5971CLL);
  }

  JUMPOUT(0x23CC59714);
}

uint64_t operations_research::sat::DetectMakespan(uint64_t *a1, void *a2, int *a3, void *a4)
{
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a4);
  v10 = *a3;
  if (*a3 == -1 || !(*(*(v8 + 5) + 8 * v10) + *(*(v8 + 5) + ((8 * v10) ^ 8))))
  {
    v11 = 0x8000000000000002;
    v12 = *a1;
    v13 = a1[1];
    v14 = (v13 - *a1) >> 2;
    if (v13 != *a1)
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = *(v12 + 4 * v15);
        v18 = *(v9[5] + 4 * v17);
        if (v18 == -1 || ((*(*(v9[1] + 8) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 & 0x3F ^ 1)) & 1) == 0)
        {
          v19 = (v9[11] + 24 * v17);
          v20 = *(v19 + 2);
          if (*v19 != -1)
          {
            v20 -= *(*(v8 + 5) + ((8 * *v19) ^ 8)) * *(v19 + 1);
          }

          if (v11 <= v20)
          {
            v11 = v20;
          }
        }

        v15 = v16++;
      }

      while (v14 > v15);
    }

    v21 = *(a3 + 2);
    if (v10 != -1)
    {
      v21 += *(*(v8 + 5) + 8 * v10) * *(a3 + 1);
    }

    if (v13 != v12)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(v12 + 4 * v22);
        v25 = *(v9[5] + 4 * v24);
        if (v25 != -1 && ((*(*(v9[1] + 8) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_17;
        }

        v26 = v9[11] + 24 * v24;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        v30 = (*a2 + 24 * v22);
        if (*v30 == -1)
        {
          if (*(v30 + 2) != v21)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v31 = *(v8 + 5);
          v32 = 8 * *v30;
          v33 = *(v31 + v32);
          if (v33 + *(v31 + (v32 ^ 8)) || *(v30 + 2) + v33 * *(v30 + 1) != v21)
          {
            goto LABEL_17;
          }
        }

        if (v27 != -1)
        {
          v34 = *(v8 + 5);
          v35 = 8 * v27;
          v36 = *(v34 + v35);
          if (v36 + *(v34 + (v35 ^ 8)))
          {
            goto LABEL_17;
          }

          v29 += v36 * v28;
        }

        if (v29 == v11)
        {
          v37 = (v9[14] + 24 * v24);
          v38 = *(v37 + 2);
          if (*v37 != -1)
          {
            v38 += *(*(v8 + 5) + 8 * *v37) * *(v37 + 1);
          }

          if (v38 >= 1)
          {
            v41 = v23 & 0xFFFFFF00;
            v40 = v23;
            v39 = 0x100000000;
            return v39 | v41 | v40;
          }
        }

LABEL_17:
        v22 = ++v23;
      }

      while (v14 > v23);
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  return v39 | v41 | v40;
}

void operations_research::sat::AppendNoOverlapRelaxationAndCutGenerator(operations_research::sat *this, const operations_research::sat::ConstraintProto *a2, operations_research::sat::Model *a3, operations_research::sat::LinearRelaxation *a4)
{
  if (!*(this + 4))
  {
    operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a2);
    v7 = *(this + 6);
    if (*(this + 15) != 20)
    {
      v7 = &operations_research::sat::_NoOverlapConstraintProto_default_instance_;
    }

    operations_research::sat::CpModelMapping::Intervals<google::protobuf::RepeatedField<int>>(v7 + 4, &v21);
    memset(v20, 0, sizeof(v20));
    if (v22 != v21)
    {
      if ((v22 - v21) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0;
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a2);
    v19[0] = 0;
    v19[24] = 0;
    v18[0] = -1;
    *&v18[2] = xmmword_23CE48D30;
    v10 = operations_research::sat::DetectMakespan(&v21, v20, v18, a2);
    v11 = v10;
    if ((v10 & 0x100000000) != 0)
    {
      v12 = &v21[v10];
      v13 = v9[8] + 24 * *v12;
      v14 = *(v13 + 16);
      *v19 = *v13;
      *&v19[16] = v14;
      v19[24] = 1;
      v8 = -24;
      v15 = v22 - (v12 + 1);
      if (v22 != v12 + 1)
      {
        memmove(v12, v12 + 1, v22 - (v12 + 1));
      }

      v22 = (v12 + v15);
    }

    v16 = operations_research::sat::IntervalsRepository::GetOrCreateHelper(v9, &v21, 0);
    if (operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v16, 1))
    {
      DemandHelper = operations_research::sat::IntervalsRepository::GetOrCreateDemandHelper(v9, v16, 0, 0xAAAAAAAAAAAAAAABLL * (v8 >> 3));
      if ((v11 & 0x100000000) == 0)
      {
        *v19 = *v18;
        *&v19[9] = *(&v18[2] + 1);
      }

      v18[0] = -1;
      *&v18[2] = xmmword_23CE48D30;
      operations_research::sat::AddCumulativeRelaxation(v18, v16, DemandHelper, v19, a2, a3);
      if (*(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2) + 143) >= 2)
      {
        operations_research::sat::AddNoOverlapCutGenerator(v16, v19, a2, a3);
      }
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }
}

void sub_23CC59D24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
    v4 = *(v2 - 88);
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v4 = *(v2 - 88);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  *(v2 - 80) = v4;
  operator delete(v4);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::DetectMakespanFromPrecedences(operations_research::sat::_anonymous_namespace_ *this, const operations_research::sat::SchedulingConstraintHelper *a2, operations_research::sat::Model *a3)
{
  if (!(-1431655765 * ((*(a2 + 11) - *(a2 + 10)) >> 3)))
  {
    *this = 0;
    *(this + 24) = 0;
    return;
  }

  v4 = *(a2 + 13);
  v5 = *(a2 + 14);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v5 == v4)
  {
LABEL_18:
    __p = 0;
    v36 = 0;
    v37 = 0;
    v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a3);
    operations_research::sat::PrecedenceRelations::ComputeFullPrecedences(v16, &v38, &__p);
    v17 = __p;
    if (__p == v36)
    {
LABEL_22:
      *this = 0;
      *(this + 24) = 0;
      if (!v17)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3);
      v19 = __p;
      while (1)
      {
        v20 = v19[1];
        v21 = v19[2];
        if (v18 == (v21 - v20) >> 2)
        {
          break;
        }

        v19 += 7;
        if (v19 == v36)
        {
          goto LABEL_22;
        }
      }

      v22 = 0x7FFFFFFFFFFFFFFELL;
      v34 = 0x7FFFFFFFFFFFFFFELL;
      if (v21 != v20)
      {
        v23 = 0;
        v24 = v19[4];
        v25 = 1;
        do
        {
          v26 = *(v24 + 8 * v23) - *(v4 + 24 * *(v20 + 4 * v23) + 16);
          if (v26 < v22)
          {
            v22 = v26;
          }

          v34 = v22;
          v23 = v25++;
        }

        while (v18 > v23);
      }

      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v33, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 708);
        v31 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v33, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, "Makespan detected >= ends + ", 0x1CuLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v31, &v34);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v33);
        v22 = v34;
      }

      *this = *v19;
      *(this + 1) = 1;
      *(this + 2) = -v22;
      *(this + 24) = 1;
      v17 = __p;
      if (!__p)
      {
LABEL_43:
        v6 = v38;
        if (!v38)
        {
          return;
        }

        goto LABEL_44;
      }
    }

    v27 = v36;
    v28 = v17;
    if (v36 != v17)
    {
      do
      {
        v29 = *(v27 - 3);
        if (v29)
        {
          *(v27 - 2) = v29;
          operator delete(v29);
        }

        v30 = *(v27 - 6);
        if (v30)
        {
          *(v27 - 5) = v30;
          operator delete(v30);
        }

        v27 -= 7;
      }

      while (v27 != v17);
      v28 = __p;
    }

    v36 = v17;
    operator delete(v28);
    goto LABEL_43;
  }

  v6 = 0;
  v7 = 0;
  v8 = v4;
  while (*v8 != -1 && *(v8 + 8) == 1)
  {
    v9 = v7 - v6;
    v10 = (v7 - v6) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (-v6 >> 1 > v11)
    {
      v11 = -v6 >> 1;
    }

    if (-v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      if (!(v12 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = v10;
    v14 = (4 * v10);
    v15 = &v14[-v13];
    *v14 = *v8;
    v7 = v14 + 1;
    memcpy(v15, v6, v9);
    v38 = v15;
    v40 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v6 = v15;
    v39 = v7;
    v8 += 24;
    if (v8 == v5)
    {
      goto LABEL_18;
    }
  }

  *this = 0;
  *(this + 24) = 0;
  if (v6)
  {
LABEL_44:
    v39 = v6;
    operator delete(v6);
  }
}

void sub_23CC5A0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  std::vector<operations_research::sat::FullIntegerPrecedence>::~vector[abi:ne200100](&a15);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::AddCumulativeRelaxation(operations_research::sat::AffineExpression *a1, void *a2, operations_research::sat::SchedulingDemandHelper *this, int8x8_t *a4, void *a5, uint64_t a6)
{
  v9 = 0xAAAAAAAAAAAAAAABLL * ((a2[11] - a2[10]) >> 3);
  operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(this);
  v155 = 0x8000000000000002;
  v156 = 0x7FFFFFFFFFFFFFFELL;
  v138 = a5;
  v141 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  v142 = v9;
  if (v9 >= 1)
  {
    v10 = 0;
    v143 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v9 & 0x7FFFFFFF;
    v15 = 0x7FFFFFFFFFFFFFFELL;
    v16 = 0x8000000000000002;
    while (1)
    {
      v18 = *(a2[19] + 4 * v10);
      if (v18 != -1 && ((*(*(a2[3] + 24) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 & 0x3F ^ 1)) & 1) != 0)
      {
        goto LABEL_10;
      }

      v19 = (a2[16] + 24 * v10);
      v20 = *(v19 + 2);
      if (*v19 != -1)
      {
        v20 -= *(*(a2[4] + 40) + ((8 * *v19) ^ 8)) * *(v19 + 1);
      }

      if (!v20 || !operations_research::sat::SchedulingDemandHelper::DemandMax(this, v10))
      {
        goto LABEL_10;
      }

      if (*(a2[19] + 4 * v10) == -1)
      {
        goto LABEL_20;
      }

      if (*(*(this + 8) + 8 * v10) >= 1)
      {
        break;
      }

LABEL_10:
      if (++v10 == v14)
      {
        goto LABEL_71;
      }
    }

    LODWORD(v143) = v143 + 1;
LABEL_20:
    v21 = *(a2[16] + 24 * v10);
    if (v21 != -1 && *(*(a2[4] + 40) + 8 * v21) + *(*(a2[4] + 40) + ((8 * v21) ^ 8)) || !operations_research::sat::SchedulingDemandHelper::DemandIsFixed(this, v10))
    {
      ++HIDWORD(v143);
    }

    if (v11 != 1)
    {
      v22 = *(a2[16] + 24 * v10);
      if (v22 != -1 && *(*(a2[4] + 40) + 8 * v22) + *(*(a2[4] + 40) + ((8 * v22) ^ 8)))
      {
        v11 = 1;
      }

      else
      {
        v23 = *(a2[29] + 8 * v10);
        if ((v23 & 0x8000000000000000) != 0)
        {
          v23 = -v23;
        }

        if (v11 >= 0)
        {
          v24 = v11;
        }

        else
        {
          v24 = -v11;
        }

        if (v23 >= v24)
        {
          v11 = v24;
        }

        else
        {
          v11 = v23;
        }

        if (v23 <= v24)
        {
          v23 = v24;
        }

        if (v11)
        {
          v25 = v23 % v11;
          if (v25)
          {
            v26 = v25 >> __clz(__rbit64(v25));
            v27 = v11;
            do
            {
              v28 = v27 >> __clz(__rbit64(v27));
              v27 = v28 - v26;
              if (v26 > v28)
              {
                v27 = v26 - v28;
              }

              if (v26 >= v28)
              {
                v26 = v28;
              }
            }

            while (v27);
            v11 = v26 << __clz(__rbit64(v25 | v11));
          }
        }

        else
        {
          v11 = v23;
        }
      }
    }

    if (v12 != 1)
    {
      if (operations_research::sat::SchedulingDemandHelper::DemandIsFixed(this, v10))
      {
        v29 = operations_research::sat::SchedulingDemandHelper::DemandMin(this, v10);
        if (v29 >= 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = -v29;
        }

        if (v12 >= 0)
        {
          v31 = v12;
        }

        else
        {
          v31 = -v12;
        }

        if (v30 >= v31)
        {
          v12 = v31;
        }

        else
        {
          v12 = v30;
        }

        if (v30 <= v31)
        {
          v30 = v31;
        }

        if (v12)
        {
          v32 = v30 % v12;
          if (v32)
          {
            v33 = v32 >> __clz(__rbit64(v32));
            v34 = v12;
            do
            {
              v35 = v34 >> __clz(__rbit64(v34));
              v34 = v35 - v33;
              if (v33 > v35)
              {
                v34 = v33 - v35;
              }

              if (v33 >= v35)
              {
                v33 = v35;
              }
            }

            while (v34);
            v12 = v33 << __clz(__rbit64(v32 | v12));
          }
        }

        else
        {
          v12 = v30;
        }
      }

      else
      {
        v12 = 1;
      }
    }

    ++v13;
    if (*(a2[30] + 8 * v10) < v15)
    {
      v15 = *(a2[30] + 8 * v10);
    }

    v156 = v15;
    v17 = *(a2[33] + 8 * v10);
    if (v16 <= -v17)
    {
      v16 = -v17;
    }

    v155 = v16;
    goto LABEL_10;
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
  v143 = 0;
LABEL_71:
  if (dword_2810C0A48 <= 1)
  {
    v36 = v142;
    goto LABEL_73;
  }

  v36 = v142;
  if (!absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_24, dword_2810C0A48))
  {
LABEL_73:
    if (!v13)
    {
      return;
    }

    goto LABEL_74;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(&v147, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 850);
  v122 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v147, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v122, "Span [", 6uLL);
  v123 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v122, &v156);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v123, "..", 2uLL);
  v124 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v123, &v155);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v124, "] with ", 7uLL);
  LODWORD(v144) = v143;
  v125 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v124, &v144);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v125, " optional intervals, and ", 0x19uLL);
  LODWORD(v144) = HIDWORD(v143);
  v126 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v125, &v144);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v126, " variable energy tasks out of ", 0x1EuLL);
  *&v144 = v13;
  v127 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v126, &v144);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v127, "/", 1uLL);
  LODWORD(v144) = v142;
  v128 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v127, &v144);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v128, " intervals", 0xAuLL);
  v129 = &byte_23CE7F131;
  if (a4[3].i8[0])
  {
    v129 = ", and 1 makespan";
  }

  *&v152 = v129;
  v130 = absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(v128, &v152);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v130, " sizes_gcd: ", 0xCuLL);
  *&v144 = v11;
  v131 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v130, &v144);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v131, " demands_gcd: ", 0xEuLL);
  *&v144 = v12;
  absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v131, &v144);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v147);
  v36 = v142;
  if (!v13)
  {
    return;
  }

LABEL_74:
  if (!(HIDWORD(v143) + v143) && v11 == 1 && v12 == 1)
  {
    return;
  }

  if (v11 == 1 || (a4[3].i8[0] & 1) != 0)
  {
    v37 = v138[3];
    if (v37 > 1)
    {
      v40 = 0;
      _X11 = v138[5];
      __asm { PRFM            #4, [X11] }

      v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v47 = vdup_n_s8(v46 & 0x7F);
      v48 = ((v46 >> 7) ^ (_X11 >> 12)) & v37;
      v49 = *(_X11 + v48);
      v50 = vceq_s8(v49, v47);
      if (!v50)
      {
        goto LABEL_88;
      }

LABEL_85:
      v51 = v138[6];
      while (1)
      {
        v52 = (v48 + (__clz(__rbit64(v50)) >> 3)) & v37;
        if (*(v51 + 16 * v52) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v50 &= ((v50 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v50)
        {
LABEL_88:
          while (!*&vceq_s8(v49, 0x8080808080808080))
          {
            v40 += 8;
            v48 = (v40 + v48) & v37;
            v49 = *(_X11 + v48);
            v50 = vceq_s8(v49, v47);
            if (v50)
            {
              goto LABEL_85;
            }
          }

          goto LABEL_91;
        }
      }

      v38 = (v51 + 16 * v52);
      v39 = (_X11 + v52);
      if (_X11 + v52)
      {
        goto LABEL_92;
      }
    }

    else if (v138[4] >= 2uLL && (v38 = v138 + 5, v138[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d))
    {
      v39 = &absl::lts_20240722::container_internal::kSooControl;
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
LABEL_92:
        v39 = v38[1];
      }
    }

    else
    {
LABEL_91:
      v39 = 0;
    }

    v147 = v39;
    v148 = 0x8000000000000002;
    v149 = 0u;
    *__p = 0u;
    v151 = 0;
    if (v36 >= 1)
    {
      v53 = 0;
      for (i = 0; (v36 & 0x7FFFFFFF) != i; ++i)
      {
        v59 = *(a2[19] + 4 * i);
        if (v59 == -1)
        {
          v62 = (*(this + 17) + v53);
          v63 = *v62;
          v64 = v62[1];
          if (v63 == v64)
          {
            v55 = (a2[16] + v53);
            v56 = *(v55 + 2);
            v144 = *v55;
            v145 = v56;
            v57 = (*(this + 4) + v53);
            v58 = *(v57 + 2);
            v152 = *v57;
            v153 = v58;
            operations_research::sat::LinearConstraintBuilder::AddQuadraticLowerBound(&v147, &v144, &v152, v141, 0);
            goto LABEL_96;
          }

          v61 = operations_research::sat::LinearConstraintBuilder::AddDecomposedProduct(&v147, v63, 0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 3));
        }

        else
        {
          if ((*(*(a2[3] + 24) + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v59 & 0x3F ^ 1)))
          {
            goto LABEL_96;
          }

          v60 = *(*(this + 8) + 8 * i);
          if (!v60)
          {
            goto LABEL_96;
          }

          v61 = operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v147, v59, v60);
        }

        if ((v61 & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_96:
        v53 += 24;
      }
    }

    v65 = v156;
    if (a4[3].i8[0])
    {
      v66 = a4[1];
    }

    else
    {
      v66 = 0;
    }

    v67 = &v155;
    if (a4[3].i8[0])
    {
      v67 = a4 + 2;
      v68 = -1;
    }

    else
    {
      v68 = 0;
    }

    v69 = vdup_n_s32(v68);
    v70 = *v67;
    *&v144 = vorn_s8(vand_s8(*a4, v69), v69);
    *(&v144 + 1) = v66;
    v145 = v70;
    v71 = *(a1 + 2);
    if (*a1 != -1)
    {
      v71 -= *(*(v141 + 5) + ((8 * *a1) ^ 8)) * *(a1 + 1);
    }

    operations_research::sat::LinearConstraintBuilder::AddTerm(&v147, &v144, -v71);
    LODWORD(v144) = -1;
    *(&v144 + 1) = 0;
    v145 = v65;
    v72 = *(a1 + 2);
    if (*a1 != -1)
    {
      v72 -= *(*(v141 + 5) + ((8 * *a1) ^ 8)) * *(a1 + 1);
    }

    v73 = a6;
    operations_research::sat::LinearConstraintBuilder::AddTerm(&v147, &v144, v72);
    operations_research::sat::LinearConstraintBuilder::Build(&v147, &v144);
    v74 = *(a6 + 8);
    if (v74 >= *(a6 + 16))
    {
      goto LABEL_183;
    }

LABEL_182:
    v117 = v144;
    *(v74 + 16) = v145;
    *v74 = v117;
    v118 = v146;
    v146 = 0uLL;
    *(v74 + 24) = v118;
    v119 = v74 + 40;
    goto LABEL_184;
  }

  v75 = a1;
  if (dword_2810C0A60 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0A58, dword_2810C0A60))
  {
    v132 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v154, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_relaxation.cc", 869);
    v133 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v132, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v133, "Cumulative relaxation: sizes_gcd = ", 0x23uLL);
    v147 = v11;
    v134 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v133, &v147);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v134, ", demands_gcd = ", 0x10uLL);
    v147 = v12;
    v135 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v134, &v147);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v135, ", no makespan, capacity is ", 0x1BuLL);
    operations_research::sat::AffineExpression::DebugString(a1, v136, &v152);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v135, &v152);
    operations_research::sat::BruteForceOrthogonalPacking(&v152, v154);
    v75 = a1;
  }

  v76 = *v75;
  if (*v75 != -1 && *(*(v141 + 5) + 8 * v76) + *(*(v141 + 5) + ((8 * v76) ^ 8)))
  {
    v12 = 1;
  }

  v77 = v138[3];
  if (v77 > 1)
  {
    v80 = 0;
    _X12 = v138[5];
    __asm { PRFM            #4, [X12] }

    v83 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v84 = vdup_n_s8(v83 & 0x7F);
    v85 = ((v83 >> 7) ^ (_X12 >> 12)) & v77;
    v86 = *(_X12 + v85);
    v87 = vceq_s8(v86, v84);
    if (!v87)
    {
      goto LABEL_132;
    }

LABEL_129:
    v88 = v138[6];
    while (1)
    {
      v89 = (v85 + (__clz(__rbit64(v87)) >> 3)) & v77;
      if (*(v88 + 16 * v89) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v87 &= ((v87 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v87)
      {
LABEL_132:
        while (!*&vceq_s8(v86, 0x8080808080808080))
        {
          v80 += 8;
          v85 = (v80 + v85) & v77;
          v86 = *(_X12 + v85);
          v87 = vceq_s8(v86, v84);
          if (v87)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_135;
      }
    }

    v78 = (v88 + 16 * v89);
    v79 = (_X12 + v89);
    if (_X12 + v89)
    {
      goto LABEL_136;
    }
  }

  else if (v138[4] >= 2uLL && v138[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v78 = v138 + 5;
    v79 = &absl::lts_20240722::container_internal::kSooControl;
    if (&absl::lts_20240722::container_internal::kSooControl)
    {
LABEL_136:
      v79 = v78[1];
    }
  }

  else
  {
LABEL_135:
    v79 = 0;
  }

  v147 = v79;
  v148 = 0x8000000000000002;
  v149 = 0u;
  *__p = 0u;
  v151 = 0;
  if (v36 >= 1)
  {
    v90 = 0;
    do
    {
      v95 = *(a2[19] + 4 * v90);
      if (v95 == -1 || ((*(*(a2[3] + 24) + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v95 & 0x3F ^ 1)) & 1) == 0)
      {
        v96 = (a2[16] + 24 * v90);
        v97 = *(v96 + 2);
        if (*v96 != -1)
        {
          v97 -= *(*(a2[4] + 40) + ((8 * *v96) ^ 8)) * *(v96 + 1);
        }

        if (v97 && operations_research::sat::SchedulingDemandHelper::DemandMax(this, v90))
        {
          v98 = *(a2[19] + 4 * v90);
          if (v98 == -1)
          {
            v100 = (*(this + 17) + 24 * v90);
            v102 = *v100;
            v101 = v100[1];
            if (v101 != v102)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v101 - v102) >> 3) < 0xAAAAAAAAAAAAAABLL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v103 = (a2[16] + 24 * v90);
            v104 = *(v103 + 2);
            if (*v103 != -1)
            {
              v104 += *(*(v141 + 5) + 8 * *v103) * *(v103 + 1);
            }

            if (v12 == 1)
            {
              v93 = *(this + 4) + 24 * v90;
              v94 = *(v93 + 16);
              v144 = *v93;
              v145 = v94;
              operations_research::sat::LinearConstraintBuilder::AddTerm(&v147, &v144, v104 / v11);
            }

            else
            {
              v105 = (*(this + 4) + 24 * v90);
              v106 = *(v105 + 2);
              if (*v105 != -1)
              {
                v106 += *(*(v141 + 5) + 8 * *v105) * *(v105 + 1);
              }

              operations_research::sat::LinearConstraintBuilder::AddConstant(&v147, v106 * v104 / v11 / v12);
            }
          }

          else
          {
            v99 = *(*(this + 8) + 8 * v90);
            if (v99 && (operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v147, v98, v99 / v11 / v12) & 1) == 0)
            {
              goto LABEL_188;
            }
          }
        }
      }

      ++v90;
    }

    while (v90 != (v36 & 0x7FFFFFFF));
    v75 = a1;
    v76 = *a1;
    if (*a1 != -1)
    {
      goto LABEL_165;
    }

LABEL_140:
    v91 = v155 - v156;
    v92 = *(v75 + 2);
    goto LABEL_167;
  }

  if (v76 == -1)
  {
    goto LABEL_140;
  }

LABEL_165:
  v107 = *(v141 + 5);
  v108 = 8 * v76;
  v109 = *(v107 + v108);
  if (v109 + *(v107 + (v108 ^ 8)))
  {
    v144 = *v75;
    v145 = *(v75 + 2);
    operations_research::sat::LinearConstraintBuilder::AddTerm(&v147, &v144, (v156 - v155) / v11);
    v73 = a6;
    goto LABEL_181;
  }

  v91 = v155 - v156;
  v92 = *(v75 + 2) + v109 * *(v75 + 1);
LABEL_167:
  v110 = v92 / v12;
  v112 = (v92 ^ v12) < 0 && v92 % v12 != 0;
  v113 = v110 - v112;
  v114 = v91 / v11;
  v116 = (v91 ^ v11) < 0 && v91 % v11 != 0;
  operations_research::sat::LinearConstraintBuilder::AddConstant(&v147, (v116 - v114) * v113);
  v73 = a6;
LABEL_181:
  operations_research::sat::LinearConstraintBuilder::Build(&v147, &v144);
  v74 = *(v73 + 8);
  if (v74 < *(v73 + 16))
  {
    goto LABEL_182;
  }

LABEL_183:
  v119 = std::vector<operations_research::sat::LinearConstraint>::__emplace_back_slow_path<operations_research::sat::LinearConstraint>(v73, &v144);
LABEL_184:
  *(v73 + 8) = v119;
  v120 = *(&v146 + 1);
  *(&v146 + 1) = 0;
  if (v120)
  {
    MEMORY[0x23EED9440](v120, 0x1000C8000313F17);
  }

  v121 = v146;
  *&v146 = 0;
  if (v121)
  {
    MEMORY[0x23EED9440](v121, 0x1000C8052888210);
  }

LABEL_188:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_23CC5AFA4(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
    absl::lts_20240722::log_internal::LogMessage::~LogMessage((v1 - 120));
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage((v1 - 120));
  _Unwind_Resume(a1);
}

void sub_23CC5AFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC5B004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC5B018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::AddNoOverlapCutGenerator(operations_research::sat *a1, uint64_t a2, operations_research::sat::SchedulingConstraintHelper *a3, uint64_t *a4)
{
  v32[1] = *MEMORY[0x277D85DE8];
  operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(&v28, a1, a3);
  v8 = a4[7];
  if (v8 >= a4[8])
  {
    v9.n128_f64[0] = std::vector<operations_research::sat::CutGenerator>::__emplace_back_slow_path<operations_research::sat::CutGenerator>(a4 + 6, &v28);
    goto LABEL_8;
  }

  *v8 = v28;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  v9 = *__p;
  *(v8 + 8) = *__p;
  *(v8 + 24) = v30;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  if (!v32[0])
  {
    v10 = (v8 + 56);
    goto LABEL_7;
  }

  if (v32[0] != v31)
  {
    v10 = v32;
    *(v8 + 56) = v32[0];
LABEL_7:
    *v10 = 0;
    v11 = v8 + 64;
LABEL_8:
    a4[7] = v11;
    v12 = v32[0];
    if (v32[0] != v31)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  *(v8 + 56) = v8 + 32;
  (*(*v32[0] + 24))(v32[0]);
  a4[7] = v8 + 64;
  v12 = v32[0];
  if (v32[0] != v31)
  {
LABEL_9:
    if (v12)
    {
      (*(*v12 + 40))(v12, v9);
    }

    v13 = __p[0];
    if (__p[0])
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_36:
  (*(*v12 + 32))(v12, v9);
  v13 = __p[0];
  if (__p[0])
  {
LABEL_12:
    __p[1] = v13;
    operator delete(v13);
  }

LABEL_13:
  operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator(&v28, a1, a3);
  v14 = a4[7];
  if (v14 >= a4[8])
  {
    v15.n128_f64[0] = std::vector<operations_research::sat::CutGenerator>::__emplace_back_slow_path<operations_research::sat::CutGenerator>(a4 + 6, &v28);
    goto LABEL_20;
  }

  *v14 = v28;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 8) = 0;
  v15 = *__p;
  *(v14 + 8) = *__p;
  *(v14 + 24) = v30;
  __p[0] = 0;
  __p[1] = 0;
  v30 = 0;
  if (!v32[0])
  {
    v16 = (v14 + 56);
    goto LABEL_19;
  }

  if (v32[0] != v31)
  {
    v16 = v32;
    *(v14 + 56) = v32[0];
LABEL_19:
    *v16 = 0;
    v17 = v14 + 64;
LABEL_20:
    a4[7] = v17;
    v18 = v32[0];
    if (v32[0] != v31)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  *(v14 + 56) = v14 + 32;
  (*(*v32[0] + 24))(v32[0]);
  a4[7] = v14 + 64;
  v18 = v32[0];
  if (v32[0] != v31)
  {
LABEL_21:
    if (v18)
    {
      (*(*v18 + 40))(v18, v15);
    }

    v19 = __p[0];
    if (__p[0])
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_39:
  (*(*v18 + 32))(v18, v15);
  v19 = __p[0];
  if (__p[0])
  {
LABEL_24:
    __p[1] = v19;
    operator delete(v19);
  }

LABEL_25:
  v20 = -1431655765 * ((*(a1 + 11) - *(a1 + 10)) >> 3);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = *(a1 + 19);
    v23 = v20 & 0x7FFFFFFF;
    do
    {
      v25 = *v22++;
      v24 = v25;
      v26 = v25;
      if (v25 == -1 || ((*(*(*(a1 + 3) + 24) + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v26 & 0x3F ^ 1u)) & 1) == 0)
      {
        if ((v27 = *(*(a1 + 16) + v21), v27 != -1) && *(*(*(a1 + 4) + 40) + 8 * v27) + *(*(*(a1 + 4) + 40) + ((8 * v27) ^ 8)) || v24 != -1 && ((*(*(*(a1 + 3) + 24) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          operations_research::sat::CreateNoOverlapEnergyCutGenerator(a1, a2, a3, &v28);
        }
      }

      v21 += 24;
      --v23;
    }

    while (v23);
  }
}

void sub_23CC5B5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}