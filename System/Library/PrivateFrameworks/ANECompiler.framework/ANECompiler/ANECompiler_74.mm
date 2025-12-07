void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(unint64_t *a1, unint64_t a2)
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

void std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__init_with_size[abi:ne200100]<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*>,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*>>(void *result, unsigned __int8 *a2, int a3, unsigned __int8 *a4, int a5, unint64_t a6)
{
  if (a6)
  {
    if (!(a6 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CCE364C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<operations_research::sat::CreateCumulativeEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F444C8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t ***a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 72), 1);
  if (!result)
  {
    return result;
  }

  v51 = result;
  operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 64));
  v52 = v3;
  v5 = v3[34];
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v6 = *(a1 + 72);
  if ((-1431655765 * ((v6[11] - v6[10]) >> 3)) >= 1)
  {
    v7 = 0;
    v8 = 0;
    v50 = v5;
    do
    {
      v9 = *(v6[19] + 4 * v8);
      if (v9 == -1 || ((*(*(v6[3] + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 & 0x3F ^ 1)) & 1) == 0)
      {
        v10 = operations_research::sat::SchedulingDemandHelper::DemandMax(*(a1 + 64), v8);
        v6 = *(a1 + 72);
        if (v10)
        {
          v11 = v6[29];
          if (*(v11 + 8 * v8))
          {
            v12 = v6[31];
            *v54 = *(v6[30] + 8 * v8);
            v14 = v6[32];
            v13 = v6[33];
            *&v54[8] = -*(v14 + 8 * v8);
            *&v54[16] = *(v12 + 8 * v8);
            *&v54[24] = -*(v13 + 8 * v8);
            *v55 = *(v11 + 8 * v8);
            memset(v56, 0, sizeof(v56));
            *&v55[8] = 0u;
            *&v57[8] = 0;
            *&v57[16] = 0;
            *v57 = -1;
            *&v57[24] = -1;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            v62 = 0;
            v15 = *(a1 + 64);
            v16 = *(v15 + 4) + v7;
            v17 = *(v16 + 16);
            *v57 = *v16;
            *&v57[16] = v17;
            *&v55[8] = operations_research::sat::SchedulingDemandHelper::DemandMin(v15, v8);
            v18 = *(a1 + 64);
            v19 = v18[17] + v7;
            if (v19 != v56)
            {
              std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v56, *v19, *(v19 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v19 + 8) - *v19) >> 3));
              v18 = *(a1 + 64);
            }

            *&v55[16] = *(v18[8] + 8 * v8);
            v62 = (*(v18[14] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1;
            v20 = *(a1 + 72);
            v21 = *(v20[19] + 4 * v8);
            if (v21 != -1 && ((*(*(v20[3] + 24) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              *&v57[24] = *(v20[19] + 4 * v8);
            }

            v22 = v20[16] + v7;
            v23 = *(v22 + 16);
            *&v53.__r_.__value_.__l.__data_ = *v22;
            v53.__r_.__value_.__r.__words[2] = v23;
            if (operations_research::sat::EnergyEvent::FillEnergyLp(v54, &v53, v5, *(a1 + 96)))
            {
              v24 = v64;
              if (v64 >= v65)
              {
                v30 = std::vector<operations_research::sat::EnergyEvent>::__emplace_back_slow_path<operations_research::sat::EnergyEvent const&>(&v63, v54);
              }

              else
              {
                v25 = *v54;
                v26 = *&v54[16];
                v27 = *v55;
                *(v64 + 6) = *&v55[16];
                *(v24 + 1) = v26;
                *(v24 + 2) = v27;
                *(v24 + 7) = 0;
                *v24 = v25;
                *(v24 + 8) = 0;
                *(v24 + 9) = 0;
                if (v56[1] != v56[0])
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((v56[1] - v56[0]) >> 3) < 0xAAAAAAAAAAAAAABLL)
                  {
                    operator new();
                  }

                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v28 = *v57;
                *(v24 + 92) = *&v57[12];
                *(v24 + 5) = v28;
                operations_research::sat::LinearExpression::LinearExpression((v24 + 112), &v58);
                v29 = *(&v61 + 1);
                v24[176] = v62;
                *(v24 + 21) = v29;
                v30 = (v24 + 184);
                v5 = v50;
              }

              v64 = v30;
            }

            if (*(&v59 + 1))
            {
              *&v60 = *(&v59 + 1);
              operator delete(*(&v59 + 1));
            }

            if (v58)
            {
              *(&v58 + 1) = v58;
              operator delete(v58);
            }

            if (v56[0])
            {
              v56[1] = v56[0];
              operator delete(v56[0]);
            }

            v6 = *(a1 + 72);
          }
        }
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < (-1431655765 * ((v6[11] - v6[10]) >> 3)));
  }

  if ((*(a1 + 32) & 1) != 0 && ((v31 = *(a1 + 40), v31 == -1) || !(*(*(*(a1 + 80) + 40) + 8 * v31) + *(*(*(a1 + 80) + 40) + ((8 * v31) ^ 8)))))
  {
    memset(v54, 0, 24);
    v53.__r_.__value_.__r.__words[0] = v54;
    v53.__r_.__value_.__s.__data_[8] = 0;
    if (v64 != v63)
    {
      if (0xD37A6F4DE9BD37A7 * ((v64 - v63) >> 3) <= 0x1642C8590B21642)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v32 = *(a1 + 56);
    if (v31 != -1)
    {
      v32 += *(*(*(a1 + 80) + 40) + 8 * v31) * *(a1 + 48);
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v53 = *(a1 + 8);
    operations_research::sat::GenerateCumulativeEnergeticCutsWithMakespanAndFixedCapacity("CumulativeEnergyM", 0x11uLL, v5, v54, v32, &v53, *(a1 + 88), *(a1 + 96), v52);
    v33 = *v54;
    if (!*v54)
    {
      goto LABEL_66;
    }

    v34 = *&v54[8];
    v35 = *v54;
    if (*&v54[8] != *v54)
    {
      do
      {
        v36 = *(v34 - 48);
        if (v36)
        {
          *(v34 - 40) = v36;
          operator delete(v36);
        }

        v37 = *(v34 - 72);
        if (v37)
        {
          *(v34 - 64) = v37;
          operator delete(v37);
        }

        v38 = *(v34 - 128);
        if (v38)
        {
          *(v34 - 120) = v38;
          operator delete(v38);
        }

        v34 -= 184;
      }

      while (v34 != v33);
      v35 = *v54;
    }

    *&v54[8] = v33;
  }

  else
  {
    v54[23] = 16;
    strcpy(v54, "CumulativeEnergy");
    memset(&v53, 0, sizeof(v53));
    v66 = &v53;
    v67 = 0;
    if (v64 != v63)
    {
      if (0xD37A6F4DE9BD37A7 * ((v64 - v63) >> 3) <= 0x1642C8590B21642)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    operations_research::sat::GenerateCumulativeEnergeticCuts(v54, v5, &v53, (a1 + 40), *(a1 + 88), *(a1 + 96), v52);
    v39 = v53.__r_.__value_.__r.__words[0];
    if (!v53.__r_.__value_.__r.__words[0])
    {
      goto LABEL_66;
    }

    size = v53.__r_.__value_.__l.__size_;
    v35 = v53.__r_.__value_.__r.__words[0];
    if (v53.__r_.__value_.__l.__size_ != v53.__r_.__value_.__r.__words[0])
    {
      do
      {
        v41 = *(size - 48);
        if (v41)
        {
          *(size - 40) = v41;
          operator delete(v41);
        }

        v42 = *(size - 72);
        if (v42)
        {
          *(size - 64) = v42;
          operator delete(v42);
        }

        v43 = *(size - 128);
        if (v43)
        {
          *(size - 120) = v43;
          operator delete(v43);
        }

        size -= 184;
      }

      while (size != v39);
      v35 = v53.__r_.__value_.__r.__words[0];
    }

    v53.__r_.__value_.__l.__size_ = v39;
  }

  operator delete(v35);
LABEL_66:
  v44 = v63;
  if (v63)
  {
    v45 = v64;
    v46 = v63;
    if (v64 != v63)
    {
      do
      {
        v47 = *(v45 - 6);
        if (v47)
        {
          *(v45 - 5) = v47;
          operator delete(v47);
        }

        v48 = *(v45 - 9);
        if (v48)
        {
          *(v45 - 8) = v48;
          operator delete(v48);
        }

        v49 = *(v45 - 16);
        if (v49)
        {
          *(v45 - 15) = v49;
          operator delete(v49);
        }

        v45 -= 184;
      }

      while (v45 != v44);
      v46 = v63;
    }

    v64 = v44;
    operator delete(v46);
  }

  return v51;
}

void sub_23CCE3E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__exception_guard_exceptions<std::vector<operations_research::sat::EnergyEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v9 - 128));
  _Unwind_Resume(a1);
}

void sub_23CCE3E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100](va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v9 - 128));
  _Unwind_Resume(a1);
}

void sub_23CCE3E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100](va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v16 - 128));
  _Unwind_Resume(a1);
}

void sub_23CCE3ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = *v16;
  if (*v16)
  {
    *(v17 + 64) = v20;
    operator delete(v20);
  }

  *(v18 - 120) = v17;
  operations_research::sat::EnergyEvent::~EnergyEvent(va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v18 - 128));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat34CreateCumulativeEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionERKNSt3__18optionalIS5_EEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat34CreateCumulativeEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionERKNSt3__18optionalIS5_EEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat34CreateCumulativeEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionERKNSt3__18optionalIS5_EEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat34CreateCumulativeEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionERKNSt3__18optionalIS5_EEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::EnergyEvent::FillEnergyLp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = a4[3];
  if (v6 > 1)
  {
    v8 = 0;
    _X11 = a4[5];
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X11 >> 12)) & v6;
    v18 = *(_X11 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = a4[6];
    while (1)
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
      if (*(v20 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_8:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v6;
          v18 = *(_X11 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v22 = (v20 + 16 * v21);
    v7 = (_X11 + v21);
    if (!(_X11 + v21))
    {
      goto LABEL_13;
    }

LABEL_12:
    v7 = v22[1];
    goto LABEL_13;
  }

  if (a4[4] < 2uLL)
  {
LABEL_3:
    v7 = 0;
    goto LABEL_13;
  }

  v22 = a4 + 5;
  v7 = &absl::lts_20240722::container_internal::kSooControl;
  if (a4[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v7 = 0;
    v22 = 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:
  v40 = v7;
  v41 = 0u;
  *v42 = 0u;
  v43 = 0u;
  if (*(a1 + 104) == -1)
  {
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    if (v23 == v24)
    {
      *__p = *a2;
      v34 = *(a2 + 16);
      v38 = *(a1 + 80);
      v39 = *(a1 + 96);
      v27 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
      operations_research::sat::LinearConstraintBuilder::AddQuadraticLowerBound(&v40, __p, &v38, v27, (a1 + 176));
      goto LABEL_25;
    }

    if (operations_research::sat::LinearConstraintBuilder::AddDecomposedProduct(&v40, *(a1 + 56), 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3)))
    {
      goto LABEL_25;
    }

LABEL_18:
    v25 = 0;
    v26 = v42[1];
    if (!v42[1])
    {
      return v25;
    }

    goto LABEL_32;
  }

  if (!operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v40, *(a1 + 104), *(a1 + 48)))
  {
    goto LABEL_18;
  }

LABEL_25:
  operations_research::sat::LinearConstraintBuilder::BuildExpression(__p, &v40);
  v28 = *(a1 + 112);
  if (v28)
  {
    *(a1 + 120) = v28;
    operator delete(v28);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  v29 = *(a1 + 136);
  *(a1 + 112) = *__p;
  *(a1 + 128) = v34;
  __p[1] = 0;
  v34 = 0;
  __p[0] = 0;
  if (v29)
  {
    *(a1 + 144) = v29;
    operator delete(v29);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    v29 = __p[0];
  }

  *(a1 + 136) = v35;
  v30 = v36;
  v31 = v37;
  v36 = 0;
  v35 = 0uLL;
  *(a1 + 152) = v30;
  *(a1 + 160) = v31;
  if (v29)
  {
    __p[1] = v29;
    operator delete(v29);
  }

  *(a1 + 168) = operations_research::sat::LinearExpression::LpValue((a1 + 112), a3);
  v25 = 1;
  v26 = v42[1];
  if (v42[1])
  {
LABEL_32:
    *&v43 = v26;
    operator delete(v26);
  }

  return v25;
}

void sub_23CCE4260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::EnergyEvent::~EnergyEvent(operations_research::sat::EnergyEvent *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }
}

char **std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100](char **a1)
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
        v5 = *(v3 - 6);
        if (v5)
        {
          *(v3 - 5) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 9);
        if (v6)
        {
          *(v3 - 8) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 16);
        if (v7)
        {
          *(v3 - 15) = v7;
          operator delete(v7);
        }

        v3 -= 184;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

int64_t std::vector<operations_research::sat::EnergyEvent>::__emplace_back_slow_path<operations_research::sat::EnergyEvent const&>(void **a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x1642C8590B21642)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v5 = 0x1642C8590B21642;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1642C8590B21642)
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
  v8 = *(a2 + 56);
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v9 = *(a2 + 64);
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(v6 + 80) = *(a2 + 80);
  *(v6 + 92) = *(a2 + 92);
  operations_research::sat::LinearExpression::LinearExpression((v6 + 112), (a2 + 112));
  *(v6 + 168) = *(a2 + 168);
  *(v6 + 176) = *(a2 + 176);
  v10 = a1[1];
  v11 = (v6 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::EnergyEvent>,operations_research::sat::EnergyEvent*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  a1[1] = (v6 + 184);
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v6 + 184;
}

void sub_23CCE4568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::EnergyEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CCE457C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 64) = v6;
    operator delete(v6);
  }

  std::__split_buffer<operations_research::sat::EnergyEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::EnergyEvent>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 184;
    v4 = *(i - 48);
    if (v4)
    {
      *(i - 40) = v4;
      operator delete(v4);
    }

    v5 = *(i - 72);
    if (v5)
    {
      *(i - 64) = v5;
      operator delete(v5);
    }

    v6 = *(i - 128);
    if (v6)
    {
      *(i - 120) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::EnergyEvent>,operations_research::sat::EnergyEvent*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 2);
      v9 = v6[6];
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v8;
      *a4 = v7;
      *(a4 + 48) = v9;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      v10 = *(v6 + 5);
      *(a4 + 92) = *(v6 + 92);
      *(a4 + 80) = v10;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 112) = 0;
      *(a4 + 112) = *(v6 + 7);
      *(a4 + 128) = v6[16];
      v6[14] = 0;
      v6[15] = 0;
      v6[16] = 0;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 152) = 0;
      *(a4 + 136) = *(v6 + 17);
      v11 = v6[20];
      *(a4 + 152) = v6[19];
      v6[17] = 0;
      v6[18] = 0;
      v6[19] = 0;
      *(a4 + 160) = v11;
      v12 = v6[21];
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 168) = v12;
      v6 += 23;
      a4 += 184;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v13 = v5[17];
      if (v13)
      {
        v5[18] = v13;
        operator delete(v13);
      }

      v14 = v5[14];
      if (v14)
      {
        v5[15] = v14;
        operator delete(v14);
      }

      v15 = v5[7];
      if (v15)
      {
        v5[8] = v15;
        operator delete(v15);
      }

      v5 += 23;
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::EnergyEvent>,operations_research::sat::EnergyEvent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 48);
      if (v5)
      {
        *(v3 - 40) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 72);
      if (v6)
      {
        *(v3 - 64) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 128);
      if (v7)
      {
        *(v3 - 120) = v7;
        operator delete(v7);
      }

      v3 -= 184;
    }
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::EnergyEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 6);
          if (v6)
          {
            *(v4 - 5) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 9);
          if (v7)
          {
            *(v4 - 8) = v7;
            operator delete(v7);
          }

          v8 = *(v4 - 16);
          if (v8)
          {
            *(v4 - 15) = v8;
            operator delete(v8);
          }

          v4 -= 184;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<operations_research::sat::EnergyEvent>,operations_research::sat::EnergyEvent*,operations_research::sat::EnergyEvent*,operations_research::sat::EnergyEvent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v16 = a4;
  if (a2 != a3)
  {
    v6 = a2 + 112;
    do
    {
      v7 = *(v6 - 112);
      v8 = *(v6 - 96);
      v9 = *(v6 - 80);
      *(v4 + 48) = *(v6 - 64);
      *(v4 + 16) = v8;
      *(v4 + 32) = v9;
      *(v4 + 56) = 0;
      *v4 = v7;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      v11 = *(v6 - 56);
      v10 = *(v6 - 48);
      if (v10 != v11)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v6 - 112;
      v13 = *(v6 - 32);
      *(v4 + 92) = *(v6 - 20);
      *(v4 + 80) = v13;
      operations_research::sat::LinearExpression::LinearExpression((v4 + 112), v6);
      v14 = *(v6 + 56);
      *(v4 + 176) = *(v6 + 64);
      *(v4 + 168) = v14;
      v4 = v16 + 184;
      v16 += 184;
      v6 += 184;
    }

    while (v12 + 184 != a3);
  }

  return v4;
}

void sub_23CCE49C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 64) = v12;
    operator delete(v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::EnergyEvent>,operations_research::sat::EnergyEvent*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlapEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F44548;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t ***a2)
{
  v3 = *a2;
  v4 = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 40), 1);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v43 = v4;
  v6 = v3[34];
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v7 = *(a1 + 40);
  v44 = v3;
  v45 = v6;
  if ((-1431655765 * ((v7[11] - v7[10]) >> 3)) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7[19] + 4 * v9);
      if (v10 == -1 || ((*(*(v7[3] + 24) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v10 & 0x3F ^ 1)) & 1) == 0)
      {
        v11 = v7[29];
        if (*(v11 + 8 * v9))
        {
          v12 = v7[31];
          v48[0] = *(v7[30] + 8 * v9);
          v13 = v7[33];
          v48[1] = -*(v7[32] + 8 * v9);
          *&v49 = *(v12 + 8 * v9);
          *(&v49 + 1) = -*(v13 + 8 * v9);
          v14 = *(v11 + 8 * v9);
          v53 = 0;
          v54 = 0;
          v52 = 0;
          *&v55[24] = -1;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0;
          *v55 = -1;
          *&v55[8] = xmmword_23CE48D30;
          *&v50 = v14;
          *(&v50 + 1) = 1;
          v51 = v14;
          v15 = *(v7[19] + 4 * v9);
          if (v15 != -1 && ((*(*(v7[3] + 24) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            *&v55[24] = *(v7[19] + 4 * v9);
          }

          v16 = v7[16] + v8;
          v17 = *(v16 + 16);
          *&v47.__r_.__value_.__l.__data_ = *v16;
          v47.__r_.__value_.__r.__words[2] = v17;
          if (operations_research::sat::EnergyEvent::FillEnergyLp(v48, &v47, v6, *(a1 + 56)))
          {
            v18 = v62;
            if (v62 >= v63)
            {
              v24 = std::vector<operations_research::sat::EnergyEvent>::__emplace_back_slow_path<operations_research::sat::EnergyEvent const&>(&v61, v48);
            }

            else
            {
              v19 = *v48;
              v20 = v49;
              v21 = v50;
              *(v62 + 6) = v51;
              *(v18 + 1) = v20;
              *(v18 + 2) = v21;
              *(v18 + 7) = 0;
              *v18 = v19;
              *(v18 + 8) = 0;
              *(v18 + 9) = 0;
              if (v53 != v52)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3) < 0xAAAAAAAAAAAAAABLL)
                {
                  operator new();
                }

                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v22 = *v55;
              *(v18 + 92) = *&v55[12];
              *(v18 + 5) = v22;
              operations_research::sat::LinearExpression::LinearExpression((v18 + 112), &v56);
              v23 = *(&v59 + 1);
              v18[176] = v60;
              *(v18 + 21) = v23;
              v24 = (v18 + 184);
            }

            v62 = v24;
          }

          if (*(&v57 + 1))
          {
            *&v58 = *(&v57 + 1);
            operator delete(*(&v57 + 1));
          }

          if (v56)
          {
            *(&v56 + 1) = v56;
            operator delete(v56);
          }

          if (v52)
          {
            v53 = v52;
            operator delete(v52);
          }

          v7 = *(a1 + 40);
        }
      }

      ++v9;
      v8 += 24;
    }

    while (v9 < (-1431655765 * ((v7[11] - v7[10]) >> 3)));
  }

  if (*(a1 + 32))
  {
    v48[0] = 0;
    v48[1] = 0;
    *&v49 = 0;
    v47.__r_.__value_.__r.__words[0] = v48;
    v47.__r_.__value_.__s.__data_[8] = 0;
    if (v62 != v61)
    {
      if (0xD37A6F4DE9BD37A7 * ((v62 - v61) >> 3) <= 0x1642C8590B21642)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = v43;
    v47 = *(a1 + 8);
    operations_research::sat::GenerateCumulativeEnergeticCutsWithMakespanAndFixedCapacity("NoOverlapEnergyM", 0x10uLL, v45, v48, 1, &v47, *(a1 + 48), *(a1 + 56), v44);
    v31 = v48[0];
    if (!v48[0])
    {
      goto LABEL_58;
    }

    v32 = v48[1];
    v27 = v48[0];
    if (v48[1] != v48[0])
    {
      do
      {
        v33 = *(v32 - 6);
        if (v33)
        {
          *(v32 - 5) = v33;
          operator delete(v33);
        }

        v34 = *(v32 - 9);
        if (v34)
        {
          *(v32 - 8) = v34;
          operator delete(v34);
        }

        v35 = *(v32 - 16);
        if (v35)
        {
          *(v32 - 15) = v35;
          operator delete(v35);
        }

        v32 -= 184;
      }

      while (v32 != v31);
      v27 = v48[0];
    }

    v48[1] = v31;
  }

  else
  {
    BYTE7(v49) = 15;
    strcpy(v48, "NoOverlapEnergy");
    memset(&v47, 0, sizeof(v47));
    v46.__r_.__value_.__r.__words[0] = &v47;
    v46.__r_.__value_.__s.__data_[8] = 0;
    if (v62 != v61)
    {
      if (0xD37A6F4DE9BD37A7 * ((v62 - v61) >> 3) <= 0x1642C8590B21642)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    LODWORD(v46.__r_.__value_.__l.__data_) = -1;
    *&v46.__r_.__value_.__r.__words[1] = xmmword_23CE48D30;
    operations_research::sat::GenerateCumulativeEnergeticCuts(v48, v6, &v47, &v46, *(a1 + 48), *(a1 + 56), v44);
    v25 = v47.__r_.__value_.__r.__words[0];
    v5 = v43;
    if (!v47.__r_.__value_.__r.__words[0])
    {
      goto LABEL_58;
    }

    size = v47.__r_.__value_.__l.__size_;
    v27 = v47.__r_.__value_.__r.__words[0];
    if (v47.__r_.__value_.__l.__size_ != v47.__r_.__value_.__r.__words[0])
    {
      do
      {
        v28 = *(size - 48);
        if (v28)
        {
          *(size - 40) = v28;
          operator delete(v28);
        }

        v29 = *(size - 72);
        if (v29)
        {
          *(size - 64) = v29;
          operator delete(v29);
        }

        v30 = *(size - 128);
        if (v30)
        {
          *(size - 120) = v30;
          operator delete(v30);
        }

        size -= 184;
      }

      while (size != v25);
      v27 = v47.__r_.__value_.__r.__words[0];
    }

    v47.__r_.__value_.__l.__size_ = v25;
  }

  operator delete(v27);
LABEL_58:
  v36 = v61;
  if (v61)
  {
    v37 = v62;
    v38 = v61;
    if (v62 != v61)
    {
      do
      {
        v39 = *(v37 - 6);
        if (v39)
        {
          *(v37 - 5) = v39;
          operator delete(v39);
        }

        v40 = *(v37 - 9);
        if (v40)
        {
          *(v37 - 8) = v40;
          operator delete(v40);
        }

        v41 = *(v37 - 16);
        if (v41)
        {
          *(v37 - 15) = v41;
          operator delete(v41);
        }

        v37 -= 184;
      }

      while (v37 != v36);
      v38 = v61;
    }

    v62 = v36;
    operator delete(v38);
  }

  return v5;
}

void sub_23CCE50F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__exception_guard_exceptions<std::vector<operations_research::sat::EnergyEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v15 - 112));
  _Unwind_Resume(a1);
}

void sub_23CCE516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  v25 = *v22;
  if (*v22)
  {
    *(v21 + 64) = v25;
    operator delete(v25);
  }

  *(v23 - 104) = v21;
  operations_research::sat::EnergyEvent::~EnergyEvent(va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v23 - 112));
  _Unwind_Resume(a1);
}

void sub_23CCE51A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  operations_research::sat::EnergyEvent::~EnergyEvent(va);
  std::vector<operations_research::sat::EnergyEvent>::~vector[abi:ne200100]((v21 - 112));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,std::optional<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat33CreateNoOverlapEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperERKNSt3__18optionalINS0_16AffineExpressionEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat33CreateNoOverlapEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperERKNSt3__18optionalINS0_16AffineExpressionEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat33CreateNoOverlapEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperERKNSt3__18optionalINS0_16AffineExpressionEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat33CreateNoOverlapEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperERKNSt3__18optionalINS0_16AffineExpressionEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F445C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t ***a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (result)
  {
    v95 = result;
    operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 40));
    v118 = 5;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v5 = v3[34];
    v6 = *(a1 + 16);
    v96 = v3;
    if (v6 == -1)
    {
      v12 = *(a1 + 32);
      v13 = v12;
      if (v12 < 0x8000000000000003)
      {
        v13 = -INFINITY;
      }

      if (v12 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        v11 = v13;
      }

      else
      {
        v11 = INFINITY;
      }
    }

    else
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = -INFINITY;
      if (v7 < 0x8000000000000003)
      {
        v9 = -INFINITY;
      }

      if (v7 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v9 = INFINITY;
      }

      if (v8 >= 0x8000000000000003)
      {
        v10 = v8;
      }

      if (v8 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v10 = INFINITY;
      }

      v11 = v10 + v9 * *(*v5 + 8 * v6);
    }

    v14 = *(a1 + 8);
    v99 = v3[34];
    if ((-1431655765 * ((v14[11] - v14[10]) >> 3)) >= 1)
    {
      v15 = 0;
      v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v17 = vdup_n_s8(v16 & 0x7F);
      v97 = v16 >> 7;
      v18 = 0uLL;
      while (1)
      {
        v19 = *(v14[19] + 4 * v15);
        if (v19 == -1 || ((*(*(v14[3] + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v19 & 0x3F ^ 1)) & 1) == 0)
        {
          v20 = -*(v14[32] + 8 * v15);
          v21 = *(v14[31] + 8 * v15);
          if (v21 > v20)
          {
            break;
          }
        }

LABEL_20:
        if (++v15 >= (-1431655765 * ((v14[11] - v14[10]) >> 3)))
        {
          v46 = v115;
          v47 = v116;
          goto LABEL_71;
        }
      }

      *&v114[15] = 0;
      *&__p[32] = v18;
      *v114 = v18;
      *__p = v18;
      *&__p[16] = v18;
      LODWORD(v112) = v15;
      *(&v112 + 1) = v20;
      v22 = *(a1 + 48);
      v23 = v22[3];
      if (v23 > 1)
      {
        v26 = 0;
        _X10 = v22[5];
        __asm { PRFM            #4, [X10] }

        v33 = (v97 ^ (_X10 >> 12)) & v23;
        v34 = *(_X10 + v33);
        v35 = vceq_s8(v34, v17);
        if (!v35)
        {
          goto LABEL_33;
        }

LABEL_30:
        v36 = v22[6];
        while (1)
        {
          v37 = (v33 + (__clz(__rbit64(v35)) >> 3)) & v23;
          if (*(v36 + 16 * v37) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v35)
          {
LABEL_33:
            while (!*&vceq_s8(v34, 0x8080808080808080))
            {
              v26 += 8;
              v33 = (v26 + v33) & v23;
              v34 = *(_X10 + v33);
              v35 = vceq_s8(v34, v17);
              if (v35)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_39;
          }
        }

        v24 = (v36 + 16 * v37);
        if (_X10 + v37)
        {
          goto LABEL_37;
        }
      }

      else if (v22[4] >= 2uLL)
      {
        v25 = v22[5];
        v24 = v22 + 5;
        if (v25 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          if (&absl::lts_20240722::container_internal::kSooControl)
          {
LABEL_37:
            v38 = v24[1];
            goto LABEL_40;
          }
        }
      }

LABEL_39:
      v38 = 0;
LABEL_40:
      *v100 = v38;
      *&v100[8] = v18;
      v101 = v18;
      v102 = v18;
      if (operations_research::sat::SchedulingDemandHelper::AddLinearizedDemand(*(a1 + 40), v15, v100))
      {
        operations_research::sat::LinearConstraintBuilder::BuildExpression(&v108, v100);
        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        *__p = v108;
        memset(&v108, 0, sizeof(v108));
        v39 = *&__p[24];
        if (*&__p[24])
        {
          *&__p[32] = *&__p[24];
          operator delete(*&__p[24]);
          v39 = v108.__r_.__value_.__r.__words[0];
        }

        *&__p[24] = v109;
        v40 = v110;
        v110 = 0;
        v109 = 0uLL;
        *&__p[40] = v40;
        *v114 = v111;
        if (v39)
        {
          v108.__r_.__value_.__l.__size_ = v39;
          operator delete(v39);
        }

        if (*(&v101 + 1))
        {
          *&v102 = *(&v101 + 1);
          operator delete(*(&v101 + 1));
        }

        *&v114[8] = operations_research::sat::LinearExpression::LpValue(__p, v5);
        v114[16] = 1;
        v41 = (*(*(a1 + 40) + 136) + 24 * v15);
        v114[17] = *v41 != v41[1];
        v42 = *(a1 + 8);
        v43 = *(*(v42 + 152) + 4 * v15);
        v44 = v43 != -1 && ((*(*(*(v42 + 24) + 24) + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43) & 1) == 0;
        v114[18] = v44;
        *v100 = v112;
        v101 = 0uLL;
        *&v100[16] = 0;
        if (*&__p[8] != *__p)
        {
          if (((*&__p[8] - *__p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v102 = 0uLL;
        v103 = 0;
        if (*&__p[32] != *&__p[24])
        {
          if (((*&__p[32] - *&__p[24]) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v107 = *&v114[17];
        v105 = *&v114[8];
        v104 = *v114;
        *&v100[8] = v21;
        v106 = 0;
        std::vector<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent>>::push_back[abi:ne200100](&v115, &v112);
        std::vector<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent>>::push_back[abi:ne200100](&v115, v100);
        if (v102)
        {
          *(&v102 + 1) = v102;
          operator delete(v102);
        }

        v45 = *&v100[16];
        if (!*&v100[16])
        {
          goto LABEL_65;
        }

        *&v101 = *&v100[16];
      }

      else
      {
        v45 = *(&v101 + 1);
        if (!*(&v101 + 1))
        {
LABEL_65:
          if (*&__p[24])
          {
            *&__p[32] = *&__p[24];
            operator delete(*&__p[24]);
          }

          if (*__p)
          {
            *&__p[8] = *__p;
            operator delete(*__p);
          }

          v14 = *(a1 + 8);
          v18 = 0uLL;
          goto LABEL_20;
        }

        *&v102 = *(&v101 + 1);
      }

      operator delete(v45);
      goto LABEL_65;
    }

    v47 = 0;
    v46 = 0;
LABEL_71:
    v48 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * (v47 - v46));
    if (v47 == v46)
    {
      v49 = 0;
    }

    else
    {
      v49 = v48;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,false>(v46, v47, v49, 1);
    v50 = v115;
    v51 = v116;
    if (v116 != v115)
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = v11 + 0.0001;
      v56 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
      v98 = v56 >> 7;
      v57 = vdup_n_s8(v56 & 0x7F);
      v58 = 0.0;
      while (1)
      {
        v59 = v50 + 88 * v52;
        v60 = *(v59 + 80);
        if (v60 != 1)
        {
          break;
        }

        v58 = v58 + *(v59 + 72);
LABEL_77:
        v52 = ++v54;
        v53 = v60;
        if (0x2E8BA2E8BA2E8BA3 * ((v51 - v50) >> 3) <= v54)
        {
          goto LABEL_124;
        }
      }

      if ((v53 & (v58 >= v55)) != 1)
      {
LABEL_121:
        v58 = v58 - *(v59 + 72);
        goto LABEL_77;
      }

      v61 = *(a1 + 48);
      v62 = v61[3];
      if (v62 > 1)
      {
        v65 = 0;
        _X10 = v61[5];
        __asm { PRFM            #4, [X10] }

        v68 = (v98 ^ (_X10 >> 12)) & v62;
        v69 = *(_X10 + v68);
        v70 = vceq_s8(v69, v57);
        if (!v70)
        {
          goto LABEL_89;
        }

LABEL_86:
        v71 = v61[6];
        while (1)
        {
          v72 = (v68 + (__clz(__rbit64(v70)) >> 3)) & v62;
          if (*(v71 + 16 * v72) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v70 &= ((v70 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v70)
          {
LABEL_89:
            while (!*&vceq_s8(v69, 0x8080808080808080))
            {
              v65 += 8;
              v68 = (v65 + v68) & v62;
              v69 = *(_X10 + v68);
              v70 = vceq_s8(v69, v57);
              if (v70)
              {
                goto LABEL_86;
              }
            }

            goto LABEL_95;
          }
        }

        v63 = (v71 + 16 * v72);
        if (_X10 + v72)
        {
          goto LABEL_93;
        }
      }

      else if (v61[4] >= 2uLL)
      {
        v64 = v61[5];
        v63 = v61 + 5;
        if (v64 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          if (&absl::lts_20240722::container_internal::kSooControl)
          {
LABEL_93:
            v73 = v63[1];
            goto LABEL_96;
          }
        }
      }

LABEL_95:
      v73 = 0;
LABEL_96:
      *&v112 = v73;
      *(&v112 + 1) = 0x8000000000000002;
      memset(__p, 0, 40);
      v108 = *(a1 + 16);
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v112, &v108, -1);
      if (v54 <= 0)
      {
        *(&v108.__r_.__value_.__s + 23) = 19;
        strcpy(&v108, "CumulativeTimeTable");
      }

      else
      {
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = v115[11 * v54 - 10];
        do
        {
          if (LOBYTE(v115[v74 + 10]) == 1 && *(*(*(a1 + 8) + 248) + 8 * SLODWORD(v115[v74])) > v77)
          {
            v78 = &v115[v74];
            operations_research::sat::LinearConstraintBuilder::AddLinearExpression(&v112, &v115[v74 + 2], 1);
            v76 = (*(v78 + 81) | v76) != 0;
            v75 = (*(v78 + 82) | v75) != 0;
          }

          v74 += 11;
        }

        while (11 * v54 != v74);
        *(&v108.__r_.__value_.__s + 23) = 19;
        strcpy(&v108, "CumulativeTimeTable");
        v5 = v99;
        if (v75)
        {
          std::string::append(&v108, "_optional");
        }

        if (v76)
        {
          std::string::append(&v108, "_energy");
        }
      }

      operations_research::sat::LinearConstraintBuilder::Build(&v112, v100);
      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v108;
      }

      else
      {
        v79 = v108.__r_.__value_.__r.__words[0];
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v108.__r_.__value_.__l.__size_;
      }

      operations_research::sat::TopNCuts::AddCut(&v118, v100, v79, size, v5);
      v81 = *(&v101 + 1);
      *(&v101 + 1) = 0;
      if (v81)
      {
        MEMORY[0x23EED9440](v81, 0x1000C8000313F17);
      }

      v82 = v101;
      *&v101 = 0;
      if (v82)
      {
        MEMORY[0x23EED9440](v82, 0x1000C8052888210);
      }

      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
        v83 = *&__p[16];
        if (!*&__p[16])
        {
          goto LABEL_120;
        }
      }

      else
      {
        v83 = *&__p[16];
        if (!*&__p[16])
        {
LABEL_120:
          v50 = v115;
          v51 = v116;
          goto LABEL_121;
        }
      }

      *&__p[24] = v83;
      operator delete(v83);
      goto LABEL_120;
    }

LABEL_124:
    operations_research::sat::TopNCuts::TransferToManager(&v118, v96);
    v84 = v115;
    if (v115)
    {
      v85 = v116;
      v86 = v115;
      if (v116 != v115)
      {
        do
        {
          v87 = *(v85 - 6);
          if (v87)
          {
            *(v85 - 5) = v87;
            operator delete(v87);
          }

          v88 = *(v85 - 9);
          if (v88)
          {
            *(v85 - 8) = v88;
            operator delete(v88);
          }

          v85 -= 11;
        }

        while (v85 != v84);
        v86 = v115;
      }

      v116 = v84;
      operator delete(v86);
    }

    v89 = *(&v120 + 1);
    if (*(&v120 + 1))
    {
      v90 = v121;
      v91 = *(&v120 + 1);
      if (v121 != *(&v120 + 1))
      {
        do
        {
          v92 = *(v90 - 8);
          *(v90 - 8) = 0;
          if (v92)
          {
            MEMORY[0x23EED9440](v92, 0x1000C8000313F17);
          }

          v93 = *(v90 - 16);
          *(v90 - 16) = 0;
          if (v93)
          {
            MEMORY[0x23EED9440](v93, 0x1000C8052888210);
          }

          v94 = (v90 - 64);
          if (*(v90 - 41) < 0)
          {
            operator delete(*v94);
          }

          v90 -= 64;
        }

        while (v94 != v89);
        v91 = *(&v120 + 1);
      }

      *&v121 = v89;
      operator delete(v91);
    }

    if (v119)
    {
      *(&v119 + 1) = v119;
      operator delete(v119);
    }

    return v95;
  }

  return result;
}

void sub_23CCE5DD4(_Unwind_Exception *a1)
{
  std::vector<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent>>::~vector[abi:ne200100]((v1 - 208));
  operations_research::sat::TopNCuts::~TopNCuts((v1 - 184));
  _Unwind_Resume(a1);
}

void sub_23CCE5DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0::~$_0(&a37);
  std::vector<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent>>::~vector[abi:ne200100]((v42 - 208));
  operations_research::sat::TopNCuts::~TopNCuts((v42 - 184));
  _Unwind_Resume(a1);
}

void sub_23CCE5ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a38)
  {
    JUMPOUT(0x23CCE5EE4);
  }

  JUMPOUT(0x23CCE5EACLL);
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat37CreateCumulativeTimeTableCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat37CreateCumulativeTimeTableCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat37CreateCumulativeTimeTableCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat37CreateCumulativeTimeTableCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::vector<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 3);
    if ((v8 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x1745D1745D1745DLL)
    {
      v11 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0x2E8BA2E8BA2E8BALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v21 = 88 * v8;
    *v21 = *a2;
    operations_research::sat::LinearExpression::LinearExpression((88 * v8 + 16), (a2 + 16));
    *(v21 + 72) = *(a2 + 72);
    *(v21 + 79) = *(a2 + 79);
    v7 = 88 * v8 + 88;
    v12 = *a1;
    v13 = a1[1];
    v14 = v21 + *a1 - v13;
    if (*a1 != v13)
    {
      v15 = *a1;
      v16 = v21 + *a1 - v13;
      do
      {
        *v16 = *v15;
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 16) = 0;
        *(v16 + 16) = *(v15 + 1);
        *(v16 + 32) = v15[4];
        v15[2] = 0;
        v15[3] = 0;
        v15[4] = 0;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        *(v16 + 56) = 0;
        *(v16 + 40) = *(v15 + 5);
        v17 = v15[8];
        *(v16 + 56) = v15[7];
        v15[5] = 0;
        v15[6] = 0;
        v15[7] = 0;
        *(v16 + 64) = v17;
        v18 = v15[9];
        *(v16 + 79) = *(v15 + 79);
        *(v16 + 72) = v18;
        v15 += 11;
        v16 += 88;
      }

      while (v15 != v13);
      do
      {
        v19 = v12[5];
        if (v19)
        {
          v12[6] = v19;
          operator delete(v19);
        }

        v20 = v12[2];
        if (v20)
        {
          v12[3] = v20;
          operator delete(v20);
        }

        v12 += 11;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = v7;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v5 = *a2;
    operations_research::sat::LinearExpression::LinearExpression((v5 + 16), (a2 + 16));
    v6 = *(a2 + 72);
    *(v5 + 79) = *(a2 + 79);
    *(v5 + 72) = v6;
    v7 = v5 + 88;
    a1[1] = v7;
  }

  a1[1] = v7;
}

void sub_23CCE61B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char **std::vector<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent>>::~vector[abi:ne200100](char **a1)
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
        v5 = *(v3 - 6);
        if (v5)
        {
          *(v3 - 5) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 9);
        if (v6)
        {
          *(v3 - 8) = v6;
          operator delete(v6);
        }

        v3 -= 88;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__split_buffer<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent,std::allocator<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    v4 = *(i - 48);
    if (v4)
    {
      *(i - 40) = v4;
      operator delete(v4);
    }

    v5 = *(i - 72);
    if (v5)
    {
      *(i - 64) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  i = (a2 - 11);
  v204 = (a2 - 33);
  v205 = (a2 - 22);
  v203 = (a2 - 1);
  v8 = a1;
  v209 = a2;
  v207 = (a2 - 11);
  while (1)
  {
    a1 = v8;
    v9 = a2 - v8;
    v10 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v8) >> 3);
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, (a1 + 11), i);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, (a1 + 11), (a1 + 22), i);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, (a1 + 11), (a1 + 22), (a1 + 33), i);
          return;
      }

      goto LABEL_9;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      break;
    }

LABEL_9:
    if (v9 <= 2111)
    {
      v76 = (a1 + 11);
      v78 = a1 == a2 || v76 == a2;
      if (a4)
      {
        if (v78)
        {
          return;
        }

        v79 = 0;
        v80 = a1;
LABEL_202:
        v82 = v80;
        v80 = v76;
        v83 = *(v82 + 96);
        v84 = *(v82 + 8);
        if (v83 == v84)
        {
          v85 = *(v82 + 168);
          if (v85 == *(v82 + 80))
          {
            if (*v80 >= *v82)
            {
              goto LABEL_201;
            }
          }

          else if (v85)
          {
            goto LABEL_201;
          }
        }

        else
        {
          if (v83 >= v84)
          {
            goto LABEL_201;
          }

          v85 = *(v82 + 168);
        }

        v86 = *v80;
        v87 = *(v80 + 8);
        v88 = *(v82 + 104);
        v226 = *(v82 + 112);
        *(v82 + 104) = 0;
        *(v82 + 112) = 0;
        v251 = *(v82 + 128);
        v245 = *(v82 + 136);
        *(v82 + 120) = 0;
        *(v82 + 128) = 0;
        *(v82 + 136) = 0;
        *(v82 + 144) = 0;
        v238 = *(v82 + 152);
        v89 = *(v82 + 160);
        v220 = v86;
        v90 = v86;
        v91 = v79;
        v232 = *(v82 + 169);
        while (1)
        {
          v93 = a1 + v91;
          *(a1 + v91 + 88) = *(a1 + v91);
          v94 = *(a1 + v91 + 104);
          if (v94)
          {
            *(v93 + 112) = v94;
            operator delete(v94);
            *(v93 + 112) = 0;
            *(v93 + 120) = 0;
          }

          *(v93 + 104) = *(v93 + 16);
          *(v93 + 120) = *(v93 + 32);
          *(v93 + 16) = 0;
          *(v93 + 24) = 0;
          *(v93 + 32) = 0;
          v95 = *(v93 + 128);
          if (v95)
          {
            v96 = a1 + v91;
            *(a1 + v91 + 136) = v95;
            operator delete(v95);
            *(v96 + 136) = 0;
            *(v96 + 144) = 0;
          }

          v97 = a1 + v91;
          *(v93 + 128) = *(a1 + v91 + 40);
          *(v97 + 144) = *(a1 + v91 + 56);
          *(v97 + 48) = 0;
          *(v97 + 56) = 0;
          *(v97 + 40) = 0;
          *(v97 + 160) = *(a1 + v91 + 72);
          *(v97 + 167) = *(a1 + v91 + 79);
          if (!v91)
          {
            v99 = a1;
            *a1 = v220;
            a1[1] = v87;
            v100 = *(v97 + 16);
            if (!v100)
            {
              goto LABEL_226;
            }

LABEL_225:
            v99[3] = v100;
            operator delete(v100);
            *(v97 + 24) = 0;
            *(v97 + 32) = 0;
LABEL_226:
            *(v97 + 16) = v88;
            *(v99 + 3) = v226;
            v101 = *(v97 + 40);
            if (v101)
            {
              v99[6] = v101;
              operator delete(v101);
              *(v97 + 48) = 0;
              *(v97 + 56) = 0;
            }

            *(v97 + 40) = v251;
            *(v99 + 3) = v245;
            v99[8] = v238;
            *(v97 + 72) = v89;
            v81 = a1 + v91;
            *(v81 + 80) = v85;
            *(v81 + 81) = v232;
            a2 = v209;
LABEL_201:
            v76 = v80 + 88;
            v79 += 88;
            if ((v80 + 88) == a2)
            {
              return;
            }

            goto LABEL_202;
          }

          v98 = *(v97 - 80);
          v92 = v87 < v98;
          if (v87 != v98)
          {
            goto LABEL_211;
          }

          if (v85 == *(a1 + v91 - 8))
          {
            break;
          }

          if (v85)
          {
LABEL_222:
            v99 = (a1 + v91);
            *v99 = v220;
            v99[1] = v87;
            v100 = *(v97 + 16);
            if (!v100)
            {
              goto LABEL_226;
            }

            goto LABEL_225;
          }

LABEL_213:
          v91 -= 88;
        }

        v92 = v90 < *(v97 - 88);
LABEL_211:
        if (!v92)
        {
          goto LABEL_222;
        }

        goto LABEL_213;
      }

      if (v78)
      {
        return;
      }

      v181 = a1 + 20;
LABEL_338:
      v182 = a1;
      a1 = v76;
      v183 = *(v182 + 96);
      v184 = *(v182 + 8);
      if (v183 == v184)
      {
        v185 = *(v182 + 168);
        if (v185 == *(v182 + 80))
        {
          if (*a1 >= *v182)
          {
            goto LABEL_337;
          }
        }

        else if (v185)
        {
          goto LABEL_337;
        }
      }

      else
      {
        if (v183 >= v184)
        {
          goto LABEL_337;
        }

        v185 = *(v182 + 168);
      }

      v186 = *a1;
      v187 = a1[1];
      v249 = *(v182 + 104);
      v188 = *(v182 + 120);
      *(v182 + 104) = 0;
      *(v182 + 112) = 0;
      v255 = *(v182 + 128);
      *(v182 + 120) = 0;
      *(v182 + 128) = 0;
      v189 = *(v182 + 144);
      v190 = *(v182 + 152);
      *(v182 + 136) = 0;
      *(v182 + 144) = 0;
      v191 = *(v182 + 160);
      v242 = v186;
      v192 = v186;
      v193 = v181;
      v194 = *(v182 + 169);
      while (1)
      {
        *(v193 - 9) = *(v193 - 10);
        v196 = *(v193 - 7);
        if (v196)
        {
          *(v193 - 6) = v196;
          operator delete(v196);
          *(v193 - 6) = 0;
          *(v193 - 5) = 0;
        }

        v197 = v193 - 18;
        *(v193 - 7) = *(v193 - 9);
        *(v193 - 5) = *(v193 - 16);
        v197[1] = 0;
        v197[2] = 0;
        *v197 = 0;
        v198 = *(v193 - 4);
        if (v198)
        {
          *(v193 - 3) = v198;
          operator delete(v198);
          *(v193 - 3) = 0;
          *(v193 - 2) = 0;
        }

        v199 = *(v193 - 13);
        *(v193 - 2) = *(v193 - 15);
        *(v193 - 1) = v199;
        *(v193 - 14) = 0;
        *(v193 - 13) = 0;
        *(v193 - 15) = 0;
        *v193 = *(v193 - 11);
        *(v193 + 7) = *(v193 - 81);
        v200 = *(v193 - 30);
        v195 = v187 < v200;
        if (v187 != v200)
        {
          goto LABEL_347;
        }

        if (v185 == *(v193 - 168))
        {
          break;
        }

        if (v185)
        {
LABEL_357:
          *(v193 - 20) = v242;
          *(v193 - 19) = v187;
          v201 = *(v193 - 18);
          if (v201)
          {
            *(v193 - 17) = v201;
            operator delete(v201);
          }

          *(v193 - 9) = v249;
          *(v193 - 16) = v188;
          v202 = *(v193 - 15);
          if (v202)
          {
            *(v193 - 14) = v202;
            operator delete(v202);
          }

          *(v193 - 15) = v255;
          *(v193 - 13) = v189;
          *(v193 - 12) = v190;
          *(v193 - 11) = v191;
          *(v193 - 80) = v185;
          *(v193 - 79) = v194;
          a2 = v209;
LABEL_337:
          v76 = (a1 + 11);
          v181 += 11;
          if (a1 + 11 == a2)
          {
            return;
          }

          goto LABEL_338;
        }

LABEL_349:
        v193 -= 11;
      }

      v195 = v192 < *(v193 - 62);
LABEL_347:
      if (!v195)
      {
        goto LABEL_357;
      }

      goto LABEL_349;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v102 = v11 >> 1;
      v103 = v11 >> 1;
LABEL_232:
      v104 = v103;
      v105 = 88 * v103;
      if (v102 < 0x2E8BA2E8BA2E8BA3 * (v105 >> 3))
      {
        goto LABEL_231;
      }

      v106 = (0x5D1745D1745D1746 * (v105 >> 3)) | 1;
      v107 = &a1[11 * v106];
      if (0x5D1745D1745D1746 * (v105 >> 3) + 2 >= v10)
      {
        goto LABEL_240;
      }

      v108 = v107[1];
      v109 = v107[12];
      v110 = v108 < v109;
      if (v108 == v109)
      {
        v111 = *(v107 + 80);
        if (v111 != *(v107 + 168))
        {
          if (v111)
          {
            goto LABEL_240;
          }

LABEL_239:
          v107 += 11;
          v106 = 0x5D1745D1745D1746 * (v105 >> 3) + 2;
LABEL_240:
          v112 = &a1[v105 / 8];
          v113 = v107[1];
          v114 = v112[1];
          if (v113 == v114)
          {
            v115 = *(v107 + 80);
            v252 = *(v112 + 80);
            if (v115 == v252)
            {
              v252 = *(v107 + 80);
              if (*v107 < *v112)
              {
                goto LABEL_231;
              }
            }

            else if ((v115 & 1) == 0)
            {
              goto LABEL_231;
            }
          }

          else
          {
            if (v113 < v114)
            {
              goto LABEL_231;
            }

            v252 = *(v112 + 80);
          }

          v116 = 0;
          v117 = *v112;
          v221 = *(v112 + 1);
          v215 = v112[4];
          v112[2] = 0;
          v112[3] = 0;
          v239 = *(v112 + 5);
          v112[4] = 0;
          v112[5] = 0;
          v233 = v112[7];
          v227 = v112[8];
          v112[6] = 0;
          v112[7] = 0;
          v118 = v112[9];
          v208 = v117;
          v246 = v117;
          v211 = *(v112 + 81);
          while (1)
          {
            *v112 = *v107;
            if (v116)
            {
              v112[3] = v116;
              operator delete(v116);
              v112[2] = 0;
              v112[3] = 0;
              v112[4] = 0;
            }

            *(v112 + 1) = *(v107 + 1);
            v112[4] = v107[4];
            v107[2] = 0;
            v107[3] = 0;
            v107[4] = 0;
            v120 = v112[5];
            if (v120)
            {
              v112[6] = v120;
              operator delete(v120);
              v112[5] = 0;
              v112[6] = 0;
              v112[7] = 0;
            }

            *(v112 + 5) = *(v107 + 5);
            v121 = v107[8];
            v112[7] = v107[7];
            v107[5] = 0;
            v107[6] = 0;
            v107[7] = 0;
            v112[8] = v121;
            v122 = v107[9];
            *(v112 + 79) = *(v107 + 79);
            v112[9] = v122;
            if (v102 < v106)
            {
LABEL_269:
              *v107 = v208;
              v107[1] = v114;
              v132 = v107[2];
              if (v132)
              {
                v107[3] = v132;
                operator delete(v132);
              }

              *(v107 + 1) = v221;
              v107[4] = v215;
              v133 = v107[5];
              if (v133)
              {
                v107[6] = v133;
                operator delete(v133);
              }

              *(v107 + 5) = v239;
              v107[7] = v233;
              v107[8] = v227;
              v107[9] = v118;
              *(v107 + 80) = v252;
              *(v107 + 81) = v211;
LABEL_231:
              v103 = v104 - 1;
              if (v104)
              {
                goto LABEL_232;
              }

              v134 = 0x2E8BA2E8BA2E8BA3 * (v9 >> 3);
              v135 = v209;
              while (2)
              {
                v136 = 0;
                v137 = v135;
                v257 = *a1;
                v228 = a1[2];
                v222 = a1[3];
                a1[2] = 0;
                a1[3] = 0;
                v216 = a1[4];
                v253 = a1[5];
                v247 = a1[6];
                v240 = a1[7];
                a1[6] = 0;
                a1[7] = 0;
                v234 = a1[8];
                *&v256[7] = *(a1 + 79);
                *v256 = a1[9];
                v138 = a1;
                a1[4] = 0;
                a1[5] = 0;
LABEL_280:
                v143 = v138 + 88 * v136;
                v144 = v143 + 88;
                v145 = 2 * v136;
                v136 = (2 * v136) | 1;
                v146 = v145 + 2;
                if (v146 >= v134)
                {
                  goto LABEL_287;
                }

                v147 = *(v143 + 96);
                v148 = *(v143 + 184);
                v149 = v147 < v148;
                if (v147 != v148)
                {
                  goto LABEL_284;
                }

                v150 = *(v143 + 168);
                if (v150 == *(v143 + 256))
                {
                  v149 = *v144 < *(v143 + 176);
LABEL_284:
                  if (!v149)
                  {
LABEL_287:
                    *v138 = *v144;
                    v151 = *(v138 + 16);
                    if (v151)
                    {
                      *(v138 + 24) = v151;
                      operator delete(v151);
                      *(v138 + 16) = 0;
                      *(v138 + 24) = 0;
                      *(v138 + 32) = 0;
                    }

                    *(v138 + 16) = *(v144 + 16);
                    *(v138 + 32) = *(v144 + 32);
                    *(v144 + 16) = 0;
                    *(v144 + 24) = 0;
                    *(v144 + 32) = 0;
                    v152 = *(v138 + 40);
                    if (v152)
                    {
                      *(v138 + 48) = v152;
                      operator delete(v152);
                      *(v138 + 40) = 0;
                      *(v138 + 48) = 0;
                      *(v138 + 56) = 0;
                    }

                    v139 = (v144 + 40);
                    *(v138 + 40) = *(v144 + 40);
                    v140 = *(v144 + 64);
                    *(v138 + 56) = *(v144 + 56);
                    *(v144 + 40) = 0;
                    *(v144 + 48) = 0;
                    *(v144 + 56) = 0;
                    *(v138 + 64) = v140;
                    v142 = (v144 + 72);
                    v141 = *(v144 + 72);
                    *(v138 + 79) = *(v144 + 79);
                    *(v138 + 72) = v141;
                    v138 = v144;
                    if (v136 > ((v134 - 2) >> 1))
                    {
                      v135 = (v135 - 88);
                      if (v144 == (v137 - 88))
                      {
                        *v144 = v257;
                        v167 = *(v144 + 16);
                        if (v167)
                        {
                          *(v144 + 24) = v167;
                          operator delete(v167);
                        }

                        *(v144 + 16) = v228;
                        *(v144 + 24) = v222;
                        *(v144 + 32) = v216;
                        v168 = *(v144 + 40);
                        if (v168)
                        {
                          *(v144 + 48) = v168;
                          operator delete(v168);
                        }

                        *(v144 + 40) = v253;
                        *(v144 + 48) = v247;
                        *(v144 + 56) = v240;
                        *(v144 + 64) = v234;
                        *(v144 + 79) = *&v256[7];
                        *v142 = *v256;
                      }

                      else
                      {
                        *v144 = *v135;
                        v153 = *(v144 + 16);
                        if (v153)
                        {
                          *(v144 + 24) = v153;
                          operator delete(v153);
                          *(v144 + 16) = 0;
                          *(v144 + 24) = 0;
                          *(v144 + 32) = 0;
                        }

                        v154 = v137 - 9;
                        *(v144 + 16) = *(v137 - 72);
                        *(v144 + 32) = *(v137 - 7);
                        *v154 = 0;
                        v154[1] = 0;
                        v154[2] = 0;
                        v155 = *(v144 + 40);
                        if (v155)
                        {
                          *(v144 + 48) = v155;
                          operator delete(v155);
                          *v139 = 0;
                          *(v144 + 48) = 0;
                          *(v144 + 56) = 0;
                        }

                        *(v144 + 40) = *(v137 - 3);
                        v156 = *(v137 - 3);
                        *(v144 + 56) = *(v137 - 4);
                        *(v137 - 6) = 0;
                        *(v137 - 5) = 0;
                        *(v137 - 4) = 0;
                        *(v144 + 64) = v156;
                        v157 = *(v137 - 2);
                        *(v144 + 79) = *(v137 - 9);
                        *v142 = v157;
                        *v135 = v257;
                        v158 = *(v137 - 9);
                        if (v158)
                        {
                          *(v137 - 8) = v158;
                          operator delete(v158);
                        }

                        *(v137 - 9) = v228;
                        *(v137 - 8) = v222;
                        *(v137 - 7) = v216;
                        v159 = *(v137 - 6);
                        if (v159)
                        {
                          *(v137 - 5) = v159;
                          operator delete(v159);
                        }

                        *(v137 - 6) = v253;
                        *(v137 - 5) = v247;
                        *(v137 - 4) = v240;
                        *(v137 - 3) = v234;
                        *(v137 - 9) = *&v256[7];
                        *(v137 - 2) = *v256;
                        v160 = v144 + 88 - a1;
                        if (v160 >= 89)
                        {
                          v161 = (0x2E8BA2E8BA2E8BA3 * (v160 >> 3) - 2) >> 1;
                          v162 = &a1[11 * v161];
                          v163 = *(v162 + 8);
                          v164 = *(v144 + 8);
                          if (v163 == v164)
                          {
                            v165 = *(v162 + 80);
                            v166 = *(v144 + 80);
                            if (v165 == v166)
                            {
                              v166 = *(v162 + 80);
                              if (*v162 >= *v144)
                              {
                                goto LABEL_277;
                              }
                            }

                            else if (v165)
                            {
                              goto LABEL_277;
                            }
                          }

                          else
                          {
                            if (v163 >= v164)
                            {
                              goto LABEL_277;
                            }

                            v166 = *(v144 + 80);
                          }

                          v169 = 0;
                          v170 = *v144;
                          v229 = *(v144 + 16);
                          v223 = *(v144 + 32);
                          *(v144 + 16) = 0;
                          *(v144 + 24) = 0;
                          *(v144 + 32) = 0;
                          v248 = *(v144 + 40);
                          v241 = *(v144 + 56);
                          v235 = *(v144 + 64);
                          *(v144 + 48) = 0;
                          *(v144 + 56) = 0;
                          *v139 = 0;
                          v171 = *(v144 + 72);
                          v212 = v170;
                          v254 = v170;
                          v217 = *(v144 + 81);
                          while (2)
                          {
                            *v144 = *v162;
                            if (v169)
                            {
                              *(v144 + 24) = v169;
                              operator delete(v169);
                              *(v144 + 16) = 0;
                              *(v144 + 24) = 0;
                              *(v144 + 32) = 0;
                            }

                            *(v144 + 16) = *(v162 + 16);
                            *(v144 + 32) = *(v162 + 32);
                            *(v162 + 16) = 0;
                            *(v162 + 24) = 0;
                            *(v162 + 32) = 0;
                            v173 = *(v144 + 40);
                            if (v173)
                            {
                              *(v144 + 48) = v173;
                              operator delete(v173);
                              *(v144 + 40) = 0;
                              *(v144 + 48) = 0;
                              *(v144 + 56) = 0;
                            }

                            *(v144 + 40) = *(v162 + 40);
                            v174 = *(v162 + 64);
                            *(v144 + 56) = *(v162 + 56);
                            *(v162 + 40) = 0;
                            *(v162 + 48) = 0;
                            *(v162 + 56) = 0;
                            *(v144 + 64) = v174;
                            v175 = *(v162 + 72);
                            *(v144 + 79) = *(v162 + 79);
                            *(v144 + 72) = v175;
                            if (!v161)
                            {
LABEL_327:
                              *v162 = v212;
                              *(v162 + 8) = v164;
                              v179 = *(v162 + 16);
                              if (v179)
                              {
                                *(v162 + 24) = v179;
                                operator delete(v179);
                              }

                              *(v162 + 16) = v229;
                              *(v162 + 32) = v223;
                              v180 = *(v162 + 40);
                              if (v180)
                              {
                                *(v162 + 48) = v180;
                                operator delete(v180);
                              }

                              *(v162 + 40) = v248;
                              *(v162 + 56) = v241;
                              *(v162 + 64) = v235;
                              *(v162 + 72) = v171;
                              *(v162 + 80) = v166;
                              *(v162 + 81) = v217;
                              break;
                            }

                            v161 = (v161 - 1) >> 1;
                            v176 = &a1[11 * v161];
                            v177 = v176[1];
                            v172 = v177 < v164;
                            if (v177 == v164)
                            {
                              v178 = *(v176 + 80);
                              if (v178 != v166)
                              {
                                if (v178)
                                {
                                  goto LABEL_327;
                                }

                                goto LABEL_318;
                              }

                              v172 = *v176 < v254;
                            }

                            if (!v172)
                            {
                              goto LABEL_327;
                            }

LABEL_318:
                            v169 = *(v162 + 16);
                            v144 = v162;
                            v162 = &a1[11 * v161];
                            continue;
                          }
                        }
                      }

LABEL_277:
                      v30 = v134-- <= 2;
                      if (v30)
                      {
                        return;
                      }

                      continue;
                    }

                    goto LABEL_280;
                  }
                }

                else if (v150)
                {
                  goto LABEL_287;
                }

                break;
              }

              v144 = v143 + 176;
              v136 = v146;
              goto LABEL_287;
            }

            v123 = 2 * v106;
            v106 = (2 * v106) | 1;
            v124 = &a1[11 * v106];
            v125 = v123 + 2;
            if (v125 >= v10)
            {
              goto LABEL_263;
            }

            v126 = v124[1];
            v127 = v124[12];
            v128 = v126 < v127;
            if (v126 != v127)
            {
              goto LABEL_260;
            }

            v129 = *(v124 + 80);
            if (v129 == *(v124 + 168))
            {
              break;
            }

            if ((v129 & 1) == 0)
            {
LABEL_262:
              v124 += 11;
              v106 = v125;
            }

LABEL_263:
            v130 = v124[1];
            v119 = v130 < v114;
            if (v130 != v114)
            {
              goto LABEL_249;
            }

            v131 = *(v124 + 80);
            if (v131 == v252)
            {
              v119 = *v124 < v246;
LABEL_249:
              if (v119)
              {
                goto LABEL_269;
              }

              goto LABEL_250;
            }

            if ((v131 & 1) == 0)
            {
              goto LABEL_269;
            }

LABEL_250:
            v116 = v107[2];
            v112 = v107;
            v107 = v124;
          }

          v128 = *v124 < *(v124 + 22);
LABEL_260:
          if (v128)
          {
            goto LABEL_262;
          }

          goto LABEL_263;
        }

        v110 = *v107 < *(v107 + 22);
      }

      if (!v110)
      {
        goto LABEL_240;
      }

      goto LABEL_239;
    }

    v12 = v10 >> 1;
    v13 = &a1[11 * (v10 >> 1)];
    if (v9 < 0x2C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(v13, a1, i);
      v250 = a3 - 1;
      if (a4)
      {
LABEL_18:
        v15 = a1[1];
        goto LABEL_23;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, v13, i);
      v14 = 11 * v12;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>((a1 + 11), &a1[v14 - 11], v205);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>((a1 + 22), &a1[v14 + 11], v204);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(&a1[v14 - 11], v13, &a1[v14 + 11]);
      std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a1, v13);
      v250 = a3 - 1;
      if (a4)
      {
        goto LABEL_18;
      }
    }

    v15 = *(a1 - 10);
    v16 = a1[1];
    if (v15 != v16)
    {
      if (v15 >= v16)
      {
        LOBYTE(v17) = *(a1 + 80);
        goto LABEL_87;
      }

      v15 = a1[1];
      goto LABEL_23;
    }

    v17 = *(a1 - 8);
    if (v17 != *(a1 + 80))
    {
      if (v17)
      {
        LOBYTE(v17) = *(a1 + 80);
        goto LABEL_87;
      }

      goto LABEL_23;
    }

    if (*(a1 - 22) < *a1)
    {
LABEL_23:
      v18 = 0;
      v19 = *a1;
      v230 = *(a1 + 1);
      v224 = a1[4];
      a1[2] = 0;
      v243 = *(a1 + 5);
      a1[5] = 0;
      a1[3] = 0;
      a1[4] = 0;
      v236 = a1[7];
      v218 = a1[8];
      a1[6] = 0;
      a1[7] = 0;
      v20 = a1[9];
      v21 = *(a1 + 80);
      v213 = v19;
      v22 = v19;
      v210 = *(a1 + 81);
      while (1)
      {
        v23 = &a1[v18];
        v24 = a1[v18 + 12];
        if (v24 != v15)
        {
          if (v24 >= v15)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        v25 = *(v23 + 168);
        if (v25 != v21)
        {
          break;
        }

        if (*(v23 + 22) >= v19)
        {
          goto LABEL_31;
        }

LABEL_25:
        v18 += 11;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_31:
      v26 = &a1[v18 + 11];
      if (v18 * 8)
      {
        while (1)
        {
          v27 = *(i + 8);
          if (v27 == v15)
          {
            v28 = *(i + 80);
            if (v28 == v21)
            {
              if (*i < v19)
              {
                goto LABEL_41;
              }
            }

            else if ((v28 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          else if (v27 < v15)
          {
            goto LABEL_41;
          }

          i -= 88;
        }
      }

      i = v209;
      if (v26 < v209)
      {
        for (i = v207; ; i -= 88)
        {
          v37 = *(i + 8);
          if (v37 == v15)
          {
            v38 = *(i + 80);
            if (v38 == v21)
            {
              if (v26 >= i || *i < v19)
              {
                break;
              }
            }

            else if (v26 >= i || (v38 & 1) == 0)
            {
              break;
            }
          }

          else
          {
            v36 = v37 < v15 || v26 >= i;
            if (v36)
            {
              break;
            }
          }
        }
      }

LABEL_41:
      v8 = v26;
      if (v26 < i)
      {
        v29 = i;
        do
        {
          std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(v8, v29);
          do
          {
            while (1)
            {
              v8 += 88;
              v31 = *(v8 + 8);
              v30 = v31 < v15;
              if (v31 != v15)
              {
                goto LABEL_46;
              }

              v32 = *(v8 + 80);
              if (v32 != v21)
              {
                break;
              }

              v30 = *v8 < v22;
LABEL_46:
              if (!v30)
              {
                goto LABEL_54;
              }
            }
          }

          while ((v32 & 1) == 0);
          do
          {
            while (1)
            {
LABEL_54:
              v29 -= 88;
              v34 = *(v29 + 8);
              v33 = v34 < v15;
              if (v34 != v15)
              {
                goto LABEL_53;
              }

              v35 = *(v29 + 80);
              if (v35 != v21)
              {
                break;
              }

              v33 = *v29 < v22;
LABEL_53:
              if (v33)
              {
                goto LABEL_43;
              }
            }
          }

          while ((v35 & 1) != 0);
LABEL_43:
          ;
        }

        while (v8 < v29);
      }

      if ((v8 - 88) != a1)
      {
        *a1 = *(v8 - 88);
        v39 = a1[2];
        if (v39)
        {
          a1[3] = v39;
          operator delete(v39);
          a1[2] = 0;
          a1[3] = 0;
          a1[4] = 0;
        }

        v40 = (v8 - 72);
        *(a1 + 1) = *(v8 - 72);
        a1[4] = *(v8 - 56);
        *v40 = 0;
        v40[1] = 0;
        v40[2] = 0;
        v41 = a1[5];
        if (v41)
        {
          a1[6] = v41;
          operator delete(v41);
          a1[5] = 0;
          a1[6] = 0;
          a1[7] = 0;
        }

        *(a1 + 5) = *(v8 - 48);
        v42 = *(v8 - 24);
        a1[7] = *(v8 - 32);
        *(v8 - 48) = 0;
        *(v8 - 40) = 0;
        *(v8 - 32) = 0;
        a1[8] = v42;
        v43 = *(v8 - 16);
        *(a1 + 79) = *(v8 - 9);
        a1[9] = v43;
      }

      *(v8 - 88) = v213;
      *(v8 - 80) = v15;
      v44 = *(v8 - 72);
      if (v44)
      {
        *(v8 - 64) = v44;
        operator delete(v44);
      }

      *(v8 - 72) = v230;
      *(v8 - 56) = v224;
      v45 = *(v8 - 48);
      a3 = v250;
      if (v45)
      {
        *(v8 - 40) = v45;
        operator delete(v45);
      }

      *(v8 - 48) = v243;
      *(v8 - 32) = v236;
      *(v8 - 24) = v218;
      *(v8 - 16) = v20;
      *(v8 - 8) = v21;
      *(v8 - 7) = v210;
      v36 = v26 >= i;
      a2 = v209;
      i = v207;
      if (v36)
      {
        v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*>(a1, v8 - 88);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*>(v8, v209))
        {
          a2 = (v8 - 88);
          if (v46)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v46)
        {
          goto LABEL_85;
        }
      }

      else
      {
LABEL_85:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,false>(a1, v8 - 88, v250, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
LABEL_87:
      v47 = *a1;
      v244 = *a1;
      v219 = *(a1 + 1);
      v48 = a1[4];
      a1[2] = 0;
      v237 = *(a1 + 5);
      a1[5] = 0;
      a1[3] = 0;
      a1[4] = 0;
      v49 = a1[7];
      v50 = a1[8];
      a1[6] = 0;
      a1[7] = 0;
      v51 = a1[9];
      v52 = *(a2 - 10);
      v53 = v16 < v52;
      v231 = v49;
      v225 = *(a1 + 81);
      v214 = v48;
      if (v16 == v52)
      {
        if (*v203 != v17)
        {
          if ((v17 & 1) == 0)
          {
LABEL_92:
            v8 = (a1 + 11);
            if (v17)
            {
              a3 = v250;
              while (1)
              {
                v54 = *(v8 + 8);
                if (v16 == v54)
                {
                  if (*(v8 + 80) == v17 && v47 < *v8)
                  {
                    goto LABEL_123;
                  }
                }

                else if (v16 < v54)
                {
                  goto LABEL_123;
                }

                v8 += 88;
              }
            }

            a3 = v250;
            while (1)
            {
              v58 = *(v8 + 8);
              if (v16 == v58)
              {
                if (*(v8 + 80) != v17 || v47 < *v8)
                {
                  goto LABEL_123;
                }
              }

              else if (v16 < v58)
              {
                goto LABEL_123;
              }

              v8 += 88;
            }
          }

          goto LABEL_101;
        }

        v53 = v47 < *i;
      }

      if (v53)
      {
        goto LABEL_92;
      }

LABEL_101:
      v8 = (a1 + 11);
      if (a1 + 11 >= a2)
      {
        a3 = v250;
      }

      else
      {
        a3 = v250;
        if (v17)
        {
          while (1)
          {
            v57 = *(v8 + 8);
            if (v16 == v57)
            {
              if (*(v8 + 80) == v17 && v47 < *v8)
              {
                goto LABEL_123;
              }
            }

            else if (v16 < v57)
            {
              goto LABEL_123;
            }

            v8 += 88;
            if (v8 >= a2)
            {
              goto LABEL_123;
            }
          }
        }

        do
        {
          v55 = *(v8 + 8);
          v56 = v16 < v55;
          if (v16 == v55)
          {
            if (*(v8 + 80) != v17)
            {
              break;
            }

            v56 = v47 < *v8;
          }

          if (v56)
          {
            break;
          }

          v8 += 88;
        }

        while (v8 < a2);
      }

LABEL_123:
      v59 = a2;
      if (v8 >= a2)
      {
        goto LABEL_132;
      }

      if (v17)
      {
        for (j = v203; ; j -= 88)
        {
          if (v16 == v52)
          {
            if (*j != v17 || v47 >= *(j - 20))
            {
              goto LABEL_131;
            }
          }

          else if (v16 >= v52)
          {
            goto LABEL_131;
          }

          v52 = *(j - 20);
        }
      }

      for (j = v203; ; j -= 88)
      {
        v72 = v16 < v52;
        if (v16 != v52)
        {
          break;
        }

        if (*j == v17)
        {
          v72 = v47 < *(j - 20);
          break;
        }

LABEL_172:
        v52 = *(j - 20);
      }

      if (v72)
      {
        goto LABEL_172;
      }

LABEL_131:
      v59 = (j - 80);
LABEL_132:
      while (v8 < v59)
      {
        std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(v8, v59);
        if (v17)
        {
          do
          {
            while (1)
            {
              v8 += 88;
              v61 = *(v8 + 8);
              if (v16 == v61)
              {
                break;
              }

              if (v16 < v61)
              {
                goto LABEL_146;
              }
            }
          }

          while (*(v8 + 80) != v17 || v244 >= *v8);
        }

        else
        {
          do
          {
            while (1)
            {
              v8 += 88;
              v62 = *(v8 + 8);
              if (v16 == v62)
              {
                break;
              }

              if (v16 < v62)
              {
                goto LABEL_146;
              }
            }
          }

          while (*(v8 + 80) == v17 && v244 >= *v8);
        }

LABEL_146:
        if (v17)
        {
          do
          {
            while (1)
            {
              v59 -= 88;
              v64 = *(v59 + 8);
              if (v16 == v64)
              {
                break;
              }

              if (v16 >= v64)
              {
                goto LABEL_134;
              }
            }
          }

          while (*(v59 + 80) == v17 && v244 < *v59);
        }

        else
        {
          do
          {
            while (1)
            {
              v59 -= 88;
              v63 = *(v59 + 8);
              if (v16 == v63)
              {
                break;
              }

              if (v16 >= v63)
              {
                goto LABEL_134;
              }
            }
          }

          while (*(v59 + 80) != v17 || v244 < *v59);
        }

LABEL_134:
        ;
      }

      a2 = v209;
      if ((v8 - 88) != a1)
      {
        *a1 = *(v8 - 88);
        v65 = a1[2];
        if (v65)
        {
          a1[3] = v65;
          operator delete(v65);
          a1[2] = 0;
          a1[3] = 0;
          a1[4] = 0;
        }

        v66 = (v8 - 72);
        *(a1 + 1) = *(v8 - 72);
        a1[4] = *(v8 - 56);
        *v66 = 0;
        v66[1] = 0;
        v66[2] = 0;
        v67 = a1[5];
        if (v67)
        {
          a1[6] = v67;
          operator delete(v67);
          a1[5] = 0;
          a1[6] = 0;
          a1[7] = 0;
        }

        *(a1 + 5) = *(v8 - 48);
        v68 = *(v8 - 24);
        a1[7] = *(v8 - 32);
        *(v8 - 48) = 0;
        *(v8 - 40) = 0;
        *(v8 - 32) = 0;
        a1[8] = v68;
        v69 = *(v8 - 16);
        *(a1 + 79) = *(v8 - 9);
        a1[9] = v69;
      }

      *(v8 - 88) = v244;
      *(v8 - 80) = v16;
      v70 = *(v8 - 72);
      if (v70)
      {
        *(v8 - 64) = v70;
        operator delete(v70);
      }

      *(v8 - 72) = v219;
      *(v8 - 56) = v214;
      v71 = *(v8 - 48);
      if (v71)
      {
        *(v8 - 40) = v71;
        operator delete(v71);
      }

      a4 = 0;
      *(v8 - 48) = v237;
      *(v8 - 32) = v231;
      *(v8 - 24) = v50;
      *(v8 - 16) = v51;
      *(v8 - 8) = v17;
      *(v8 - 7) = v225;
    }
  }

  v73 = *(a2 - 10);
  v74 = a1[1];
  if (v73 == v74)
  {
    v75 = *(a2 - 8);
    if (v75 == *(a1 + 80))
    {
      if (*i < *a1)
      {
        goto LABEL_363;
      }
    }

    else if ((v75 & 1) == 0)
    {
      goto LABEL_363;
    }
  }

  else if (v73 < v74)
  {
LABEL_363:

    std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a1, i);
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 < v5;
  if (v4 == v5)
  {
    v7 = *(a2 + 80);
    if (v7 != *(result + 80))
    {
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_6:
      v8 = *(a3 + 8);
      v9 = v8 < v4;
      if (v8 == v4)
      {
        v10 = *(a3 + 80);
        if (v10 != *(a2 + 80))
        {
          if (v10)
          {
            goto LABEL_21;
          }

          goto LABEL_11;
        }

        v9 = *a3 < *a2;
      }

      if (!v9)
      {
LABEL_21:
        std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(result, a2);
        v11 = a3;
        v16 = *(a3 + 8);
        v17 = *(a2 + 8);
        if (v16 == v17)
        {
          v18 = *(a3 + 80);
          if (v18 == *(a2 + 80))
          {
            if (*a3 >= *a2)
            {
              return;
            }
          }

          else if (v18)
          {
            return;
          }
        }

        else if (v16 >= v17)
        {
          return;
        }

        result = a2;

        goto LABEL_13;
      }

LABEL_11:
      v11 = a3;

      goto LABEL_13;
    }

    v6 = *a2 < *result;
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v12 = *(a3 + 8);
  v13 = v12 < v4;
  if (v12 == v4)
  {
    v14 = *(a3 + 80);
    if (v14 != *(a2 + 80))
    {
      if (v14)
      {
        return;
      }

      goto LABEL_26;
    }

    v13 = *a3 < *a2;
  }

  if (!v13)
  {
    return;
  }

LABEL_26:
  v19 = result;
  std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a2, a3);
  result = v19;
  v20 = *(a2 + 8);
  v21 = *(v19 + 8);
  if (v20 == v21)
  {
    v22 = *(a2 + 80);
    if (v22 == *(v19 + 80))
    {
      if (*a2 < *v19)
      {
        goto LABEL_40;
      }
    }

    else if ((v22 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v20 < v21)
  {
LABEL_40:
    v11 = a2;

LABEL_13:
    std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(result, v11);
  }
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, a2, a3);
  v9 = *(a4 + 8);
  v10 = *(a3 + 8);
  v11 = v9 < v10;
  if (v9 == v10)
  {
    v12 = *(a4 + 80);
    if (v12 != *(a3 + 80))
    {
      if (v12)
      {
        return result;
      }

      goto LABEL_7;
    }

    v11 = *a4 < *a3;
  }

  if (!v11)
  {
    return result;
  }

LABEL_7:
  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a3, a4).n128_u64[0];
  v13 = *(a3 + 8);
  v14 = *(a2 + 8);
  v15 = v13 < v14;
  if (v13 == v14)
  {
    v16 = *(a3 + 80);
    if (v16 != *(a2 + 80))
    {
      if (v16)
      {
        return result;
      }

      goto LABEL_13;
    }

    v15 = *a3 < *a2;
  }

  if (!v15)
  {
    return result;
  }

LABEL_13:
  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a2, a3).n128_u64[0];
  v17 = *(a2 + 8);
  v18 = *(a1 + 8);
  v19 = v17 < v18;
  if (v17 != v18)
  {
    goto LABEL_16;
  }

  v20 = *(a2 + 80);
  if (v20 == *(a1 + 80))
  {
    v19 = *a2 < *a1;
LABEL_16:
    if (!v19)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v20)
  {
    return result;
  }

LABEL_18:

  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a1, a2).n128_u64[0];
  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, a2, a3, a4);
  v11 = *(a5 + 8);
  v12 = *(a4 + 8);
  v13 = v11 < v12;
  if (v11 == v12)
  {
    v14 = *(a5 + 80);
    if (v14 != *(a4 + 80))
    {
      if (v14)
      {
        return result;
      }

      goto LABEL_7;
    }

    v13 = *a5 < *a4;
  }

  if (!v13)
  {
    return result;
  }

LABEL_7:
  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a4, a5).n128_u64[0];
  v15 = *(a4 + 8);
  v16 = *(a3 + 8);
  v17 = v15 < v16;
  if (v15 == v16)
  {
    v18 = *(a4 + 80);
    if (v18 != *(a3 + 80))
    {
      if (v18)
      {
        return result;
      }

      goto LABEL_13;
    }

    v17 = *a4 < *a3;
  }

  if (!v17)
  {
    return result;
  }

LABEL_13:
  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a3, a4).n128_u64[0];
  v19 = *(a3 + 8);
  v20 = *(a2 + 8);
  v21 = v19 < v20;
  if (v19 == v20)
  {
    v22 = *(a3 + 80);
    if (v22 != *(a2 + 80))
    {
      if (v22)
      {
        return result;
      }

      goto LABEL_19;
    }

    v21 = *a3 < *a2;
  }

  if (!v21)
  {
    return result;
  }

LABEL_19:
  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a2, a3).n128_u64[0];
  v23 = *(a2 + 8);
  v24 = *(a1 + 8);
  v25 = v23 < v24;
  if (v23 != v24)
  {
    goto LABEL_22;
  }

  v26 = *(a2 + 80);
  if (v26 == *(a1 + 80))
  {
    v25 = *a2 < *a1;
LABEL_22:
    if (!v25)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (v26)
  {
    return result;
  }

LABEL_24:

  *&result = std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a1, a2).n128_u64[0];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*>(uint64_t a1, uint64_t a2)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, a1 + 88, a2 - 88);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, a1 + 88, a1 + 176, a2 - 88);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, a1 + 88, a1 + 176, a1 + 264, a2 - 88);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v6 = (a2 - 88);
      v7 = a2;
      v8 = *(a2 - 80);
      v9 = *(a1 + 8);
      if (v8 == v9)
      {
        v10 = *(v7 - 8);
        if (v10 == *(a1 + 80))
        {
          if (*v6 >= *a1)
          {
            return 1;
          }
        }

        else if (v10)
        {
          return 1;
        }
      }

      else if (v8 >= v9)
      {
        return 1;
      }

      std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(a1, v6);
      return 1;
    }
  }

  v11 = (a1 + 176);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent const&)#1} &,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent*,0>(a1, a1 + 88, a1 + 176);
  v13 = (a1 + 264);
  if (a1 + 264 == a2)
  {
    return 1;
  }

  v14 = a2;
  v15 = 0;
  v16 = 0;
  v32 = a2;
  while (2)
  {
    v17 = v13[1];
    v18 = v11[1];
    if (v17 == v18)
    {
      v19 = *(v13 + 80);
      if (v19 == *(v11 + 80))
      {
        if (*v13 >= *v11)
        {
          goto LABEL_17;
        }
      }

      else if (v19)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v17 >= v18)
      {
        goto LABEL_17;
      }

      v19 = *(v13 + 80);
    }

    v20 = 0;
    v35 = v13[2];
    v33 = *v13;
    v34 = *(v13 + 3);
    v13[2] = 0;
    v13[3] = 0;
    v39 = v13[5];
    v13[4] = 0;
    v13[5] = 0;
    v38 = *(v13 + 3);
    v13[6] = 0;
    v13[7] = 0;
    v37 = v13[8];
    v21 = v13[9];
    v22 = v15;
    v36 = *(v13 + 81);
    while (1)
    {
      v24 = a1 + v22;
      *(a1 + v22 + 264) = *(a1 + v22 + 176);
      if (v20)
      {
        *(v24 + 288) = v20;
        operator delete(v20);
        *(v24 + 288) = 0;
        *(v24 + 296) = 0;
      }

      *(v24 + 280) = *(v24 + 192);
      *(v24 + 296) = *(v24 + 208);
      *(v24 + 192) = 0;
      *(v24 + 200) = 0;
      *(v24 + 208) = 0;
      v25 = *(v24 + 304);
      if (v25)
      {
        v26 = a1 + v22;
        *(a1 + v22 + 312) = v25;
        operator delete(v25);
        *(v26 + 312) = 0;
        *(v26 + 320) = 0;
      }

      v27 = a1 + v22;
      *(v24 + 304) = *(a1 + v22 + 216);
      *(v27 + 320) = *(a1 + v22 + 232);
      *(v27 + 224) = 0;
      *(v27 + 232) = 0;
      *(v27 + 216) = 0;
      *(v27 + 336) = *(a1 + v22 + 248);
      *(a1 + v22 + 343) = *(a1 + v22 + 255);
      if (v22 == -176)
      {
        break;
      }

      v28 = *(v27 + 96);
      v23 = v17 < v28;
      if (v17 != v28)
      {
        goto LABEL_27;
      }

      if (v19 == *(a1 + v22 + 168))
      {
        v23 = v33 < *(v27 + 88);
LABEL_27:
        if (!v23)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

      if (v19)
      {
LABEL_38:
        v29 = (a1 + v22 + 176);
        *v29 = v33;
        v29[1] = v17;
        v30 = *(v27 + 192);
        if (!v30)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

LABEL_29:
      v20 = *(v24 + 192);
      v22 -= 88;
    }

    v29 = a1;
    *a1 = v33;
    *(a1 + 8) = v17;
    v30 = *(v27 + 192);
    if (!v30)
    {
      goto LABEL_42;
    }

LABEL_41:
    v29[3] = v30;
    operator delete(v30);
    *(v27 + 200) = 0;
    *(v27 + 208) = 0;
LABEL_42:
    *(v27 + 192) = v35;
    *(v29 + 3) = v34;
    v31 = *(v27 + 216);
    if (v31)
    {
      v29[6] = v31;
      operator delete(v31);
      *(v27 + 224) = 0;
      *(v27 + 232) = 0;
    }

    *(v27 + 216) = v39;
    *(v29 + 3) = v38;
    v29[8] = v37;
    *(v27 + 248) = v21;
    *(a1 + v22 + 256) = v19;
    *(a1 + v22 + 257) = v36;
    ++v16;
    v14 = v32;
    if (v16 != 8)
    {
LABEL_17:
      v11 = v13;
      v15 += 88;
      v13 += 11;
      if (v13 == v14)
      {
        return 1;
      }

      continue;
    }

    return v13 + 11 == v32;
  }
}

__n128 std::iter_swap[abi:ne200100]<operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *,operations_research::sat::CreateCumulativeTimeTableCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::TimeTableEvent *>(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v20 = *a1;
  v5 = *(a1 + 4);
  a1[1] = 0uLL;
  *(a1 + 4) = 0;
  v6 = a1 + 5;
  v17 = v4;
  v18 = *(a1 + 40);
  *(a1 + 5) = 0;
  v7 = *(a1 + 7);
  v8 = *(a1 + 8);
  a1[3] = 0uLL;
  v9 = a1 + 72;
  *&v19[7] = *(a1 + 79);
  *v19 = *(a1 + 9);
  *a1 = *a2;
  v10 = *(a2 + 4);
  a1[1] = a2[1];
  *(a1 + 4) = v10;
  *(a2 + 24) = 0uLL;
  *(a2 + 2) = 0;
  v11 = *(a1 + 5);
  if (v11)
  {
    *(a1 + 6) = v11;
    operator delete(v11);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  *(a1 + 40) = *(a2 + 40);
  v12 = *(a2 + 8);
  *(a1 + 7) = *(a2 + 7);
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a1 + 8) = v12;
  v13 = *(a2 + 9);
  *(v9 + 7) = *(a2 + 79);
  *v9 = v13;
  *a2 = v20;
  v14 = *(a2 + 2);
  if (v14)
  {
    *(a2 + 3) = v14;
    operator delete(v14);
  }

  a2[1] = v17;
  *(a2 + 4) = v5;
  v15 = *(a2 + 5);
  if (v15)
  {
    *(a2 + 6) = v15;
    operator delete(v15);
  }

  result = v18;
  *(a2 + 40) = v18;
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  *(a2 + 9) = *v19;
  *(a2 + 79) = *&v19[7];
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 6;
  v9 = a2 - 12;
  v10 = a2 - 18;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 5);
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
      v202 = a2 - 6;
      v203 = a2[-6].n128_i64[0];
      if (v203 < v11->n128_u64[0] || v203 == v11->n128_u64[0] && a2[-3].n128_u64[0] < v11[3].n128_u64[0])
      {
        v376 = *v11;
        v411 = v11[1];
        v513 = v11[4];
        v545 = v11[5];
        v446 = v11[2];
        v481 = v11[3];
        v204 = a2[-1];
        v206 = a2[-4];
        v205 = a2[-3];
        v11[4] = a2[-2];
        v11[5] = v204;
        v11[2] = v206;
        v11[3] = v205;
LABEL_219:
        v207 = v202[1];
        *v11 = *v202;
        v11[1] = v207;
        *v202 = v376;
        v202[1] = v411;
        result = v446;
        v202[4] = v513;
        v202[5] = v545;
        v202[2] = v446;
        v202[3] = v481;
        return result;
      }

      return result;
    }

LABEL_9:
    if (v12 <= 2303)
    {
      v236 = v11 + 6;
      v238 = v11 == a2 || v236 == a2;
      if (a4)
      {
        if (!v238)
        {
          v239 = 0;
          v240 = v11;
          do
          {
            v242 = v236;
            v243 = v240[6].n128_i64[0];
            v244 = v240[9].n128_i64[0];
            if (v243 < v240->n128_u64[0] || (v243 == v240->n128_u64[0] ? (v245 = v244 < v240[3].n128_u64[0]) : (v245 = 0), v245))
            {
              v452 = v240[8].n128_u64[1];
              v382 = *(v240 + 104);
              v417 = *(v240 + 120);
              v568 = v240[11].n128_u64[1];
              v556 = *(v240 + 152);
              v562 = *(v240 + 168);
              v246 = v240[5];
              v242[4] = v240[4];
              v242[5] = v246;
              v247 = v240[3];
              v242[2] = v240[2];
              v242[3] = v247;
              v248 = v240[1];
              *v242 = *v240;
              v242[1] = v248;
              v241 = v11;
              if (v240 != v11)
              {
                v249 = v239;
                while (1)
                {
                  v253 = (v11->n128_u64 + v249);
                  v254 = *(v11[-6].n128_i64 + v249);
                  if (v243 >= v254 && (v243 != v254 || v244 >= *(v253 - 6)))
                  {
                    break;
                  }

                  v250 = *(&v11[-3] + v249);
                  v253[2] = *(&v11[-4] + v249);
                  v253[3] = v250;
                  v251 = *(&v11[-1] + v249);
                  v253[4] = *(&v11[-2] + v249);
                  v253[5] = v251;
                  v252 = *(&v11[-5] + v249);
                  *v253 = *(&v11[-6] + v249);
                  v253[1] = v252;
                  v249 -= 96;
                  if (!v249)
                  {
                    v241 = v11;
                    goto LABEL_254;
                  }
                }

                v241 = (v11 + v249);
              }

LABEL_254:
              v241->n128_u64[0] = v243;
              *(v241 + 24) = v417;
              *(v241 + 8) = v382;
              v241[2].n128_u64[1] = v452;
              v241[3].n128_u64[0] = v244;
              result = v556;
              *(v241 + 56) = v556;
              *(v241 + 72) = v562;
              v241[5].n128_u64[1] = v568;
            }

            v236 = v242 + 6;
            v239 += 96;
            v240 = v242;
          }

          while (&v242[6] != a2);
        }
      }

      else if (!v238)
      {
        do
        {
          v319 = v236;
          v320 = a1[6].n128_i64[0];
          v321 = a1[9].n128_i64[0];
          if (v320 < a1->n128_u64[0] || (v320 == a1->n128_u64[0] ? (v322 = v321 < a1[3].n128_u64[0]) : (v322 = 0), v322))
          {
            v455 = a1[8].n128_u64[1];
            v385 = *(a1 + 104);
            v420 = *(a1 + 120);
            v571 = a1[11].n128_u64[1];
            v559 = *(a1 + 152);
            v565 = *(a1 + 168);
            do
            {
              do
              {
                v323 = a1;
                v324 = a1[3];
                a1[8] = a1[2];
                a1[9] = v324;
                v325 = a1[5];
                a1[10] = a1[4];
                a1[11] = v325;
                v326 = a1[1];
                a1[6] = *a1;
                a1[7] = v326;
                v327 = a1[-6].n128_i64[0];
                a1 -= 6;
                v328 = v320 == v327;
              }

              while (v320 < v327);
            }

            while (v328 && v321 < v323[-3].n128_u64[0]);
            v323->n128_u64[0] = v320;
            *(v323 + 24) = v420;
            *(v323 + 8) = v385;
            v323[2].n128_u64[1] = v455;
            v323[3].n128_u64[0] = v321;
            result = v559;
            *(v323 + 56) = v559;
            *(v323 + 72) = v565;
            v323[5].n128_u64[1] = v571;
          }

          v236 = v319 + 6;
          a1 = v319;
        }

        while (&v319[6] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v256 = (v13 - 2) >> 1;
        v257 = v256;
        do
        {
          v258 = v257;
          v259 = 3 * v257;
          if (v256 >= (0xAAAAAAAAAAAAAAABLL * ((96 * v257) >> 5)))
          {
            v260 = 0x5555555555555556 * ((96 * v257) >> 5);
            v261 = v260 | 1;
            v262 = &v11[6 * (v260 | 1)];
            v263 = v260 + 2;
            if (v263 < v13)
            {
              v264 = v262[6].n128_i64[0];
              if (v262->n128_u64[0] < v264 || (v262->n128_u64[0] == v264 ? (v265 = v262[3].n128_u64[0] < v262[9].n128_u64[0]) : (v265 = 0), v265))
              {
                v262 += 6;
                v261 = v263;
              }
            }

            v266 = &v11[2 * v259];
            v267 = v266->n128_u64[0];
            if (v262->n128_u64[0] >= v266->n128_u64[0])
            {
              v268 = v266[3].n128_i64[0];
              if (v262->n128_u64[0] != v266->n128_u64[0] || v262[3].n128_u64[0] >= v268)
              {
                v453 = v266[2].n128_u64[1];
                v383 = *(v266 + 8);
                v418 = *(v266 + 24);
                v569 = v266[5].n128_u64[1];
                v557 = *(v266 + 56);
                v563 = *(v266 + 72);
                do
                {
                  v270 = v266;
                  v266 = v262;
                  v271 = v262[1];
                  *v270 = *v262;
                  v270[1] = v271;
                  v272 = v262[2];
                  v273 = v262[3];
                  v274 = v262[5];
                  v270[4] = v262[4];
                  v270[5] = v274;
                  v270[2] = v272;
                  v270[3] = v273;
                  if (v256 < v261)
                  {
                    break;
                  }

                  v275 = 2 * v261;
                  v261 = (2 * v261) | 1;
                  v262 = &v11[6 * v261];
                  v276 = v275 + 2;
                  if (v276 < v13)
                  {
                    v277 = v262[6].n128_i64[0];
                    if (v262->n128_u64[0] < v277 || (v262->n128_u64[0] == v277 ? (v278 = v262[3].n128_u64[0] < v262[9].n128_u64[0]) : (v278 = 0), v278))
                    {
                      v262 += 6;
                      v261 = v276;
                    }
                  }

                  if (v262->n128_u64[0] < v267)
                  {
                    break;
                  }
                }

                while (v262->n128_u64[0] != v267 || v262[3].n128_u64[0] >= v268);
                v266->n128_u64[0] = v267;
                *(v266 + 24) = v418;
                *(v266 + 8) = v383;
                v266[2].n128_u64[1] = v453;
                v266[3].n128_u64[0] = v268;
                *(v266 + 56) = v557;
                *(v266 + 72) = v563;
                v266[5].n128_u64[1] = v569;
              }
            }
          }

          v257 = v258 - 1;
        }

        while (v258);
        v280 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 5);
        do
        {
          v281 = 0;
          v384 = *v11;
          v419 = v11[1];
          v519 = v11[4];
          v551 = v11[5];
          v454 = v11[2];
          v487 = v11[3];
          v282 = v11;
          do
          {
            v287 = v282;
            v288 = &v282[6 * v281];
            v282 = v288 + 6;
            v289 = 2 * v281;
            v281 = (2 * v281) | 1;
            v290 = v289 + 2;
            if (v290 < v280)
            {
              v291 = v288 + 12;
              v292 = v288[12].n128_i64[0];
              v293 = v288[6].n128_i64[0];
              if (v293 < v292 || ((v294 = v288[15].n128_i64[0], v295 = v288[9].n128_i64[0], v293 == v292) ? (v296 = v295 < v294) : (v296 = 0), v296))
              {
                v282 = v291;
                v281 = v290;
              }
            }

            v283 = v282[1];
            *v287 = *v282;
            v287[1] = v283;
            v284 = v282[2];
            v285 = v282[3];
            v286 = v282[5];
            v287[4] = v282[4];
            v287[5] = v286;
            v287[2] = v284;
            v287[3] = v285;
          }

          while (v281 <= ((v280 - 2) >> 1));
          a2 -= 6;
          if (v282 == a2)
          {
            *v282 = v384;
            v282[1] = v419;
            result = v454;
            v282[4] = v519;
            v282[5] = v551;
            v282[2] = v454;
            v282[3] = v487;
          }

          else
          {
            v297 = a2[1];
            *v282 = *a2;
            v282[1] = v297;
            v298 = a2[2];
            v299 = a2[3];
            v300 = a2[5];
            v282[4] = a2[4];
            v282[5] = v300;
            v282[2] = v298;
            v282[3] = v299;
            a2[4] = v519;
            a2[5] = v551;
            a2[2] = v454;
            a2[3] = v487;
            result = v384;
            *a2 = v384;
            a2[1] = v419;
            v301 = v282 - v11 + 96;
            if (v301 >= 97)
            {
              v302 = -2 - 0x5555555555555555 * (v301 >> 5);
              v303 = v302 >> 1;
              v304 = &v11[6 * (v302 >> 1)];
              v305 = v282->n128_u64[0];
              v306 = v282[3].n128_i64[0];
              if (v304->n128_u64[0] < v282->n128_u64[0] || (v304->n128_u64[0] == v282->n128_u64[0] ? (v307 = v304[3].n128_u64[0] < v306) : (v307 = 0), v307))
              {
                v570 = v282[2].n128_u64[1];
                v558 = *(v282 + 8);
                v564 = *(v282 + 24);
                v352 = v282[5].n128_u64[1];
                v346 = *(v282 + 56);
                v349 = *(v282 + 72);
                v308 = v304[5];
                v310 = v304[2];
                v309 = v304[3];
                v282[4] = v304[4];
                v282[5] = v308;
                v282[2] = v310;
                v282[3] = v309;
                v311 = v304[1];
                *v282 = *v304;
                v282[1] = v311;
                if (v302 >= 2)
                {
                  while (1)
                  {
                    v316 = v303 - 1;
                    v303 = (v303 - 1) >> 1;
                    v317 = &v11[6 * v303];
                    if (v317->n128_u64[0] >= v305 && (v317->n128_u64[0] != v305 || v317[3].n128_u64[0] >= v306))
                    {
                      break;
                    }

                    v312 = v317[1];
                    *v304 = *v317;
                    v304[1] = v312;
                    v313 = v317[2];
                    v314 = v317[3];
                    v315 = v317[5];
                    v304[4] = v317[4];
                    v304[5] = v315;
                    v304[2] = v313;
                    v304[3] = v314;
                    v304 = &v11[6 * v303];
                    if (v316 <= 1)
                    {
                      goto LABEL_336;
                    }
                  }
                }

                v317 = v304;
LABEL_336:
                v317->n128_u64[0] = v305;
                *(v317 + 24) = v564;
                *(v317 + 8) = v558;
                v317[2].n128_u64[1] = v570;
                v317[3].n128_u64[0] = v306;
                result = v346;
                *(v317 + 56) = v346;
                *(v317 + 72) = v349;
                v317[5].n128_u64[1] = v352;
              }
            }
          }

          v18 = v280-- <= 2;
        }

        while (!v18);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v11[6 * (v13 >> 1)];
    if (v12 > 0x3000)
    {
      v16 = v15->n128_u64[0];
      v17 = v15[3].n128_i64[0];
      if (v15->n128_u64[0] < v11->n128_u64[0] || (v15->n128_u64[0] == v11->n128_u64[0] ? (v18 = v17 < v11[3].n128_u64[0]) : (v18 = 0), v18))
      {
        if (v8->n128_u64[0] < v16 || (v8->n128_u64[0] == v16 ? (v39 = a2[-3].n128_u64[0] < v17) : (v39 = 0), v39))
        {
          v358 = *v11;
          v393 = v11[1];
          v495 = v11[4];
          v527 = v11[5];
          v428 = v11[2];
          v463 = v11[3];
          v52 = a2[-1];
          v54 = a2[-4];
          v53 = a2[-3];
          v11[4] = a2[-2];
          v11[5] = v52;
          v11[2] = v54;
          v11[3] = v53;
          v55 = a2[-5];
          *v11 = *v8;
          v11[1] = v55;
        }

        else
        {
          v357 = *v11;
          v392 = v11[1];
          v494 = v11[4];
          v526 = v11[5];
          v427 = v11[2];
          v462 = v11[3];
          v40 = v15[5];
          v42 = v15[2];
          v41 = v15[3];
          v11[4] = v15[4];
          v11[5] = v40;
          v11[2] = v42;
          v11[3] = v41;
          v43 = v15[1];
          *v11 = *v15;
          v11[1] = v43;
          *v15 = v357;
          v15[1] = v392;
          v15[4] = v494;
          v15[5] = v526;
          v15[2] = v427;
          v15[3] = v462;
          if (v8->n128_u64[0] >= v15->n128_u64[0] && (v8->n128_u64[0] != v15->n128_u64[0] || a2[-3].n128_u64[0] >= v15[3].n128_u64[0]))
          {
            goto LABEL_55;
          }

          v358 = *v15;
          v393 = v15[1];
          v495 = v15[4];
          v527 = v15[5];
          v428 = v15[2];
          v463 = v15[3];
          v44 = a2[-1];
          v46 = a2[-4];
          v45 = a2[-3];
          v15[4] = a2[-2];
          v15[5] = v44;
          v15[2] = v46;
          v15[3] = v45;
          v47 = a2[-5];
          *v15 = *v8;
          v15[1] = v47;
        }

        *v8 = v358;
        a2[-5] = v393;
        a2[-2] = v495;
        a2[-1] = v527;
        a2[-4] = v428;
        a2[-3] = v463;
        goto LABEL_55;
      }

      if (v8->n128_u64[0] < v16 || (v8->n128_u64[0] == v16 ? (v19 = a2[-3].n128_u64[0] < v17) : (v19 = 0), v19))
      {
        v353 = *v15;
        v388 = v15[1];
        v490 = v15[4];
        v522 = v15[5];
        v423 = v15[2];
        v458 = v15[3];
        v20 = a2[-1];
        v22 = a2[-4];
        v21 = a2[-3];
        v15[4] = a2[-2];
        v15[5] = v20;
        v15[2] = v22;
        v15[3] = v21;
        v23 = a2[-5];
        *v15 = *v8;
        v15[1] = v23;
        *v8 = v353;
        a2[-5] = v388;
        a2[-2] = v490;
        a2[-1] = v522;
        a2[-4] = v423;
        a2[-3] = v458;
        if (v15->n128_u64[0] < v11->n128_u64[0] || v15->n128_u64[0] == v11->n128_u64[0] && v15[3].n128_u64[0] < v11[3].n128_u64[0])
        {
          v354 = *v11;
          v389 = v11[1];
          v491 = v11[4];
          v523 = v11[5];
          v424 = v11[2];
          v459 = v11[3];
          v24 = v15[5];
          v26 = v15[2];
          v25 = v15[3];
          v11[4] = v15[4];
          v11[5] = v24;
          v11[2] = v26;
          v11[3] = v25;
          v27 = v15[1];
          *v11 = *v15;
          v11[1] = v27;
          *v15 = v354;
          v15[1] = v389;
          v15[4] = v491;
          v15[5] = v523;
          v15[2] = v424;
          v15[3] = v459;
        }
      }

LABEL_55:
      v56 = v11 + 6;
      v57 = v11[6].n128_i64[0];
      v58 = &v11[6 * v14];
      v61 = v58[-6].n128_i64[0];
      v59 = v58 - 6;
      v60 = v61;
      v62 = v59[3].n128_i64[0];
      v63 = v61 == v57;
      if (v61 < v57 || v63 && v62 < v11[9].n128_u64[0])
      {
        if (v9->n128_u64[0] < v60 || v9->n128_u64[0] == v60 && a2[-9].n128_u64[0] < v62)
        {
          v360 = *v56;
          v395 = v11[7];
          v497 = v11[10];
          v529 = v11[11];
          v430 = v11[8];
          v465 = v11[9];
          v64 = a2[-7];
          v66 = a2[-10];
          v65 = a2[-9];
          v11[10] = a2[-8];
          v11[11] = v64;
          v11[8] = v66;
          v11[9] = v65;
          v67 = a2[-11];
          *v56 = *v9;
          v11[7] = v67;
          goto LABEL_63;
        }

        v372 = *v56;
        v407 = v11[7];
        v509 = v11[10];
        v541 = v11[11];
        v442 = v11[8];
        v477 = v11[9];
        v153 = v59[5];
        v155 = v59[2];
        v154 = v59[3];
        v11[10] = v59[4];
        v11[11] = v153;
        v11[8] = v155;
        v11[9] = v154;
        v156 = v59[1];
        *v56 = *v59;
        v11[7] = v156;
        *v59 = v372;
        v59[1] = v407;
        v59[4] = v509;
        v59[5] = v541;
        v59[2] = v442;
        v59[3] = v477;
        if (v9->n128_u64[0] < v59->n128_u64[0] || v9->n128_u64[0] == v59->n128_u64[0] && a2[-9].n128_u64[0] < v59[3].n128_u64[0])
        {
          v360 = *v59;
          v395 = v59[1];
          v497 = v59[4];
          v529 = v59[5];
          v430 = v59[2];
          v465 = v59[3];
          v157 = a2[-7];
          v159 = a2[-10];
          v158 = a2[-9];
          v59[4] = a2[-8];
          v59[5] = v157;
          v59[2] = v159;
          v59[3] = v158;
          v160 = a2[-11];
          *v59 = *v9;
          v59[1] = v160;
LABEL_63:
          *v9 = v360;
          a2[-11] = v395;
          a2[-8] = v497;
          a2[-7] = v529;
          a2[-10] = v430;
          a2[-9] = v465;
        }
      }

      else if (v9->n128_u64[0] < v60 || v9->n128_u64[0] == v60 && a2[-9].n128_u64[0] < v62)
      {
        v365 = *v59;
        v400 = v59[1];
        v502 = v59[4];
        v534 = v59[5];
        v435 = v59[2];
        v470 = v59[3];
        v123 = a2[-7];
        v125 = a2[-10];
        v124 = a2[-9];
        v59[4] = a2[-8];
        v59[5] = v123;
        v59[2] = v125;
        v59[3] = v124;
        v126 = a2[-11];
        *v59 = *v9;
        v59[1] = v126;
        *v9 = v365;
        a2[-11] = v400;
        a2[-8] = v502;
        a2[-7] = v534;
        a2[-10] = v435;
        a2[-9] = v470;
        if (v59->n128_u64[0] < v56->n128_u64[0] || v59->n128_u64[0] == v56->n128_u64[0] && v59[3].n128_u64[0] < v11[9].n128_u64[0])
        {
          v366 = *v56;
          v401 = v11[7];
          v503 = v11[10];
          v535 = v11[11];
          v436 = v11[8];
          v471 = v11[9];
          v127 = v59[5];
          v129 = v59[2];
          v128 = v59[3];
          v11[10] = v59[4];
          v11[11] = v127;
          v11[8] = v129;
          v11[9] = v128;
          v130 = v59[1];
          *v56 = *v59;
          v11[7] = v130;
          *v59 = v366;
          v59[1] = v401;
          v59[4] = v503;
          v59[5] = v535;
          v59[2] = v436;
          v59[3] = v471;
        }
      }

      v68 = v11 + 12;
      v69 = v11[12].n128_i64[0];
      v70 = &v11[6 * v14];
      v73 = v70[6].n128_i64[0];
      v71 = v70 + 6;
      v72 = v73;
      v74 = v71[3].n128_i64[0];
      v75 = v73 == v69;
      if (v73 < v69 || v75 && v74 < v11[15].n128_u64[0])
      {
        if (v10->n128_u64[0] < v72 || v10->n128_u64[0] == v72 && a2[-15].n128_u64[0] < v74)
        {
          v361 = *v68;
          v396 = v11[13];
          v498 = v11[16];
          v530 = v11[17];
          v431 = v11[14];
          v466 = v11[15];
          v76 = a2[-13];
          v78 = a2[-16];
          v77 = a2[-15];
          v11[16] = a2[-14];
          v11[17] = v76;
          v11[14] = v78;
          v11[15] = v77;
          v79 = a2[-17];
          *v68 = *v10;
          v11[13] = v79;
          goto LABEL_72;
        }

        v373 = *v68;
        v408 = v11[13];
        v510 = v11[16];
        v542 = v11[17];
        v443 = v11[14];
        v478 = v11[15];
        v161 = v71[5];
        v163 = v71[2];
        v162 = v71[3];
        v11[16] = v71[4];
        v11[17] = v161;
        v11[14] = v163;
        v11[15] = v162;
        v164 = v71[1];
        *v68 = *v71;
        v11[13] = v164;
        *v71 = v373;
        v71[1] = v408;
        v71[4] = v510;
        v71[5] = v542;
        v71[2] = v443;
        v71[3] = v478;
        if (v10->n128_u64[0] < v71->n128_u64[0] || v10->n128_u64[0] == v71->n128_u64[0] && a2[-15].n128_u64[0] < v71[3].n128_u64[0])
        {
          v361 = *v71;
          v396 = v71[1];
          v498 = v71[4];
          v530 = v71[5];
          v431 = v71[2];
          v466 = v71[3];
          v165 = a2[-13];
          v167 = a2[-16];
          v166 = a2[-15];
          v71[4] = a2[-14];
          v71[5] = v165;
          v71[2] = v167;
          v71[3] = v166;
          v168 = a2[-17];
          *v71 = *v10;
          v71[1] = v168;
LABEL_72:
          *v10 = v361;
          a2[-17] = v396;
          a2[-14] = v498;
          a2[-13] = v530;
          a2[-16] = v431;
          a2[-15] = v466;
        }
      }

      else if (v10->n128_u64[0] < v72 || v10->n128_u64[0] == v72 && a2[-15].n128_u64[0] < v74)
      {
        v367 = *v71;
        v402 = v71[1];
        v504 = v71[4];
        v536 = v71[5];
        v437 = v71[2];
        v472 = v71[3];
        v131 = a2[-13];
        v133 = a2[-16];
        v132 = a2[-15];
        v71[4] = a2[-14];
        v71[5] = v131;
        v71[2] = v133;
        v71[3] = v132;
        v134 = a2[-17];
        *v71 = *v10;
        v71[1] = v134;
        *v10 = v367;
        a2[-17] = v402;
        a2[-14] = v504;
        a2[-13] = v536;
        a2[-16] = v437;
        a2[-15] = v472;
        if (v71->n128_u64[0] < v68->n128_u64[0] || v71->n128_u64[0] == v68->n128_u64[0] && v71[3].n128_u64[0] < v11[15].n128_u64[0])
        {
          v368 = *v68;
          v403 = v11[13];
          v505 = v11[16];
          v537 = v11[17];
          v438 = v11[14];
          v473 = v11[15];
          v135 = v71[5];
          v137 = v71[2];
          v136 = v71[3];
          v11[16] = v71[4];
          v11[17] = v135;
          v11[14] = v137;
          v11[15] = v136;
          v138 = v71[1];
          *v68 = *v71;
          v11[13] = v138;
          *v71 = v368;
          v71[1] = v403;
          v71[4] = v505;
          v71[5] = v537;
          v71[2] = v438;
          v71[3] = v473;
        }
      }

      v80 = v15->n128_u64[0];
      v81 = v15[3].n128_i64[0];
      if (v15->n128_u64[0] < v59->n128_u64[0])
      {
        v82 = v71->n128_u64[0];
        goto LABEL_77;
      }

      v82 = v71->n128_u64[0];
      if (v80 == v59->n128_u64[0] && v81 < v59[3].n128_u64[0])
      {
LABEL_77:
        if (v82 < v80 || v82 == v80 && v71[3].n128_u64[0] < v81)
        {
          v362 = *v59;
          v397 = v59[1];
          v499 = v59[4];
          v531 = v59[5];
          v432 = v59[2];
          v467 = v59[3];
          v83 = v71[5];
          v59[4] = v71[4];
          v59[5] = v83;
          v84 = v71[3];
          v59[2] = v71[2];
          v59[3] = v84;
          v85 = v71[1];
          *v59 = *v71;
          v59[1] = v85;
          goto LABEL_81;
        }

        v374 = *v59;
        v409 = v59[1];
        v511 = v59[4];
        v543 = v59[5];
        v444 = v59[2];
        v479 = v59[3];
        v169 = v15[5];
        v59[4] = v15[4];
        v59[5] = v169;
        v170 = v15[3];
        v59[2] = v15[2];
        v59[3] = v170;
        v171 = v15[1];
        *v59 = *v15;
        v59[1] = v171;
        *v15 = v374;
        v15[1] = v409;
        v15[4] = v511;
        v15[5] = v543;
        v15[2] = v444;
        v15[3] = v479;
        if (v71->n128_u64[0] < v15->n128_u64[0] || v71->n128_u64[0] == v15->n128_u64[0] && v71[3].n128_u64[0] < v15[3].n128_u64[0])
        {
          v362 = *v15;
          v397 = v15[1];
          v499 = v15[4];
          v531 = v15[5];
          v432 = v15[2];
          v467 = v15[3];
          v172 = v71[5];
          v15[4] = v71[4];
          v15[5] = v172;
          v173 = v71[3];
          v15[2] = v71[2];
          v15[3] = v173;
          v174 = v71[1];
          *v15 = *v71;
          v15[1] = v174;
LABEL_81:
          *v71 = v362;
          v71[1] = v397;
          v71[4] = v499;
          v71[5] = v531;
          v71[2] = v432;
          v71[3] = v467;
        }
      }

      else if (v82 < v80 || v82 == v80 && v71[3].n128_u64[0] < v81)
      {
        v369 = *v15;
        v404 = v15[1];
        v506 = v15[4];
        v538 = v15[5];
        v439 = v15[2];
        v474 = v15[3];
        v139 = v71[5];
        v15[4] = v71[4];
        v15[5] = v139;
        v140 = v71[3];
        v15[2] = v71[2];
        v15[3] = v140;
        v141 = v71[1];
        *v15 = *v71;
        v15[1] = v141;
        *v71 = v369;
        v71[1] = v404;
        v71[4] = v506;
        v71[5] = v538;
        v71[2] = v439;
        v71[3] = v474;
        if (v15->n128_u64[0] < v59->n128_u64[0] || v15->n128_u64[0] == v59->n128_u64[0] && v15[3].n128_u64[0] < v59[3].n128_u64[0])
        {
          v370 = *v59;
          v405 = v59[1];
          v507 = v59[4];
          v539 = v59[5];
          v440 = v59[2];
          v475 = v59[3];
          v142 = v15[5];
          v59[4] = v15[4];
          v59[5] = v142;
          v143 = v15[3];
          v59[2] = v15[2];
          v59[3] = v143;
          v144 = v15[1];
          *v59 = *v15;
          v59[1] = v144;
          *v15 = v370;
          v15[1] = v405;
          v15[4] = v507;
          v15[5] = v539;
          v15[2] = v440;
          v15[3] = v475;
        }
      }

      v363 = *v11;
      v398 = v11[1];
      v500 = v11[4];
      v532 = v11[5];
      v433 = v11[2];
      v468 = v11[3];
      v86 = v15[5];
      v88 = v15[2];
      v87 = v15[3];
      v11[4] = v15[4];
      v11[5] = v86;
      v11[2] = v88;
      v11[3] = v87;
      v89 = v15[1];
      *v11 = *v15;
      v11[1] = v89;
      *v15 = v363;
      v15[1] = v398;
      v15[4] = v500;
      v15[5] = v532;
      v15[2] = v433;
      v15[3] = v468;
      goto LABEL_83;
    }

    v28 = v11->n128_u64[0];
    v29 = v11[3].n128_i64[0];
    if (v11->n128_u64[0] >= v15->n128_u64[0] && (v11->n128_u64[0] != v15->n128_u64[0] || v29 >= v15[3].n128_u64[0]))
    {
      if (v8->n128_u64[0] < v28 || v8->n128_u64[0] == v28 && a2[-3].n128_u64[0] < v29)
      {
        v355 = *v11;
        v390 = v11[1];
        v492 = v11[4];
        v524 = v11[5];
        v425 = v11[2];
        v460 = v11[3];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        v11[4] = a2[-2];
        v11[5] = v31;
        v11[2] = v33;
        v11[3] = v32;
        v34 = a2[-5];
        *v11 = *v8;
        v11[1] = v34;
        *v8 = v355;
        a2[-5] = v390;
        a2[-2] = v492;
        a2[-1] = v524;
        a2[-4] = v425;
        a2[-3] = v460;
        if (v11->n128_u64[0] < v15->n128_u64[0] || v11->n128_u64[0] == v15->n128_u64[0] && v11[3].n128_u64[0] < v15[3].n128_u64[0])
        {
          v356 = *v15;
          v391 = v15[1];
          v493 = v15[4];
          v525 = v15[5];
          v426 = v15[2];
          v461 = v15[3];
          v35 = v11[5];
          v37 = v11[2];
          v36 = v11[3];
          v15[4] = v11[4];
          v15[5] = v35;
          v15[2] = v37;
          v15[3] = v36;
          v38 = v11[1];
          *v15 = *v11;
          v15[1] = v38;
          *v11 = v356;
          v11[1] = v391;
          v11[4] = v493;
          v11[5] = v525;
          v11[2] = v426;
          v11[3] = v461;
        }
      }

      goto LABEL_83;
    }

    if (v8->n128_u64[0] < v28 || v8->n128_u64[0] == v28 && a2[-3].n128_u64[0] < v29)
    {
      v359 = *v15;
      v394 = v15[1];
      v496 = v15[4];
      v528 = v15[5];
      v429 = v15[2];
      v464 = v15[3];
      v48 = a2[-1];
      v50 = a2[-4];
      v49 = a2[-3];
      v15[4] = a2[-2];
      v15[5] = v48;
      v15[2] = v50;
      v15[3] = v49;
      v51 = a2[-5];
      *v15 = *v8;
      v15[1] = v51;
    }

    else
    {
      v371 = *v15;
      v406 = v15[1];
      v508 = v15[4];
      v540 = v15[5];
      v441 = v15[2];
      v476 = v15[3];
      v145 = v11[5];
      v147 = v11[2];
      v146 = v11[3];
      v15[4] = v11[4];
      v15[5] = v145;
      v15[2] = v147;
      v15[3] = v146;
      v148 = v11[1];
      *v15 = *v11;
      v15[1] = v148;
      *v11 = v371;
      v11[1] = v406;
      v11[4] = v508;
      v11[5] = v540;
      v11[2] = v441;
      v11[3] = v476;
      if (v8->n128_u64[0] >= v11->n128_u64[0] && (v8->n128_u64[0] != v11->n128_u64[0] || a2[-3].n128_u64[0] >= v11[3].n128_u64[0]))
      {
        goto LABEL_83;
      }

      v359 = *v11;
      v394 = v11[1];
      v496 = v11[4];
      v528 = v11[5];
      v429 = v11[2];
      v464 = v11[3];
      v149 = a2[-1];
      v151 = a2[-4];
      v150 = a2[-3];
      v11[4] = a2[-2];
      v11[5] = v149;
      v11[2] = v151;
      v11[3] = v150;
      v152 = a2[-5];
      *v11 = *v8;
      v11[1] = v152;
    }

    *v8 = v359;
    a2[-5] = v394;
    a2[-2] = v496;
    a2[-1] = v528;
    a2[-4] = v429;
    a2[-3] = v464;
LABEL_83:
    --a3;
    v90 = v11->n128_u64[0];
    if ((a4 & 1) != 0 || (v91 = v11[-6].n128_i64[0], v91 < v90) || v91 == v90 && v11[-3].n128_u64[0] < v11[3].n128_u64[0])
    {
      v92 = 0;
      v93 = v11[3].n128_i64[0];
      v566 = v11[2].n128_u64[1];
      v554 = *(v11 + 8);
      v560 = *(v11 + 24);
      v344 = *(v11 + 56);
      v347 = *(v11 + 72);
      v350 = v11[5].n128_u64[1];
      while (1)
      {
        v94 = v11[v92 + 6].n128_i64[0];
        if (v94 >= v90 && (v94 != v90 || v11[v92 + 9].n128_u64[0] >= v93))
        {
          break;
        }

        v92 += 6;
      }

      n128_u64 = v11[v92 + 6].n128_u64;
      v97 = a2 - 6;
      if (v92 * 16)
      {
        do
        {
          v98 = v97;
          v99 = v97->n128_u64[0];
          if (v97->n128_u64[0] < v90)
          {
            break;
          }

          v100 = v97[3].n128_i64[0];
          v97 -= 6;
        }

        while (v99 != v90 || v100 >= v93);
LABEL_110:
        v11 = n128_u64;
        if (n128_u64 < v98)
        {
          v105 = v98;
          do
          {
            v364 = *v11;
            v399 = v11[1];
            v501 = v11[4];
            v533 = v11[5];
            v434 = v11[2];
            v469 = v11[3];
            v106 = v105[5];
            v108 = v105[2];
            v107 = v105[3];
            v11[4] = v105[4];
            v11[5] = v106;
            v11[2] = v108;
            v11[3] = v107;
            v109 = v105[1];
            *v11 = *v105;
            v11[1] = v109;
            *v105 = v364;
            v105[1] = v399;
            v105[4] = v501;
            v105[5] = v533;
            v105[2] = v434;
            v105[3] = v469;
            do
            {
              do
              {
                v110 = v11[6].n128_i64[0];
                v11 += 6;
                v111 = v110 == v90;
              }

              while (v110 < v90);
            }

            while (v111 && v11[3].n128_u64[0] < v93);
            v113 = v105 - 6;
            do
            {
              v105 = v113;
              v114 = v113->n128_u64[0];
              if (v113->n128_u64[0] < v90)
              {
                break;
              }

              v115 = v113[3].n128_i64[0];
              v113 -= 6;
            }

            while (v114 != v90 || v115 >= v93);
          }

          while (v11 < v105);
        }
      }

      else
      {
        v102 = a2 - 6;
        while (1)
        {
          v98 = v102;
          v103 = v102 + 6;
          if (n128_u64 >= v103)
          {
            break;
          }

          if (v98->n128_u64[0] >= v90)
          {
            v102 = v98 - 6;
            if (v98->n128_u64[0] != v90 || v98[3].n128_u64[0] >= v93)
            {
              continue;
            }
          }

          goto LABEL_110;
        }

        v98 = v103;
        v11 = n128_u64;
      }

      if (&v11[-6] != a1)
      {
        v117 = v11[-5];
        *a1 = v11[-6];
        a1[1] = v117;
        v118 = v11[-4];
        v119 = v11[-3];
        v120 = v11[-1];
        a1[4] = v11[-2];
        a1[5] = v120;
        a1[2] = v118;
        a1[3] = v119;
      }

      v11[-6].n128_u64[0] = v90;
      *(v11 - 72) = v560;
      *(v11 - 88) = v554;
      v11[-4].n128_u64[1] = v566;
      v11[-3].n128_u64[0] = v93;
      v11[-1].n128_u64[1] = v350;
      *(v11 - 24) = v347;
      *(v11 - 40) = v344;
      if (n128_u64 < v98)
      {
        goto LABEL_133;
      }

      v121 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*>(a1, &v11[-6]);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*>(v11, a2))
      {
        a2 = v11 - 6;
        if (!v121)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v121)
      {
LABEL_133:
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,false>(a1, v11 - 6, a3, a4 & 1).n128_u64[0];
        a4 = 0;
      }
    }

    else
    {
      v567 = v11[2].n128_u64[1];
      v555 = *(v11 + 8);
      v561 = *(v11 + 24);
      v175 = v11[3].n128_i64[0];
      v345 = *(v11 + 56);
      v348 = *(v11 + 72);
      v351 = v11[5].n128_u64[1];
      v176 = v8->n128_u64[0];
      if (v90 < v8->n128_u64[0] || v90 == v8->n128_u64[0] && v175 < a2[-3].n128_u64[0])
      {
        v177 = v11 + 6;
        do
        {
          v11 = v177;
          v178 = v177->n128_u64[0];
          if (v90 < v177->n128_u64[0])
          {
            break;
          }

          v179 = v177[3].n128_i64[0];
          v177 += 6;
        }

        while (v90 != v178 || v175 >= v179);
      }

      else
      {
        v198 = v11 + 6;
        do
        {
          v11 = v198;
          if (v198 >= a2)
          {
            break;
          }

          v199 = v198->n128_u64[0];
          if (v90 < v198->n128_u64[0])
          {
            break;
          }

          v200 = v198[3].n128_i64[0];
          v198 += 6;
        }

        while (v90 != v199 || v175 >= v200);
      }

      i = a2;
      if (v11 < a2)
      {
        for (i = a2 - 6; v90 < v176 || v90 == v176 && v175 < i[3].n128_u64[0]; i -= 6)
        {
          v182 = i[-6].n128_u64[0];
          v176 = v182;
        }
      }

      while (v11 < i)
      {
        v375 = *v11;
        v410 = v11[1];
        v512 = v11[4];
        v544 = v11[5];
        v445 = v11[2];
        v480 = v11[3];
        v183 = i[5];
        v185 = i[2];
        v184 = i[3];
        v11[4] = i[4];
        v11[5] = v183;
        v11[2] = v185;
        v11[3] = v184;
        v186 = i[1];
        *v11 = *i;
        v11[1] = v186;
        *i = v375;
        i[1] = v410;
        i[4] = v512;
        i[5] = v544;
        i[2] = v445;
        i[3] = v480;
        v187 = v11 + 6;
        do
        {
          v11 = v187;
          v188 = v187->n128_u64[0];
          if (v90 < v187->n128_u64[0])
          {
            break;
          }

          v189 = v187[3].n128_i64[0];
          v187 += 6;
        }

        while (v90 != v188 || v175 >= v189);
        do
        {
          do
          {
            v191 = i[-6].n128_i64[0];
            i -= 6;
            v192 = v90 == v191;
          }

          while (v90 < v191);
        }

        while (v192 && v175 < i[3].n128_u64[0]);
      }

      if (&v11[-6] != a1)
      {
        v194 = v11[-5];
        *a1 = v11[-6];
        a1[1] = v194;
        v195 = v11[-4];
        v196 = v11[-3];
        v197 = v11[-1];
        a1[4] = v11[-2];
        a1[5] = v197;
        a1[2] = v195;
        a1[3] = v196;
      }

      a4 = 0;
      v11[-6].n128_u64[0] = v90;
      *(v11 - 72) = v561;
      *(v11 - 88) = v555;
      v11[-4].n128_u64[1] = v567;
      v11[-3].n128_u64[0] = v175;
      result = v345;
      v11[-1].n128_u64[1] = v351;
      *(v11 - 24) = v348;
      *(v11 - 40) = v345;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,0>(v11, v11 + 6, v11 + 12, a2 - 6).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,0>(v11, v11 + 6, v11 + 12, v11 + 18).n128_u64[0];
      v215 = a2 - 6;
      v216 = a2[-6].n128_i64[0];
      v217 = v11[18].n128_i64[0];
      if (v216 < v217 || v216 == v217 && a2[-3].n128_u64[0] < v11[21].n128_u64[0])
      {
        v378 = v11[18];
        v413 = v11[19];
        v515 = v11[22];
        v547 = v11[23];
        v448 = v11[20];
        v483 = v11[21];
        v218 = a2[-1];
        v220 = a2[-4];
        v219 = a2[-3];
        v11[22] = a2[-2];
        v11[23] = v218;
        v11[20] = v220;
        v11[21] = v219;
        v221 = a2[-5];
        v11[18] = *v215;
        v11[19] = v221;
        *v215 = v378;
        a2[-5] = v413;
        result = v448;
        a2[-2] = v515;
        a2[-1] = v547;
        a2[-4] = v448;
        a2[-3] = v483;
        v222 = v11[18].n128_i64[0];
        v223 = v11[12].n128_i64[0];
        if (v222 < v223 || v222 == v223 && v11[21].n128_u64[0] < v11[15].n128_u64[0])
        {
          v379 = v11[12];
          v414 = v11[13];
          v516 = v11[16];
          v548 = v11[17];
          v449 = v11[14];
          v484 = v11[15];
          v224 = v11[23];
          v11[16] = v11[22];
          v11[17] = v224;
          v225 = v11[21];
          v11[14] = v11[20];
          v11[15] = v225;
          v226 = v11[19];
          v11[12] = v11[18];
          v11[13] = v226;
          v11[18] = v379;
          v11[19] = v414;
          result = v449;
          v11[22] = v516;
          v11[23] = v548;
          v11[20] = v449;
          v11[21] = v484;
          v227 = v11[12].n128_i64[0];
          v228 = v11[6].n128_i64[0];
          if (v227 < v228 || v227 == v228 && v11[15].n128_u64[0] < v11[9].n128_u64[0])
          {
            v380 = v11[6];
            v415 = v11[7];
            v517 = v11[10];
            v549 = v11[11];
            v450 = v11[8];
            v485 = v11[9];
            v229 = v11[17];
            v11[10] = v11[16];
            v11[11] = v229;
            v230 = v11[15];
            v11[8] = v11[14];
            v11[9] = v230;
            v231 = v11[13];
            v11[6] = v11[12];
            v11[7] = v231;
            v11[12] = v380;
            v11[13] = v415;
            result = v450;
            v11[16] = v517;
            v11[17] = v549;
            v11[14] = v450;
            v11[15] = v485;
            v232 = v11[6].n128_i64[0];
            if (v232 < v11->n128_u64[0] || v232 == v11->n128_u64[0] && v11[9].n128_u64[0] < v11[3].n128_u64[0])
            {
              v381 = *v11;
              v416 = v11[1];
              v518 = v11[4];
              v550 = v11[5];
              v451 = v11[2];
              v486 = v11[3];
              v233 = v11[11];
              v11[4] = v11[10];
              v11[5] = v233;
              v234 = v11[9];
              v11[2] = v11[8];
              v11[3] = v234;
              v235 = v11[7];
              *v11 = v11[6];
              v11[1] = v235;
              v11[6] = v381;
              v11[7] = v416;
              result = v451;
              v11[10] = v518;
              v11[11] = v550;
              v11[8] = v451;
              v11[9] = v486;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_9;
  }

  v202 = v11 + 6;
  v208 = v11[6].n128_i64[0];
  v209 = v11[9].n128_i64[0];
  if (v208 < v11->n128_u64[0] || v208 == v11->n128_u64[0] && v209 < v11[3].n128_u64[0])
  {
    v210 = a2[-6].n128_i64[0];
    if (v210 < v208 || v210 == v208 && a2[-3].n128_u64[0] < v209)
    {
      v377 = *v11;
      v412 = v11[1];
      v514 = v11[4];
      v546 = v11[5];
      v447 = v11[2];
      v482 = v11[3];
      v211 = a2[-1];
      v213 = a2[-4];
      v212 = a2[-3];
      v11[4] = a2[-2];
      v11[5] = v211;
      v11[2] = v213;
      v11[3] = v212;
      v214 = a2[-5];
      *v11 = *v8;
      v11[1] = v214;
    }

    else
    {
      v387 = *v11;
      v422 = v11[1];
      v521 = v11[4];
      v553 = v11[5];
      v457 = v11[2];
      v489 = v11[3];
      v336 = v11[11];
      v11[4] = v11[10];
      v11[5] = v336;
      v337 = v11[9];
      v11[2] = v11[8];
      v11[3] = v337;
      v338 = v11[7];
      *v11 = *v202;
      v11[1] = v338;
      *v202 = v387;
      v11[7] = v422;
      result = v457;
      v11[10] = v521;
      v11[11] = v553;
      v11[8] = v457;
      v11[9] = v489;
      v339 = v11[6].n128_i64[0];
      if (v8->n128_u64[0] >= v339 && (v8->n128_u64[0] != v339 || a2[-3].n128_u64[0] >= v11[9].n128_u64[0]))
      {
        return result;
      }

      v377 = *v202;
      v412 = v11[7];
      v514 = v11[10];
      v546 = v11[11];
      v447 = v11[8];
      v482 = v11[9];
      v340 = a2[-1];
      v342 = a2[-4];
      v341 = a2[-3];
      v11[10] = a2[-2];
      v11[11] = v340;
      v11[8] = v342;
      v11[9] = v341;
      v343 = a2[-5];
      *v202 = *v8;
      v11[7] = v343;
    }

    *v8 = v377;
    a2[-5] = v412;
    result = v447;
    a2[-2] = v514;
    a2[-1] = v546;
    a2[-4] = v447;
    a2[-3] = v482;
    return result;
  }

  if (v8->n128_u64[0] < v208 || v8->n128_u64[0] == v208 && a2[-3].n128_u64[0] < v209)
  {
    v386 = *v202;
    v421 = v11[7];
    v520 = v11[10];
    v552 = v11[11];
    v456 = v11[8];
    v488 = v11[9];
    v329 = a2[-1];
    v331 = a2[-4];
    v330 = a2[-3];
    v11[10] = a2[-2];
    v11[11] = v329;
    v11[8] = v331;
    v11[9] = v330;
    v332 = a2[-5];
    *v202 = *v8;
    v11[7] = v332;
    *v8 = v386;
    a2[-5] = v421;
    result = v456;
    a2[-2] = v520;
    a2[-1] = v552;
    a2[-4] = v456;
    a2[-3] = v488;
    v333 = v11[6].n128_i64[0];
    if (v333 < v11->n128_u64[0] || v333 == v11->n128_u64[0] && v11[9].n128_u64[0] < v11[3].n128_u64[0])
    {
      v376 = *v11;
      v411 = v11[1];
      v513 = v11[4];
      v545 = v11[5];
      v446 = v11[2];
      v481 = v11[3];
      v334 = v11[11];
      v11[4] = v11[10];
      v11[5] = v334;
      v335 = v11[9];
      v11[2] = v11[8];
      v11[3] = v335;
      goto LABEL_219;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v4 = a2->n128_u64[0];
  v5 = a2[3].n128_i64[0];
  if (a2->n128_u64[0] < a1->n128_u64[0] || (a2->n128_u64[0] == a1->n128_u64[0] ? (v6 = v5 < a1[3].n128_u64[0]) : (v6 = 0), v6))
  {
    if (a3->n128_u64[0] < v4 || (a3->n128_u64[0] == v4 ? (v17 = a3[3].n128_u64[0] < v5) : (v17 = 0), v17))
    {
      v59 = a1[2];
      v66 = a1[3];
      v73 = a1[4];
      v80 = a1[5];
      v45 = *a1;
      v52 = a1[1];
      v26 = a3[1];
      *a1 = *a3;
      a1[1] = v26;
      v27 = a3[5];
      v29 = a3[2];
      v28 = a3[3];
      a1[4] = a3[4];
      a1[5] = v27;
      a1[2] = v29;
      a1[3] = v28;
    }

    else
    {
      v58 = a1[2];
      v65 = a1[3];
      v72 = a1[4];
      v79 = a1[5];
      v44 = *a1;
      v51 = a1[1];
      v18 = a2[1];
      *a1 = *a2;
      a1[1] = v18;
      v19 = a2[5];
      v21 = a2[2];
      v20 = a2[3];
      a1[4] = a2[4];
      a1[5] = v19;
      a1[2] = v21;
      a1[3] = v20;
      a2[4] = v72;
      a2[5] = v79;
      a2[2] = v58;
      a2[3] = v65;
      result = v44;
      *a2 = v44;
      a2[1] = v51;
      if (a3->n128_u64[0] >= a2->n128_u64[0] && (a3->n128_u64[0] != a2->n128_u64[0] || a3[3].n128_u64[0] >= a2[3].n128_u64[0]))
      {
        goto LABEL_27;
      }

      v59 = a2[2];
      v66 = a2[3];
      v73 = a2[4];
      v80 = a2[5];
      v45 = *a2;
      v52 = a2[1];
      v22 = a3[1];
      *a2 = *a3;
      a2[1] = v22;
      v23 = a3[5];
      v25 = a3[2];
      v24 = a3[3];
      a2[4] = a3[4];
      a2[5] = v23;
      a2[2] = v25;
      a2[3] = v24;
    }

    a3[4] = v73;
    a3[5] = v80;
    a3[2] = v59;
    a3[3] = v66;
    result = v45;
    *a3 = v45;
    a3[1] = v52;
  }

  else if (a3->n128_u64[0] < v4 || (a3->n128_u64[0] == v4 ? (v7 = a3[3].n128_u64[0] < v5) : (v7 = 0), v7))
  {
    v56 = a2[2];
    v63 = a2[3];
    v70 = a2[4];
    v77 = a2[5];
    v42 = *a2;
    v49 = a2[1];
    v8 = a3[1];
    *a2 = *a3;
    a2[1] = v8;
    v9 = a3[5];
    v11 = a3[2];
    v10 = a3[3];
    a2[4] = a3[4];
    a2[5] = v9;
    a2[2] = v11;
    a2[3] = v10;
    a3[4] = v70;
    a3[5] = v77;
    a3[2] = v56;
    a3[3] = v63;
    result = v42;
    *a3 = v42;
    a3[1] = v49;
    if (a2->n128_u64[0] < a1->n128_u64[0] || a2->n128_u64[0] == a1->n128_u64[0] && a2[3].n128_u64[0] < a1[3].n128_u64[0])
    {
      v57 = a1[2];
      v64 = a1[3];
      v71 = a1[4];
      v78 = a1[5];
      v43 = *a1;
      v50 = a1[1];
      v13 = a2[1];
      *a1 = *a2;
      a1[1] = v13;
      v14 = a2[5];
      v16 = a2[2];
      v15 = a2[3];
      a1[4] = a2[4];
      a1[5] = v14;
      a1[2] = v16;
      a1[3] = v15;
      a2[4] = v71;
      a2[5] = v78;
      a2[2] = v57;
      a2[3] = v64;
      result = v43;
      *a2 = v43;
      a2[1] = v50;
    }
  }

LABEL_27:
  if (a4->n128_u64[0] < a3->n128_u64[0] || a4->n128_u64[0] == a3->n128_u64[0] && a4[3].n128_u64[0] < a3[3].n128_u64[0])
  {
    v60 = a3[2];
    v67 = a3[3];
    v74 = a3[4];
    v81 = a3[5];
    v46 = *a3;
    v53 = a3[1];
    v30 = a4[1];
    *a3 = *a4;
    a3[1] = v30;
    v31 = a4[5];
    v33 = a4[2];
    v32 = a4[3];
    a3[4] = a4[4];
    a3[5] = v31;
    a3[2] = v33;
    a3[3] = v32;
    a4[4] = v74;
    a4[5] = v81;
    a4[2] = v60;
    a4[3] = v67;
    result = v46;
    *a4 = v46;
    a4[1] = v53;
    if (a3->n128_u64[0] < a2->n128_u64[0] || a3->n128_u64[0] == a2->n128_u64[0] && a3[3].n128_u64[0] < a2[3].n128_u64[0])
    {
      v61 = a2[2];
      v68 = a2[3];
      v75 = a2[4];
      v82 = a2[5];
      v47 = *a2;
      v54 = a2[1];
      v34 = a3[1];
      *a2 = *a3;
      a2[1] = v34;
      v35 = a3[5];
      v37 = a3[2];
      v36 = a3[3];
      a2[4] = a3[4];
      a2[5] = v35;
      a2[2] = v37;
      a2[3] = v36;
      a3[4] = v75;
      a3[5] = v82;
      a3[2] = v61;
      a3[3] = v68;
      result = v47;
      *a3 = v47;
      a3[1] = v54;
      if (a2->n128_u64[0] < a1->n128_u64[0] || a2->n128_u64[0] == a1->n128_u64[0] && a2[3].n128_u64[0] < a1[3].n128_u64[0])
      {
        v62 = a1[2];
        v69 = a1[3];
        v76 = a1[4];
        v83 = a1[5];
        v48 = *a1;
        v55 = a1[1];
        v38 = a2[1];
        *a1 = *a2;
        a1[1] = v38;
        v39 = a2[5];
        v41 = a2[2];
        v40 = a2[3];
        a1[4] = a2[4];
        a1[5] = v39;
        a1[2] = v41;
        a1[3] = v40;
        a2[4] = v76;
        a2[5] = v83;
        a2[2] = v62;
        a2[3] = v69;
        result = v48;
        *a2 = v48;
        a2[1] = v55;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v33 = (a1 + 96);
        v34 = *(a1 + 96);
        v35 = (a2 - 12);
        v36 = *(a1 + 144);
        if (v34 < *a1 || v34 == *a1 && v36 < *(a1 + 48))
        {
          v37 = *(a2 - 12);
          if (v37 < v34 || v37 == v34 && *(a2 - 6) < v36)
          {
            v134 = *(a1 + 32);
            v148 = *(a1 + 48);
            v161 = *(a1 + 64);
            v174 = *(a1 + 80);
            v106 = *a1;
            v120 = *(a1 + 16);
            v38 = *(a2 - 5);
            *a1 = *v35;
            *(a1 + 16) = v38;
            v39 = *(a2 - 1);
            v41 = *(a2 - 4);
            v40 = *(a2 - 3);
            *(a1 + 64) = *(a2 - 2);
            *(a1 + 80) = v39;
            *(a1 + 32) = v41;
            *(a1 + 48) = v40;
          }

          else
          {
            v141 = *(a1 + 32);
            v154 = *(a1 + 48);
            v167 = *(a1 + 64);
            v180 = *(a1 + 80);
            v113 = *a1;
            v127 = *(a1 + 16);
            v83 = *(a1 + 144);
            *(a1 + 32) = *(a1 + 128);
            *(a1 + 48) = v83;
            v84 = *(a1 + 176);
            *(a1 + 64) = *(a1 + 160);
            *(a1 + 80) = v84;
            v85 = *(a1 + 112);
            *a1 = *v33;
            *(a1 + 16) = v85;
            *v33 = v113;
            *(a1 + 112) = v127;
            *(a1 + 160) = v167;
            *(a1 + 176) = v180;
            *(a1 + 128) = v141;
            *(a1 + 144) = v154;
            v86 = *(a1 + 96);
            if (v35->n128_u64[0] >= v86 && (v35->n128_u64[0] != v86 || *(a2 - 6) >= *(a1 + 144)))
            {
              return 1;
            }

            v134 = *(a1 + 128);
            v148 = *(a1 + 144);
            v161 = *(a1 + 160);
            v174 = *(a1 + 176);
            v106 = *v33;
            v120 = *(a1 + 112);
            v87 = *(a2 - 5);
            *v33 = *v35;
            *(a1 + 112) = v87;
            v88 = *(a2 - 1);
            v90 = *(a2 - 4);
            v89 = *(a2 - 3);
            *(a1 + 160) = *(a2 - 2);
            *(a1 + 176) = v88;
            *(a1 + 128) = v90;
            *(a1 + 144) = v89;
          }

          *(a2 - 2) = v161;
          *(a2 - 1) = v174;
          *(a2 - 4) = v134;
          *(a2 - 3) = v148;
          *v35 = v106;
          *(a2 - 5) = v120;
          return 1;
        }

        else
        {
          if (v35->n128_u64[0] >= v34 && (v35->n128_u64[0] != v34 || *(a2 - 6) >= v36))
          {
            return 1;
          }

          v137 = *(a1 + 128);
          v150 = *(a1 + 144);
          v163 = *(a1 + 160);
          v176 = *(a1 + 176);
          v109 = *v33;
          v123 = *(a1 + 112);
          v69 = *(a2 - 5);
          *v33 = *v35;
          *(a1 + 112) = v69;
          v70 = *(a2 - 1);
          v72 = *(a2 - 4);
          v71 = *(a2 - 3);
          *(a1 + 160) = *(a2 - 2);
          *(a1 + 176) = v70;
          *(a1 + 128) = v72;
          *(a1 + 144) = v71;
          *(a2 - 2) = v163;
          *(a2 - 1) = v176;
          *(a2 - 4) = v137;
          *(a2 - 3) = v150;
          *v35 = v109;
          *(a2 - 5) = v123;
          v73 = *(a1 + 96);
          if (v73 >= *a1 && (v73 != *a1 || *(a1 + 144) >= *(a1 + 48)))
          {
            return 1;
          }

          v138 = *(a1 + 32);
          v151 = *(a1 + 48);
          v164 = *(a1 + 64);
          v177 = *(a1 + 80);
          v110 = *a1;
          v124 = *(a1 + 16);
          v74 = *(a1 + 144);
          *(a1 + 32) = *(a1 + 128);
          *(a1 + 48) = v74;
          v75 = *(a1 + 176);
          *(a1 + 64) = *(a1 + 160);
          *(a1 + 80) = v75;
          v76 = *(a1 + 112);
          *a1 = *v33;
          *(a1 + 16) = v76;
          *v33 = v110;
          *(a1 + 112) = v124;
          *(a1 + 160) = v164;
          *(a1 + 176) = v177;
          *(a1 + 128) = v138;
          *(a1 + 144) = v151;
          return 1;
        }

      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,0>(a1, (a1 + 96), (a1 + 192), a2 - 6);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,0>(a1, (a1 + 96), (a1 + 192), (a1 + 288));
        v6 = a2 - 12;
        v7 = *(a2 - 12);
        v8 = *(a1 + 288);
        if (v7 >= v8 && (v7 != v8 || *(a2 - 6) >= *(a1 + 336)))
        {
          return 1;
        }

        v129 = *(a1 + 320);
        v143 = *(a1 + 336);
        v156 = *(a1 + 352);
        v169 = *(a1 + 368);
        v101 = *(a1 + 288);
        v115 = *(a1 + 304);
        v9 = *(a2 - 5);
        *(a1 + 288) = *v6;
        *(a1 + 304) = v9;
        v10 = *(a2 - 1);
        v12 = *(a2 - 4);
        v11 = *(a2 - 3);
        *(a1 + 352) = *(a2 - 2);
        *(a1 + 368) = v10;
        *(a1 + 320) = v12;
        *(a1 + 336) = v11;
        *(a2 - 2) = v156;
        *(a2 - 1) = v169;
        *(a2 - 4) = v129;
        *(a2 - 3) = v143;
        *v6 = v101;
        *(a2 - 5) = v115;
        v13 = *(a1 + 288);
        v14 = *(a1 + 192);
        if (v13 >= v14 && (v13 != v14 || *(a1 + 336) >= *(a1 + 240)))
        {
          return 1;
        }

        v130 = *(a1 + 224);
        v144 = *(a1 + 240);
        v157 = *(a1 + 256);
        v170 = *(a1 + 272);
        v102 = *(a1 + 192);
        v116 = *(a1 + 208);
        v15 = *(a1 + 336);
        *(a1 + 224) = *(a1 + 320);
        *(a1 + 240) = v15;
        v16 = *(a1 + 368);
        *(a1 + 256) = *(a1 + 352);
        *(a1 + 272) = v16;
        v17 = *(a1 + 304);
        *(a1 + 192) = *(a1 + 288);
        *(a1 + 208) = v17;
        *(a1 + 288) = v102;
        *(a1 + 304) = v116;
        *(a1 + 352) = v157;
        *(a1 + 368) = v170;
        *(a1 + 320) = v130;
        *(a1 + 336) = v144;
        v18 = *(a1 + 192);
        v19 = *(a1 + 96);
        if (v18 >= v19 && (v18 != v19 || *(a1 + 240) >= *(a1 + 144)))
        {
          return 1;
        }

        v131 = *(a1 + 128);
        v145 = *(a1 + 144);
        v158 = *(a1 + 160);
        v171 = *(a1 + 176);
        v103 = *(a1 + 96);
        v117 = *(a1 + 112);
        v20 = *(a1 + 240);
        *(a1 + 128) = *(a1 + 224);
        *(a1 + 144) = v20;
        v21 = *(a1 + 272);
        *(a1 + 160) = *(a1 + 256);
        *(a1 + 176) = v21;
        v22 = *(a1 + 208);
        *(a1 + 96) = *(a1 + 192);
        *(a1 + 112) = v22;
        *(a1 + 192) = v103;
        *(a1 + 208) = v117;
        *(a1 + 256) = v158;
        *(a1 + 272) = v171;
        *(a1 + 224) = v131;
        *(a1 + 240) = v145;
        v23 = *(a1 + 96);
        if (v23 >= *a1 && (v23 != *a1 || *(a1 + 144) >= *(a1 + 48)))
        {
          return 1;
        }

        v132 = *(a1 + 32);
        v146 = *(a1 + 48);
        v159 = *(a1 + 64);
        v172 = *(a1 + 80);
        v104 = *a1;
        v118 = *(a1 + 16);
        v24 = *(a1 + 144);
        *(a1 + 32) = *(a1 + 128);
        *(a1 + 48) = v24;
        v25 = *(a1 + 176);
        *(a1 + 64) = *(a1 + 160);
        *(a1 + 80) = v25;
        v26 = *(a1 + 112);
        *a1 = *(a1 + 96);
        *(a1 + 16) = v26;
        *(a1 + 96) = v104;
        *(a1 + 112) = v118;
        *(a1 + 160) = v159;
        *(a1 + 176) = v172;
        *(a1 + 128) = v132;
        *(a1 + 144) = v146;
        return 1;
    }

LABEL_33:
    v42 = (a1 + 192);
    v43 = (a1 + 96);
    v44 = *(a1 + 96);
    v45 = *(a1 + 144);
    v46 = *a1;
    if (v44 < *a1 || (v47 = *(a1 + 48), v44 == *a1) && v45 < v47)
    {
      v48 = *v42;
      if (*v42 < v44 || (v49 = *(a1 + 240), *v42 == v44) && v49 < v45)
      {
        v135 = *(a1 + 32);
        v149 = *(a1 + 48);
        v162 = *(a1 + 64);
        v175 = *(a1 + 80);
        v107 = *a1;
        v121 = *(a1 + 16);
        v50 = *(a1 + 240);
        *(a1 + 32) = *(a1 + 224);
        *(a1 + 48) = v50;
        v51 = *(a1 + 272);
        *(a1 + 64) = *(a1 + 256);
        *(a1 + 80) = v51;
        v52 = *(a1 + 208);
        *a1 = *v42;
        *(a1 + 16) = v52;
LABEL_40:
        *v42 = v107;
        *(a1 + 208) = v121;
        *(a1 + 256) = v162;
        *(a1 + 272) = v175;
        *(a1 + 224) = v135;
        *(a1 + 240) = v149;
        goto LABEL_41;
      }

      v142 = *(a1 + 32);
      v155 = *(a1 + 48);
      v168 = *(a1 + 64);
      v181 = *(a1 + 80);
      v114 = *a1;
      v128 = *(a1 + 16);
      v91 = *(a1 + 144);
      *(a1 + 32) = *(a1 + 128);
      *(a1 + 48) = v91;
      v92 = *(a1 + 176);
      *(a1 + 64) = *(a1 + 160);
      *(a1 + 80) = v92;
      v93 = *(a1 + 112);
      *a1 = *v43;
      *(a1 + 16) = v93;
      *v43 = v114;
      *(a1 + 112) = v128;
      *(a1 + 160) = v168;
      *(a1 + 176) = v181;
      *(a1 + 128) = v142;
      *(a1 + 144) = v155;
      v94 = *(a1 + 96);
      if (v48 < v94 || v48 == v94 && v49 < *(a1 + 144))
      {
        v135 = *(a1 + 128);
        v149 = *(a1 + 144);
        v162 = *(a1 + 160);
        v175 = *(a1 + 176);
        v107 = *v43;
        v121 = *(a1 + 112);
        v95 = *(a1 + 240);
        *(a1 + 128) = *(a1 + 224);
        *(a1 + 144) = v95;
        v96 = *(a1 + 272);
        *(a1 + 160) = *(a1 + 256);
        *(a1 + 176) = v96;
        v97 = *(a1 + 208);
        *v43 = *v42;
        *(a1 + 112) = v97;
        goto LABEL_40;
      }
    }

    else if (*v42 < v44 || *v42 == v44 && *(a1 + 240) < v45)
    {
      v139 = *(a1 + 128);
      v152 = *(a1 + 144);
      v165 = *(a1 + 160);
      v178 = *(a1 + 176);
      v111 = *v43;
      v125 = *(a1 + 112);
      v77 = *(a1 + 240);
      *(a1 + 128) = *(a1 + 224);
      *(a1 + 144) = v77;
      v78 = *(a1 + 272);
      *(a1 + 160) = *(a1 + 256);
      *(a1 + 176) = v78;
      v79 = *(a1 + 208);
      *v43 = *v42;
      *(a1 + 112) = v79;
      *v42 = v111;
      *(a1 + 208) = v125;
      *(a1 + 256) = v165;
      *(a1 + 272) = v178;
      *(a1 + 224) = v139;
      *(a1 + 240) = v152;
      if (v43->n128_u64[0] < v46 || v43->n128_u64[0] == v46 && *(a1 + 144) < v47)
      {
        v140 = *(a1 + 32);
        v153 = *(a1 + 48);
        v166 = *(a1 + 64);
        v179 = *(a1 + 80);
        v112 = *a1;
        v126 = *(a1 + 16);
        v80 = *(a1 + 144);
        *(a1 + 32) = *(a1 + 128);
        *(a1 + 48) = v80;
        v81 = *(a1 + 176);
        *(a1 + 64) = *(a1 + 160);
        *(a1 + 80) = v81;
        v82 = *(a1 + 112);
        *a1 = *v43;
        *(a1 + 16) = v82;
        *v43 = v112;
        *(a1 + 112) = v126;
        *(a1 + 160) = v166;
        *(a1 + 176) = v179;
        *(a1 + 128) = v140;
        *(a1 + 144) = v153;
      }
    }

LABEL_41:
    v53 = (a1 + 288);
    if ((a1 + 288) == a2)
    {
      return 1;
    }

    v54 = 0;
    v55 = 0;
    while (1)
    {
      v57 = *v53;
      v58 = v53[6];
      if (*v53 < *v42 || (*v53 == *v42 ? (v59 = v58 < v42[6]) : (v59 = 0), v59))
      {
        v136 = v53[5];
        v108 = *(v53 + 1);
        v122 = *(v53 + 3);
        v100 = v53[11];
        v98 = *(v53 + 7);
        v99 = *(v53 + 9);
        v60 = *(v42 + 5);
        *(v53 + 4) = *(v42 + 4);
        *(v53 + 5) = v60;
        v61 = *(v42 + 3);
        *(v53 + 2) = *(v42 + 2);
        *(v53 + 3) = v61;
        v62 = *(v42 + 1);
        v56 = a1;
        *v53 = *v42;
        *(v53 + 1) = v62;
        if (v42 != a1)
        {
          v63 = v54;
          while (1)
          {
            v67 = a1 + v63 + 96;
            if (v57 >= *v67 && (v57 != *v67 || v58 >= *(a1 + v63 + 144)))
            {
              break;
            }

            v64 = *(a1 + v63 + 144);
            *(a1 + v63 + 224) = *(a1 + v63 + 128);
            *(a1 + v63 + 240) = v64;
            v65 = *(a1 + v63 + 176);
            *(a1 + v63 + 256) = *(a1 + v63 + 160);
            *(a1 + v63 + 272) = v65;
            v66 = *(a1 + v63 + 112);
            v63 -= 96;
            *(v67 + 96) = *v67;
            *(v67 + 112) = v66;
            if (v63 == -192)
            {
              v56 = a1;
              goto LABEL_44;
            }
          }

          v56 = a1 + v63 + 192;
        }

LABEL_44:
        *(v56 + 8) = v108;
        *(v56 + 24) = v122;
        *(v56 + 56) = v98;
        *v56 = v57;
        *(v56 + 40) = v136;
        *(v56 + 48) = v58;
        *(v56 + 72) = v99;
        ++v55;
        *(v56 + 88) = v100;
        if (v55 == 8)
        {
          return v53 + 12 == a2;
        }
      }

      v42 = v53;
      v54 += 96;
      v53 += 12;
      if (v53 == a2)
      {
        return 1;
      }
    }
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_33;
  }

  v27 = (a2 - 12);
  v28 = *(a2 - 12);
  if (v28 >= *a1 && (v28 != *a1 || *(a2 - 6) >= *(a1 + 48)))
  {
    return 1;
  }

  v133 = *(a1 + 32);
  v147 = *(a1 + 48);
  v160 = *(a1 + 64);
  v173 = *(a1 + 80);
  v105 = *a1;
  v119 = *(a1 + 16);
  v29 = *(a2 - 5);
  *a1 = *v27;
  *(a1 + 16) = v29;
  v30 = *(a2 - 1);
  v32 = *(a2 - 4);
  v31 = *(a2 - 3);
  *(a1 + 64) = *(a2 - 2);
  *(a1 + 80) = v30;
  *(a1 + 32) = v32;
  *(a1 + 48) = v31;
  *(a2 - 2) = v160;
  *(a2 - 1) = v173;
  *(a2 - 4) = v133;
  *(a2 - 3) = v147;
  *v27 = v105;
  *(a2 - 5) = v119;
  return 1;
}

__n128 std::__function::__func<operations_research::sat::CreateCumulativePrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativePrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F44648;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativePrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativePrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, operations_research::sat::LinearConstraintManager **a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1);
  if (result)
  {
    v37 = v3;
    v36 = result;
    v5 = *(a1 + 16);
    v6 = v5[10];
    v7 = a1;
    if ((-1431655765 * ((v5[11] - v6) >> 3)) < 1)
    {
      v11 = 0;
      v10 = 0;
      __src = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v38 = a1;
      __src = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v13 = *(v5[19] + 4 * v9);
        if (v13 == -1 || ((*(*(v5[3] + 24) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) != 0)
        {
          v14 = v11;
          v15 = v5[29];
          v16 = *(v5[30] + 8 * v9);
          v17 = v5[31];
          v18 = *(v5[32] + 8 * v9);
          v19 = v6 + v8;
          *__p = *v19;
          v43 = *(v19 + 16);
          v20 = *(v17 + 8 * v9);
          v21 = *(v5[33] + 8 * v9);
          v22 = (v5[13] + v8);
          v40 = *v22;
          v41 = *(v22 + 2);
          v23 = *(v15 + 8 * v9);
          v24 = operations_research::sat::SchedulingDemandHelper::DemandMin(*(v7 + 24), v9);
          v25 = -v18;
          v26 = -v21;
          v11 = v14;
          if (v10 < v14)
          {
            *v10 = v16;
            *(v10 + 8) = v25;
            v12 = v43;
            *(v10 + 16) = *__p;
            *(v10 + 32) = v12;
            *(v10 + 40) = v20;
            *(v10 + 48) = v26;
            *(v10 + 56) = v40;
            *(v10 + 72) = v41;
            *(v10 + 80) = v23;
            *(v10 + 88) = v24;
            v10 += 96;
          }

          else
          {
            v27 = v10 - __src;
            v28 = 0xAAAAAAAAAAAAAAABLL * ((v10 - __src) >> 5);
            v29 = v28 + 1;
            if (v28 + 1 > 0x2AAAAAAAAAAAAAALL)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v11 - __src) >> 5) > v29)
            {
              v29 = 0x5555555555555556 * ((v11 - __src) >> 5);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v11 - __src) >> 5) >= 0x155555555555555)
            {
              v30 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v30 = v29;
            }

            if (v30)
            {
              if (v30 <= 0x2AAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v31 = 96 * v28;
            *v31 = v16;
            *(v31 + 8) = v25;
            *(v31 + 16) = *__p;
            v11 = 0;
            *(v31 + 32) = v43;
            *(v31 + 40) = v20;
            *(v31 + 48) = v26;
            *(v31 + 56) = v40;
            *(v31 + 72) = v41;
            *(v31 + 80) = v23;
            v10 = 96 * v28 + 96;
            v32 = (v31 - v27);
            *(v31 + 88) = v24;
            memcpy((v31 - v27), __src, v27);
            if (__src)
            {
              operator delete(__src);
            }

            __src = v32;
          }

          v7 = v38;
          v5 = *(v38 + 16);
        }

        ++v9;
        v6 = v5[10];
        v8 += 24;
      }

      while (v9 < (-1431655765 * ((v5[11] - v6) >> 3)));
    }

    v33 = *(v7 + 32);
    v34 = *(v7 + 48);
    if (v33 != -1)
    {
      v34 -= *(*(*(v7 + 8) + 40) + ((8 * v33) ^ 8)) * *(v7 + 40);
    }

    HIBYTE(v43) = 10;
    strcpy(__p, "Cumulative");
    v35 = *(v37 + 34);
    *&v40 = __src;
    *(&v40 + 1) = v10;
    v41 = v11;
    operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(__p, v35, &v40, v34, *(v7 + 56), v37);
    if (__src)
    {
      *(&v40 + 1) = __src;
      operator delete(__src);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    return v36;
  }

  return result;
}

void sub_23CCEABC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateCumulativePrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCumulativePrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::AffineExpression const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat38CreateCumulativePrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat38CreateCumulativePrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat38CreateCumulativePrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat38CreateCumulativePrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_22SchedulingDemandHelperERKNS0_16AffineExpressionEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F446C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, operations_research::sat::LinearConstraintManager **a2)
{
  v2 = a1;
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (result)
  {
    v28 = v3;
    v27 = result;
    v5 = *(v2 + 8);
    v6 = v5[10];
    if ((-1431655765 * ((v5[11] - v6) >> 3)) < 1)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v29 = v2;
      do
      {
        v11 = *(v5[19] + 4 * v8);
        if (v11 == -1 || ((*(*(v5[3] + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) != 0)
        {
          v12 = v5[29];
          v13 = *(v5[30] + 8 * v8);
          v14 = v5[31];
          v15 = -*(v5[32] + 8 * v8);
          v16 = v6 + v7;
          *__p = *v16;
          v34 = *(v16 + 16);
          v17 = *(v14 + 8 * v8);
          v18 = -*(v5[33] + 8 * v8);
          v19 = (v5[13] + v7);
          v31 = *v19;
          v32 = *(v19 + 2);
          v20 = *(v12 + 8 * v8);
          v21 = v10 - v9;
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 5);
          v23 = v22 + 1;
          __src = v9;
          if (v22 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * (-v9 >> 5) > v23)
          {
            v23 = 0x5555555555555556 * (-v9 >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v9 >> 5) >= 0x155555555555555)
          {
            v24 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (v24 <= 0x2AAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = 96 * v22;
          *v25 = v13;
          *(v25 + 8) = v15;
          *(v25 + 16) = *__p;
          *(v25 + 32) = v34;
          *(v25 + 40) = v17;
          *(v25 + 48) = v18;
          *(v25 + 56) = v31;
          *(v25 + 72) = v32;
          *(v25 + 80) = v20;
          v10 = 96 * v22 + 96;
          v9 = v25 - v21;
          *(v25 + 88) = 1;
          memcpy((v25 - v21), __src, v21);
          if (__src)
          {
            operator delete(__src);
          }

          v2 = v29;
          v5 = *(v29 + 8);
        }

        ++v8;
        v6 = v5[10];
        v7 += 24;
      }

      while (v8 < (-1431655765 * ((v5[11] - v6) >> 3)));
    }

    HIBYTE(v34) = 9;
    strcpy(__p, "NoOverlap");
    v26 = *(v28 + 34);
    *&v31 = v9;
    *(&v31 + 1) = v10;
    v32 = 0;
    operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(__p, v26, &v31, 1, *(v2 + 16), v28);
    if (v9)
    {
      *(&v31 + 1) = v9;
      operator delete(v9);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

    return v27;
  }

  return result;
}

void sub_23CCEB044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22)
  {
    operator delete(v22);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlapPrecedenceCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat37CreateNoOverlapPrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat37CreateNoOverlapPrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat37CreateNoOverlapPrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat37CreateNoOverlapPrecedenceCutGeneratorEPNS0_26SchedulingConstraintHelperEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v233 = (a2 - 120);
  v225 = (a2 - 360);
  v226 = a2 - 15;
  i = a1;
  v243 = a2;
  while (1)
  {
    a1 = i;
    v7 = a2 - i;
    v8 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - i) >> 3);
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3uLL:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(i, (i + 120), v233);
          return;
        case 4uLL:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(i, (i + 120), (i + 240), v233);
          return;
        case 5uLL:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(i, (i + 120), (i + 240), (i + 360), v233);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v95 = (a2 - 120);
        v96 = *(a2 - 15);
        if (v96 < *i || *i >= v96 && ((v206 = *(a2 - 10), v207 = *(i + 40), v206 < v207) || v207 >= v206 && *(a2 - 2) < *(i + 104)))
        {
          v317 = *(i + 48);
          v304 = *(i + 16);
          v312 = *(i + 32);
          v296 = *i;
          v97 = *(i + 56);
          v98 = *(i + 72);
          *(i + 64) = 0;
          *(i + 72) = 0;
          *(i + 56) = 0;
          *&v288[15] = *(i + 111);
          v280 = *(i + 80);
          *v288 = *(i + 96);
          v100 = *(a2 - 104);
          v99 = *(a2 - 88);
          v101 = *v95;
          *(i + 48) = *(a2 - 9);
          *(i + 16) = v100;
          *(i + 32) = v99;
          *i = v101;
          *(i + 56) = *(a2 - 4);
          *(i + 72) = *(a2 - 6);
          *(a2 - 7) = 0;
          *(a2 - 6) = 0;
          *(a2 - 8) = 0;
          v102 = *(a2 - 40);
          v103 = *(a2 - 24);
          *(i + 111) = *(a2 - 9);
          *(i + 80) = v102;
          *(i + 96) = v103;
          *(a2 - 9) = v317;
          *(a2 - 104) = v304;
          *(a2 - 88) = v312;
          *v95 = v296;
          v104 = *(a2 - 8);
          if (v104)
          {
            *(a2 - 7) = v104;
            v248 = v97;
            operator delete(v104);
            v97 = v248;
          }

          *(a2 - 4) = v97;
          *(a2 - 6) = v98;
          *(a2 - 9) = *&v288[15];
          *(a2 - 40) = v280;
          *(a2 - 24) = *v288;
        }

        return;
      }
    }

    if (v7 <= 2879)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v129 = (v8 - 2) >> 1;
      v130 = v129;
      while (2)
      {
        v131 = v130;
        v132 = 120 * v130;
        v133 = 0xEEEEEEEEEEEEEEEFLL * ((120 * v130) >> 3);
        if (v129 >= v133)
        {
          v134 = 2 * v133;
          v135 = (2 * v133) | 1;
          v136 = (a1 + 120 * v135);
          v137 = v134 + 2;
          if (v137 < v8)
          {
            v138 = *(v136 + 15);
            if (*v136 < v138 || v138 >= *v136 && ((v159 = *(v136 + 5), v160 = *(v136 + 20), v159 < v160) || v160 >= v159 && *(v136 + 13) < *(v136 + 28)))
            {
              v136 = (v136 + 120);
              v135 = v137;
            }
          }

          v139 = (a1 + v132);
          v140 = *(a1 + v132);
          if (*v136 >= v140)
          {
            v141 = *(v139 + 5);
            if (v140 >= *v136)
            {
              v158 = *(v136 + 5);
              if (v158 >= v141)
              {
                v142 = *(v139 + 13);
                if (v141 < v158 || *(v136 + 13) >= v142)
                {
                  goto LABEL_189;
                }
              }
            }

            else
            {
              v142 = *(v139 + 13);
LABEL_189:
              v143 = 0;
              v306 = *(v139 + 24);
              v298 = *(v139 + 8);
              v232 = *(v139 + 6);
              v239 = *(v139 + 56);
              v234 = *(v139 + 9);
              *(v139 + 7) = 0;
              *(v139 + 8) = 0;
              *(v139 + 9) = 0;
              v290 = *(v139 + 12);
              v282 = v139[5];
              v272 = *(v139 + 114);
              v268 = *(v139 + 56);
              while (1)
              {
                v144 = v136;
                v145 = *v136;
                v146 = v136[1];
                v147 = v136[2];
                *(v139 + 6) = *(v136 + 6);
                v139[1] = v146;
                v139[2] = v147;
                *v139 = v145;
                if (v143)
                {
                  *(v139 + 8) = v143;
                  v148 = v141;
                  operator delete(v143);
                  v141 = v148;
                  v129 = (v8 - 2) >> 1;
                  *(v139 + 7) = 0;
                  *(v139 + 8) = 0;
                  *(v139 + 9) = 0;
                }

                *(v139 + 56) = *(v144 + 56);
                *(v139 + 9) = *(v144 + 9);
                *(v144 + 7) = 0;
                *(v144 + 8) = 0;
                *(v144 + 9) = 0;
                v149 = v144[5];
                v150 = v144[6];
                *(v139 + 111) = *(v144 + 111);
                v139[5] = v149;
                v139[6] = v150;
                if (v129 < v135)
                {
                  break;
                }

                v151 = 2 * v135;
                v135 = (2 * v135) | 1;
                v136 = (a1 + 120 * v135);
                v152 = v151 + 2;
                if (v152 < v8)
                {
                  v153 = *(v136 + 15);
                  if (*v136 < v153 || v153 >= *v136 && ((v155 = *(v136 + 5), v156 = *(v136 + 20), v155 < v156) || v156 >= v155 && *(v136 + 13) < *(v136 + 28)))
                  {
                    v136 = (v136 + 120);
                    v135 = v152;
                  }
                }

                if (*v136 < v140)
                {
                  break;
                }

                if (v140 >= *v136)
                {
                  v154 = *(v136 + 5);
                  if (v154 < v141 || v141 >= v154 && *(v136 + 13) < v142)
                  {
                    break;
                  }
                }

                v143 = *(v144 + 7);
                v139 = v144;
              }

              *v144 = v140;
              *(v144 + 24) = v306;
              *(v144 + 8) = v298;
              *(v144 + 5) = v141;
              *(v144 + 6) = v232;
              v157 = *(v144 + 7);
              if (v157)
              {
                *(v144 + 8) = v157;
                operator delete(v157);
                v129 = (v8 - 2) >> 1;
              }

              *(v144 + 56) = v239;
              *(v144 + 9) = v234;
              v144[5] = v282;
              *(v144 + 12) = v290;
              *(v144 + 13) = v142;
              *(v144 + 56) = v268;
              *(v144 + 114) = v272;
            }
          }
        }

        v130 = v131 - 1;
        if (v131)
        {
          continue;
        }

        break;
      }

      v161 = 0xEEEEEEEEEEEEEEEFLL * (v7 >> 3);
      v162 = v243;
      while (2)
      {
        v164 = 0;
        v250 = *(a1 + 7);
        v318 = *(a1 + 6);
        v307 = a1[1];
        v313 = a1[2];
        v299 = *a1;
        v235 = *(a1 + 9);
        v240 = *(a1 + 8);
        *(a1 + 8) = 0;
        *(a1 + 9) = 0;
        v283 = a1[5];
        *v291 = a1[6];
        *&v291[15] = *(a1 + 111);
        v165 = a1;
        *(a1 + 7) = 0;
        do
        {
          v169 = v165 + 120 * v164;
          v170 = v169 + 120;
          v171 = 2 * v164;
          v164 = (2 * v164) | 1;
          v172 = v171 + 2;
          if (v172 < v161)
          {
            v173 = *(v169 + 240);
            v174 = *(v169 + 120);
            if (v174 < v173 || v173 >= v174 && ((v179 = *(v169 + 160), v180 = *(v169 + 280), v179 < v180) || v180 >= v179 && *(v169 + 224) < *(v169 + 344)))
            {
              v170 = v169 + 240;
              v164 = v172;
            }
          }

          v175 = *v170;
          v176 = *(v170 + 16);
          v177 = *(v170 + 32);
          *(v165 + 48) = *(v170 + 48);
          *(v165 + 16) = v176;
          *(v165 + 32) = v177;
          *v165 = v175;
          v178 = *(v165 + 56);
          if (v178)
          {
            *(v165 + 64) = v178;
            operator delete(v178);
            *(v165 + 56) = 0;
            *(v165 + 64) = 0;
            *(v165 + 72) = 0;
          }

          v166 = (v170 + 56);
          *(v165 + 56) = *(v170 + 56);
          *(v165 + 72) = *(v170 + 72);
          *(v170 + 56) = 0;
          *(v170 + 64) = 0;
          *(v170 + 72) = 0;
          v167 = *(v170 + 80);
          v168 = *(v170 + 96);
          *(v165 + 111) = *(v170 + 111);
          *(v165 + 80) = v167;
          *(v165 + 96) = v168;
          v165 = v170;
        }

        while (v164 <= ((v161 - 2) >> 1));
        v244 = (v162 - 120);
        if (v170 == (v162 - 120))
        {
          *(v170 + 48) = v318;
          *(v170 + 16) = v307;
          *(v170 + 32) = v313;
          *v170 = v299;
          v204 = *(v170 + 56);
          if (v204)
          {
            *(v170 + 64) = v204;
            operator delete(v204);
          }

          *(v170 + 56) = v250;
          *(v170 + 64) = v240;
          *(v170 + 72) = v235;
          *(v170 + 111) = *&v291[15];
          *(v170 + 96) = *v291;
          *(v170 + 80) = v283;
        }

        else
        {
          v181 = *(v162 - 120);
          v182 = *(v162 - 104);
          v183 = *(v162 - 88);
          *(v170 + 48) = *(v162 - 9);
          *(v170 + 16) = v182;
          *(v170 + 32) = v183;
          *v170 = v181;
          v184 = *(v170 + 56);
          if (v184)
          {
            *(v170 + 64) = v184;
            operator delete(v184);
            *v166 = 0;
            *(v170 + 64) = 0;
            *(v170 + 72) = 0;
          }

          *(v170 + 56) = *(v162 - 4);
          *(v170 + 72) = *(v162 - 6);
          *(v162 - 8) = 0;
          *(v162 - 7) = 0;
          *(v162 - 6) = 0;
          v185 = *(v162 - 40);
          v186 = *(v162 - 24);
          *(v170 + 111) = *(v162 - 9);
          *(v170 + 96) = v186;
          *(v170 + 80) = v185;
          *(v162 - 9) = v318;
          *(v162 - 104) = v307;
          *(v162 - 88) = v313;
          *v244 = v299;
          v187 = *(v162 - 8);
          if (v187)
          {
            *(v162 - 7) = v187;
            operator delete(v187);
          }

          v188 = v162 - 40;
          *(v162 - 8) = v250;
          *(v162 - 7) = v240;
          *(v162 - 6) = v235;
          *(v188 + 31) = *&v291[15];
          *v188 = v283;
          *(v188 + 1) = *v291;
          v189 = v170 + 120 - a1;
          if (v189 >= 121)
          {
            v190 = (-2 - 0x1111111111111111 * (v189 >> 3)) >> 1;
            v191 = (a1 + 120 * v190);
            v192 = *v170;
            if (*v191 >= *v170)
            {
              if (v192 >= *v191)
              {
                v205 = *(v191 + 5);
                v193 = *(v170 + 40);
                if (v205 < v193 || v193 >= v205 && *(v191 + 13) < *(v170 + 104))
                {
                  goto LABEL_241;
                }
              }
            }

            else
            {
              v193 = *(v170 + 40);
LABEL_241:
              v269 = *(v170 + 8);
              v276 = *(v170 + 24);
              v251 = *(v170 + 56);
              v236 = *(v170 + 48);
              v241 = *(v170 + 72);
              *(v170 + 64) = 0;
              *(v170 + 72) = 0;
              *v166 = 0;
              v264 = *(v170 + 96);
              v261 = *(v170 + 80);
              v194 = *(v170 + 104);
              v258 = *(v170 + 114);
              v255 = *(v170 + 112);
              while (1)
              {
                v195 = v191;
                v196 = *v191;
                v197 = v191[1];
                v198 = v191[2];
                *(v170 + 48) = *(v191 + 6);
                *(v170 + 16) = v197;
                *(v170 + 32) = v198;
                *v170 = v196;
                v199 = *(v170 + 56);
                if (v199)
                {
                  *(v170 + 64) = v199;
                  operator delete(v199);
                  *(v170 + 56) = 0;
                  *(v170 + 64) = 0;
                  *(v170 + 72) = 0;
                }

                *(v170 + 56) = *(v195 + 56);
                *(v170 + 72) = *(v195 + 72);
                *(v195 + 56) = 0;
                *(v195 + 64) = 0;
                *(v195 + 72) = 0;
                v200 = *(v195 + 80);
                v201 = *(v195 + 96);
                *(v170 + 111) = *(v195 + 111);
                *(v170 + 80) = v200;
                *(v170 + 96) = v201;
                if (!v190)
                {
                  break;
                }

                v190 = (v190 - 1) >> 1;
                v191 = (a1 + 120 * v190);
                v170 = v195;
                if (*v191 >= v192)
                {
                  if (v192 < *v191)
                  {
                    break;
                  }

                  v202 = *(v191 + 5);
                  v170 = v195;
                  if (v202 >= v193)
                  {
                    if (v193 < v202)
                    {
                      break;
                    }

                    v170 = v195;
                    if (*(v191 + 13) >= v194)
                    {
                      break;
                    }
                  }
                }
              }

              *v195 = v192;
              *(v195 + 24) = v276;
              *(v195 + 8) = v269;
              *(v195 + 40) = v193;
              *(v195 + 48) = v236;
              v203 = *(v195 + 56);
              if (v203)
              {
                *(v195 + 64) = v203;
                operator delete(v203);
              }

              *(v195 + 56) = v251;
              *(v195 + 72) = v241;
              *(v195 + 80) = v261;
              *(v195 + 96) = v264;
              *(v195 + 104) = v194;
              *(v195 + 112) = v255;
              *(v195 + 114) = v258;
            }
          }
        }

        v163 = v161-- <= 2;
        v162 = v244;
        if (v163)
        {
          return;
        }

        continue;
      }
    }

    v9 = v8 >> 1;
    v10 = i + 120 * (v8 >> 1);
    if (v7 < 0x3C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>((a1 + 120 * (v8 >> 1)), a1, v233);
      --a3;
      v19 = *a1;
      if (a4)
      {
        goto LABEL_22;
      }

LABEL_17:
      v20 = *(a1 - 15);
      if (v20 < v19)
      {
        goto LABEL_22;
      }

      v21 = *(a1 + 5);
      if (v19 < v20)
      {
        v23 = *(a1 + 13);
      }

      else
      {
        v22 = *(a1 - 10);
        if (v22 < v21)
        {
          goto LABEL_22;
        }

        v23 = *(a1 + 13);
        if (v21 >= v22 && *(a1 - 2) < v23)
        {
          goto LABEL_22;
        }
      }

      v231 = *(a1 + 56);
      v266 = *(a1 + 8);
      v275 = *(a1 + 24);
      v62 = *(a1 + 6);
      v63 = *(a1 + 9);
      *(a1 + 7) = 0;
      *(a1 + 8) = 0;
      *(a1 + 9) = 0;
      v260 = a1[5];
      v263 = *(a1 + 12);
      v257 = *(a1 + 114);
      v254 = *(a1 + 56);
      v64 = *v233;
      if (v19 < *v233 || v64 >= v19 && ((v94 = *(a2 - 10), v21 < v94) || v94 >= v21 && v23 < *(a2 - 2)))
      {
        i = a1;
        while (1)
        {
          v66 = *(i + 120);
          i += 120;
          v65 = v66;
          if (v19 < v66)
          {
            break;
          }

          if (v65 >= v19)
          {
            v67 = *(i + 40);
            if (v21 < v67 || v67 >= v21 && v23 < *(i + 104))
            {
              break;
            }
          }
        }
      }

      else
      {
        for (i = a1 + 120; i < a2; i += 120)
        {
          if (v19 < *i)
          {
            break;
          }

          if (*i >= v19)
          {
            v68 = *(i + 40);
            if (v21 < v68 || v68 >= v21 && v23 < *(i + 104))
            {
              break;
            }
          }
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = v233; ; j -= 120)
        {
          if (v19 >= v64)
          {
            if (v64 < v19)
            {
              break;
            }

            v71 = *(j + 40);
            if (v21 >= v71 && (v71 < v21 || v23 >= *(j + 104)))
            {
              break;
            }
          }

          v70 = *(j - 120);
          v64 = v70;
        }
      }

      while (i < j)
      {
        v316 = *(i + 48);
        v303 = *(i + 16);
        v311 = *(i + 32);
        v295 = *i;
        v72 = *(i + 56);
        v73 = *(i + 72);
        *(i + 64) = 0;
        *(i + 72) = 0;
        *(i + 56) = 0;
        *&v287[15] = *(i + 111);
        v279 = *(i + 80);
        *v287 = *(i + 96);
        v75 = *(j + 16);
        v74 = *(j + 32);
        v76 = *j;
        *(i + 48) = *(j + 48);
        *(i + 16) = v75;
        *(i + 32) = v74;
        *i = v76;
        *(i + 56) = *(j + 56);
        *(i + 72) = *(j + 72);
        *(j + 56) = 0;
        *(j + 64) = 0;
        *(j + 72) = 0;
        v77 = *(j + 80);
        v78 = *(j + 96);
        *(i + 111) = *(j + 111);
        *(i + 80) = v77;
        *(i + 96) = v78;
        *(j + 48) = v316;
        *(j + 16) = v303;
        *(j + 32) = v311;
        *j = v295;
        v79 = *(j + 56);
        if (v79)
        {
          *(j + 64) = v79;
          v247 = v72;
          operator delete(v79);
          v72 = v247;
        }

        *(j + 56) = v72;
        *(j + 72) = v73;
        *(j + 80) = v279;
        *(j + 96) = *v287;
        *(j + 111) = *&v287[15];
        v81 = *(i + 120);
        i += 120;
        v80 = v81;
        if (v19 >= v81)
        {
          a2 = v243;
          do
          {
            if (v80 >= v19)
            {
              v86 = *(i + 40);
              if (v21 < v86 || v86 >= v21 && v23 < *(i + 104))
              {
                break;
              }
            }

            v85 = *(i + 120);
            i += 120;
            v80 = v85;
          }

          while (v19 >= v85);
        }

        else
        {
          a2 = v243;
        }

        do
        {
          do
          {
            v83 = *(j - 120);
            j -= 120;
            v82 = v83;
          }

          while (v19 < v83);
          if (v82 < v19)
          {
            break;
          }

          v84 = *(j + 40);
        }

        while (v21 < v84 || v84 >= v21 && v23 < *(j + 104));
      }

      if ((i - 120) != a1)
      {
        v87 = *(i - 120);
        v88 = *(i - 104);
        v89 = *(i - 88);
        *(a1 + 6) = *(i - 72);
        a1[1] = v88;
        a1[2] = v89;
        *a1 = v87;
        v90 = *(a1 + 7);
        if (v90)
        {
          *(a1 + 8) = v90;
          operator delete(v90);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
        }

        *(a1 + 56) = *(i - 64);
        *(a1 + 9) = *(i - 48);
        *(i - 64) = 0;
        *(i - 56) = 0;
        *(i - 48) = 0;
        v91 = *(i - 40);
        v92 = *(i - 24);
        *(a1 + 111) = *(i - 9);
        a1[6] = v92;
        a1[5] = v91;
      }

      *(i - 120) = v19;
      *(i - 112) = v266;
      *(i - 96) = v275;
      *(i - 80) = v21;
      *(i - 72) = v62;
      v93 = *(i - 64);
      if (v93)
      {
        *(i - 56) = v93;
        operator delete(v93);
      }

      a4 = 0;
      *(i - 64) = v231;
      *(i - 48) = v63;
      *(i - 24) = v263;
      *(i - 40) = v260;
      *(i - 16) = v23;
      *(i - 6) = v257;
      *(i - 8) = v254;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, a1 + 15 * (v8 >> 1), v233);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>((a1 + 120), a1 + 15 * v9 - 15, v226);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1 + 15, a1 + 15 * v9 + 15, v225);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>((a1 + 120 * v9 - 120), a1 + 15 * (v8 >> 1), (a1 + 120 * v9 + 120));
      v314 = *(a1 + 6);
      v301 = a1[1];
      v309 = a1[2];
      v293 = *a1;
      v11 = *(a1 + 56);
      v12 = *(a1 + 9);
      *(a1 + 8) = 0;
      *(a1 + 9) = 0;
      *(a1 + 7) = 0;
      *&v285[15] = *(a1 + 111);
      v277 = a1[5];
      *v285 = a1[6];
      v14 = *(v10 + 16);
      v13 = *(v10 + 32);
      v15 = *v10;
      *(a1 + 6) = *(v10 + 48);
      a1[1] = v14;
      a1[2] = v13;
      *a1 = v15;
      *(a1 + 56) = *(v10 + 56);
      *(a1 + 9) = *(v10 + 72);
      *(v10 + 64) = 0;
      *(v10 + 72) = 0;
      *(v10 + 56) = 0;
      v16 = *(v10 + 80);
      v17 = *(v10 + 96);
      *(a1 + 111) = *(v10 + 111);
      a1[5] = v16;
      a1[6] = v17;
      *(v10 + 48) = v314;
      *(v10 + 16) = v301;
      *(v10 + 32) = v309;
      *v10 = v293;
      v18 = *(v10 + 56);
      if (v18)
      {
        *(v10 + 64) = v18;
        v245 = v11;
        operator delete(v18);
        v11 = v245;
      }

      *(v10 + 56) = v11;
      *(v10 + 72) = v12;
      *(v10 + 111) = *&v285[15];
      *(v10 + 80) = v277;
      *(v10 + 96) = *v285;
      --a3;
      v19 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      v24 = 0;
      v230 = *(a1 + 56);
      v265 = *(a1 + 8);
      v274 = *(a1 + 24);
      v25 = *(a1 + 40);
      v229 = *(a1 + 9);
      *(a1 + 7) = 0;
      *(a1 + 8) = 0;
      *(a1 + 9) = 0;
      v259 = a1[5];
      v262 = *(a1 + 12);
      v253 = *(a1 + 56);
      v256 = *(a1 + 114);
      v228 = v25;
      v26 = v25;
      v27 = *(a1 + 13);
      while (1)
      {
        v28 = a1 + v24;
        v29 = *(a1 + v24 + 120);
        if (v29 >= v19)
        {
          if (v19 < v29)
          {
            break;
          }

          v30 = *(v28 + 160);
          if (v30 >= v25 && (v25 < v30 || *(v28 + 224) >= v27))
          {
            break;
          }
        }

        v24 += 120;
      }

      v31 = a1 + v24 + 120;
      if (v24)
      {
        v32 = v233;
        for (k = *v233; k >= v19; k = v34)
        {
          if (v19 >= k)
          {
            v35 = *(v32 + 40);
            if (v35 < v25 || v25 >= v35 && *(v32 + 104) < v27)
            {
              break;
            }
          }

          v34 = *(v32 - 120);
          v32 -= 120;
        }
      }

      else
      {
        v32 = a2;
        if (v31 < a2)
        {
          v32 = v233;
          v36 = *v233;
          if (*v233 >= v19)
          {
            v32 = v233;
            do
            {
              if (v19 < v36)
              {
                goto LABEL_68;
              }

              v61 = *(v32 + 40);
              if (v61 < v25)
              {
                break;
              }

              if (v25 < v61)
              {
LABEL_68:
                if (v31 >= v32)
                {
                  break;
                }
              }

              else if (v31 >= v32 || *(v32 + 104) < v27)
              {
                break;
              }

              v60 = *(v32 - 120);
              v32 -= 120;
              v36 = v60;
            }

            while (v60 >= v19);
          }
        }
      }

      i = v31;
      if (v31 < v32)
      {
        v37 = v32;
        do
        {
          v315 = *(i + 48);
          v302 = *(i + 16);
          v310 = *(i + 32);
          v294 = *i;
          v38 = *(i + 56);
          v39 = *(i + 72);
          *(i + 64) = 0;
          *(i + 72) = 0;
          *(i + 56) = 0;
          *&v286[15] = *(i + 111);
          v278 = *(i + 80);
          *v286 = *(i + 96);
          v41 = *(v37 + 16);
          v40 = *(v37 + 32);
          v42 = *v37;
          *(i + 48) = *(v37 + 48);
          *(i + 16) = v41;
          *(i + 32) = v40;
          *i = v42;
          *(i + 56) = *(v37 + 56);
          *(i + 72) = *(v37 + 72);
          *(v37 + 56) = 0;
          *(v37 + 64) = 0;
          *(v37 + 72) = 0;
          v43 = *(v37 + 80);
          v44 = *(v37 + 96);
          *(i + 111) = *(v37 + 111);
          *(i + 80) = v43;
          *(i + 96) = v44;
          *(v37 + 48) = v315;
          *(v37 + 16) = v302;
          *(v37 + 32) = v310;
          *v37 = v294;
          v45 = *(v37 + 56);
          if (v45)
          {
            *(v37 + 64) = v45;
            v246 = v38;
            operator delete(v45);
            v38 = v246;
          }

          *(v37 + 56) = v38;
          *(v37 + 72) = v39;
          *(v37 + 80) = v278;
          *(v37 + 96) = *v286;
          *(v37 + 111) = *&v286[15];
          do
          {
            do
            {
              v47 = *(i + 120);
              i += 120;
              v46 = v47;
            }

            while (v47 < v19);
            if (v19 < v46)
            {
              break;
            }

            v48 = *(i + 40);
          }

          while (v48 < v26 || v26 >= v48 && *(i + 104) < v27);
          while (1)
          {
            v50 = *(v37 - 120);
            v37 -= 120;
            v49 = v50;
            if (v50 < v19)
            {
              break;
            }

            if (v19 >= v49)
            {
              v51 = *(v37 + 40);
              if (v51 < v26 || v26 >= v51 && *(v37 + 104) < v27)
              {
                break;
              }
            }
          }
        }

        while (i < v37);
      }

      a2 = v243;
      if ((i - 120) != a1)
      {
        v52 = *(i - 120);
        v53 = *(i - 104);
        v54 = *(i - 88);
        *(a1 + 6) = *(i - 72);
        a1[1] = v53;
        a1[2] = v54;
        *a1 = v52;
        v55 = *(a1 + 7);
        if (v55)
        {
          *(a1 + 8) = v55;
          operator delete(v55);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
        }

        *(a1 + 56) = *(i - 64);
        *(a1 + 9) = *(i - 48);
        *(i - 64) = 0;
        *(i - 56) = 0;
        *(i - 48) = 0;
        v56 = *(i - 40);
        v57 = *(i - 24);
        *(a1 + 111) = *(i - 9);
        a1[6] = v57;
        a1[5] = v56;
      }

      *(i - 120) = v19;
      *(i - 112) = v265;
      *(i - 96) = v274;
      *(i - 80) = v228;
      v58 = *(i - 64);
      if (v58)
      {
        *(i - 56) = v58;
        operator delete(v58);
      }

      *(i - 64) = v230;
      *(i - 48) = v229;
      *(i - 24) = v262;
      *(i - 40) = v259;
      *(i - 16) = v27;
      *(i - 6) = v256;
      *(i - 8) = v253;
      if (v31 < v32)
      {
        goto LABEL_66;
      }

      v59 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*>(a1, i - 120);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*>(i, v243))
      {
        a2 = (i - 120);
        if (v59)
        {
          return;
        }

        goto LABEL_1;
      }

      if ((v59 & 1) == 0)
      {
LABEL_66:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,false>(a1, i - 120, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  v105 = i + 120;
  v107 = i == a2 || v105 == a2;
  if (a4)
  {
    if (!v107)
    {
      v108 = 0;
      v109 = i;
      do
      {
        v110 = v109;
        v109 = v105;
        v111 = *(v110 + 120);
        if (v111 < *v110 || *v110 >= v111 && ((v125 = *(v110 + 160), v126 = *(v110 + 40), v125 < v126) || v126 >= v125 && *(v110 + 224) < *(v110 + 104)))
        {
          v305 = *(v110 + 144);
          v297 = *(v110 + 128);
          v112 = *(v110 + 160);
          v113 = *(v110 + 176);
          v249 = *(v110 + 184);
          *(v110 + 176) = 0;
          *(v110 + 184) = 0;
          *(v110 + 192) = 0;
          v289 = *(v110 + 216);
          v281 = *(v110 + 200);
          v114 = *(v110 + 224);
          v271 = *(v110 + 234);
          v267 = *(v110 + 232);
          v238 = v112;
          v115 = v112;
          for (m = v108; ; m -= 120)
          {
            v117 = a1 + m;
            v118 = *(a1 + m + 16);
            *(v117 + 120) = *(a1 + m);
            *(v117 + 136) = v118;
            *(v117 + 152) = *(a1 + m + 32);
            *(v117 + 168) = *(a1 + m + 48);
            v119 = *(a1 + m + 176);
            if (v119)
            {
              *(v117 + 184) = v119;
              operator delete(v119);
              *(v117 + 184) = 0;
              *(v117 + 192) = 0;
            }

            *(v117 + 176) = *(v117 + 56);
            *(v117 + 192) = *(v117 + 72);
            *(v117 + 64) = 0;
            *(v117 + 72) = 0;
            *(v117 + 56) = 0;
            v120 = *(v117 + 96);
            *(v117 + 200) = *(v117 + 80);
            *(v117 + 216) = v120;
            *(v117 + 231) = *(v117 + 111);
            if (!m)
            {
              break;
            }

            v121 = a1 + m;
            v122 = *(a1 + m - 120);
            if (v111 >= v122)
            {
              if (v122 < v111 || (v123 = *(v121 - 80), v115 >= v123) && (v123 < v115 || v114 >= *(v121 - 16)))
              {
                v124 = a1 + m;
                goto LABEL_175;
              }
            }
          }

          v124 = a1;
LABEL_175:
          v127 = a1 + m;
          *v124 = v111;
          *(v124 + 24) = v305;
          *(v124 + 8) = v297;
          *(v124 + 40) = v238;
          v128 = *(v127 + 56);
          if (v128)
          {
            *(v124 + 64) = v128;
            operator delete(v128);
            *(v127 + 64) = 0;
            *(v127 + 72) = 0;
          }

          *(v127 + 56) = v113;
          *(v124 + 64) = v249;
          *(v127 + 96) = v289;
          *(v127 + 80) = v281;
          *(v124 + 104) = v114;
          *(v124 + 112) = v267;
          *(v124 + 114) = v271;
        }

        v105 = v109 + 120;
        v108 += 120;
      }

      while (v109 + 120 != v243);
    }
  }

  else if (!v107)
  {
    v208 = i + 200;
    do
    {
      v210 = a1;
      a1 = v105;
      v211 = *(v210 + 120);
      if (v211 < *v210 || *v210 >= v211 && ((v223 = *(v210 + 160), v224 = *(v210 + 40), v223 < v224) || v224 >= v223 && *(v210 + 224) < *(v210 + 104)))
      {
        v308 = *(v210 + 144);
        v300 = *(v210 + 128);
        v212 = *(v210 + 160);
        v252 = *(v210 + 176);
        v213 = *(v210 + 192);
        *(v210 + 176) = 0;
        *(v210 + 184) = 0;
        *(v210 + 192) = 0;
        v292 = *(v210 + 216);
        v284 = *(v210 + 200);
        v214 = *(v210 + 224);
        v273 = *(v210 + 234);
        v270 = *(v210 + 232);
        v242 = v212;
        v215 = v212;
        for (n = v208; ; n -= 120)
        {
          v217 = *(n - 184);
          *(n - 80) = *(n - 200);
          *(n - 64) = v217;
          *(n - 48) = *(n - 168);
          *(n - 32) = *(n - 152);
          v218 = *(n - 24);
          if (v218)
          {
            *(n - 16) = v218;
            operator delete(v218);
            *(n - 16) = 0;
            *(n - 8) = 0;
          }

          *(n - 24) = *(n - 144);
          *(n - 8) = *(n - 128);
          *(n - 136) = 0;
          *(n - 128) = 0;
          *(n - 144) = 0;
          v219 = *(n - 104);
          *n = *(n - 120);
          *(n + 16) = v219;
          *(n + 31) = *(n - 89);
          v220 = *(n - 320);
          if (v211 >= v220)
          {
            if (v220 < v211)
            {
              break;
            }

            v221 = *(n - 280);
            if (v215 >= v221 && (v221 < v215 || v214 >= *(n - 216)))
            {
              break;
            }
          }
        }

        *(n - 200) = v211;
        *(n - 192) = v300;
        *(n - 176) = v308;
        *(n - 160) = v242;
        v222 = *(n - 144);
        if (v222)
        {
          *(n - 136) = v222;
          operator delete(v222);
        }

        v209 = n - 120;
        *(n - 144) = v252;
        *(n - 128) = v213;
        *(v209 + 16) = v292;
        *v209 = v284;
        *(n - 96) = v214;
        *(n - 86) = v273;
        *(n - 88) = v270;
        a2 = v243;
      }

      v105 = a1 + 120;
      v208 += 120;
    }

    while ((a1 + 120) != a2);
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  if (*a2 >= *a1)
  {
    if (*a1 < v4 || (v48 = a2[5], v49 = *(a1 + 5), v48 >= v49) && (v49 < v48 || (result.n128_u64[0] = a2[13], result.n128_f64[0] >= *(a1 + 13))))
    {
      if (*a3 < v4 || v4 >= *a3 && ((v50 = *(a3 + 5), v51 = a2[5], v50 < v51) || v51 >= v50 && (result.n128_u64[0] = *(a3 + 13), result.n128_f64[0] < *(a2 + 13))))
      {
        v70 = *a2;
        v75 = *(a2 + 1);
        v80 = *(a2 + 2);
        v85 = a2[6];
        v12 = a2 + 7;
        v13 = *(a2 + 7);
        v14 = a2[9];
        a2[7] = 0;
        a2[8] = 0;
        a2[9] = 0;
        *&v66[15] = *(a2 + 111);
        v62 = *(a2 + 5);
        *v66 = *(a2 + 6);
        v15 = *(a3 + 6);
        v17 = a3[1];
        v16 = a3[2];
        *a2 = *a3;
        *(a2 + 1) = v17;
        *(a2 + 2) = v16;
        a2[6] = v15;
        *(a2 + 7) = *(a3 + 56);
        a2[9] = *(a3 + 9);
        *(a3 + 56) = 0uLL;
        *(a3 + 9) = 0;
        LODWORD(v15) = *(a3 + 111);
        v18 = a3[6];
        *(a2 + 5) = a3[5];
        *(a2 + 6) = v18;
        *(a2 + 111) = v15;
        *(a3 + 6) = v85;
        a3[1] = v75;
        a3[2] = v80;
        *a3 = v70;
        v19 = *(a3 + 7);
        if (v19)
        {
          *(a3 + 8) = v19;
          v20 = a1;
          v21 = a2;
          v59 = v13;
          operator delete(v19);
          v13 = v59;
          a1 = v20;
          a2 = v21;
        }

        *(a3 + 56) = v13;
        *(a3 + 9) = v14;
        result = v62;
        a3[5] = v62;
        a3[6] = *v66;
        *(a3 + 111) = *&v66[15];
        if (*a2 < *a1 || *a1 >= *a2 && ((v54 = a2[5], v55 = *(a1 + 5), v54 < v55) || v55 >= v54 && (result.n128_u64[0] = a2[13], result.n128_f64[0] < *(a1 + 13))))
        {
          v71 = *a1;
          v76 = a1[1];
          v81 = a1[2];
          v86 = *(a1 + 6);
          v23 = *(a1 + 56);
          v24 = *(a1 + 9);
          *(a1 + 56) = 0uLL;
          *(a1 + 9) = 0;
          *&v67[15] = *(a1 + 111);
          v63 = a1[5];
          *v67 = a1[6];
          v25 = a2[6];
          v27 = *(a2 + 1);
          v26 = *(a2 + 2);
          *a1 = *a2;
          a1[1] = v27;
          a1[2] = v26;
          *(a1 + 6) = v25;
          *(a1 + 56) = *(a2 + 7);
          *(a1 + 9) = a2[9];
          *v12 = 0;
          v12[1] = 0;
          v12[2] = 0;
          LODWORD(v25) = *(a2 + 111);
          v28 = *(a2 + 6);
          a1[5] = *(a2 + 5);
          a1[6] = v28;
          *(a1 + 111) = v25;
          a2[6] = v86;
          *(a2 + 1) = v76;
          *(a2 + 2) = v81;
          *a2 = v71;
          v29 = a2[7];
          if (v29)
          {
            a2[8] = v29;
            v30 = a2;
            v60 = v23;
            operator delete(v29);
            v23 = v60;
            a2 = v30;
          }

          *(a2 + 7) = v23;
          a2[9] = v24;
          result = v63;
          *(a2 + 5) = v63;
          *(a2 + 6) = *v67;
          *(a2 + 111) = *&v67[15];
        }
      }

      return result;
    }
  }

  if (*a3 < v4 || v4 >= *a3 && ((v52 = *(a3 + 5), v53 = a2[5], v52 < v53) || v53 >= v52 && *(a3 + 13) < *(a2 + 13)))
  {
    v69 = *a1;
    v74 = a1[1];
    v79 = a1[2];
    v84 = *(a1 + 6);
    v5 = *(a1 + 56);
    v6 = *(a1 + 9);
    *(a1 + 56) = 0uLL;
    *(a1 + 9) = 0;
    *&v65[15] = *(a1 + 111);
    v61 = a1[5];
    *v65 = a1[6];
    v7 = *(a3 + 6);
    v9 = a3[1];
    v8 = a3[2];
    *a1 = *a3;
    a1[1] = v9;
    a1[2] = v8;
    *(a1 + 6) = v7;
    *(a1 + 56) = *(a3 + 56);
    *(a1 + 9) = *(a3 + 9);
    *(a3 + 56) = 0uLL;
    *(a3 + 9) = 0;
    LODWORD(v7) = *(a3 + 111);
    v10 = a3[6];
    a1[5] = a3[5];
    a1[6] = v10;
    *(a1 + 111) = v7;
    *(a3 + 6) = v84;
    a3[1] = v74;
    a3[2] = v79;
    *a3 = v69;
    v11 = *(a3 + 7);
    if (v11)
    {
      *(a3 + 8) = v11;
      v58 = v5;
      operator delete(v11);
      v5 = v58;
    }

    *(a3 + 56) = v5;
    *(a3 + 9) = v6;
LABEL_22:
    result = v61;
    a3[5] = v61;
    a3[6] = *v65;
    *(a3 + 111) = *&v65[15];
    return result;
  }

  v72 = *a1;
  v77 = a1[1];
  v82 = a1[2];
  v31 = *(a1 + 7);
  v87 = *(a1 + 6);
  v32 = *(a1 + 8);
  v33 = *(a1 + 9);
  *(a1 + 56) = 0uLL;
  *(a1 + 9) = 0;
  *&v68[15] = *(a1 + 111);
  v64 = a1[5];
  *v68 = a1[6];
  v34 = *a2;
  v35 = *(a2 + 1);
  v36 = *(a2 + 2);
  *(a1 + 6) = a2[6];
  a1[1] = v35;
  a1[2] = v36;
  *a1 = v34;
  v37 = a2 + 7;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 9) = a2[9];
  a2[7] = 0;
  a2[8] = 0;
  a2[9] = 0;
  v38 = *(a2 + 5);
  v39 = *(a2 + 6);
  *(a1 + 111) = *(a2 + 111);
  a1[5] = v38;
  a1[6] = v39;
  *a2 = v72;
  *(a2 + 1) = v77;
  *(a2 + 2) = v82;
  a2[6] = v87;
  v40 = a2[7];
  if (v40)
  {
    a2[8] = v40;
    v41 = a2;
    operator delete(v40);
    a2 = v41;
  }

  a2[7] = v31;
  a2[8] = v32;
  a2[9] = v33;
  result = v64;
  *(a2 + 5) = v64;
  *(a2 + 6) = *v68;
  *(a2 + 111) = *&v68[15];
  if (*a3 < *a2 || *a2 >= *a3 && ((v56 = *(a3 + 5), v57 = a2[5], v56 < v57) || v57 >= v56 && (result.n128_u64[0] = *(a3 + 13), result.n128_f64[0] < *(a2 + 13))))
  {
    v73 = *a2;
    v78 = *(a2 + 1);
    v83 = *(a2 + 2);
    v88 = a2[6];
    v37[1] = 0;
    v37[2] = 0;
    *v37 = 0;
    v61 = *(a2 + 5);
    *v65 = *(a2 + 6);
    *&v65[15] = *(a2 + 111);
    v42 = *a3;
    v43 = a3[1];
    v44 = a3[2];
    a2[6] = *(a3 + 6);
    *(a2 + 1) = v43;
    *(a2 + 2) = v44;
    *a2 = v42;
    *(a2 + 7) = *(a3 + 56);
    a2[9] = *(a3 + 9);
    *(a3 + 7) = 0;
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    v45 = *(a3 + 111);
    v46 = a3[6];
    *(a2 + 5) = a3[5];
    *(a2 + 6) = v46;
    *(a2 + 111) = v45;
    *(a3 + 6) = v88;
    a3[1] = v78;
    a3[2] = v83;
    *a3 = v73;
    v47 = *(a3 + 7);
    if (v47)
    {
      *(a3 + 8) = v47;
      operator delete(v47);
    }

    *(a3 + 7) = v31;
    *(a3 + 8) = v32;
    *(a3 + 9) = v33;
    goto LABEL_22;
  }

  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *&result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, a2, a3).n128_u64[0];
  if (*a4 < *a3 || *a3 >= *a4 && ((v30 = *(a4 + 5), v31 = *(a3 + 5), v30 < v31) || v31 >= v30 && (result = *(a4 + 13), result < *(a3 + 13))))
  {
    v45 = *a3;
    v48 = a3[1];
    v51 = a3[2];
    v54 = *(a3 + 6);
    v9 = *(a3 + 56);
    v10 = *(a3 + 9);
    *(a3 + 7) = 0;
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    *&v42[15] = *(a3 + 111);
    v39 = a3[5];
    *v42 = a3[6];
    v11 = *(a4 + 6);
    v13 = a4[1];
    v12 = a4[2];
    *a3 = *a4;
    a3[1] = v13;
    a3[2] = v12;
    *(a3 + 6) = v11;
    *(a3 + 56) = *(a4 + 56);
    *(a3 + 9) = *(a4 + 9);
    *(a4 + 7) = 0;
    *(a4 + 8) = 0;
    *(a4 + 9) = 0;
    LODWORD(v11) = *(a4 + 111);
    v14 = a4[6];
    a3[5] = a4[5];
    a3[6] = v14;
    *(a3 + 111) = v11;
    *(a4 + 6) = v54;
    a4[1] = v48;
    a4[2] = v51;
    *a4 = v45;
    v15 = *(a4 + 7);
    if (v15)
    {
      *(a4 + 8) = v15;
      v36 = v9;
      operator delete(v15);
      v9 = v36;
    }

    *(a4 + 56) = v9;
    *(a4 + 9) = v10;
    result = *&v39;
    a4[5] = v39;
    a4[6] = *v42;
    *(a4 + 111) = *&v42[15];
    if (*a3 < *a2 || *a2 >= *a3 && ((v32 = *(a3 + 5), v33 = *(a2 + 5), v32 < v33) || v33 >= v32 && (result = *(a3 + 13), result < *(a2 + 13))))
    {
      v46 = *a2;
      v49 = a2[1];
      v52 = a2[2];
      v55 = *(a2 + 6);
      v16 = *(a2 + 56);
      v17 = *(a2 + 9);
      *(a2 + 7) = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 0;
      *&v43[15] = *(a2 + 111);
      v40 = a2[5];
      *v43 = a2[6];
      v18 = *(a3 + 6);
      v20 = a3[1];
      v19 = a3[2];
      *a2 = *a3;
      a2[1] = v20;
      a2[2] = v19;
      *(a2 + 6) = v18;
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 9) = *(a3 + 9);
      *(a3 + 7) = 0;
      *(a3 + 8) = 0;
      *(a3 + 9) = 0;
      LODWORD(v18) = *(a3 + 111);
      v21 = a3[6];
      a2[5] = a3[5];
      a2[6] = v21;
      *(a2 + 111) = v18;
      *(a3 + 6) = v55;
      a3[1] = v49;
      a3[2] = v52;
      *a3 = v46;
      v22 = *(a3 + 7);
      if (v22)
      {
        *(a3 + 8) = v22;
        v37 = v16;
        operator delete(v22);
        v16 = v37;
      }

      *(a3 + 56) = v16;
      *(a3 + 9) = v17;
      result = *&v40;
      a3[5] = v40;
      a3[6] = *v43;
      *(a3 + 111) = *&v43[15];
      if (*a2 < *a1 || *a1 >= *a2 && ((v34 = *(a2 + 5), v35 = *(a1 + 40), v34 < v35) || v35 >= v34 && (result = *(a2 + 13), result < *(a1 + 104))))
      {
        v47 = *a1;
        v50 = *(a1 + 16);
        v53 = *(a1 + 32);
        v56 = *(a1 + 48);
        v23 = *(a1 + 56);
        v24 = *(a1 + 72);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *&v44[15] = *(a1 + 111);
        v41 = *(a1 + 80);
        *v44 = *(a1 + 96);
        v25 = *(a2 + 6);
        v27 = a2[1];
        v26 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v27;
        *(a1 + 32) = v26;
        *(a1 + 48) = v25;
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = *(a2 + 9);
        *(a2 + 7) = 0;
        *(a2 + 8) = 0;
        *(a2 + 9) = 0;
        LODWORD(v25) = *(a2 + 111);
        v28 = a2[6];
        *(a1 + 80) = a2[5];
        *(a1 + 96) = v28;
        *(a1 + 111) = v25;
        *(a2 + 6) = v56;
        a2[1] = v50;
        a2[2] = v53;
        *a2 = v47;
        v29 = *(a2 + 7);
        if (v29)
        {
          *(a2 + 8) = v29;
          v38 = v23;
          operator delete(v29);
          v23 = v38;
        }

        *(a2 + 56) = v23;
        *(a2 + 9) = v24;
        result = *&v41;
        a2[5] = v41;
        a2[6] = *v44;
        *(a2 + 111) = *&v44[15];
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, a2, a3, a4);
  if (*a5 < *a4 || *a4 >= *a5 && ((v39 = *(a5 + 5), v40 = *(a4 + 5), v39 < v40) || v40 >= v39 && (result = *(a5 + 13), result < *(a4 + 13))))
  {
    v59 = *a4;
    v63 = a4[1];
    v67 = a4[2];
    v71 = *(a4 + 6);
    v11 = *(a4 + 56);
    v12 = *(a4 + 9);
    *(a4 + 7) = 0;
    *(a4 + 8) = 0;
    *(a4 + 9) = 0;
    *&v55[15] = *(a4 + 111);
    v51 = a4[5];
    *v55 = a4[6];
    v13 = *(a5 + 6);
    v15 = a5[1];
    v14 = a5[2];
    *a4 = *a5;
    a4[1] = v15;
    a4[2] = v14;
    *(a4 + 6) = v13;
    *(a4 + 56) = *(a5 + 56);
    *(a4 + 9) = *(a5 + 9);
    *(a5 + 7) = 0;
    *(a5 + 8) = 0;
    *(a5 + 9) = 0;
    LODWORD(v13) = *(a5 + 111);
    v16 = a5[6];
    a4[5] = a5[5];
    a4[6] = v16;
    *(a4 + 111) = v13;
    *(a5 + 6) = v71;
    a5[1] = v63;
    a5[2] = v67;
    *a5 = v59;
    v17 = *(a5 + 7);
    if (v17)
    {
      *(a5 + 8) = v17;
      v47 = v11;
      operator delete(v17);
      v11 = v47;
    }

    *(a5 + 56) = v11;
    *(a5 + 9) = v12;
    result = *&v51;
    a5[5] = v51;
    a5[6] = *v55;
    *(a5 + 111) = *&v55[15];
    if (*a4 < *a3 || *a3 >= *a4 && ((v41 = *(a4 + 5), v42 = *(a3 + 5), v41 < v42) || v42 >= v41 && (result = *(a4 + 13), result < *(a3 + 13))))
    {
      v60 = *a3;
      v64 = a3[1];
      v68 = a3[2];
      v72 = *(a3 + 6);
      v18 = *(a3 + 56);
      v19 = *(a3 + 9);
      *(a3 + 7) = 0;
      *(a3 + 8) = 0;
      *(a3 + 9) = 0;
      *&v56[15] = *(a3 + 111);
      v52 = a3[5];
      *v56 = a3[6];
      v20 = *(a4 + 6);
      v22 = a4[1];
      v21 = a4[2];
      *a3 = *a4;
      a3[1] = v22;
      a3[2] = v21;
      *(a3 + 6) = v20;
      *(a3 + 56) = *(a4 + 56);
      *(a3 + 9) = *(a4 + 9);
      *(a4 + 7) = 0;
      *(a4 + 8) = 0;
      *(a4 + 9) = 0;
      LODWORD(v20) = *(a4 + 111);
      v23 = a4[6];
      a3[5] = a4[5];
      a3[6] = v23;
      *(a3 + 111) = v20;
      *(a4 + 6) = v72;
      a4[1] = v64;
      a4[2] = v68;
      *a4 = v60;
      v24 = *(a4 + 7);
      if (v24)
      {
        *(a4 + 8) = v24;
        v48 = v18;
        operator delete(v24);
        v18 = v48;
      }

      *(a4 + 56) = v18;
      *(a4 + 9) = v19;
      result = *&v52;
      a4[5] = v52;
      a4[6] = *v56;
      *(a4 + 111) = *&v56[15];
      if (*a3 < *a2 || *a2 >= *a3 && ((v43 = *(a3 + 5), v44 = *(a2 + 5), v43 < v44) || v44 >= v43 && (result = *(a3 + 13), result < *(a2 + 13))))
      {
        v61 = *a2;
        v65 = a2[1];
        v69 = a2[2];
        v73 = *(a2 + 6);
        v25 = *(a2 + 56);
        v26 = *(a2 + 9);
        *(a2 + 7) = 0;
        *(a2 + 8) = 0;
        *(a2 + 9) = 0;
        *&v57[15] = *(a2 + 111);
        v53 = a2[5];
        *v57 = a2[6];
        v27 = *(a3 + 6);
        v29 = a3[1];
        v28 = a3[2];
        *a2 = *a3;
        a2[1] = v29;
        a2[2] = v28;
        *(a2 + 6) = v27;
        *(a2 + 56) = *(a3 + 56);
        *(a2 + 9) = *(a3 + 9);
        *(a3 + 7) = 0;
        *(a3 + 8) = 0;
        *(a3 + 9) = 0;
        LODWORD(v27) = *(a3 + 111);
        v30 = a3[6];
        a2[5] = a3[5];
        a2[6] = v30;
        *(a2 + 111) = v27;
        *(a3 + 6) = v73;
        a3[1] = v65;
        a3[2] = v69;
        *a3 = v61;
        v31 = *(a3 + 7);
        if (v31)
        {
          *(a3 + 8) = v31;
          v49 = v25;
          operator delete(v31);
          v25 = v49;
        }

        *(a3 + 56) = v25;
        *(a3 + 9) = v26;
        result = *&v53;
        a3[5] = v53;
        a3[6] = *v57;
        *(a3 + 111) = *&v57[15];
        if (*a2 < *a1 || *a1 >= *a2 && ((v45 = *(a2 + 5), v46 = *(a1 + 5), v45 < v46) || v46 >= v45 && (result = *(a2 + 13), result < *(a1 + 13))))
        {
          v62 = *a1;
          v66 = a1[1];
          v70 = a1[2];
          v74 = *(a1 + 6);
          v32 = *(a1 + 56);
          v33 = *(a1 + 9);
          *(a1 + 7) = 0;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          *&v58[15] = *(a1 + 111);
          v54 = a1[5];
          *v58 = a1[6];
          v34 = *(a2 + 6);
          v36 = a2[1];
          v35 = a2[2];
          *a1 = *a2;
          a1[1] = v36;
          a1[2] = v35;
          *(a1 + 6) = v34;
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 9) = *(a2 + 9);
          *(a2 + 7) = 0;
          *(a2 + 8) = 0;
          *(a2 + 9) = 0;
          LODWORD(v34) = *(a2 + 111);
          v37 = a2[6];
          a1[5] = a2[5];
          a1[6] = v37;
          *(a1 + 111) = v34;
          *(a2 + 6) = v74;
          a2[1] = v66;
          a2[2] = v70;
          *a2 = v62;
          v38 = *(a2 + 7);
          if (v38)
          {
            *(a2 + 8) = v38;
            v50 = v32;
            operator delete(v38);
            v32 = v50;
          }

          *(a2 + 56) = v32;
          *(a2 + 9) = v33;
          result = *&v54;
          a2[5] = v54;
          a2[6] = *v58;
          *(a2 + 111) = *&v58[15];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*>(uint64_t a1, uint64_t a2)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a2 - 120));
        v4 = 1;
        return v4 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240), (a2 - 120));
        v4 = 1;
        return v4 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240), (a1 + 360), (a2 - 120));
        v4 = 1;
        return v4 & 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      goto LABEL_3;
    }

    if (v3 == 2)
    {
      v5 = (a2 - 120);
      v6 = *(a2 - 120);
      if (v6 < *a1 || *a1 >= v6 && ((v42 = *(a2 - 80), v43 = *(a1 + 40), v42 < v43) || v43 >= v42 && *(a2 - 16) < *(a1 + 104)))
      {
        v54 = *a1;
        v56 = *(a1 + 16);
        v58 = *(a1 + 32);
        v59 = *(a1 + 48);
        v7 = *(a1 + 56);
        v8 = *(a1 + 72);
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *&v52[15] = *(a1 + 111);
        v50 = *(a1 + 80);
        *v52 = *(a1 + 96);
        v9 = *(a2 - 72);
        v11 = *(a2 - 104);
        v10 = *(a2 - 88);
        *a1 = *v5;
        *(a1 + 16) = v11;
        *(a1 + 32) = v10;
        *(a1 + 48) = v9;
        *(a1 + 56) = *(a2 - 64);
        *(a1 + 72) = *(a2 - 48);
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
        *(a2 - 48) = 0;
        v12 = a2 - 40;
        LODWORD(v9) = *(a2 - 9);
        v13 = *(a2 - 24);
        *(a1 + 80) = *(a2 - 40);
        *(a1 + 96) = v13;
        *(a1 + 111) = v9;
        *(a2 - 72) = v59;
        *(a2 - 104) = v56;
        *(a2 - 88) = v58;
        *v5 = v54;
        v14 = *(a2 - 64);
        if (v14)
        {
          *(a2 - 56) = v14;
          v15 = a2;
          v46 = v7;
          operator delete(v14);
          v7 = v46;
          a2 = v15;
        }

        *(a2 - 64) = v7;
        *(a2 - 48) = v8;
        *v12 = v50;
        *(v12 + 16) = *v52;
        *(v12 + 31) = *&v52[15];
        v4 = 1;
        return v4 & 1;
      }

LABEL_3:
      v4 = 1;
      return v4 & 1;
    }
  }

  v16 = (a1 + 240);
  v17 = a2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,0>(a1, (a1 + 120), (a1 + 240));
  v19 = (a1 + 360);
  if (a1 + 360 == v17)
  {
LABEL_40:
    v41 = 1;
    goto LABEL_47;
  }

  v20 = v17;
  v21 = 0;
  v22 = 0;
  v45 = v17;
  while (1)
  {
    v23 = *v19;
    if (*v19 < *v16)
    {
      break;
    }

    if (*v16 >= *&v23)
    {
      v24 = v19[5];
      v38 = *(v16 + 5);
      if (v24 < v38 || v38 >= v24 && *(v19 + 13) < v16[13])
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    v16 = v19;
    v21 += 120;
    v19 += 15;
    if (v19 == v20)
    {
      goto LABEL_40;
    }
  }

  v24 = v19[5];
LABEL_20:
  v25 = 0;
  v55 = *(v19 + 1);
  v57 = *(v19 + 3);
  v27 = v19[6];
  v26 = v19[7];
  v28 = *(v19 + 5);
  v47 = *(v19 + 4);
  v19[7] = 0;
  v19[8] = 0;
  v19[9] = 0;
  v51 = v28;
  v53 = v19[12];
  v49 = *(v19 + 114);
  v48 = *(v19 + 56);
  v29 = v21;
  v30 = *(v19 + 13);
  while (1)
  {
    v31 = a1 + v29;
    v32 = (a1 + v29 + 360);
    v33 = *(a1 + v29 + 256);
    *v32 = *(a1 + v29 + 240);
    v32[1] = v33;
    v32[2] = *(a1 + v29 + 272);
    *(a1 + v29 + 408) = *(a1 + v29 + 288);
    if (v25)
    {
      *(v31 + 424) = v25;
      operator delete(v25);
      *(v31 + 424) = 0;
      *(v31 + 432) = 0;
    }

    *(v31 + 416) = *(v31 + 296);
    *(v31 + 432) = *(v31 + 312);
    *(v31 + 304) = 0;
    *(v31 + 312) = 0;
    *(v31 + 296) = 0;
    LOBYTE(v18) = v31 - 72;
    v34 = *(v31 + 336);
    *(v31 + 440) = *(v31 + 320);
    *(v31 + 456) = v34;
    *(v31 + 471) = *(v31 + 351);
    if (v29 == -240)
    {
      break;
    }

    v18 = a1 + v29;
    v35 = *(a1 + v29 + 120);
    if (*&v23 >= *&v35)
    {
      if (*&v35 < *&v23 || (v36 = *(v18 + 160), v24 >= v36) && (v36 < v24 || v30 >= *(v18 + 224)))
      {
        v37 = a1 + v29 + 240;
        goto LABEL_37;
      }
    }

    v25 = *(v31 + 296);
    v29 -= 120;
  }

  v37 = a1;
LABEL_37:
  v39 = a1 + v29;
  *v37 = v23;
  *(v37 + 8) = v55;
  *(v37 + 24) = v57;
  *(v37 + 40) = v24;
  *(v37 + 48) = v27;
  v40 = *(v39 + 296);
  if (v40)
  {
    *(v37 + 64) = v40;
    operator delete(v40);
    *(v39 + 304) = 0;
    *(v39 + 312) = 0;
  }

  *(v39 + 296) = v26;
  *(v37 + 64) = v47;
  *(v39 + 320) = v51;
  *(v39 + 336) = v53;
  *(v37 + 104) = v30;
  *(v37 + 112) = v48;
  ++v22;
  *(v37 + 114) = v49;
  v20 = v45;
  if (v22 != 8)
  {
    goto LABEL_17;
  }

  v41 = 0;
  LOBYTE(v18) = v19 + 15 == v45;
LABEL_47:
  v4 = v41 | v18;
  return v4 & 1;
}