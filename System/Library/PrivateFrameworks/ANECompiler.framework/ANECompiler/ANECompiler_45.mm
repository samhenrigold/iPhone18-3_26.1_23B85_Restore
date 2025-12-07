void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<operations_research::sat::LiteralValueValue>>,std::vector<operations_research::sat::LiteralValueValue>*,std::vector<operations_research::sat::LiteralValueValue>*,std::vector<operations_research::sat::LiteralValueValue>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CB6BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40CF0;
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      v5 = a1[7];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40CF0;
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      v5 = a1[7];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CB6BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[7] = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23CB6BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(void *result, uint64_t a2)
{
  *a2 = &unk_284F40CF0;
  v2 = *(result + 1);
  v3 = *(result + 3);
  v4 = result[5];
  *(a2 + 48) = 0;
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = result[6];
  v6 = result[7];
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return v2;
}

void sub_23CB6BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 56) = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      v5 = v3;
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    v3 = __p[7];
    v4 = __p[6];
    if (v3 != v2)
    {
      v5 = __p[7];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = __p[6];
    }

    __p[7] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, operations_research::sat::LinearConstraintManager **a2)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (result)
  {
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1);
    if (result)
    {
      operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 24));
      operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 32));
      v4 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3);
      v5 = 0xAAAAAAAB00000000 * ((*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3);
      if (v5)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v4 >= 1)
      {
        v6 = 0;
        v7 = 16;
        do
        {
          v8 = *(a1 + 16);
          v9 = *(v8[19] + 4 * v6);
          v10 = v9;
          if (v9 == -1 || ((*(*(v8[3] + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 & 0x3F ^ 1u)) & 1) == 0)
          {
            v11 = *(a1 + 8);
            v12 = *(v11[19] + 4 * v6);
            if (v12 == -1 || (v10 != -1 ? (v13 = (*(*(v11[3] + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v12)) == 0) : (v13 = 0), !v13 || (v12 != v10 ? (v14 = (*(*(v8[3] + 24) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v10)) == 0) : (v14 = 0), !v14)))
            {
              *(v7 - 16) = *(v11[30] + 8 * v6);
              *(v7 - 8) = -*(v11[33] + 8 * v6);
              *v7 = *(v8[30] + 8 * v6);
              *(v7 + 8) = -*(v8[33] + 8 * v6);
              operator new();
            }
          }

          ++v6;
          v7 += 32;
        }

        while ((v4 & 0x7FFFFFFF) != v6);
      }

      return 1;
    }
  }

  return result;
}

void sub_23CB6C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    if (!v15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,false>(_OWORD *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v240 = (a2 - 136);
  v227 = (a2 - 408);
  v228 = a2 - 17;
  i = a1;
  v246 = a2;
  while (1)
  {
    a1 = i;
    v8 = a2 - i;
    v9 = 0xF0F0F0F0F0F0F0F1 * ((a2 - i) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(i, (i + 136), v240);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(i, (i + 136), (i + 272), v240);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(i, (i + 136), (i + 272), (i + 408), v240);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v96 = (a2 - 136);
        v97 = *(a2 - 17);
        if (v97 < *i || *i >= v97 && ((v207 = *(a2 - 10), v208 = *(i + 56), v207 < v208) || v208 >= v207 && *(a2 - 2) < *(i + 120)))
        {
          v302 = *i;
          v331 = *(i + 64);
          v318 = *(i + 32);
          v326 = *(i + 48);
          v310 = *(i + 16);
          v98 = *(i + 72);
          v99 = *(i + 88);
          *(i + 72) = 0;
          *(i + 80) = 0;
          *(i + 88) = 0;
          v271 = *(i + 96);
          *v279 = *(i + 112);
          *&v279[15] = *(i + 127);
          v101 = *(a2 - 104);
          v100 = *(a2 - 88);
          v102 = *(a2 - 120);
          *(i + 64) = *(a2 - 9);
          *(i + 32) = v101;
          *(i + 48) = v100;
          *(i + 16) = v102;
          *i = *v96;
          *(i + 72) = *(a2 - 4);
          *(i + 88) = *(a2 - 6);
          *(a2 - 7) = 0;
          *(a2 - 6) = 0;
          *(a2 - 8) = 0;
          v103 = *(a2 - 40);
          v104 = *(a2 - 24);
          *(i + 127) = *(a2 - 9);
          *(i + 96) = v103;
          *(i + 112) = v104;
          *v96 = v302;
          *(a2 - 9) = v331;
          *(a2 - 104) = v318;
          *(a2 - 88) = v326;
          *(a2 - 120) = v310;
          v105 = *(a2 - 8);
          if (v105)
          {
            *(a2 - 7) = v105;
            v251 = v98;
            operator delete(v105);
            v98 = v251;
          }

          *(a2 - 4) = v98;
          *(a2 - 6) = v99;
          *(a2 - 9) = *&v279[15];
          *(a2 - 40) = v271;
          *(a2 - 24) = *v279;
        }

        return;
      }
    }

    if (v8 <= 3263)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v131 = (v9 - 2) >> 1;
      v132 = v131;
      while (2)
      {
        v133 = v132;
        v134 = 17 * v132;
        v135 = 0xF0F0F0F0F0F0F0F1 * ((136 * v132) >> 3);
        if (v131 >= v135)
        {
          v136 = 2 * v135;
          v137 = (2 * v135) | 1;
          v138 = a1 + 136 * v137;
          v139 = v136 + 2;
          if (v139 < v9)
          {
            v140 = *(v138 + 17);
            if (*v138 < v140 || v140 >= *v138 && ((v161 = *(v138 + 7), v162 = *(v138 + 24), v161 < v162) || v162 >= v161 && *(v138 + 15) < *(v138 + 32)))
            {
              v138 += 136;
              v137 = v139;
            }
          }

          v141 = a1 + 8 * v134;
          v142 = *v141;
          if (*v138 >= *v141)
          {
            v143 = *(v141 + 7);
            if (v142 >= *v138)
            {
              v160 = *(v138 + 7);
              if (v160 >= v143)
              {
                v144 = *(v141 + 15);
                if (v143 < v160 || *(v138 + 15) >= v144)
                {
                  goto LABEL_190;
                }
              }
            }

            else
            {
              v144 = *(v141 + 15);
LABEL_190:
              v145 = 0;
              v312 = *(v141 + 24);
              v320 = *(v141 + 40);
              v304 = *(v141 + 8);
              v234 = *(v141 + 8);
              v242 = *(v141 + 72);
              v237 = *(v141 + 11);
              *(v141 + 9) = 0;
              *(v141 + 10) = 0;
              *(v141 + 11) = 0;
              v281 = *(v141 + 14);
              v273 = *(v141 + 6);
              v294 = v141[130];
              v290 = *(v141 + 64);
              while (1)
              {
                v146 = v138;
                *v141 = *v138;
                v147 = *(v138 + 1);
                v148 = *(v138 + 2);
                v149 = *(v138 + 3);
                *(v141 + 8) = *(v138 + 8);
                *(v141 + 2) = v148;
                *(v141 + 3) = v149;
                *(v141 + 1) = v147;
                if (v145)
                {
                  *(v141 + 10) = v145;
                  v150 = v143;
                  operator delete(v145);
                  v143 = v150;
                  v131 = (v9 - 2) >> 1;
                  *(v141 + 9) = 0;
                  *(v141 + 10) = 0;
                  *(v141 + 11) = 0;
                }

                *(v141 + 72) = *(v146 + 72);
                *(v141 + 11) = *(v146 + 11);
                *(v146 + 9) = 0;
                *(v146 + 10) = 0;
                *(v146 + 11) = 0;
                v151 = *(v146 + 6);
                v152 = *(v146 + 7);
                *(v141 + 127) = *(v146 + 127);
                *(v141 + 6) = v151;
                *(v141 + 7) = v152;
                if (v131 < v137)
                {
                  break;
                }

                v153 = 2 * v137;
                v137 = (2 * v137) | 1;
                v138 = a1 + 136 * v137;
                v154 = v153 + 2;
                if (v154 < v9)
                {
                  v155 = *(v138 + 17);
                  if (*v138 < v155 || v155 >= *v138 && ((v157 = *(v138 + 7), v158 = *(v138 + 24), v157 < v158) || v158 >= v157 && *(v138 + 15) < *(v138 + 32)))
                  {
                    v138 += 136;
                    v137 = v154;
                  }
                }

                if (*v138 < v142)
                {
                  break;
                }

                if (v142 >= *v138)
                {
                  v156 = *(v138 + 7);
                  if (v156 < v143 || v143 >= v156 && *(v138 + 15) < v144)
                  {
                    break;
                  }
                }

                v145 = *(v146 + 9);
                v141 = v146;
              }

              *v146 = v142;
              *(v146 + 40) = v320;
              *(v146 + 24) = v312;
              *(v146 + 8) = v304;
              *(v146 + 7) = v143;
              *(v146 + 8) = v234;
              v159 = *(v146 + 9);
              if (v159)
              {
                *(v146 + 10) = v159;
                operator delete(v159);
                v131 = (v9 - 2) >> 1;
              }

              *(v146 + 72) = v242;
              *(v146 + 11) = v237;
              *(v146 + 6) = v273;
              *(v146 + 14) = v281;
              *(v146 + 15) = v144;
              *(v146 + 64) = v290;
              v146[130] = v294;
              a2 = v246;
            }
          }
        }

        v132 = v133 - 1;
        if (v133)
        {
          continue;
        }

        break;
      }

      v163 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 3);
      while (2)
      {
        v165 = 0;
        v305 = *a1;
        v253 = *(a1 + 9);
        v332 = *(a1 + 8);
        v321 = a1[2];
        v327 = a1[3];
        v313 = a1[1];
        v243 = *(a1 + 10);
        v238 = *(a1 + 11);
        *(a1 + 10) = 0;
        *(a1 + 11) = 0;
        *(a1 + 9) = 0;
        *&v298[15] = *(a1 + 127);
        v166 = a1;
        v291 = a1[6];
        *v298 = a1[7];
        do
        {
          v170 = v166 + 136 * v165;
          v171 = v170 + 136;
          v172 = 2 * v165;
          v165 = (2 * v165) | 1;
          v173 = v172 + 2;
          if (v173 < v163)
          {
            v174 = *(v170 + 136);
            v175 = *(v170 + 272);
            if (v174 < v175 || v175 >= v174 && ((v180 = *(v170 + 192), v181 = *(v170 + 328), v180 < v181) || v181 >= v180 && *(v170 + 256) < *(v170 + 392)))
            {
              v171 = v170 + 272;
              v165 = v173;
            }
          }

          *v166 = *v171;
          v176 = *(v171 + 16);
          v177 = *(v171 + 32);
          v178 = *(v171 + 48);
          *(v166 + 64) = *(v171 + 64);
          *(v166 + 32) = v177;
          *(v166 + 48) = v178;
          *(v166 + 16) = v176;
          v179 = *(v166 + 72);
          if (v179)
          {
            *(v166 + 80) = v179;
            operator delete(v179);
            *(v166 + 72) = 0;
            *(v166 + 80) = 0;
            *(v166 + 88) = 0;
          }

          v167 = (v171 + 72);
          *(v166 + 72) = *(v171 + 72);
          *(v166 + 88) = *(v171 + 88);
          *(v171 + 72) = 0;
          *(v171 + 80) = 0;
          *(v171 + 88) = 0;
          v168 = *(v171 + 96);
          v169 = *(v171 + 112);
          *(v166 + 127) = *(v171 + 127);
          *(v166 + 96) = v168;
          *(v166 + 112) = v169;
          v166 = v171;
        }

        while (v165 <= ((v163 - 2) >> 1));
        v247 = (a2 - 136);
        if (v171 == (a2 - 136))
        {
          *v171 = v305;
          *(v171 + 64) = v332;
          *(v171 + 32) = v321;
          *(v171 + 48) = v327;
          *(v171 + 16) = v313;
          v205 = *(v171 + 72);
          if (v205)
          {
            *(v171 + 80) = v205;
            operator delete(v205);
          }

          *(v171 + 72) = v253;
          *(v171 + 80) = v243;
          *(v171 + 88) = v238;
          *(v171 + 127) = *&v298[15];
          *(v171 + 112) = *v298;
          *(v171 + 96) = v291;
        }

        else
        {
          *v171 = *(a2 - 136);
          v182 = *(a2 - 120);
          v183 = *(a2 - 104);
          v184 = *(a2 - 88);
          *(v171 + 64) = *(a2 - 9);
          *(v171 + 32) = v183;
          *(v171 + 48) = v184;
          *(v171 + 16) = v182;
          v185 = *(v171 + 72);
          if (v185)
          {
            *(v171 + 80) = v185;
            operator delete(v185);
            *v167 = 0;
            *(v171 + 80) = 0;
            *(v171 + 88) = 0;
          }

          *(v171 + 72) = *(a2 - 4);
          *(v171 + 88) = *(a2 - 6);
          *(a2 - 8) = 0;
          *(a2 - 7) = 0;
          *(a2 - 6) = 0;
          v186 = *(a2 - 40);
          v187 = *(a2 - 24);
          *(v171 + 127) = *(a2 - 9);
          *(v171 + 112) = v187;
          *(v171 + 96) = v186;
          *(a2 - 9) = v332;
          *(a2 - 104) = v321;
          *(a2 - 88) = v327;
          *(a2 - 120) = v313;
          *v247 = v305;
          v188 = *(a2 - 8);
          if (v188)
          {
            *(a2 - 7) = v188;
            operator delete(v188);
          }

          v189 = a2 - 40;
          *(a2 - 8) = v253;
          *(a2 - 7) = v243;
          *(a2 - 6) = v238;
          *(v189 + 31) = *&v298[15];
          *v189 = v291;
          *(v189 + 1) = *v298;
          v190 = v171 + 136 - a1;
          if (v190 >= 137)
          {
            v191 = (-2 - 0xF0F0F0F0F0F0F0FLL * (v190 >> 3)) >> 1;
            v192 = a1 + 136 * v191;
            v193 = *v171;
            if (*v192 >= *v171)
            {
              if (v193 >= *v192)
              {
                v206 = *(v192 + 7);
                v194 = *(v171 + 56);
                if (v206 < v194 || v194 >= v206 && *(v192 + 15) < *(v171 + 120))
                {
                  goto LABEL_242;
                }
              }
            }

            else
            {
              v194 = *(v171 + 56);
LABEL_242:
              v282 = *(v171 + 24);
              v286 = *(v171 + 40);
              v274 = *(v171 + 8);
              v239 = *(v171 + 64);
              v254 = *(v171 + 72);
              v244 = *(v171 + 88);
              *(v171 + 80) = 0;
              *(v171 + 88) = 0;
              *v167 = 0;
              v267 = *(v171 + 112);
              v264 = *(v171 + 96);
              v195 = *(v171 + 120);
              v261 = *(v171 + 130);
              v258 = *(v171 + 128);
              while (1)
              {
                v196 = v192;
                *v171 = *v192;
                v197 = *(v192 + 1);
                v198 = *(v192 + 2);
                v199 = *(v192 + 3);
                *(v171 + 64) = *(v192 + 8);
                *(v171 + 32) = v198;
                *(v171 + 48) = v199;
                *(v171 + 16) = v197;
                v200 = *(v171 + 72);
                if (v200)
                {
                  *(v171 + 80) = v200;
                  operator delete(v200);
                  *(v171 + 72) = 0;
                  *(v171 + 80) = 0;
                  *(v171 + 88) = 0;
                }

                *(v171 + 72) = *(v196 + 72);
                *(v171 + 88) = *(v196 + 88);
                *(v196 + 72) = 0;
                *(v196 + 80) = 0;
                *(v196 + 88) = 0;
                v201 = *(v196 + 96);
                v202 = *(v196 + 112);
                *(v171 + 127) = *(v196 + 127);
                *(v171 + 96) = v201;
                *(v171 + 112) = v202;
                if (!v191)
                {
                  break;
                }

                v191 = (v191 - 1) >> 1;
                v192 = a1 + 136 * v191;
                v171 = v196;
                if (*v192 >= v193)
                {
                  if (v193 < *v192)
                  {
                    break;
                  }

                  v203 = *(v192 + 7);
                  v171 = v196;
                  if (v203 >= v194)
                  {
                    if (v194 < v203)
                    {
                      break;
                    }

                    v171 = v196;
                    if (*(v192 + 15) >= v195)
                    {
                      break;
                    }
                  }
                }
              }

              *v196 = v193;
              *(v196 + 40) = v286;
              *(v196 + 24) = v282;
              *(v196 + 8) = v274;
              *(v196 + 56) = v194;
              *(v196 + 64) = v239;
              v204 = *(v196 + 72);
              if (v204)
              {
                *(v196 + 80) = v204;
                operator delete(v204);
              }

              *(v196 + 72) = v254;
              *(v196 + 88) = v244;
              *(v196 + 96) = v264;
              *(v196 + 112) = v267;
              *(v196 + 120) = v195;
              *(v196 + 128) = v258;
              *(v196 + 130) = v261;
            }
          }
        }

        v164 = v163-- <= 2;
        a2 = v247;
        if (v164)
        {
          return;
        }

        continue;
      }
    }

    v10 = v9 >> 1;
    v11 = i + 136 * v10;
    if (v8 < 0x4401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 136 * v10), a1, v240);
      --a3;
      v20 = *a1;
      if (a4)
      {
        goto LABEL_22;
      }

LABEL_17:
      v21 = *(a1 - 17);
      if (v21 < v20)
      {
        goto LABEL_22;
      }

      v22 = *(a1 + 7);
      if (v20 < v21)
      {
        v24 = *(a1 + 15);
      }

      else
      {
        v23 = *(a1 - 10);
        if (v23 < v22)
        {
          goto LABEL_22;
        }

        v24 = *(a1 + 15);
        if (v22 >= v23 && *(a1 - 2) < v24)
        {
          goto LABEL_22;
        }
      }

      v236 = *(a1 + 72);
      v278 = *(a1 + 24);
      v285 = *(a1 + 40);
      v270 = *(a1 + 8);
      v64 = *(a1 + 8);
      v233 = *(a1 + 11);
      *(a1 + 9) = 0;
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      v263 = a1[6];
      v266 = *(a1 + 14);
      v260 = *(a1 + 130);
      v257 = *(a1 + 64);
      v65 = *v240;
      if (v20 < *v240 || v65 >= v20 && ((v95 = *(a2 - 10), v22 < v95) || v95 >= v22 && v24 < *(a2 - 2)))
      {
        i = a1;
        while (1)
        {
          v67 = *(i + 136);
          i += 136;
          v66 = v67;
          if (v20 < v67)
          {
            break;
          }

          if (v66 >= v20)
          {
            v68 = *(i + 56);
            if (v22 < v68 || v68 >= v22 && v24 < *(i + 120))
            {
              break;
            }
          }
        }
      }

      else
      {
        for (i = a1 + 136; i < a2; i += 136)
        {
          if (v20 < *i)
          {
            break;
          }

          if (*i >= v20)
          {
            v69 = *(i + 56);
            if (v22 < v69 || v69 >= v22 && v24 < *(i + 120))
            {
              break;
            }
          }
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = v240; ; j = (j - 136))
        {
          if (v20 >= v65)
          {
            if (v65 < v20)
            {
              break;
            }

            v72 = *(j + 7);
            if (v22 >= v72 && (v72 < v22 || v24 >= *(j + 15)))
            {
              break;
            }
          }

          v71 = *(j - 17);
          v65 = v71;
        }
      }

      while (i < j)
      {
        v301 = *i;
        v330 = *(i + 64);
        v317 = *(i + 32);
        v325 = *(i + 48);
        v309 = *(i + 16);
        v73 = *(i + 72);
        v74 = *(i + 88);
        *(i + 72) = 0;
        *(i + 80) = 0;
        *(i + 88) = 0;
        v288 = *(i + 96);
        *v297 = *(i + 112);
        *&v297[15] = *(i + 127);
        v76 = j[2];
        v75 = j[3];
        v77 = j[1];
        *(i + 64) = *(j + 8);
        *(i + 32) = v76;
        *(i + 48) = v75;
        *(i + 16) = v77;
        *i = *j;
        *(i + 72) = *(j + 72);
        *(i + 88) = *(j + 11);
        *(j + 9) = 0;
        *(j + 10) = 0;
        *(j + 11) = 0;
        v78 = j[6];
        v79 = j[7];
        *(i + 127) = *(j + 127);
        *(i + 96) = v78;
        *(i + 112) = v79;
        *j = v301;
        *(j + 8) = v330;
        j[2] = v317;
        j[3] = v325;
        j[1] = v309;
        v80 = *(j + 9);
        if (v80)
        {
          *(j + 10) = v80;
          v250 = v73;
          operator delete(v80);
          v73 = v250;
        }

        *(j + 72) = v73;
        *(j + 11) = v74;
        j[6] = v288;
        j[7] = *v297;
        *(j + 127) = *&v297[15];
        v82 = *(i + 136);
        i += 136;
        v81 = v82;
        if (v20 >= v82)
        {
          a2 = v246;
          do
          {
            if (v81 >= v20)
            {
              v87 = *(i + 56);
              if (v22 < v87 || v87 >= v22 && v24 < *(i + 120))
              {
                break;
              }
            }

            v86 = *(i + 136);
            i += 136;
            v81 = v86;
          }

          while (v20 >= v86);
        }

        else
        {
          a2 = v246;
        }

        do
        {
          do
          {
            v84 = *(j - 17);
            j = (j - 136);
            v83 = v84;
          }

          while (v20 < v84);
          if (v83 < v20)
          {
            break;
          }

          v85 = *(j + 7);
        }

        while (v22 < v85 || v85 >= v22 && v24 < *(j + 15));
      }

      if ((i - 136) != a1)
      {
        *a1 = *(i - 136);
        v88 = *(i - 120);
        v89 = *(i - 104);
        v90 = *(i - 88);
        *(a1 + 8) = *(i - 72);
        a1[2] = v89;
        a1[3] = v90;
        a1[1] = v88;
        v91 = *(a1 + 9);
        if (v91)
        {
          *(a1 + 10) = v91;
          operator delete(v91);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
        }

        *(a1 + 72) = *(i - 64);
        *(a1 + 11) = *(i - 48);
        *(i - 64) = 0;
        *(i - 56) = 0;
        *(i - 48) = 0;
        v92 = *(i - 40);
        v93 = *(i - 24);
        *(a1 + 127) = *(i - 9);
        a1[7] = v93;
        a1[6] = v92;
      }

      *(i - 136) = v20;
      *(i - 112) = v278;
      *(i - 96) = v285;
      *(i - 128) = v270;
      *(i - 80) = v22;
      *(i - 72) = v64;
      v94 = *(i - 64);
      if (v94)
      {
        *(i - 56) = v94;
        operator delete(v94);
      }

      a4 = 0;
      *(i - 64) = v236;
      *(i - 48) = v233;
      *(i - 24) = v266;
      *(i - 40) = v263;
      *(i - 16) = v24;
      *(i - 6) = v260;
      *(i - 8) = v257;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 17 * v10, v240);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 136), a1 + 17 * v10 - 17, v228);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1 + 17, a1 + 17 * v10 + 17, v227);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 136 * v10 - 136), a1 + 17 * v10, (a1 + 136 * v10 + 136));
      v299 = *a1;
      v328 = *(a1 + 8);
      v315 = a1[2];
      v323 = a1[3];
      v307 = a1[1];
      v12 = *(a1 + 72);
      v13 = *(a1 + 11);
      *(a1 + 9) = 0;
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      v268 = a1[6];
      *v276 = a1[7];
      *&v276[15] = *(a1 + 127);
      v15 = *(v11 + 32);
      v14 = *(v11 + 48);
      v16 = *(v11 + 16);
      *(a1 + 8) = *(v11 + 64);
      a1[2] = v15;
      a1[3] = v14;
      a1[1] = v16;
      *a1 = *v11;
      *(a1 + 72) = *(v11 + 72);
      *(a1 + 11) = *(v11 + 88);
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 72) = 0;
      v17 = *(v11 + 96);
      v18 = *(v11 + 112);
      *(a1 + 127) = *(v11 + 127);
      a1[6] = v17;
      a1[7] = v18;
      *v11 = v299;
      *(v11 + 64) = v328;
      *(v11 + 32) = v315;
      *(v11 + 48) = v323;
      *(v11 + 16) = v307;
      v19 = *(v11 + 72);
      if (v19)
      {
        *(v11 + 80) = v19;
        v248 = v12;
        operator delete(v19);
        v12 = v248;
      }

      *(v11 + 72) = v12;
      *(v11 + 88) = v13;
      *(v11 + 127) = *&v276[15];
      *(v11 + 96) = v268;
      *(v11 + 112) = *v276;
      --a3;
      v20 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      v25 = 0;
      v232 = *(a1 + 72);
      v26 = *(a1 + 56);
      v277 = *(a1 + 24);
      v284 = *(a1 + 40);
      v269 = *(a1 + 8);
      v231 = *(a1 + 11);
      *(a1 + 9) = 0;
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      v262 = a1[6];
      v265 = *(a1 + 14);
      v259 = *(a1 + 130);
      v256 = *(a1 + 64);
      v230 = v26;
      v27 = v26;
      v28 = *(a1 + 15);
      while (1)
      {
        v29 = a1 + v25;
        v30 = *(a1 + v25 + 136);
        if (v30 >= v20)
        {
          if (v20 < v30)
          {
            break;
          }

          v31 = *(v29 + 24);
          if (v31 >= v26 && (v26 < v31 || *(v29 + 32) >= v28))
          {
            break;
          }
        }

        v25 += 136;
      }

      v235 = a3;
      v32 = a1 + v25 + 136;
      if (v25)
      {
        v33 = v240;
        for (k = *v240; k >= v20; k = v35)
        {
          if (v20 >= k)
          {
            v36 = *(v33 + 7);
            if (v36 < v26 || v26 >= v36 && *(v33 + 15) < v28)
            {
              break;
            }
          }

          v35 = *(v33 - 17);
          v33 = (v33 - 136);
        }
      }

      else
      {
        v33 = a2;
        if (v32 < a2)
        {
          v33 = v240;
          v37 = *v240;
          if (*v240 >= v20)
          {
            v33 = v240;
            do
            {
              if (v20 < v37)
              {
                goto LABEL_69;
              }

              v63 = *(v33 + 7);
              if (v63 < v26)
              {
                break;
              }

              if (v26 < v63)
              {
LABEL_69:
                if (v32 >= v33)
                {
                  break;
                }
              }

              else if (v32 >= v33 || *(v33 + 15) < v28)
              {
                break;
              }

              v62 = *(v33 - 17);
              v33 = (v33 - 136);
              v37 = v62;
            }

            while (v62 >= v20);
          }
        }
      }

      i = v32;
      if (v32 < v33)
      {
        v38 = v33;
        do
        {
          v300 = *i;
          v329 = *(i + 64);
          v316 = *(i + 32);
          v324 = *(i + 48);
          v308 = *(i + 16);
          v39 = *(i + 72);
          v40 = *(i + 88);
          *(i + 72) = 0;
          *(i + 80) = 0;
          *(i + 88) = 0;
          v287 = *(i + 96);
          *v296 = *(i + 112);
          *&v296[15] = *(i + 127);
          v42 = v38[2];
          v41 = v38[3];
          v43 = v38[1];
          *(i + 64) = *(v38 + 8);
          *(i + 32) = v42;
          *(i + 48) = v41;
          *(i + 16) = v43;
          *i = *v38;
          *(i + 72) = *(v38 + 72);
          *(i + 88) = *(v38 + 11);
          *(v38 + 9) = 0;
          *(v38 + 10) = 0;
          *(v38 + 11) = 0;
          v44 = v38[6];
          v45 = v38[7];
          *(i + 127) = *(v38 + 127);
          *(i + 96) = v44;
          *(i + 112) = v45;
          *v38 = v300;
          *(v38 + 8) = v329;
          v38[2] = v316;
          v38[3] = v324;
          v38[1] = v308;
          v46 = *(v38 + 9);
          if (v46)
          {
            *(v38 + 10) = v46;
            v249 = v39;
            operator delete(v46);
            v39 = v249;
          }

          *(v38 + 72) = v39;
          *(v38 + 11) = v40;
          v38[6] = v287;
          v38[7] = *v296;
          *(v38 + 127) = *&v296[15];
          do
          {
            do
            {
              v48 = *(i + 136);
              i += 136;
              v47 = v48;
            }

            while (v48 < v20);
            if (v20 < v47)
            {
              break;
            }

            v49 = *(i + 56);
          }

          while (v49 < v27 || v27 >= v49 && *(i + 120) < v28);
          while (1)
          {
            v51 = *(v38 - 17);
            v38 = (v38 - 136);
            v50 = v51;
            if (v51 < v20)
            {
              break;
            }

            if (v20 >= v50)
            {
              v52 = *(v38 + 7);
              if (v52 < v27 || v27 >= v52 && *(v38 + 15) < v28)
              {
                break;
              }
            }
          }
        }

        while (i < v38);
      }

      a2 = v246;
      if ((i - 136) != a1)
      {
        *a1 = *(i - 136);
        v53 = *(i - 120);
        v54 = *(i - 104);
        v55 = *(i - 88);
        *(a1 + 8) = *(i - 72);
        a1[2] = v54;
        a1[3] = v55;
        a1[1] = v53;
        v56 = *(a1 + 9);
        if (v56)
        {
          *(a1 + 10) = v56;
          operator delete(v56);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
        }

        *(a1 + 72) = *(i - 64);
        *(a1 + 11) = *(i - 48);
        *(i - 64) = 0;
        *(i - 56) = 0;
        *(i - 48) = 0;
        v57 = *(i - 40);
        v58 = *(i - 24);
        *(a1 + 127) = *(i - 9);
        a1[7] = v58;
        a1[6] = v57;
      }

      *(i - 136) = v20;
      *(i - 128) = v269;
      *(i - 112) = v277;
      *(i - 96) = v284;
      *(i - 80) = v230;
      v59 = *(i - 64);
      if (v59)
      {
        *(i - 56) = v59;
        operator delete(v59);
      }

      *(i - 64) = v232;
      *(i - 48) = v231;
      *(i - 24) = v265;
      *(i - 40) = v262;
      *(i - 16) = v28;
      *(i - 6) = v259;
      *(i - 8) = v256;
      v60 = v32 >= v33;
      a3 = v235;
      if (!v60)
      {
        goto LABEL_67;
      }

      v61 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*>(a1, i - 136);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*>(i, v246))
      {
        a2 = (i - 136);
        if (v61)
        {
          return;
        }

        goto LABEL_1;
      }

      if ((v61 & 1) == 0)
      {
LABEL_67:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,false>(a1, (i - 136), v235, a4 & 1);
        a4 = 0;
      }
    }
  }

  v106 = (i + 136);
  v108 = i == a2 || v106 == a2;
  if (a4)
  {
    if (!v108)
    {
      v109 = 0;
      v110 = i;
      do
      {
        v111 = v110;
        v110 = v106;
        v112 = *(v111 + 17);
        if (v112 < *v111 || *v111 >= v112 && ((v127 = *(v111 + 24), v128 = *(v111 + 7), v127 < v128) || v128 >= v127 && *(v111 + 32) < *(v111 + 15)))
        {
          v311 = v111[10];
          v319 = v111[11];
          v303 = v111[9];
          v113 = v111[12];
          v114 = *(v111 + 26);
          v252 = *(v111 + 216);
          *(v111 + 26) = 0;
          *(v111 + 27) = 0;
          *(v111 + 28) = 0;
          v280 = *(v111 + 31);
          v272 = *(v111 + 232);
          v115 = *(v111 + 32);
          v293 = *(v111 + 266);
          v289 = *(v111 + 132);
          v241 = v113;
          v116 = v113;
          for (m = v109; ; m -= 136)
          {
            v118 = a1 + m;
            v119 = *(a1 + m);
            *(v118 + 152) = *(a1 + m + 16);
            v120 = *(a1 + m + 48);
            *(v118 + 168) = *(a1 + m + 32);
            *(v118 + 184) = v120;
            *(v118 + 25) = *(a1 + m + 64);
            *(v118 + 136) = v119;
            v121 = *(a1 + m + 208);
            if (v121)
            {
              *(v118 + 27) = v121;
              operator delete(v121);
              *(v118 + 27) = 0;
              *(v118 + 28) = 0;
            }

            *(v118 + 13) = *(v118 + 72);
            *(v118 + 28) = *(v118 + 11);
            *(v118 + 10) = 0;
            *(v118 + 11) = 0;
            *(v118 + 9) = 0;
            v122 = *(v118 + 7);
            *(v118 + 232) = *(v118 + 6);
            *(v118 + 248) = v122;
            *(v118 + 263) = *(v118 + 127);
            if (!m)
            {
              break;
            }

            v123 = a1 + m;
            v124 = *(a1 + m - 136);
            if (v112 >= v124)
            {
              if (v124 < v112 || (v125 = *(v123 - 10), v116 >= v125) && (v125 < v116 || v115 >= *(v123 - 2)))
              {
                v126 = a1 + m;
                goto LABEL_176;
              }
            }
          }

          v126 = a1;
LABEL_176:
          v129 = a1 + m;
          *v126 = v112;
          *(v126 + 40) = v319;
          *(v126 + 24) = v311;
          *(v126 + 8) = v303;
          *(v126 + 56) = v241;
          v130 = *(v129 + 9);
          if (v130)
          {
            *(v126 + 80) = v130;
            operator delete(v130);
            *(v129 + 10) = 0;
            *(v129 + 11) = 0;
          }

          *(v129 + 9) = v114;
          *(v126 + 80) = v252;
          *(v129 + 14) = v280;
          *(v129 + 6) = v272;
          *(v126 + 120) = v115;
          *(v126 + 128) = v289;
          *(v126 + 130) = v293;
        }

        v106 = (v110 + 136);
        v109 += 136;
      }

      while ((v110 + 136) != v246);
    }
  }

  else if (!v108)
  {
    v209 = i + 232;
    do
    {
      v211 = a1;
      a1 = v106;
      v212 = *(v211 + 136);
      if (v212 < *v211 || *v211 >= v212 && ((v225 = *(v211 + 192), v226 = *(v211 + 56), v225 < v226) || v226 >= v225 && *(v211 + 256) < *(v211 + 120)))
      {
        v314 = *(v211 + 160);
        v322 = *(v211 + 176);
        v306 = *(v211 + 144);
        v213 = *(v211 + 192);
        v255 = *(v211 + 208);
        v214 = *(v211 + 224);
        *(v211 + 208) = 0;
        *(v211 + 216) = 0;
        *(v211 + 224) = 0;
        v283 = *(v211 + 248);
        v275 = *(v211 + 232);
        v215 = *(v211 + 256);
        v295 = *(v211 + 266);
        v292 = *(v211 + 264);
        v245 = v213;
        v216 = v213;
        for (n = v209; ; n -= 136)
        {
          v218 = *(n - 216);
          v219 = *(n - 184);
          *(n - 64) = *(n - 200);
          *(n - 48) = v219;
          *(n - 32) = *(n - 168);
          *(n - 96) = *(n - 232);
          *(n - 80) = v218;
          v220 = *(n - 24);
          if (v220)
          {
            *(n - 16) = v220;
            operator delete(v220);
            *(n - 16) = 0;
            *(n - 8) = 0;
          }

          *(n - 24) = *(n - 160);
          *(n - 8) = *(n - 144);
          *(n - 152) = 0;
          *(n - 144) = 0;
          *(n - 160) = 0;
          v221 = *(n - 120);
          *n = *(n - 136);
          *(n + 16) = v221;
          *(n + 31) = *(n - 105);
          v222 = *(n - 368);
          if (v212 >= v222)
          {
            if (v222 < v212)
            {
              break;
            }

            v223 = *(n - 312);
            if (v216 >= v223 && (v223 < v216 || v215 >= *(n - 248)))
            {
              break;
            }
          }
        }

        *(n - 232) = v212;
        *(n - 224) = v306;
        *(n - 208) = v314;
        *(n - 192) = v322;
        *(n - 176) = v245;
        v224 = *(n - 160);
        if (v224)
        {
          *(n - 152) = v224;
          operator delete(v224);
        }

        v210 = n - 136;
        *(n - 160) = v255;
        *(n - 144) = v214;
        *(v210 + 16) = v283;
        *v210 = v275;
        *(n - 112) = v215;
        *(n - 102) = v295;
        *(n - 104) = v292;
        a2 = v246;
      }

      v106 = (a1 + 136);
      v209 += 136;
    }

    while ((a1 + 136) != a2);
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  if (*a2 >= *a1)
  {
    if (*a1 < v4 || (v53 = a2[7], v54 = *(a1 + 7), v53 >= v54) && (v54 < v53 || (result.n128_u64[0] = a2[15], result.n128_f64[0] >= *(a1 + 15))))
    {
      if (*a3 < v4 || v4 >= *a3 && ((v55 = *(a3 + 7), v56 = a2[7], v55 < v56) || v56 >= v55 && (result.n128_u64[0] = *(a3 + 15), result.n128_f64[0] < *(a2 + 15))))
      {
        v85 = *(a2 + 2);
        v90 = *(a2 + 3);
        v95 = a2[8];
        v75 = *a2;
        v80 = *(a2 + 1);
        v13 = a2 + 9;
        v14 = *(a2 + 9);
        v15 = a2[11];
        a2[9] = 0;
        a2[10] = 0;
        a2[11] = 0;
        *&v71[15] = *(a2 + 127);
        v67 = *(a2 + 6);
        *v71 = *(a2 + 7);
        *a2 = *a3;
        v16 = a3[1];
        v17 = a3[2];
        v18 = a3[3];
        a2[8] = *(a3 + 8);
        *(a2 + 2) = v17;
        *(a2 + 3) = v18;
        *(a2 + 1) = v16;
        *(a2 + 9) = *(a3 + 72);
        a2[11] = *(a3 + 11);
        *(a3 + 72) = 0uLL;
        *(a3 + 11) = 0;
        v19 = a3[6];
        v20 = a3[7];
        *(a2 + 127) = *(a3 + 127);
        *(a2 + 6) = v19;
        *(a2 + 7) = v20;
        a3[2] = v85;
        a3[3] = v90;
        *(a3 + 8) = v95;
        *a3 = v75;
        a3[1] = v80;
        v21 = *(a3 + 9);
        if (v21)
        {
          *(a3 + 10) = v21;
          v22 = a1;
          v23 = a2;
          v64 = v14;
          operator delete(v21);
          v14 = v64;
          a1 = v22;
          a2 = v23;
        }

        *(a3 + 72) = v14;
        *(a3 + 11) = v15;
        result = v67;
        a3[6] = v67;
        a3[7] = *v71;
        *(a3 + 127) = *&v71[15];
        if (*a2 < *a1 || *a1 >= *a2 && ((v59 = a2[7], v60 = *(a1 + 7), v59 < v60) || v60 >= v59 && (result.n128_u64[0] = a2[15], result.n128_f64[0] < *(a1 + 15))))
        {
          v86 = a1[2];
          v91 = a1[3];
          v96 = *(a1 + 8);
          v76 = *a1;
          v81 = a1[1];
          v25 = *(a1 + 72);
          v26 = *(a1 + 11);
          *(a1 + 72) = 0uLL;
          *(a1 + 11) = 0;
          *&v72[15] = *(a1 + 127);
          v68 = a1[6];
          *v72 = a1[7];
          *a1 = *a2;
          v27 = *(a2 + 1);
          v28 = *(a2 + 2);
          v29 = *(a2 + 3);
          *(a1 + 8) = a2[8];
          a1[2] = v28;
          a1[3] = v29;
          a1[1] = v27;
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 11) = a2[11];
          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
          v30 = *(a2 + 6);
          v31 = *(a2 + 7);
          *(a1 + 127) = *(a2 + 127);
          a1[6] = v30;
          a1[7] = v31;
          *(a2 + 2) = v86;
          *(a2 + 3) = v91;
          a2[8] = v96;
          *a2 = v76;
          *(a2 + 1) = v81;
          v32 = a2[9];
          if (v32)
          {
            a2[10] = v32;
            v33 = a2;
            v65 = v25;
            operator delete(v32);
            v25 = v65;
            a2 = v33;
          }

          *(a2 + 9) = v25;
          a2[11] = v26;
          result = v68;
          *(a2 + 6) = v68;
          *(a2 + 7) = *v72;
          *(a2 + 127) = *&v72[15];
        }
      }

      return result;
    }
  }

  if (*a3 < v4 || v4 >= *a3 && ((v57 = *(a3 + 7), v58 = a2[7], v57 < v58) || v58 >= v57 && *(a3 + 15) < *(a2 + 15)))
  {
    v84 = a1[2];
    v89 = a1[3];
    v94 = *(a1 + 8);
    v74 = *a1;
    v79 = a1[1];
    v5 = *(a1 + 72);
    v6 = *(a1 + 11);
    *(a1 + 72) = 0uLL;
    *(a1 + 11) = 0;
    *&v70[15] = *(a1 + 127);
    v66 = a1[6];
    *v70 = a1[7];
    *a1 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *(a1 + 8) = *(a3 + 8);
    a1[2] = v8;
    a1[3] = v9;
    a1[1] = v7;
    *(a1 + 72) = *(a3 + 72);
    *(a1 + 11) = *(a3 + 11);
    *(a3 + 72) = 0uLL;
    *(a3 + 11) = 0;
    v10 = a3[6];
    v11 = a3[7];
    *(a1 + 127) = *(a3 + 127);
    a1[6] = v10;
    a1[7] = v11;
    a3[2] = v84;
    a3[3] = v89;
    *(a3 + 8) = v94;
    *a3 = v74;
    a3[1] = v79;
    v12 = *(a3 + 9);
    if (v12)
    {
      *(a3 + 10) = v12;
      v63 = v5;
      operator delete(v12);
      v5 = v63;
    }

    *(a3 + 72) = v5;
    *(a3 + 11) = v6;
LABEL_22:
    result = v66;
    a3[6] = v66;
    a3[7] = *v70;
    *(a3 + 127) = *&v70[15];
    return result;
  }

  v87 = a1[2];
  v92 = a1[3];
  v34 = *(a1 + 9);
  v97 = *(a1 + 8);
  v77 = *a1;
  v82 = a1[1];
  v35 = *(a1 + 10);
  v36 = *(a1 + 11);
  *(a1 + 72) = 0uLL;
  *(a1 + 11) = 0;
  *a1 = *a2;
  v37 = *(a2 + 1);
  v38 = *(a2 + 3);
  v39 = a2[8];
  a1[2] = *(a2 + 2);
  a1[3] = v38;
  v40 = a1[6];
  v41 = a1[7];
  *&v73[15] = *(a1 + 127);
  *(a1 + 8) = v39;
  a1[1] = v37;
  v42 = a2 + 9;
  v69 = v40;
  *v73 = v41;
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 11) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  v43 = *(a2 + 6);
  v44 = *(a2 + 7);
  *(a1 + 127) = *(a2 + 127);
  a1[6] = v43;
  a1[7] = v44;
  *(a2 + 2) = v87;
  *(a2 + 3) = v92;
  a2[8] = v97;
  *a2 = v77;
  *(a2 + 1) = v82;
  v45 = a2[9];
  if (v45)
  {
    a2[10] = v45;
    v46 = a2;
    operator delete(v45);
    a2 = v46;
  }

  a2[9] = v34;
  a2[10] = v35;
  a2[11] = v36;
  result = v69;
  *(a2 + 6) = v69;
  *(a2 + 7) = *v73;
  *(a2 + 127) = *&v73[15];
  if (*a3 < *a2 || *a2 >= *a3 && ((v61 = *(a3 + 7), v62 = a2[7], v61 < v62) || v62 >= v61 && (result.n128_u64[0] = *(a3 + 15), result.n128_f64[0] < *(a2 + 15))))
  {
    v88 = *(a2 + 2);
    v93 = *(a2 + 3);
    v98 = a2[8];
    v78 = *a2;
    v83 = *(a2 + 1);
    v42[1] = 0;
    v42[2] = 0;
    *v42 = 0;
    *&v70[15] = *(a2 + 127);
    v66 = *(a2 + 6);
    *v70 = *(a2 + 7);
    *a2 = *a3;
    v47 = a3[1];
    v48 = a3[2];
    v49 = a3[3];
    a2[8] = *(a3 + 8);
    *(a2 + 2) = v48;
    *(a2 + 3) = v49;
    *(a2 + 1) = v47;
    *(a2 + 9) = *(a3 + 72);
    a2[11] = *(a3 + 11);
    *(a3 + 9) = 0;
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    v50 = a3[6];
    v51 = a3[7];
    *(a2 + 127) = *(a3 + 127);
    *(a2 + 6) = v50;
    *(a2 + 7) = v51;
    a3[2] = v88;
    a3[3] = v93;
    *(a3 + 8) = v98;
    *a3 = v78;
    a3[1] = v83;
    v52 = *(a3 + 9);
    if (v52)
    {
      *(a3 + 10) = v52;
      operator delete(v52);
    }

    *(a3 + 9) = v34;
    *(a3 + 10) = v35;
    *(a3 + 11) = v36;
    goto LABEL_22;
  }

  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *&result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3).n128_u64[0];
  if (*a4 < *a3 || *a3 >= *a4 && ((v33 = *(a4 + 7), v34 = *(a3 + 7), v33 < v34) || v34 >= v33 && (result = *(a4 + 15), result < *(a3 + 15))))
  {
    v54 = a3[2];
    v57 = a3[3];
    v60 = *(a3 + 8);
    v48 = *a3;
    v51 = a3[1];
    v9 = *(a3 + 72);
    v10 = *(a3 + 11);
    *(a3 + 9) = 0;
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    *&v45[15] = *(a3 + 127);
    v42 = a3[6];
    *v45 = a3[7];
    *a3 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    *(a3 + 8) = *(a4 + 8);
    a3[2] = v12;
    a3[3] = v13;
    a3[1] = v11;
    *(a3 + 72) = *(a4 + 72);
    *(a3 + 11) = *(a4 + 11);
    *(a4 + 9) = 0;
    *(a4 + 10) = 0;
    *(a4 + 11) = 0;
    v14 = a4[6];
    v15 = a4[7];
    *(a3 + 127) = *(a4 + 127);
    a3[6] = v14;
    a3[7] = v15;
    a4[2] = v54;
    a4[3] = v57;
    *(a4 + 8) = v60;
    *a4 = v48;
    a4[1] = v51;
    v16 = *(a4 + 9);
    if (v16)
    {
      *(a4 + 10) = v16;
      v39 = v9;
      operator delete(v16);
      v9 = v39;
    }

    *(a4 + 72) = v9;
    *(a4 + 11) = v10;
    result = *&v42;
    a4[6] = v42;
    a4[7] = *v45;
    *(a4 + 127) = *&v45[15];
    if (*a3 < *a2 || *a2 >= *a3 && ((v35 = *(a3 + 7), v36 = *(a2 + 7), v35 < v36) || v36 >= v35 && (result = *(a3 + 15), result < *(a2 + 15))))
    {
      v55 = a2[2];
      v58 = a2[3];
      v61 = *(a2 + 8);
      v49 = *a2;
      v52 = a2[1];
      v17 = *(a2 + 72);
      v18 = *(a2 + 11);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *&v46[15] = *(a2 + 127);
      v43 = a2[6];
      *v46 = a2[7];
      *a2 = *a3;
      v19 = a3[1];
      v20 = a3[2];
      v21 = a3[3];
      *(a2 + 8) = *(a3 + 8);
      a2[2] = v20;
      a2[3] = v21;
      a2[1] = v19;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 11) = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      v22 = a3[6];
      v23 = a3[7];
      *(a2 + 127) = *(a3 + 127);
      a2[6] = v22;
      a2[7] = v23;
      a3[2] = v55;
      a3[3] = v58;
      *(a3 + 8) = v61;
      *a3 = v49;
      a3[1] = v52;
      v24 = *(a3 + 9);
      if (v24)
      {
        *(a3 + 10) = v24;
        v40 = v17;
        operator delete(v24);
        v17 = v40;
      }

      *(a3 + 72) = v17;
      *(a3 + 11) = v18;
      result = *&v43;
      a3[6] = v43;
      a3[7] = *v46;
      *(a3 + 127) = *&v46[15];
      if (*a2 < *a1 || *a1 >= *a2 && ((v37 = *(a2 + 7), v38 = *(a1 + 56), v37 < v38) || v38 >= v37 && (result = *(a2 + 15), result < *(a1 + 120))))
      {
        v56 = *(a1 + 32);
        v59 = *(a1 + 48);
        v62 = *(a1 + 64);
        v50 = *a1;
        v53 = *(a1 + 16);
        v25 = *(a1 + 72);
        v26 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *&v47[15] = *(a1 + 127);
        v44 = *(a1 + 96);
        *v47 = *(a1 + 112);
        *a1 = *a2;
        v27 = a2[1];
        v28 = a2[2];
        v29 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v28;
        *(a1 + 48) = v29;
        *(a1 + 16) = v27;
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 11);
        *(a2 + 9) = 0;
        *(a2 + 10) = 0;
        *(a2 + 11) = 0;
        v30 = a2[6];
        v31 = a2[7];
        *(a1 + 127) = *(a2 + 127);
        *(a1 + 96) = v30;
        *(a1 + 112) = v31;
        a2[2] = v56;
        a2[3] = v59;
        *(a2 + 8) = v62;
        *a2 = v50;
        a2[1] = v53;
        v32 = *(a2 + 9);
        if (v32)
        {
          *(a2 + 10) = v32;
          v41 = v25;
          operator delete(v32);
          v25 = v41;
        }

        *(a2 + 72) = v25;
        *(a2 + 11) = v26;
        result = *&v44;
        a2[6] = v44;
        a2[7] = *v47;
        *(a2 + 127) = *&v47[15];
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3, a4);
  if (*a5 < *a4 || *a4 >= *a5 && ((v43 = *(a5 + 7), v44 = *(a4 + 7), v43 < v44) || v44 >= v43 && (result = *(a5 + 15), result < *(a4 + 15))))
  {
    v71 = a4[2];
    v75 = a4[3];
    v79 = *(a4 + 8);
    v63 = *a4;
    v67 = a4[1];
    v11 = *(a4 + 72);
    v12 = *(a4 + 11);
    *(a4 + 9) = 0;
    *(a4 + 10) = 0;
    *(a4 + 11) = 0;
    *&v59[15] = *(a4 + 127);
    v55 = a4[6];
    *v59 = a4[7];
    *a4 = *a5;
    v13 = a5[1];
    v14 = a5[2];
    v15 = a5[3];
    *(a4 + 8) = *(a5 + 8);
    a4[2] = v14;
    a4[3] = v15;
    a4[1] = v13;
    *(a4 + 72) = *(a5 + 72);
    *(a4 + 11) = *(a5 + 11);
    *(a5 + 9) = 0;
    *(a5 + 10) = 0;
    *(a5 + 11) = 0;
    v16 = a5[6];
    v17 = a5[7];
    *(a4 + 127) = *(a5 + 127);
    a4[6] = v16;
    a4[7] = v17;
    a5[2] = v71;
    a5[3] = v75;
    *(a5 + 8) = v79;
    *a5 = v63;
    a5[1] = v67;
    v18 = *(a5 + 9);
    if (v18)
    {
      *(a5 + 10) = v18;
      v51 = v11;
      operator delete(v18);
      v11 = v51;
    }

    *(a5 + 72) = v11;
    *(a5 + 11) = v12;
    result = *&v55;
    a5[6] = v55;
    a5[7] = *v59;
    *(a5 + 127) = *&v59[15];
    if (*a4 < *a3 || *a3 >= *a4 && ((v45 = *(a4 + 7), v46 = *(a3 + 7), v45 < v46) || v46 >= v45 && (result = *(a4 + 15), result < *(a3 + 15))))
    {
      v72 = a3[2];
      v76 = a3[3];
      v80 = *(a3 + 8);
      v64 = *a3;
      v68 = a3[1];
      v19 = *(a3 + 72);
      v20 = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      *&v60[15] = *(a3 + 127);
      v56 = a3[6];
      *v60 = a3[7];
      *a3 = *a4;
      v21 = a4[1];
      v22 = a4[2];
      v23 = a4[3];
      *(a3 + 8) = *(a4 + 8);
      a3[2] = v22;
      a3[3] = v23;
      a3[1] = v21;
      *(a3 + 72) = *(a4 + 72);
      *(a3 + 11) = *(a4 + 11);
      *(a4 + 9) = 0;
      *(a4 + 10) = 0;
      *(a4 + 11) = 0;
      v24 = a4[6];
      v25 = a4[7];
      *(a3 + 127) = *(a4 + 127);
      a3[6] = v24;
      a3[7] = v25;
      a4[2] = v72;
      a4[3] = v76;
      *(a4 + 8) = v80;
      *a4 = v64;
      a4[1] = v68;
      v26 = *(a4 + 9);
      if (v26)
      {
        *(a4 + 10) = v26;
        v52 = v19;
        operator delete(v26);
        v19 = v52;
      }

      *(a4 + 72) = v19;
      *(a4 + 11) = v20;
      result = *&v56;
      a4[6] = v56;
      a4[7] = *v60;
      *(a4 + 127) = *&v60[15];
      if (*a3 < *a2 || *a2 >= *a3 && ((v47 = *(a3 + 7), v48 = *(a2 + 7), v47 < v48) || v48 >= v47 && (result = *(a3 + 15), result < *(a2 + 15))))
      {
        v73 = a2[2];
        v77 = a2[3];
        v81 = *(a2 + 8);
        v65 = *a2;
        v69 = a2[1];
        v27 = *(a2 + 72);
        v28 = *(a2 + 11);
        *(a2 + 9) = 0;
        *(a2 + 10) = 0;
        *(a2 + 11) = 0;
        *&v61[15] = *(a2 + 127);
        v57 = a2[6];
        *v61 = a2[7];
        *a2 = *a3;
        v29 = a3[1];
        v30 = a3[2];
        v31 = a3[3];
        *(a2 + 8) = *(a3 + 8);
        a2[2] = v30;
        a2[3] = v31;
        a2[1] = v29;
        *(a2 + 72) = *(a3 + 72);
        *(a2 + 11) = *(a3 + 11);
        *(a3 + 9) = 0;
        *(a3 + 10) = 0;
        *(a3 + 11) = 0;
        v32 = a3[6];
        v33 = a3[7];
        *(a2 + 127) = *(a3 + 127);
        a2[6] = v32;
        a2[7] = v33;
        a3[2] = v73;
        a3[3] = v77;
        *(a3 + 8) = v81;
        *a3 = v65;
        a3[1] = v69;
        v34 = *(a3 + 9);
        if (v34)
        {
          *(a3 + 10) = v34;
          v53 = v27;
          operator delete(v34);
          v27 = v53;
        }

        *(a3 + 72) = v27;
        *(a3 + 11) = v28;
        result = *&v57;
        a3[6] = v57;
        a3[7] = *v61;
        *(a3 + 127) = *&v61[15];
        if (*a2 < *a1 || *a1 >= *a2 && ((v49 = *(a2 + 7), v50 = *(a1 + 7), v49 < v50) || v50 >= v49 && (result = *(a2 + 15), result < *(a1 + 15))))
        {
          v74 = a1[2];
          v78 = a1[3];
          v82 = *(a1 + 8);
          v66 = *a1;
          v70 = a1[1];
          v35 = *(a1 + 72);
          v36 = *(a1 + 11);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
          *&v62[15] = *(a1 + 127);
          v58 = a1[6];
          *v62 = a1[7];
          *a1 = *a2;
          v37 = a2[1];
          v38 = a2[2];
          v39 = a2[3];
          *(a1 + 8) = *(a2 + 8);
          a1[2] = v38;
          a1[3] = v39;
          a1[1] = v37;
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 11) = *(a2 + 11);
          *(a2 + 9) = 0;
          *(a2 + 10) = 0;
          *(a2 + 11) = 0;
          v40 = a2[6];
          v41 = a2[7];
          *(a1 + 127) = *(a2 + 127);
          a1[6] = v40;
          a1[7] = v41;
          a2[2] = v74;
          a2[3] = v78;
          *(a2 + 8) = v82;
          *a2 = v66;
          a2[1] = v70;
          v42 = *(a2 + 9);
          if (v42)
          {
            *(a2 + 10) = v42;
            v54 = v35;
            operator delete(v42);
            v35 = v54;
          }

          *(a2 + 72) = v35;
          *(a2 + 11) = v36;
          result = *&v58;
          a2[6] = v58;
          a2[7] = *v62;
          *(a2 + 127) = *&v62[15];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*>(uint64_t a1, uint64_t a2)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a2 - 136));
        v4 = 1;
        return v4 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272), (a2 - 136));
        v4 = 1;
        return v4 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272), (a1 + 408), (a2 - 136));
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
      v5 = (a2 - 136);
      v6 = *(a2 - 136);
      if (v6 < *a1 || *a1 >= v6 && ((v44 = *(a2 - 80), v45 = *(a1 + 56), v44 < v45) || v45 >= v44 && *(a2 - 16) < *(a1 + 120)))
      {
        v60 = *(a1 + 32);
        v62 = *(a1 + 48);
        v63 = *(a1 + 64);
        v56 = *a1;
        v58 = *(a1 + 16);
        v7 = *(a1 + 72);
        v8 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *&v54[15] = *(a1 + 127);
        v52 = *(a1 + 96);
        *v54 = *(a1 + 112);
        *a1 = *v5;
        v9 = *(a2 - 120);
        v10 = *(a2 - 104);
        v11 = *(a2 - 88);
        *(a1 + 64) = *(a2 - 72);
        *(a1 + 32) = v10;
        *(a1 + 48) = v11;
        *(a1 + 16) = v9;
        *(a1 + 72) = *(a2 - 64);
        *(a1 + 88) = *(a2 - 48);
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
        *(a2 - 48) = 0;
        v12 = a2 - 40;
        v13 = *(a2 - 40);
        v14 = *(a2 - 24);
        *(a1 + 127) = *(a2 - 9);
        *(a1 + 96) = v13;
        *(a1 + 112) = v14;
        *(a2 - 104) = v60;
        *(a2 - 88) = v62;
        *(a2 - 72) = v63;
        *v5 = v56;
        *(a2 - 120) = v58;
        v15 = *(a2 - 64);
        if (v15)
        {
          *(a2 - 56) = v15;
          v16 = a2;
          v48 = v7;
          operator delete(v15);
          v7 = v48;
          a2 = v16;
        }

        *(a2 - 64) = v7;
        *(a2 - 48) = v8;
        *v12 = v52;
        *(v12 + 16) = *v54;
        *(v12 + 31) = *&v54[15];
        v4 = 1;
        return v4 & 1;
      }

LABEL_3:
      v4 = 1;
      return v4 & 1;
    }
  }

  v17 = (a1 + 272);
  v18 = a2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272));
  v20 = (a1 + 408);
  if (a1 + 408 == v18)
  {
LABEL_40:
    v43 = 1;
    goto LABEL_47;
  }

  v21 = v18;
  v22 = 0;
  v23 = 0;
  v47 = v18;
  while (1)
  {
    v24 = *v20;
    if (*v20 < *v17)
    {
      break;
    }

    if (*v17 >= *&v24)
    {
      v25 = v20[7];
      v40 = *(v17 + 7);
      if (v25 < v40 || v40 >= v25 && *(v20 + 15) < v17[15])
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    v17 = v20;
    v22 += 136;
    v20 += 17;
    if (v20 == v21)
    {
      goto LABEL_40;
    }
  }

  v25 = v20[7];
LABEL_20:
  v26 = 0;
  v57 = *(v20 + 1);
  v59 = *(v20 + 3);
  v61 = *(v20 + 5);
  v28 = v20[8];
  v27 = v20[9];
  v29 = *(v20 + 6);
  v49 = *(v20 + 5);
  v20[9] = 0;
  v20[10] = 0;
  v20[11] = 0;
  v53 = v29;
  v55 = v20[14];
  v51 = *(v20 + 130);
  v50 = *(v20 + 64);
  v30 = v22;
  v31 = *(v20 + 15);
  while (1)
  {
    v32 = a1 + v30;
    v33 = (a1 + v30 + 408);
    v34 = *(a1 + v30 + 320);
    v33[2] = *(a1 + v30 + 304);
    v33[3] = v34;
    *(a1 + v30 + 472) = *(a1 + v30 + 336);
    v35 = *(a1 + v30 + 288);
    *v33 = *(a1 + v30 + 272);
    v33[1] = v35;
    if (v26)
    {
      *(v32 + 488) = v26;
      operator delete(v26);
      *(v32 + 488) = 0;
      *(v32 + 496) = 0;
    }

    *(v32 + 480) = *(v32 + 344);
    *(v32 + 496) = *(v32 + 360);
    *(v32 + 352) = 0;
    *(v32 + 360) = 0;
    *(v32 + 344) = 0;
    LOBYTE(v19) = v32 - 8;
    v36 = *(v32 + 384);
    *(v32 + 504) = *(v32 + 368);
    *(v32 + 520) = v36;
    *(v32 + 535) = *(v32 + 399);
    if (v30 == -272)
    {
      break;
    }

    v19 = a1 + v30;
    v37 = *(a1 + v30 + 136);
    if (*&v24 >= *&v37)
    {
      if (*&v37 < *&v24 || (v38 = *(v19 + 192), v25 >= v38) && (v38 < v25 || v31 >= *(v19 + 256)))
      {
        v39 = a1 + v30 + 272;
        goto LABEL_37;
      }
    }

    v26 = *(v32 + 344);
    v30 -= 136;
  }

  v39 = a1;
LABEL_37:
  v41 = a1 + v30;
  *v39 = v24;
  *(v39 + 8) = v57;
  *(v39 + 24) = v59;
  *(v39 + 40) = v61;
  *(v39 + 56) = v25;
  *(v39 + 64) = v28;
  v42 = *(v41 + 344);
  if (v42)
  {
    *(v39 + 80) = v42;
    operator delete(v42);
    *(v41 + 352) = 0;
    *(v41 + 360) = 0;
  }

  *(v41 + 344) = v27;
  *(v39 + 80) = v49;
  *(v41 + 368) = v53;
  *(v41 + 384) = v55;
  *(v39 + 120) = v31;
  *(v39 + 128) = v50;
  ++v23;
  *(v39 + 130) = v51;
  v21 = v47;
  if (v23 != 8)
  {
    goto LABEL_17;
  }

  v43 = 0;
  LOBYTE(v19) = v20 + 17 == v47;
LABEL_47:
  v4 = v43 | v19;
  return v4 & 1;
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::DiffnCtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
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
          v6 = *(v4 - 8);
          if (v6)
          {
            *(v4 - 7) = v6;
            operator delete(v6);
          }

          v4 -= 136;
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

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<operations_research::sat::DiffnCtEvent>,operations_research::sat::DiffnCtEvent*,operations_research::sat::DiffnCtEvent*,operations_research::sat::DiffnCtEvent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v8 = *(v5 + 16);
      v9 = *(v5 + 32);
      v10 = *(v5 + 48);
      *(a4 + 64) = *(v5 + 64);
      *(a4 + 32) = v9;
      *(a4 + 48) = v10;
      *(a4 + 16) = v8;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      v12 = *(v5 + 72);
      v11 = *(v5 + 80);
      if (v11 != v12)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v6 = *(v5 + 96);
      v7 = *(v5 + 112);
      *(a4 + 127) = *(v5 + 127);
      *(a4 + 96) = v6;
      *(a4 + 112) = v7;
      v5 += 136;
      a4 += 136;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CB6F0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 80) = v12;
    operator delete(v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnCtEvent>,operations_research::sat::DiffnCtEvent*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnCtEvent>,operations_research::sat::DiffnCtEvent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 64);
      if (v5)
      {
        *(v3 - 56) = v5;
        operator delete(v5);
      }

      v3 -= 136;
    }
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::DiffnCtEvent>::__emplace_back_slow_path<operations_research::sat::DiffnCtEvent const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v4 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v6;
  v7 = *(a2 + 72);
  *(v5 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v8;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v9 = *(a2 + 80);
  if (v9 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v10;
  *(v5 + 127) = *(a2 + 127);
  v11 = *a1;
  v12 = a1[1];
  v13 = v5 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v5 + *a1 - v12;
    do
    {
      *v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v18 = v14[8];
      *(v15 + 32) = *(v14 + 2);
      *(v15 + 48) = v17;
      *(v15 + 16) = v16;
      *(v15 + 64) = v18;
      *(v15 + 72) = 0;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 72) = *(v14 + 9);
      *(v15 + 88) = v14[11];
      v14[9] = 0;
      v14[10] = 0;
      v14[11] = 0;
      v19 = *(v14 + 6);
      v20 = *(v14 + 7);
      *(v15 + 127) = *(v14 + 127);
      *(v15 + 96) = v19;
      *(v15 + 112) = v20;
      v14 += 17;
      v15 += 136;
    }

    while (v14 != v12);
    do
    {
      v21 = v11[9];
      if (v21)
      {
        v11[10] = v21;
        operator delete(v21);
      }

      v11 += 17;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v5 + 136;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v5 + 136;
}

void sub_23CB6F37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 80) = v6;
    operator delete(v6);
  }

  std::__split_buffer<operations_research::sat::DiffnCtEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::DiffnCtEvent>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 136;
        *(a1 + 16) = v2 - 136;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 136;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,false>(double *a1, double *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v177 = (a2 - 34);
    v178 = (a2 - 17);
    v176 = (a2 - 51);
    v7 = a1;
    v184 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0xF0F0F0F0F0F0F0F1 * (a2 - v7);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 17), v178);
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 17), (a1 + 34), v178);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 17), a1 + 17, (a1 + 51), v178);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) < a1[15])
              {
                v247 = *a1;
                v279 = *(a1 + 8);
                v263 = *(a1 + 2);
                v271 = *(a1 + 3);
                v255 = *(a1 + 1);
                v79 = *(a1 + 9);
                v80 = *(a1 + 11);
                a1[9] = 0.0;
                a1[10] = 0.0;
                a1[11] = 0.0;
                v210 = *(a1 + 6);
                *v218 = *(a1 + 7);
                *&v218[15] = *(a1 + 127);
                v81 = *(a2 - 13);
                v82 = *(a2 - 11);
                v83 = *(a2 - 15);
                a1[8] = *(a2 - 9);
                *(a1 + 2) = v81;
                *(a1 + 3) = v82;
                *(a1 + 1) = v83;
                *a1 = *(a2 - 17);
                *(a1 + 9) = *(a2 - 4);
                a1[11] = *(a2 - 6);
                *(a2 - 7) = 0.0;
                *(a2 - 6) = 0.0;
                *(a2 - 8) = 0.0;
                v84 = *(a2 - 5);
                v85 = *(a2 - 3);
                *(a1 + 127) = *(a2 - 9);
                *(a1 + 6) = v84;
                *(a1 + 7) = v85;
                *(a2 - 17) = v247;
                *(a2 - 15) = v255;
                *(a2 - 9) = v279;
                *(a2 - 11) = v271;
                *(a2 - 13) = v263;
                v86 = *(a2 - 8);
                if (v86)
                {
                  *(a2 - 7) = v86;
                  v189 = v79;
                  operator delete(v86);
                  v79 = v189;
                }

                *(a2 - 4) = v79;
                *(a2 - 6) = v80;
                *(a2 - 9) = *&v218[15];
                *(a2 - 5) = v210;
                *(a2 - 3) = *v218;
              }

              return;
            }
          }

          if (v8 <= 3263)
          {
            v87 = a1 + 17;
            v89 = a1 == a2 || v87 == a2;
            if (a4)
            {
              if (!v89)
              {
                v90 = 0;
                v91 = a1;
                do
                {
                  v92 = v87;
                  if (v91[32] < v91[15])
                  {
                    v248 = *v87;
                    v280 = *(v87 + 8);
                    v264 = *(v87 + 2);
                    v272 = *(v87 + 3);
                    v256 = *(v87 + 1);
                    v93 = *(v91 + 26);
                    v190 = *(v91 + 27);
                    v91[27] = 0.0;
                    v91[28] = 0.0;
                    v91[26] = 0.0;
                    v219 = *(v91 + 31);
                    v211 = *(v91 + 29);
                    v94 = v91[32];
                    v238 = *(v91 + 266);
                    v234 = *(v91 + 132);
                    v95 = v90;
                    while (1)
                    {
                      v96 = v95;
                      v97 = a1 + v95;
                      v98 = *(a1 + v95);
                      *(v97 + 152) = *(a1 + v95 + 16);
                      v99 = *(a1 + v95 + 48);
                      *(v97 + 168) = *(a1 + v95 + 32);
                      *(v97 + 184) = v99;
                      *(v97 + 25) = *(a1 + v95 + 64);
                      *(v97 + 136) = v98;
                      v100 = *(a1 + v95 + 208);
                      if (v100)
                      {
                        *(v97 + 27) = v100;
                        operator delete(v100);
                        *(v97 + 27) = 0;
                        *(v97 + 28) = 0;
                      }

                      *(v97 + 13) = *(v97 + 72);
                      *(v97 + 28) = *(v97 + 11);
                      *(v97 + 10) = 0;
                      *(v97 + 11) = 0;
                      *(v97 + 9) = 0;
                      v101 = *(v97 + 7);
                      *(v97 + 232) = *(v97 + 6);
                      *(v97 + 248) = v101;
                      *(v97 + 263) = *(v97 + 127);
                      if (!v96)
                      {
                        break;
                      }

                      v95 = v96 - 136;
                      if (v94 >= *(a1 + v96 - 16))
                      {
                        v102 = (a1 + v96);
                        goto LABEL_103;
                      }
                    }

                    v102 = a1;
LABEL_103:
                    v103 = a1 + v96;
                    *v102 = v248;
                    *(v102 + 8) = v280;
                    *(v102 + 2) = v264;
                    *(v102 + 3) = v272;
                    *(v102 + 1) = v256;
                    v104 = *(v103 + 9);
                    if (v104)
                    {
                      *(v102 + 10) = v104;
                      operator delete(v104);
                      *(v103 + 10) = 0;
                      *(v103 + 11) = 0;
                    }

                    *(v103 + 9) = v93;
                    *(v102 + 5) = v190;
                    *(v103 + 14) = v219;
                    *(v103 + 6) = v211;
                    v102[15] = v94;
                    *(v102 + 64) = v234;
                    *(v102 + 130) = v238;
                    a2 = v184;
                  }

                  v87 = v92 + 17;
                  v90 += 136;
                  v91 = v92;
                }

                while (v92 + 17 != a2);
              }
            }

            else if (!v89)
            {
              do
              {
                v166 = v87;
                if (a1[32] < a1[15])
                {
                  v251 = *v87;
                  v283 = *(v87 + 8);
                  v267 = *(v87 + 2);
                  v275 = *(v87 + 3);
                  v259 = *(v87 + 1);
                  v194 = *(a1 + 13);
                  v167 = *(a1 + 28);
                  a1[27] = 0.0;
                  a1[28] = 0.0;
                  a1[26] = 0.0;
                  v222 = *(a1 + 31);
                  v214 = *(a1 + 29);
                  v168 = a1[32];
                  v240 = *(a1 + 266);
                  v237 = *(a1 + 132);
                  v169 = v87;
                  do
                  {
                    v172 = *(v169 - 15);
                    v173 = *(v169 - 11);
                    *(v169 + 2) = *(v169 - 13);
                    *(v169 + 3) = v173;
                    v169[8] = *(v169 - 9);
                    *v169 = *(v169 - 17);
                    *(v169 + 1) = v172;
                    v174 = *(v169 + 9);
                    if (v174)
                    {
                      *(v169 + 10) = v174;
                      operator delete(v174);
                      v169[10] = 0.0;
                      v169[11] = 0.0;
                    }

                    *(v169 + 9) = *(v169 - 4);
                    v169[11] = *(v169 - 6);
                    *(v169 - 7) = 0.0;
                    *(v169 - 6) = 0.0;
                    *(v169 - 8) = 0.0;
                    v170 = *(v169 - 3);
                    *(v169 + 6) = *(v169 - 5);
                    *(v169 + 7) = v170;
                    *(v169 + 127) = *(v169 - 9);
                    v171 = *(v169 - 19);
                    v169 -= 17;
                  }

                  while (v168 < v171);
                  *v169 = v251;
                  *(v169 + 8) = v283;
                  *(v169 + 2) = v267;
                  *(v169 + 3) = v275;
                  *(v169 + 1) = v259;
                  v175 = *(v169 + 9);
                  if (v175)
                  {
                    *(v169 + 10) = v175;
                    operator delete(v175);
                  }

                  *(v169 + 9) = v194;
                  *(v169 + 11) = v167;
                  *(v169 + 14) = v222;
                  *(v169 + 6) = v214;
                  v169[15] = v168;
                  *(v169 + 130) = v240;
                  *(v169 + 64) = v237;
                }

                v87 = v166 + 17;
                a1 = v166;
              }

              while (v166 + 17 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v105 = v10 >> 1;
              v106 = v10 >> 1;
              do
              {
                v107 = v106;
                v108 = 17 * v106;
                v109 = 0xF0F0F0F0F0F0F0F1 * ((136 * v106) >> 3);
                if (v105 >= v109)
                {
                  v110 = 2 * v109;
                  v111 = (2 * v109) | 1;
                  v112 = &a1[17 * v111];
                  v113 = v110 + 2;
                  if (v113 < v9 && v112[15] < v112[32])
                  {
                    v112 += 17;
                    v111 = v113;
                  }

                  v114 = &a1[v108];
                  v115 = v114[15];
                  if (v112[15] >= v115)
                  {
                    v249 = *v114;
                    v281 = *(v114 + 8);
                    v265 = *(v114 + 2);
                    v273 = *(v114 + 3);
                    v257 = *(v114 + 1);
                    v191 = *(v114 + 9);
                    v182 = *(v114 + 11);
                    v114[10] = 0.0;
                    v114[11] = 0.0;
                    v114[9] = 0.0;
                    v220 = *(v114 + 14);
                    v212 = *(v114 + 6);
                    v239 = *(v114 + 130);
                    v235 = *(v114 + 64);
                    do
                    {
                      v116 = v114;
                      v114 = v112;
                      *v116 = *v112;
                      v117 = *(v112 + 1);
                      v118 = *(v112 + 2);
                      v119 = *(v112 + 3);
                      v116[8] = v112[8];
                      *(v116 + 2) = v118;
                      *(v116 + 3) = v119;
                      *(v116 + 1) = v117;
                      v120 = *(v116 + 9);
                      if (v120)
                      {
                        *(v116 + 10) = v120;
                        operator delete(v120);
                        v116[9] = 0.0;
                        v116[10] = 0.0;
                        v116[11] = 0.0;
                      }

                      *(v116 + 9) = *(v114 + 9);
                      v116[11] = v114[11];
                      v114[9] = 0.0;
                      v114[10] = 0.0;
                      v114[11] = 0.0;
                      v121 = *(v114 + 6);
                      v122 = *(v114 + 7);
                      *(v116 + 127) = *(v114 + 127);
                      *(v116 + 6) = v121;
                      *(v116 + 7) = v122;
                      if (v105 < v111)
                      {
                        break;
                      }

                      v123 = 2 * v111;
                      v111 = (2 * v111) | 1;
                      v112 = &a1[17 * v111];
                      v124 = v123 + 2;
                      if (v124 < v9 && v112[15] < v112[32])
                      {
                        v112 += 17;
                        v111 = v124;
                      }
                    }

                    while (v112[15] >= v115);
                    *v114 = v249;
                    *(v114 + 8) = v281;
                    *(v114 + 2) = v265;
                    *(v114 + 3) = v273;
                    *(v114 + 1) = v257;
                    v125 = *(v114 + 9);
                    if (v125)
                    {
                      *(v114 + 10) = v125;
                      operator delete(v125);
                    }

                    *(v114 + 9) = v191;
                    *(v114 + 11) = v182;
                    *(v114 + 6) = v212;
                    *(v114 + 14) = v220;
                    v114[15] = v115;
                    *(v114 + 64) = v235;
                    *(v114 + 130) = v239;
                  }
                }

                v106 = v107 - 1;
              }

              while (v107);
              v126 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 3);
              v127 = v184;
              do
              {
                v129 = 0;
                v213 = *a1;
                v231 = *(a1 + 8);
                v225 = *(a1 + 2);
                v228 = *(a1 + 3);
                v221 = *(a1 + 1);
                v185 = *(a1 + 10);
                v192 = *(a1 + 9);
                v183 = *(a1 + 11);
                a1[10] = 0.0;
                a1[11] = 0.0;
                a1[9] = 0.0;
                *&v243[15] = *(a1 + 127);
                *v243 = *(a1 + 7);
                v130 = a1;
                v236 = *(a1 + 6);
                do
                {
                  v134 = &v130[17 * v129];
                  v135 = v134 + 17;
                  if (2 * v129 + 2 >= v126)
                  {
                    v129 = (2 * v129) | 1;
                  }

                  else
                  {
                    v136 = v134[32];
                    v137 = v134[49];
                    v138 = v134 + 34;
                    if (v136 >= v137)
                    {
                      v129 = (2 * v129) | 1;
                    }

                    else
                    {
                      v135 = v138;
                      v129 = 2 * v129 + 2;
                    }
                  }

                  *v130 = *v135;
                  v139 = *(v135 + 1);
                  v140 = *(v135 + 2);
                  v141 = *(v135 + 3);
                  v130[8] = v135[8];
                  *(v130 + 2) = v140;
                  *(v130 + 3) = v141;
                  *(v130 + 1) = v139;
                  v142 = *(v130 + 9);
                  if (v142)
                  {
                    *(v130 + 10) = v142;
                    operator delete(v142);
                    v130[9] = 0.0;
                    v130[10] = 0.0;
                    v130[11] = 0.0;
                  }

                  v131 = v135 + 9;
                  *(v130 + 9) = *(v135 + 9);
                  v130[11] = v135[11];
                  v135[9] = 0.0;
                  v135[10] = 0.0;
                  v135[11] = 0.0;
                  v132 = *(v135 + 6);
                  v133 = *(v135 + 7);
                  *(v130 + 127) = *(v135 + 127);
                  *(v130 + 6) = v132;
                  *(v130 + 7) = v133;
                  v130 = v135;
                }

                while (v129 <= ((v126 - 2) >> 1));
                v143 = (v127 - 136);
                if (v135 == (v127 - 136))
                {
                  *v135 = v213;
                  *(v135 + 8) = v231;
                  *(v135 + 2) = v225;
                  *(v135 + 3) = v228;
                  *(v135 + 1) = v221;
                  v165 = *(v135 + 9);
                  if (v165)
                  {
                    *(v135 + 10) = v165;
                    operator delete(v165);
                  }

                  *(v135 + 9) = v192;
                  *(v135 + 10) = v185;
                  *(v135 + 11) = v183;
                  *(v135 + 127) = *&v243[15];
                  *(v135 + 7) = *v243;
                  *(v135 + 6) = v236;
                }

                else
                {
                  *v135 = *(v127 - 136);
                  v144 = *(v127 - 120);
                  v145 = *(v127 - 104);
                  v146 = *(v127 - 88);
                  v135[8] = *(v127 - 9);
                  *(v135 + 2) = v145;
                  *(v135 + 3) = v146;
                  *(v135 + 1) = v144;
                  v147 = *(v135 + 9);
                  if (v147)
                  {
                    *(v135 + 10) = v147;
                    operator delete(v147);
                    *v131 = 0;
                    v135[10] = 0.0;
                    v135[11] = 0.0;
                  }

                  *(v135 + 9) = *(v127 - 4);
                  v135[11] = *(v127 - 6);
                  *(v127 - 8) = 0;
                  *(v127 - 7) = 0;
                  *(v127 - 6) = 0;
                  v148 = *(v127 - 40);
                  v149 = *(v127 - 24);
                  *(v135 + 127) = *(v127 - 9);
                  *(v135 + 7) = v149;
                  *(v135 + 6) = v148;
                  *(v127 - 9) = v231;
                  *(v127 - 104) = v225;
                  *(v127 - 88) = v228;
                  *(v127 - 120) = v221;
                  *v143 = v213;
                  v150 = *(v127 - 8);
                  if (v150)
                  {
                    *(v127 - 7) = v150;
                    operator delete(v150);
                  }

                  v151 = v127 - 40;
                  *(v127 - 8) = v192;
                  *(v127 - 7) = v185;
                  *(v127 - 6) = v183;
                  *(v151 + 31) = *&v243[15];
                  *v151 = v236;
                  *(v151 + 1) = *v243;
                  v152 = (v135 + 17) - a1;
                  if (v152 >= 137)
                  {
                    v153 = (-2 - 0xF0F0F0F0F0F0F0FLL * (v152 >> 3)) >> 1;
                    v154 = &a1[17 * v153];
                    v155 = v135[15];
                    if (v154[15] < v155)
                    {
                      v250 = *v135;
                      v282 = *(v135 + 8);
                      v266 = *(v135 + 2);
                      v274 = *(v135 + 3);
                      v258 = *(v135 + 1);
                      v193 = *(v135 + 9);
                      v156 = *(v135 + 11);
                      v135[10] = 0.0;
                      v135[11] = 0.0;
                      *v131 = 0;
                      v206 = *(v135 + 14);
                      v203 = *(v135 + 6);
                      v200 = *(v135 + 130);
                      v197 = *(v135 + 64);
                      do
                      {
                        v157 = v154;
                        *v135 = *v154;
                        v158 = *(v154 + 1);
                        v159 = *(v154 + 2);
                        v160 = *(v154 + 3);
                        v135[8] = v154[8];
                        *(v135 + 2) = v159;
                        *(v135 + 3) = v160;
                        *(v135 + 1) = v158;
                        v161 = *(v135 + 9);
                        if (v161)
                        {
                          *(v135 + 10) = v161;
                          operator delete(v161);
                          v135[9] = 0.0;
                          v135[10] = 0.0;
                          v135[11] = 0.0;
                        }

                        *(v135 + 9) = *(v157 + 9);
                        v135[11] = v157[11];
                        v157[9] = 0.0;
                        v157[10] = 0.0;
                        v157[11] = 0.0;
                        v162 = *(v157 + 6);
                        v163 = *(v157 + 7);
                        *(v135 + 127) = *(v157 + 127);
                        *(v135 + 6) = v162;
                        *(v135 + 7) = v163;
                        if (!v153)
                        {
                          break;
                        }

                        v153 = (v153 - 1) >> 1;
                        v154 = &a1[17 * v153];
                        v135 = v157;
                      }

                      while (v154[15] < v155);
                      *v157 = v250;
                      *(v157 + 8) = v282;
                      *(v157 + 2) = v266;
                      *(v157 + 3) = v274;
                      *(v157 + 1) = v258;
                      v164 = *(v157 + 9);
                      if (v164)
                      {
                        *(v157 + 10) = v164;
                        operator delete(v164);
                      }

                      *(v157 + 9) = v193;
                      *(v157 + 11) = v156;
                      *(v157 + 6) = v203;
                      *(v157 + 14) = v206;
                      v157[15] = v155;
                      *(v157 + 64) = v197;
                      *(v157 + 130) = v200;
                    }
                  }
                }

                v128 = v126-- <= 2;
                v127 = v143;
              }

              while (!v128);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = &a1[17 * (v9 >> 1)];
          if (v8 < 0x4401)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(v12, a1, v178);
            --a3;
            if (a4)
            {
              goto LABEL_21;
            }
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, v12, v178);
            v13 = 17 * v11;
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 17), &a1[v13 - 17], v177);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1 + 17, &a1[v13 + 17], v176);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(&a1[v13 - 17], v12, &a1[v13 + 17]);
            v244 = *a1;
            v276 = *(a1 + 8);
            v260 = *(a1 + 2);
            v268 = *(a1 + 3);
            v252 = *(a1 + 1);
            v14 = *(a1 + 9);
            v15 = *(a1 + 11);
            a1[9] = 0.0;
            a1[10] = 0.0;
            a1[11] = 0.0;
            v207 = *(a1 + 6);
            *v215 = *(a1 + 7);
            *&v215[15] = *(a1 + 127);
            v17 = *(v12 + 2);
            v16 = *(v12 + 3);
            v18 = *(v12 + 1);
            a1[8] = v12[8];
            *(a1 + 2) = v17;
            *(a1 + 3) = v16;
            *(a1 + 1) = v18;
            *a1 = *v12;
            *(a1 + 9) = *(v12 + 9);
            a1[11] = v12[11];
            v12[10] = 0.0;
            v12[11] = 0.0;
            v12[9] = 0.0;
            v19 = *(v12 + 6);
            v20 = *(v12 + 7);
            *(a1 + 127) = *(v12 + 127);
            *(a1 + 6) = v19;
            *(a1 + 7) = v20;
            *v12 = v244;
            *(v12 + 8) = v276;
            *(v12 + 2) = v260;
            *(v12 + 3) = v268;
            *(v12 + 1) = v252;
            v21 = *(v12 + 9);
            if (v21)
            {
              *(v12 + 10) = v21;
              v186 = v14;
              operator delete(v21);
              v14 = v186;
            }

            *(v12 + 9) = v14;
            *(v12 + 11) = v15;
            *(v12 + 127) = *&v215[15];
            *(v12 + 6) = v207;
            *(v12 + 7) = *v215;
            --a3;
            if (a4)
            {
LABEL_21:
              v22 = a1[15];
              break;
            }
          }

          v22 = a1[15];
          if (*(a1 - 2) < v22)
          {
            break;
          }

          v208 = *a1;
          v229 = *(a1 + 8);
          v223 = *(a1 + 2);
          v226 = *(a1 + 3);
          v216 = *(a1 + 1);
          v180 = *(a1 + 9);
          v23 = *(a1 + 11);
          a1[9] = 0.0;
          a1[10] = 0.0;
          a1[11] = 0.0;
          v204 = *(a1 + 14);
          v201 = *(a1 + 6);
          v24 = a1[15];
          v195 = *(a1 + 64);
          v198 = *(a1 + 130);
          if (v24 >= *(a2 - 2))
          {
            v56 = a1 + 17;
            do
            {
              v7 = v56;
              if (v56 >= a2)
              {
                break;
              }

              v57 = v56[15];
              v56 += 17;
            }

            while (v24 >= v57);
          }

          else
          {
            v25 = a1;
            do
            {
              v7 = v25 + 17;
              v26 = v25[32];
              v25 += 17;
            }

            while (v24 >= v26);
          }

          v58 = a2;
          if (v7 < a2)
          {
            v59 = a2;
            do
            {
              v58 = v59 - 17;
              v60 = *(v59 - 2);
              v59 -= 17;
            }

            while (v24 < v60);
          }

          while (v7 < v58)
          {
            v246 = *v7;
            v278 = *(v7 + 8);
            v262 = *(v7 + 2);
            v270 = *(v7 + 3);
            v254 = *(v7 + 1);
            v61 = *(v7 + 9);
            v62 = *(v7 + 11);
            v7[9] = 0.0;
            v7[10] = 0.0;
            v7[11] = 0.0;
            *v242 = *(v7 + 7);
            *&v242[15] = *(v7 + 127);
            v233 = *(v7 + 6);
            v64 = *(v58 + 2);
            v63 = *(v58 + 3);
            v65 = *(v58 + 1);
            v7[8] = v58[8];
            *(v7 + 2) = v64;
            *(v7 + 3) = v63;
            *(v7 + 1) = v65;
            *v7 = *v58;
            *(v7 + 9) = *(v58 + 9);
            v7[11] = v58[11];
            v58[9] = 0.0;
            v58[10] = 0.0;
            v58[11] = 0.0;
            v66 = *(v58 + 6);
            v67 = *(v58 + 7);
            *(v7 + 127) = *(v58 + 127);
            *(v7 + 6) = v66;
            *(v7 + 7) = v67;
            *v58 = v246;
            *(v58 + 8) = v278;
            *(v58 + 2) = v262;
            *(v58 + 3) = v270;
            *(v58 + 1) = v254;
            v68 = *(v58 + 9);
            if (v68)
            {
              *(v58 + 10) = v68;
              v188 = v61;
              operator delete(v68);
              v61 = v188;
            }

            *(v58 + 9) = v61;
            *(v58 + 11) = v62;
            *(v58 + 6) = v233;
            *(v58 + 7) = *v242;
            *(v58 + 127) = *&v242[15];
            do
            {
              v69 = v7[32];
              v7 += 17;
            }

            while (v24 >= v69);
            do
            {
              v70 = *(v58 - 2);
              v58 -= 17;
            }

            while (v24 < v70);
          }

          v71 = v7 - 17;
          if (v7 - 17 != a1)
          {
            *a1 = *v71;
            v72 = *(v7 - 15);
            v73 = *(v7 - 13);
            v74 = *(v7 - 11);
            a1[8] = *(v7 - 9);
            *(a1 + 2) = v73;
            *(a1 + 3) = v74;
            *(a1 + 1) = v72;
            v75 = *(a1 + 9);
            if (v75)
            {
              *(a1 + 10) = v75;
              operator delete(v75);
              a1[9] = 0.0;
              a1[10] = 0.0;
              a1[11] = 0.0;
            }

            *(a1 + 9) = *(v7 - 4);
            a1[11] = *(v7 - 6);
            *(v7 - 8) = 0.0;
            *(v7 - 7) = 0.0;
            *(v7 - 6) = 0.0;
            v76 = *(v7 - 5);
            v77 = *(v7 - 3);
            *(a1 + 127) = *(v7 - 9);
            *(a1 + 6) = v76;
            *(a1 + 7) = v77;
          }

          *v71 = v208;
          *(v7 - 9) = v229;
          *(v7 - 13) = v223;
          *(v7 - 11) = v226;
          *(v7 - 15) = v216;
          v78 = *(v7 - 8);
          if (v78)
          {
            *(v7 - 7) = v78;
            operator delete(v78);
          }

          a4 = 0;
          *(v7 - 4) = v180;
          *(v7 - 6) = v23;
          *(v7 - 3) = v204;
          *(v7 - 5) = v201;
          *(v7 - 2) = v24;
          *(v7 - 6) = v198;
          *(v7 - 4) = v195;
        }

        v27 = 0;
        v209 = *a1;
        v230 = *(a1 + 8);
        v224 = *(a1 + 2);
        v227 = *(a1 + 3);
        v217 = *(a1 + 1);
        v181 = *(a1 + 9);
        v28 = *(a1 + 11);
        a1[9] = 0.0;
        a1[10] = 0.0;
        a1[11] = 0.0;
        v205 = *(a1 + 14);
        v202 = *(a1 + 6);
        v199 = *(a1 + 130);
        v196 = *(a1 + 64);
        do
        {
          v29 = a1[v27 + 32];
          v27 += 17;
        }

        while (v29 < v22);
        v30 = &a1[v27];
        v31 = v184;
        if (v27 == 17)
        {
          v34 = v184;
          while (v30 < v34)
          {
            v32 = v34 - 136;
            v35 = *(v34 - 2);
            v34 = (v34 - 136);
            if (v35 < v22)
            {
              goto LABEL_30;
            }
          }

          v32 = v34;
          v7 = v30;
        }

        else
        {
          do
          {
            v32 = v31 - 136;
            v33 = *(v31 - 2);
            v31 = (v31 - 136);
          }

          while (v33 >= v22);
LABEL_30:
          v7 = v30;
          if (v30 < v32)
          {
            v36 = v32;
            do
            {
              v245 = *v7;
              v277 = *(v7 + 8);
              v261 = *(v7 + 2);
              v269 = *(v7 + 3);
              v253 = *(v7 + 1);
              v37 = *(v7 + 9);
              v38 = *(v7 + 11);
              v7[9] = 0.0;
              v7[10] = 0.0;
              v7[11] = 0.0;
              *v241 = *(v7 + 7);
              *&v241[15] = *(v7 + 127);
              v232 = *(v7 + 6);
              v40 = *(v36 + 32);
              v39 = *(v36 + 48);
              v41 = *(v36 + 16);
              v7[8] = *(v36 + 64);
              *(v7 + 2) = v40;
              *(v7 + 3) = v39;
              *(v7 + 1) = v41;
              *v7 = *v36;
              *(v7 + 9) = *(v36 + 72);
              v7[11] = *(v36 + 88);
              *(v36 + 72) = 0;
              *(v36 + 80) = 0;
              *(v36 + 88) = 0;
              v42 = *(v36 + 96);
              v43 = *(v36 + 112);
              *(v7 + 127) = *(v36 + 127);
              *(v7 + 6) = v42;
              *(v7 + 7) = v43;
              *v36 = v245;
              *(v36 + 64) = v277;
              *(v36 + 32) = v261;
              *(v36 + 48) = v269;
              *(v36 + 16) = v253;
              v44 = *(v36 + 72);
              if (v44)
              {
                *(v36 + 80) = v44;
                v187 = v37;
                operator delete(v44);
                v37 = v187;
              }

              *(v36 + 72) = v37;
              *(v36 + 88) = v38;
              *(v36 + 96) = v232;
              *(v36 + 112) = *v241;
              *(v36 + 127) = *&v241[15];
              do
              {
                v45 = v7[32];
                v7 += 17;
              }

              while (v45 < v22);
              do
              {
                v46 = *(v36 - 16);
                v36 -= 136;
              }

              while (v46 >= v22);
            }

            while (v7 < v36);
          }
        }

        v47 = v7 - 17;
        if (v7 - 17 != a1)
        {
          *a1 = *v47;
          v48 = *(v7 - 15);
          v49 = *(v7 - 13);
          v50 = *(v7 - 11);
          a1[8] = *(v7 - 9);
          *(a1 + 2) = v49;
          *(a1 + 3) = v50;
          *(a1 + 1) = v48;
          v51 = *(a1 + 9);
          if (v51)
          {
            *(a1 + 10) = v51;
            operator delete(v51);
            a1[9] = 0.0;
            a1[10] = 0.0;
            a1[11] = 0.0;
          }

          *(a1 + 9) = *(v7 - 4);
          a1[11] = *(v7 - 6);
          *(v7 - 8) = 0.0;
          *(v7 - 7) = 0.0;
          *(v7 - 6) = 0.0;
          v52 = *(v7 - 5);
          v53 = *(v7 - 3);
          *(a1 + 127) = *(v7 - 9);
          *(a1 + 6) = v52;
          *(a1 + 7) = v53;
        }

        *v47 = v209;
        *(v7 - 9) = v230;
        *(v7 - 13) = v224;
        *(v7 - 11) = v227;
        *(v7 - 15) = v217;
        v54 = *(v7 - 8);
        if (v54)
        {
          *(v7 - 7) = v54;
          operator delete(v54);
        }

        *(v7 - 4) = v181;
        *(v7 - 6) = v28;
        *(v7 - 3) = v205;
        *(v7 - 5) = v202;
        *(v7 - 2) = v22;
        *(v7 - 6) = v199;
        *(v7 - 4) = v196;
        a2 = v184;
        if (v30 >= v32)
        {
          break;
        }

LABEL_47:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,false>(a1, (v7 - 17), a3, a4 & 1);
        a4 = 0;
      }

      v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*>(a1, (v7 - 17));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*>(v7, v184))
      {
        break;
      }

      if ((v55 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    a2 = v7 - 17;
    if ((v55 & 1) == 0)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  result.n128_u64[0] = *(a2 + 15);
  v6 = *(a3 + 15);
  if (result.n128_f64[0] >= *(a1 + 15))
  {
    if (v6 < result.n128_f64[0])
    {
      v72 = a2[2];
      v77 = a2[3];
      v82 = *(a2 + 8);
      v62 = *a2;
      v67 = a2[1];
      v15 = a2 + 9;
      v16 = *(a2 + 72);
      v17 = *(a2 + 11);
      *(a2 + 72) = 0uLL;
      *(a2 + 11) = 0;
      *&v58[15] = *(a2 + 127);
      v54 = a2[6];
      *v58 = a2[7];
      *a2 = *a3;
      v18 = a3[1];
      v19 = a3[2];
      v20 = a3[3];
      *(a2 + 8) = *(a3 + 8);
      a2[2] = v19;
      a2[3] = v20;
      a2[1] = v18;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 11) = *(a3 + 11);
      *(a3 + 72) = 0uLL;
      *(a3 + 11) = 0;
      v21 = a3[6];
      v22 = a3[7];
      *(a2 + 127) = *(a3 + 127);
      a2[6] = v21;
      a2[7] = v22;
      a3[2] = v72;
      a3[3] = v77;
      *(a3 + 8) = v82;
      *a3 = v62;
      a3[1] = v67;
      v23 = *(a3 + 9);
      if (v23)
      {
        *(a3 + 10) = v23;
        v24 = a1;
        v51 = v16;
        operator delete(v23);
        v16 = v51;
        a1 = v24;
      }

      *(a3 + 72) = v16;
      *(a3 + 11) = v17;
      result.n128_u64[1] = *(&v54 + 1);
      a3[6] = v54;
      a3[7] = *v58;
      *(a3 + 127) = *&v58[15];
      result.n128_u64[0] = *(a2 + 15);
      if (result.n128_f64[0] < *(a1 + 15))
      {
        v73 = a1[2];
        v78 = a1[3];
        v83 = *(a1 + 8);
        v63 = *a1;
        v68 = a1[1];
        v25 = *(a1 + 72);
        v26 = *(a1 + 11);
        *(a1 + 72) = 0uLL;
        *(a1 + 11) = 0;
        *&v59[15] = *(a1 + 127);
        v55 = a1[6];
        *v59 = a1[7];
        *a1 = *a2;
        v27 = a2[1];
        v28 = a2[2];
        v29 = a2[3];
        *(a1 + 8) = *(a2 + 8);
        a1[2] = v28;
        a1[3] = v29;
        a1[1] = v27;
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 11) = *(a2 + 11);
        *v15 = 0;
        *(a2 + 10) = 0;
        *(a2 + 11) = 0;
        v30 = a2[6];
        v31 = a2[7];
        *(a1 + 127) = *(a2 + 127);
        a1[6] = v30;
        a1[7] = v31;
        a2[2] = v73;
        a2[3] = v78;
        *(a2 + 8) = v83;
        *a2 = v63;
        a2[1] = v68;
        v32 = *(a2 + 9);
        if (v32)
        {
          *(a2 + 10) = v32;
          v52 = v25;
          operator delete(v32);
          v25 = v52;
        }

        *(a2 + 72) = v25;
        *(a2 + 11) = v26;
        result = v55;
        a2[6] = v55;
        a2[7] = *v59;
        *(a2 + 127) = *&v59[15];
      }
    }
  }

  else
  {
    if (v6 < result.n128_f64[0])
    {
      v71 = a1[2];
      v76 = a1[3];
      v81 = *(a1 + 8);
      v61 = *a1;
      v66 = a1[1];
      v7 = *(a1 + 72);
      v8 = *(a1 + 11);
      a1[5] = 0uLL;
      *(a1 + 9) = 0;
      *&v57[15] = *(a1 + 127);
      v53 = a1[6];
      *v57 = a1[7];
      *a1 = *a3;
      v9 = a3[1];
      v10 = a3[2];
      v11 = a3[3];
      *(a1 + 8) = *(a3 + 8);
      a1[2] = v10;
      a1[3] = v11;
      a1[1] = v9;
      *(a1 + 72) = *(a3 + 72);
      *(a1 + 11) = *(a3 + 11);
      *(a3 + 72) = 0uLL;
      *(a3 + 11) = 0;
      v12 = a3[6];
      v13 = a3[7];
      *(a1 + 127) = *(a3 + 127);
      a1[6] = v12;
      a1[7] = v13;
      a3[2] = v71;
      a3[3] = v76;
      *(a3 + 8) = v81;
      *a3 = v61;
      a3[1] = v66;
      v14 = *(a3 + 9);
      if (v14)
      {
        *(a3 + 10) = v14;
        v50 = v7;
        operator delete(v14);
        v7 = v50;
      }

      *(a3 + 72) = v7;
      *(a3 + 11) = v8;
LABEL_20:
      result = v53;
      a3[6] = v53;
      a3[7] = *v57;
      *(a3 + 127) = *&v57[15];
      return result;
    }

    v74 = a1[2];
    v79 = a1[3];
    v33 = *(a1 + 9);
    v84 = *(a1 + 8);
    v64 = *a1;
    v69 = a1[1];
    v34 = *(a1 + 10);
    v35 = *(a1 + 11);
    a1[5] = 0uLL;
    *(a1 + 9) = 0;
    *a1 = *a2;
    v36 = a2[1];
    v37 = a2[3];
    v38 = *(a2 + 8);
    a1[2] = a2[2];
    a1[3] = v37;
    v39 = a1[6];
    v40 = a1[7];
    *&v60[15] = *(a1 + 127);
    *(a1 + 8) = v38;
    a1[1] = v36;
    v56 = v39;
    *v60 = v40;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 11) = *(a2 + 11);
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    v41 = a2[6];
    v42 = a2[7];
    *(a1 + 127) = *(a2 + 127);
    a1[6] = v41;
    a1[7] = v42;
    a2[2] = v74;
    a2[3] = v79;
    *(a2 + 8) = v84;
    *a2 = v64;
    a2[1] = v69;
    v43 = *(a2 + 9);
    if (v43)
    {
      *(a2 + 10) = v43;
      operator delete(v43);
    }

    *(a2 + 9) = v33;
    *(a2 + 10) = v34;
    *(a2 + 11) = v35;
    result.n128_u64[1] = *(&v56 + 1);
    a2[6] = v56;
    a2[7] = *v60;
    *(a2 + 127) = *&v60[15];
    result.n128_u64[0] = *(a3 + 15);
    if (result.n128_f64[0] < *(a2 + 15))
    {
      v75 = a2[2];
      v80 = a2[3];
      v85 = *(a2 + 8);
      v65 = *a2;
      v70 = a2[1];
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *(a2 + 9) = 0;
      *&v57[15] = *(a2 + 127);
      v53 = a2[6];
      *v57 = a2[7];
      *a2 = *a3;
      v44 = a3[1];
      v45 = a3[2];
      v46 = a3[3];
      *(a2 + 8) = *(a3 + 8);
      a2[2] = v45;
      a2[3] = v46;
      a2[1] = v44;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 11) = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      v47 = a3[6];
      v48 = a3[7];
      *(a2 + 127) = *(a3 + 127);
      a2[6] = v47;
      a2[7] = v48;
      a3[2] = v75;
      a3[3] = v80;
      *(a3 + 8) = v85;
      *a3 = v65;
      a3[1] = v70;
      v49 = *(a3 + 9);
      if (v49)
      {
        *(a3 + 10) = v49;
        operator delete(v49);
      }

      *(a3 + 9) = v33;
      *(a3 + 10) = v34;
      *(a3 + 11) = v35;
      goto LABEL_20;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3);
  result.n128_u64[0] = *(a4 + 120);
  if (result.n128_f64[0] < *(a3 + 120))
  {
    v48 = *(a3 + 32);
    v51 = *(a3 + 48);
    v54 = *(a3 + 64);
    v42 = *a3;
    v45 = *(a3 + 16);
    v9 = *(a3 + 72);
    v10 = *(a3 + 88);
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *&v39[15] = *(a3 + 127);
    v36 = *(a3 + 96);
    *v39 = *(a3 + 112);
    *a3 = *a4;
    v11 = *(a4 + 16);
    v12 = *(a4 + 32);
    v13 = *(a4 + 48);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 32) = v12;
    *(a3 + 48) = v13;
    *(a3 + 16) = v11;
    *(a3 + 72) = *(a4 + 72);
    *(a3 + 88) = *(a4 + 88);
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    v14 = *(a4 + 96);
    v15 = *(a4 + 112);
    *(a3 + 127) = *(a4 + 127);
    *(a3 + 96) = v14;
    *(a3 + 112) = v15;
    *(a4 + 32) = v48;
    *(a4 + 48) = v51;
    *(a4 + 64) = v54;
    *a4 = v42;
    *(a4 + 16) = v45;
    v16 = *(a4 + 72);
    if (v16)
    {
      *(a4 + 80) = v16;
      v33 = v9;
      operator delete(v16);
      v9 = v33;
    }

    *(a4 + 72) = v9;
    *(a4 + 88) = v10;
    result.n128_u64[1] = *(&v36 + 1);
    *(a4 + 96) = v36;
    *(a4 + 112) = *v39;
    *(a4 + 127) = *&v39[15];
    result.n128_u64[0] = *(a3 + 120);
    if (result.n128_f64[0] < *(a2 + 120))
    {
      v49 = *(a2 + 32);
      v52 = *(a2 + 48);
      v55 = *(a2 + 64);
      v43 = *a2;
      v46 = *(a2 + 16);
      v17 = *(a2 + 72);
      v18 = *(a2 + 88);
      *(a2 + 72) = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *&v40[15] = *(a2 + 127);
      v37 = *(a2 + 96);
      *v40 = *(a2 + 112);
      *a2 = *a3;
      v19 = *(a3 + 16);
      v20 = *(a3 + 32);
      v21 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 32) = v20;
      *(a2 + 48) = v21;
      *(a2 + 16) = v19;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 88) = *(a3 + 88);
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      v22 = *(a3 + 96);
      v23 = *(a3 + 112);
      *(a2 + 127) = *(a3 + 127);
      *(a2 + 96) = v22;
      *(a2 + 112) = v23;
      *(a3 + 32) = v49;
      *(a3 + 48) = v52;
      *(a3 + 64) = v55;
      *a3 = v43;
      *(a3 + 16) = v46;
      v24 = *(a3 + 72);
      if (v24)
      {
        *(a3 + 80) = v24;
        v34 = v17;
        operator delete(v24);
        v17 = v34;
      }

      *(a3 + 72) = v17;
      *(a3 + 88) = v18;
      result.n128_u64[1] = *(&v37 + 1);
      *(a3 + 96) = v37;
      *(a3 + 112) = *v40;
      *(a3 + 127) = *&v40[15];
      result.n128_u64[0] = *(a2 + 120);
      if (result.n128_f64[0] < *(a1 + 120))
      {
        v50 = *(a1 + 32);
        v53 = *(a1 + 48);
        v56 = *(a1 + 64);
        v44 = *a1;
        v47 = *(a1 + 16);
        v25 = *(a1 + 72);
        v26 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *&v41[15] = *(a1 + 127);
        v38 = *(a1 + 96);
        *v41 = *(a1 + 112);
        *a1 = *a2;
        v27 = *(a2 + 16);
        v28 = *(a2 + 32);
        v29 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 32) = v28;
        *(a1 + 48) = v29;
        *(a1 + 16) = v27;
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        v30 = *(a2 + 96);
        v31 = *(a2 + 112);
        *(a1 + 127) = *(a2 + 127);
        *(a1 + 96) = v30;
        *(a1 + 112) = v31;
        *(a2 + 32) = v50;
        *(a2 + 48) = v53;
        *(a2 + 64) = v56;
        *a2 = v44;
        *(a2 + 16) = v47;
        v32 = *(a2 + 72);
        if (v32)
        {
          *(a2 + 80) = v32;
          v35 = v25;
          operator delete(v32);
          v25 = v35;
        }

        *(a2 + 72) = v25;
        *(a2 + 88) = v26;
        result = v38;
        *(a2 + 96) = v38;
        *(a2 + 112) = *v41;
        *(a2 + 127) = *&v41[15];
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3, a4);
  result.n128_u64[0] = *(a5 + 15);
  if (result.n128_f64[0] < *(a4 + 15))
  {
    v63 = a4[2];
    v67 = a4[3];
    v71 = *(a4 + 8);
    v55 = *a4;
    v59 = a4[1];
    v11 = *(a4 + 72);
    v12 = *(a4 + 11);
    *(a4 + 9) = 0;
    *(a4 + 10) = 0;
    *(a4 + 11) = 0;
    *&v51[15] = *(a4 + 127);
    v47 = a4[6];
    *v51 = a4[7];
    *a4 = *a5;
    v13 = a5[1];
    v14 = a5[2];
    v15 = a5[3];
    *(a4 + 8) = *(a5 + 8);
    a4[2] = v14;
    a4[3] = v15;
    a4[1] = v13;
    *(a4 + 72) = *(a5 + 72);
    *(a4 + 11) = *(a5 + 11);
    *(a5 + 9) = 0;
    *(a5 + 10) = 0;
    *(a5 + 11) = 0;
    v16 = a5[6];
    v17 = a5[7];
    *(a4 + 127) = *(a5 + 127);
    a4[6] = v16;
    a4[7] = v17;
    a5[2] = v63;
    a5[3] = v67;
    *(a5 + 8) = v71;
    *a5 = v55;
    a5[1] = v59;
    v18 = *(a5 + 9);
    if (v18)
    {
      *(a5 + 10) = v18;
      v43 = v11;
      operator delete(v18);
      v11 = v43;
    }

    *(a5 + 72) = v11;
    *(a5 + 11) = v12;
    result.n128_u64[1] = *(&v47 + 1);
    a5[6] = v47;
    a5[7] = *v51;
    *(a5 + 127) = *&v51[15];
    result.n128_u64[0] = *(a4 + 15);
    if (result.n128_f64[0] < *(a3 + 15))
    {
      v64 = a3[2];
      v68 = a3[3];
      v72 = *(a3 + 8);
      v56 = *a3;
      v60 = a3[1];
      v19 = *(a3 + 72);
      v20 = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      *&v52[15] = *(a3 + 127);
      v48 = a3[6];
      *v52 = a3[7];
      *a3 = *a4;
      v21 = a4[1];
      v22 = a4[2];
      v23 = a4[3];
      *(a3 + 8) = *(a4 + 8);
      a3[2] = v22;
      a3[3] = v23;
      a3[1] = v21;
      *(a3 + 72) = *(a4 + 72);
      *(a3 + 11) = *(a4 + 11);
      *(a4 + 9) = 0;
      *(a4 + 10) = 0;
      *(a4 + 11) = 0;
      v24 = a4[6];
      v25 = a4[7];
      *(a3 + 127) = *(a4 + 127);
      a3[6] = v24;
      a3[7] = v25;
      a4[2] = v64;
      a4[3] = v68;
      *(a4 + 8) = v72;
      *a4 = v56;
      a4[1] = v60;
      v26 = *(a4 + 9);
      if (v26)
      {
        *(a4 + 10) = v26;
        v44 = v19;
        operator delete(v26);
        v19 = v44;
      }

      *(a4 + 72) = v19;
      *(a4 + 11) = v20;
      result.n128_u64[1] = *(&v48 + 1);
      a4[6] = v48;
      a4[7] = *v52;
      *(a4 + 127) = *&v52[15];
      result.n128_u64[0] = *(a3 + 15);
      if (result.n128_f64[0] < *(a2 + 15))
      {
        v65 = a2[2];
        v69 = a2[3];
        v73 = *(a2 + 8);
        v57 = *a2;
        v61 = a2[1];
        v27 = *(a2 + 72);
        v28 = *(a2 + 11);
        *(a2 + 9) = 0;
        *(a2 + 10) = 0;
        *(a2 + 11) = 0;
        *&v53[15] = *(a2 + 127);
        v49 = a2[6];
        *v53 = a2[7];
        *a2 = *a3;
        v29 = a3[1];
        v30 = a3[2];
        v31 = a3[3];
        *(a2 + 8) = *(a3 + 8);
        a2[2] = v30;
        a2[3] = v31;
        a2[1] = v29;
        *(a2 + 72) = *(a3 + 72);
        *(a2 + 11) = *(a3 + 11);
        *(a3 + 9) = 0;
        *(a3 + 10) = 0;
        *(a3 + 11) = 0;
        v32 = a3[6];
        v33 = a3[7];
        *(a2 + 127) = *(a3 + 127);
        a2[6] = v32;
        a2[7] = v33;
        a3[2] = v65;
        a3[3] = v69;
        *(a3 + 8) = v73;
        *a3 = v57;
        a3[1] = v61;
        v34 = *(a3 + 9);
        if (v34)
        {
          *(a3 + 10) = v34;
          v45 = v27;
          operator delete(v34);
          v27 = v45;
        }

        *(a3 + 72) = v27;
        *(a3 + 11) = v28;
        result.n128_u64[1] = *(&v49 + 1);
        a3[6] = v49;
        a3[7] = *v53;
        *(a3 + 127) = *&v53[15];
        result.n128_u64[0] = *(a2 + 15);
        if (result.n128_f64[0] < *(a1 + 15))
        {
          v66 = a1[2];
          v70 = a1[3];
          v74 = *(a1 + 8);
          v58 = *a1;
          v62 = a1[1];
          v35 = *(a1 + 72);
          v36 = *(a1 + 11);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
          *&v54[15] = *(a1 + 127);
          v50 = a1[6];
          *v54 = a1[7];
          *a1 = *a2;
          v37 = a2[1];
          v38 = a2[2];
          v39 = a2[3];
          *(a1 + 8) = *(a2 + 8);
          a1[2] = v38;
          a1[3] = v39;
          a1[1] = v37;
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 11) = *(a2 + 11);
          *(a2 + 9) = 0;
          *(a2 + 10) = 0;
          *(a2 + 11) = 0;
          v40 = a2[6];
          v41 = a2[7];
          *(a1 + 127) = *(a2 + 127);
          a1[6] = v40;
          a1[7] = v41;
          a2[2] = v66;
          a2[3] = v70;
          *(a2 + 8) = v74;
          *a2 = v58;
          a2[1] = v62;
          v42 = *(a2 + 9);
          if (v42)
          {
            *(a2 + 10) = v42;
            v46 = v35;
            operator delete(v42);
            v35 = v46;
          }

          *(a2 + 72) = v35;
          *(a2 + 11) = v36;
          result = v50;
          a2[6] = v50;
          a2[7] = *v54;
          *(a2 + 127) = *&v54[15];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*>(uint64_t a1, __int128 *a2)
{
  v4 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a2 - 136));
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 136, a1 + 272, a2 - 136);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272), (a1 + 408), (a2 - 136));
        v5 = 1;
        return v5 & 1;
    }

LABEL_14:
    v15 = (a1 + 272);
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272));
    v17 = (a1 + 408);
    if ((a1 + 408) == a2)
    {
LABEL_29:
      v34 = 1;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = *(v17 + 15);
        if (v20 < v15[15])
        {
          v49 = v17[2];
          v51 = v17[3];
          v21 = *(v17 + 9);
          v53 = *(v17 + 8);
          v45 = *v17;
          v47 = v17[1];
          v22 = v17[6];
          v37 = v17[5];
          *(v17 + 9) = 0;
          *(v17 + 10) = 0;
          *(v17 + 11) = 0;
          v43 = *(v17 + 14);
          v41 = v22;
          v39 = *(v17 + 130);
          v23 = v18;
          v38 = *(v17 + 64);
          while (1)
          {
            v24 = v23;
            v25 = a1 + v23;
            v26 = (a1 + v23 + 408);
            v27 = *(v25 + 320);
            v26[2] = *(v25 + 304);
            v26[3] = v27;
            *(v25 + 472) = *(v25 + 336);
            v28 = *(v25 + 288);
            *v26 = *(v25 + 272);
            v26[1] = v28;
            v29 = *(v25 + 480);
            if (v29)
            {
              *(v25 + 488) = v29;
              operator delete(v29);
              *(v25 + 488) = 0;
              *(v25 + 496) = 0;
            }

            *(v25 + 480) = *(v25 + 344);
            *(v25 + 496) = *(v25 + 360);
            *(v25 + 352) = 0;
            *(v25 + 360) = 0;
            *(v25 + 344) = 0;
            v30 = *(v25 + 384);
            *(v25 + 504) = *(v25 + 368);
            *(v25 + 520) = v30;
            v16 = *(v25 + 399);
            *(v25 + 535) = v16;
            if (v24 == -272)
            {
              break;
            }

            v23 = v24 - 136;
            if (v20 >= *(a1 + v24 + 256))
            {
              v31 = a1 + v23 + 408;
              goto LABEL_26;
            }
          }

          v31 = a1;
LABEL_26:
          v32 = a1 + v24;
          *(v31 + 64) = v53;
          *(v31 + 32) = v49;
          *(v31 + 48) = v51;
          *v31 = v45;
          *(v31 + 16) = v47;
          v33 = *(v32 + 344);
          if (v33)
          {
            *(v31 + 80) = v33;
            operator delete(v33);
            *(v32 + 352) = 0;
            *(v32 + 360) = 0;
          }

          *(v32 + 344) = v21;
          *(v31 + 80) = v37;
          *(v32 + 368) = v41;
          *(v32 + 384) = v43;
          *(v31 + 120) = v20;
          *(v31 + 128) = v38;
          ++v19;
          *(v31 + 130) = v39;
          if (v19 == 8)
          {
            break;
          }
        }

        v15 = v17;
        v18 += 136;
        v17 = (v17 + 136);
        if (v17 == a2)
        {
          goto LABEL_29;
        }
      }

      v34 = 0;
      LOBYTE(v16) = (v17 + 136) == a2;
    }

    v5 = v34 | v16;
    return v5 & 1;
  }

  if (v4 < 2)
  {
LABEL_3:
    v5 = 1;
    return v5 & 1;
  }

  if (v4 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 2) >= *(a1 + 120))
  {
    goto LABEL_3;
  }

  v48 = *(a1 + 32);
  v50 = *(a1 + 48);
  v52 = *(a1 + 64);
  v44 = *a1;
  v46 = *(a1 + 16);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *&v42[15] = *(a1 + 127);
  v40 = *(a1 + 96);
  *v42 = *(a1 + 112);
  *a1 = *(a2 - 136);
  v8 = *(a2 - 120);
  v9 = *(a2 - 104);
  v10 = *(a2 - 88);
  *(a1 + 64) = *(a2 - 9);
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 16) = v8;
  *(a1 + 72) = *(a2 - 4);
  *(a1 + 88) = *(a2 - 6);
  *(a2 - 8) = 0;
  *(a2 - 7) = 0;
  *(a2 - 6) = 0;
  v11 = (a2 - 40);
  v12 = *(a2 - 40);
  v13 = *(a2 - 24);
  *(a1 + 127) = *(a2 - 9);
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  *(a2 - 120) = v46;
  *(a2 - 104) = v48;
  *(a2 - 88) = v50;
  *(a2 - 9) = v52;
  *(a2 - 136) = v44;
  v14 = *(a2 - 8);
  if (v14)
  {
    *(a2 - 7) = v14;
    v36 = v6;
    operator delete(v14);
    v6 = v36;
  }

  *(a2 - 4) = v6;
  *(a2 - 6) = v7;
  *v11 = v40;
  *(a2 - 24) = *v42;
  *(a2 - 9) = *&v42[15];
  v5 = 1;
  return v5 & 1;
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40D70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  if (!operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1) || !operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1))
  {
    return 0;
  }

  v3 = (*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3;
  v4 = -1431655765 * v3;
  if (0xAAAAAAAB00000000 * v3)
  {
    if (((0xAAAAAAAB00000000 * v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    v7 = 16;
    do
    {
      v8 = *(a1 + 16);
      v9 = *(v8[19] + 4 * v5);
      if (v9 == -1 || ((*(*(v8[3] + 24) + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) != 0)
      {
        v10 = *(a1 + 8);
        v11 = *(v8[29] + 8 * v5) * *(v10[29] + 8 * v5);
        *(8 * v5) = v11;
        if (v11)
        {
          *(v7 - 16) = *(v10[30] + 8 * v5);
          *(v7 - 8) = -*(v10[33] + 8 * v5);
          *v7 = *(v8[30] + 8 * v5);
          *(v7 + 8) = -*(v8[33] + 8 * v5);
          operator new();
        }
      }

      ++v5;
      v7 += 32;
    }

    while (v6 != v5);
  }

  return 1;
}

void sub_23CB71A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
    if (!v21)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (!v21)
  {
    goto LABEL_3;
  }

  operator delete(v21);
  if (!v22)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat43CreateNoOverlap2dCompletionTimeCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::string_view,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *)#1}::operator()(uint64_t a1, const void *a2, size_t a3, void *a4, void *a5)
{
  v5 = a3;
  v7 = 0uLL;
  memset(v50, 0, 24);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = v9[1];
  if ((v10 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v33 = a2;
    v13 = *(v8 + 272);
    v14 = *v9;
    v15 = 4 * v10;
    do
    {
      v16 = *v14;
      v17 = a4[29];
      v40[0] = *(a4[30] + 8 * v16);
      v18 = a4[31];
      v40[1] = -*(a4[32] + 8 * v16);
      v40[2] = *(v18 + 8 * v16);
      v40[3] = -*(a4[33] + 8 * v16);
      v19 = *(v17 + 8 * v16);
      v40[4] = v19;
      v41 = 0u;
      v42 = 0u;
      __p = 0u;
      v44 = 0;
      LODWORD(v45) = -1;
      *(&v45 + 1) = 0;
      v46 = 0;
      v48 = 0;
      v49 = 0;
      v20 = a4[13] + 24 * v16;
      v21 = *(v20 + 16);
      v45 = *v20;
      v46 = v21;
      if (v45 == -1)
      {
        v24 = v46;
        if (v46 < 0x8000000000000003)
        {
          v24 = -INFINITY;
        }

        if (v46 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v24 = INFINITY;
        }
      }

      else
      {
        v22 = *(&v45 + 1);
        v23 = -INFINITY;
        if (*(&v45 + 1) < 0x8000000000000003)
        {
          v22 = -INFINITY;
        }

        if (*(&v45 + 1) > 0x7FFFFFFFFFFFFFFDLL)
        {
          v22 = INFINITY;
        }

        if (v46 >= 0x8000000000000003)
        {
          v23 = v46;
        }

        if (v46 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v23 = INFINITY;
        }

        v24 = v23 + v22 * *(*v13 + 8 * v45);
      }

      v47 = v24;
      v25 = a5[29];
      *&v41 = *(a5[30] + 8 * v16);
      *(&v41 + 1) = -*(a5[33] + 8 * v16);
      *&v42 = *(v25 + 8 * v16);
      *(&v42 + 1) = v42 * v19;
      operations_research::sat::ProductDecomposer::TryToDecompose(&v38, *a1, (a4[16] + 24 * v16), (a5[16] + 24 * v16));
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      __p = v38;
      v44 = v39;
      std::vector<operations_research::sat::DiffnCtEvent>::push_back[abi:ne200100](v50, v40);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      ++v14;
      v15 -= 4;
    }

    while (v15);
    v26 = *&v50[0];
    v7 = *(v50 + 8);
    v8 = *(a1 + 8);
    a2 = v33;
    v5 = a3;
  }

  else
  {
    v26 = 0;
  }

  v36 = v26;
  v35 = v7;
  v37 = v7;
  memset(v50, 0, 24);
  operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(a2, v5, &v36, 0, 0, *(a1 + 16), v8);
  if (v26)
  {
    for (i = v35; i != v26; i -= 136)
    {
      v28 = *(i - 8);
      if (v28)
      {
        *(i - 7) = v28;
        operator delete(v28);
      }
    }

    operator delete(v26);
  }

  v29 = *&v50[0];
  if (*&v50[0])
  {
    v30 = *(&v50[0] + 1);
    v31 = *&v50[0];
    if (*(&v50[0] + 1) != *&v50[0])
    {
      do
      {
        v32 = *(v30 - 64);
        if (v32)
        {
          *(v30 - 56) = v32;
          operator delete(v32);
        }

        v30 -= 136;
      }

      while (v30 != v29);
      v31 = *&v50[0];
    }

    *(&v50[0] + 1) = v29;
    operator delete(v31);
  }
}

void sub_23CB71E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100](va);
  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100]((v11 - 120));
  _Unwind_Resume(a1);
}

void sub_23CB71E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100]((v31 - 120));
  _Unwind_Resume(a1);
}

void operations_research::sat::GetOverlappingRectangleComponents(uint64_t result@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a4 && a4 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      v11 = v9 + 1;
      v12 = v9++;
      do
      {
        if (v9 < a4)
        {
          v13 = (a3 + 4 * v9);
          v14 = (a4 & 0x7FFFFFFF) - v9;
          do
          {
            v15 = (result + 32 * *(a3 + 4 * v12));
            v16 = *v13;
            v17 = (result + 32 * v16);
            if (*v15 < v17[1] && *v17 < v15[1] && v15[2] < v17[3] && v17[2] < v15[3])
            {
              v18 = *(a3 + 4 * v9);
              *(a3 + 4 * v9++) = v16;
              *v13 = v18;
            }

            ++v13;
            --v14;
          }

          while (v14);
        }

        ++v12;
      }

      while (v12 < v9);
      if (v9 > v11)
      {
        v19 = v10;
        v20 = a4 - v10;
        if (a4 < v10)
        {
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("pos > size()", a2);
        }

        v21 = v9 - v10;
        v22 = a3 + 4 * v19;
        if (v20 < v21)
        {
          v21 = v20;
        }

        *&v23 = v22;
        *(&v23 + 1) = v21;
        std::vector<absl::lts_20240722::Span<int>>::push_back[abi:ne200100](a5, &v23);
      }
    }

    while (v9 < a4);
  }
}

void sub_23CB7205C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<absl::lts_20240722::Span<int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void operations_research::sat::ConstructOverlappingSets(char a1, __n128 **a2, void **a3, __n128 a4)
{
  v4 = a3;
  v8 = *a3;
  v7 = a3[1];
  if (v7 != *a3)
  {
    v9 = a3[1];
    do
    {
      v11 = *(v9 - 3);
      v9 -= 24;
      v10 = v11;
      if (v11)
      {
        *(v7 - 2) = v10;
        operator delete(v10);
      }

      v7 = v9;
    }

    while (v9 != v8);
  }

  v4[1] = v8;
  if ((a1 & 1) == 0)
  {
    v12 = a2[1];
    v13 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 3));
    if (v12 == *a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,false>(*a2, v12, &v67, v14, 1, a4);
  }

  v67 = -1;
  v68 = vdupq_n_s64(0x7FFFFFFFFFFFFFFEuLL);
  std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a2, &v67);
  v15 = *a2;
  v16 = -1431655765 * ((a2[1] - *a2) >> 3);
  if (v16 < 1)
  {
    return;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v20 = v15->n128_i64[3 * v18 + 1];
    if (v19 > v20)
    {
      goto LABEL_54;
    }

    v21 = v4[1];
    v22 = v4[2];
    v65 = v20;
    v63 = v16;
    if (v21 >= v22)
    {
      v50 = *v4;
      v51 = v21 - *v4;
      v52 = 0xAAAAAAAAAAAAAAABLL * (v51 >> 3) + 1;
      if (v52 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v53 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v50) >> 3);
      if (2 * v53 > v52)
      {
        v52 = 2 * v53;
      }

      if (v53 >= 0x555555555555555)
      {
        v54 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        if (v54 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

LABEL_65:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v55 = v17;
      v56 = (8 * (v51 >> 3));
      v23 = v56 + 3;
      v57 = v56 - v51;
      *v56 = 0;
      v56[1] = 0;
      v56[2] = 0;
      memcpy(v56 - v51, v50, v51);
      *v4 = v57;
      v4[1] = v23;
      v4[2] = 0;
      if (v50)
      {
        operator delete(v50);
      }

      v17 = v55;
      v20 = v65;
      v4[1] = v23;
      v24 = v18 - v55;
      if (v18 <= v55)
      {
LABEL_49:
        v19 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_50;
      }
    }

    else
    {
      v23 = v21 + 24;
      *v21 = 0;
      *(v21 + 1) = 0;
      *(v21 + 2) = 0;
      v4[1] = v21 + 24;
      v24 = v18 - v17;
      if (v18 <= v17)
      {
        goto LABEL_49;
      }
    }

    v25 = 6 * v17;
    v19 = 0x7FFFFFFFFFFFFFFELL;
    v64 = a2;
    do
    {
      while (1)
      {
        v26 = v4[1];
        v27 = *a2;
        v29 = *(v26 - 2);
        v28 = *(v26 - 1);
        if (v29 < v28)
        {
          break;
        }

        v33 = *(v26 - 3);
        v34 = v29 - v33;
        v35 = (v29 - v33) >> 2;
        v36 = v35 + 1;
        if ((v35 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v37 = v4;
        v38 = v28 - v33;
        if (v38 >> 1 > v36)
        {
          v36 = v38 >> 1;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v39 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v36;
        }

        v66 = v17;
        if (v39)
        {
          if (!(v39 >> 62))
          {
            operator new();
          }

          goto LABEL_65;
        }

        v40 = v35;
        v41 = (4 * v35);
        v42 = v27->n128_u32[v25];
        v43 = &v41[-v40];
        *v41 = v42;
        v44 = v41 + 1;
        memcpy(v43, v33, v34);
        *(v26 - 3) = v43;
        *(v26 - 2) = v44;
        *(v26 - 1) = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v4 = v37;
        a2 = v64;
        v20 = v65;
        v17 = v66;
        *(v26 - 2) = v44;
        v30 = *v64;
        v31 = *v64 + v25 * 4;
        v32 = *(v31 + 2);
        if (v32 > v65)
        {
          goto LABEL_17;
        }

LABEL_35:
        v45 = v30 + 24 * v17;
        v46 = (v17 + 1);
        v47 = *(v45 + 2);
        v48 = *v45;
        v49 = *(v31 + 2);
        *v45 = *v31;
        *(v45 + 2) = v49;
        *v31 = v48;
        *(v31 + 2) = v47;
        v17 = v46;
        v25 += 6;
        if (!--v24)
        {
          goto LABEL_36;
        }
      }

      *v29 = v27->n128_u32[v25];
      *(v26 - 2) = v29 + 4;
      v30 = *a2;
      v31 = *a2 + v25 * 4;
      v32 = *(v31 + 2);
      if (v32 <= v20)
      {
        goto LABEL_35;
      }

LABEL_17:
      if (v32 < v19)
      {
        v19 = v32;
      }

      v25 += 6;
      --v24;
    }

    while (v24);
LABEL_36:
    v23 = v4[1];
LABEL_50:
    v58 = *(v23 - 3);
    v59 = v23 - 3;
    v16 = v63;
    if (*(v23 - 2) - v58 == 4)
    {
      if (v58)
      {
        *(v23 - 2) = v58;
        v60 = v17;
        operator delete(v58);
        v20 = v65;
        v17 = v60;
      }

      v4[1] = v59;
    }

LABEL_54:
    v15 = *a2;
    if (v18 + 1 > v16)
    {
      v61 = v18 + 1;
    }

    else
    {
      v61 = v16;
    }

    v62 = v61 - 1;
    do
    {
      if (v62 == v18)
      {
        return;
      }

      if (v15[1].n128_u64[3 * v18] < v19)
      {
        v19 = v15[1].n128_i64[3 * v18];
      }

      ++v18;
    }

    while (v15->n128_u64[3 * v18 + 1] == v20);
  }

  while (v18 < v16);
}

void operations_research::sat::GetOverlappingIntervalComponents(int **a1, char **a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = a2[1];
    do
    {
      v8 = *(v6 - 3);
      v6 -= 24;
      v7 = v8;
      if (v8)
      {
        *(v4 - 2) = v7;
        operator delete(v7);
      }

      v4 = v6;
    }

    while (v6 != v5);
  }

  a2[1] = v5;
  v9 = a1[1];
  v10 = *a1;
  if (*a1 != v9)
  {
    if ((v9 - v10) == 24)
    {
      operator new();
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,false>(v10, v9, &v11, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)), 1);
    operator new();
  }
}

void operations_research::sat::AppendPairwiseRestrictions(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v6 = 0;
    LODWORD(v7) = 1;
    v8 = 2;
    do
    {
      v9 = v6;
      v6 = v7;
      v10 = v7;
      if (a2 > v7)
      {
        v11 = result + 72 * v9;
        v12 = v8;
        v7 = v7;
        do
        {
          v7 = v12++;
        }

        while (a2 > v7);
      }

      LODWORD(v7) = v10 + 1;
      ++v8;
    }

    while (a2 > v10 + 1);
  }
}

void operations_research::sat::anonymous namespace::AppendPairwiseRestriction(uint64_t result, int *a2, uint64_t a3)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v6 = *(result + 16);
  v5 = *(result + 24);
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  v9 = *(result + 48);
  v10 = *(result + 56);
  v11 = (v5 <= v3) | (2 * (v4 <= v6)) | (4 * (v10 <= v7)) | (8 * (v8 <= v9));
  if ((v11 & (v11 - 1)) == 0)
  {
    if (v11 <= 1)
    {
      if (!v11)
      {
        v16 = *a2;
        LODWORD(v18) = *result;
        HIDWORD(v18) = v16;
        v19 = 0;
        std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](a3, &v18);
        return;
      }

      if (v11 == 1 && (v5 > *(a2 + 1) || v3 < *(result + 32)))
      {
        v12 = *a2;
        LODWORD(v18) = *result;
        HIDWORD(v18) = v12;
        v13 = 3;
        goto LABEL_22;
      }
    }

    else if (v11 == 2)
    {
      if (v4 > *(result + 8) || v6 < *(a2 + 4))
      {
        v14 = *a2;
        LODWORD(v18) = *result;
        HIDWORD(v18) = v14;
        v13 = 4;
        goto LABEL_22;
      }
    }

    else
    {
      if (v11 != 4)
      {
        if (v11 != 8 || v8 <= *(result + 40) && v9 >= *(a2 + 8))
        {
          return;
        }

        v17 = *a2;
        LODWORD(v18) = *result;
        HIDWORD(v18) = v17;
        v13 = 2;
LABEL_22:
        v19 = v13;
        std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](a3, &v18);
        return;
      }

      if (v10 > *(a2 + 5) || v7 < *(result + 64))
      {
        v15 = *a2;
        LODWORD(v18) = *result;
        HIDWORD(v18) = v15;
        v13 = 1;
        goto LABEL_22;
      }
    }
  }
}

void operations_research::sat::AppendPairwiseRestrictions(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 && a4)
  {
    v10 = 0;
    for (i = 0; i < a2; v10 = ++i)
    {
      v12 = 0;
      v13 = result + 72 * v10;
      v14 = 1;
      do
      {
        v12 = v14++;
      }

      while (a4 > v12);
    }
  }
}

uint64_t operations_research::sat::CapacityProfile::Clear(uint64_t this)
{
  *(this + 8) = *this;
  *(this + 24) = 0;
  return this;
}

void operations_research::sat::CapacityProfile::AddRectangle(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    v15 = v5;
    v16 = v6;
    v8 = *(result + 24);
    v11 = a2;
    v12.i64[0] = a4;
    v12.i64[1] = a5;
    v13 = 0;
    v14 = v8;
    std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](result, &v11);
    v10 = *(result + 24);
    v11 = a3;
    v12 = vdupq_n_s64(0x8000000000000002);
    v13 = 1;
    v14 = v10;
    std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](result, &v11);
    ++*(result + 24);
  }
}

void std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t operations_research::sat::CapacityProfile::GetBoundingArea(operations_research::sat::CapacityProfile *this, __n128 a2)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = 126 - 2 * __clz((v4 - v3) >> 5);
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,false>(v3, v4, &v93, v6, 1, a2);
  operations_research::IntegerPriorityQueue<operations_research::sat::CapacityProfile::QueueElement,std::less<operations_research::sat::CapacityProfile::QueueElement>>::IntegerPriorityQueue(&v93, *(this + 6));
  operations_research::IntegerPriorityQueue<operations_research::sat::CapacityProfile::QueueElement,std::less<operations_research::sat::CapacityProfile::QueueElement>>::IntegerPriorityQueue(&v88, *(this + 6));
  v10 = *this;
  v9 = *(this + 1);
  if (v9 != *this)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0x8000000000000002;
    while (1)
    {
      v17 = *(v10 + 32 * v11);
      v18 = v12;
      while (v18 < (v9 - v10) >> 5)
      {
        v21 = v10 + 32 * v18;
        if (*v21 != v17)
        {
          break;
        }

        v22 = *(v21 + 24);
        if (v22 != 1)
        {
          if (!v22)
          {
            v23 = *(v21 + 28);
            v24 = -*(v21 + 8);
            v25 = v93 + 1;
            v93 = v25;
            if (v25 >= 2)
            {
              while (1)
              {
                v26 = v25 >> 1;
                v27 = (v94 + 16 * (v25 >> 1));
                v28 = v27[1];
                if (v28 >= v24)
                {
                  break;
                }

                v29 = *v27;
                v30 = v94 + 16 * v25;
                *v30 = v29;
                v30[1] = v28;
                *(v96 + v29) = v25;
                v31 = v25 > 3;
                v25 >>= 1;
                if (!v31)
                {
                  goto LABEL_34;
                }
              }
            }

            v26 = v25;
LABEL_34:
            v7 = v7 & 0xFFFFFFFF00000000 | v23;
            v48 = (v94 + 16 * v26);
            *v48 = v7;
            v48[1] = v24;
            *(v96 + v23) = v26;
            v49 = *(v21 + 28);
            v50 = *(v21 + 16);
            v51 = v88 + 1;
            v88 = v51;
            if (v51 >= 2)
            {
              while (1)
              {
                LODWORD(v19) = v51 >> 1;
                v52 = (v89 + 16 * (v51 >> 1));
                v53 = v52[1];
                if (v53 >= v50)
                {
                  break;
                }

                v54 = *v52;
                v55 = v89 + 16 * v51;
                *v55 = v54;
                v55[1] = v53;
                *(__p + v54) = v51;
                v31 = v51 > 3;
                v51 >>= 1;
                if (!v31)
                {
                  goto LABEL_39;
                }
              }
            }

            LODWORD(v19) = v51;
LABEL_39:
            v8 = v8 & 0xFFFFFFFF00000000 | v49;
            v20 = (v89 + 16 * v19);
            *v20 = v8;
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        v32 = *(v21 + 28);
        v33 = *(v96 + v32);
        *(v96 + v32) = 0;
        v34 = v93;
        v35 = --v93;
        if (v33 != v34)
        {
          v36 = v94;
          v37 = *(v94 + v34);
          v38 = v33;
          v39 = *(v94 + 2 * v34 + 1);
          if (v39 >= *(v94 + 2 * v33 + 1))
          {
            if (v33 >= 2)
            {
              while (1)
              {
                v40 = v33 >> 1;
                v36 = v94;
                v56 = (v94 + 16 * v40);
                v57 = v56[1];
                if (v57 >= v39)
                {
                  break;
                }

                v58 = *v56;
                v59 = v94 + 16 * v33;
                *v59 = v58;
                v59[1] = v57;
                *(v96 + v58) = v33;
                v31 = v33 > 3;
                v33 = v33 >> 1;
                if (!v31)
                {
                  v36 = v94;
                  v38 = v40;
                  goto LABEL_46;
                }
              }

              v38 = v33;
            }

            LODWORD(v40) = v33;
LABEL_46:
            v60 = &v36[16 * v38];
          }

          else
          {
            LODWORD(v40) = 2 * v33;
            v41 = 2 * v33;
            if (2 * v33 < v35)
            {
              do
              {
                v40 = v41 | 1;
                v36 = v94;
                v44 = v94 + 16 * v41;
                v45 = *(v44 + 1);
                v46 = v94 + 16 * v40;
                v47 = *(v46 + 1);
                if (v45 < v47)
                {
                  if (v39 >= v47)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  if (v39 >= v45)
                  {
                    goto LABEL_50;
                  }

                  v46 = v94 + 16 * v41;
                  v47 = *(v44 + 1);
                  LODWORD(v40) = v41;
                }

                v42 = *v46;
                v43 = v94 + 16 * v33;
                *v43 = *v46;
                v43[1] = v47;
                *(v96 + v42) = v33;
                v41 = 2 * v40;
                v33 = v40;
              }

              while (2 * v40 < v35);
              v36 = v94;
              v33 = v40;
              LODWORD(v40) = 2 * v40;
              if (v41 <= v35)
              {
                goto LABEL_48;
              }

LABEL_50:
              LODWORD(v40) = v33;
              v60 = &v36[16 * v33];
            }

            else
            {
              if (v40 > v35)
              {
                goto LABEL_50;
              }

LABEL_48:
              v61 = &v36[16 * v40];
              v62 = *(v61 + 1);
              if (v39 >= v62)
              {
                goto LABEL_50;
              }

              v63 = *v61;
              v64 = &v36[16 * v33];
              *v64 = *v61;
              *(v64 + 1) = v62;
              *(v96 + v63) = v33;
              v60 = v94 + 16 * v40;
            }
          }

          *v60 = v37;
          *(v96 + v37) = v40;
        }

        v65 = *(v21 + 28);
        v66 = *(__p + v65);
        *(__p + v65) = 0;
        v67 = v88;
        v68 = --v88;
        if (v66 != v67)
        {
          v69 = v66;
          v70 = v89;
          v71 = (v89 + 16 * v67);
          v49 = *v71;
          v50 = v71[1];
          if (v50 >= *(v89 + 2 * v66 + 1))
          {
            if (v66 >= 2)
            {
              while (1)
              {
                v19 = v66 >> 1;
                v70 = v89;
                v79 = (v89 + 16 * v19);
                v80 = v79[1];
                if (v80 >= v50)
                {
                  break;
                }

                v81 = *v79;
                v82 = v89 + 16 * v66;
                *v82 = v81;
                v82[1] = v80;
                *(__p + v81) = v66;
                v31 = v66 > 3;
                v66 = v66 >> 1;
                if (!v31)
                {
                  v70 = v89;
                  v69 = v19;
                  goto LABEL_68;
                }
              }

              v69 = v66;
            }

            LODWORD(v19) = v66;
LABEL_68:
            v20 = &v70[16 * v69];
          }

          else
          {
            LODWORD(v19) = 2 * v66;
            v72 = 2 * v66;
            if (2 * v66 < v68)
            {
              do
              {
                v19 = v72 | 1;
                v70 = v89;
                v75 = v89 + 16 * v72;
                v76 = *(v75 + 1);
                v77 = v89 + 16 * v19;
                v78 = *(v77 + 1);
                if (v76 < v78)
                {
                  if (v50 >= v78)
                  {
                    goto LABEL_11;
                  }
                }

                else
                {
                  if (v50 >= v76)
                  {
                    goto LABEL_11;
                  }

                  v77 = v89 + 16 * v72;
                  v78 = *(v75 + 1);
                  LODWORD(v19) = v72;
                }

                v73 = *v77;
                v74 = v89 + 16 * v66;
                *v74 = *v77;
                v74[1] = v78;
                *(__p + v73) = v66;
                v72 = 2 * v19;
                v66 = v19;
              }

              while (2 * v19 < v68);
              v70 = v89;
              v66 = v19;
              LODWORD(v19) = 2 * v19;
              if (v72 <= v68)
              {
                goto LABEL_70;
              }

LABEL_11:
              LODWORD(v19) = v66;
              v20 = &v70[16 * v66];
            }

            else
            {
              if (v19 > v68)
              {
                goto LABEL_11;
              }

LABEL_70:
              v83 = &v70[16 * v19];
              v84 = *(v83 + 1);
              if (v50 >= v84)
              {
                goto LABEL_11;
              }

              v85 = *v83;
              v86 = &v70[16 * v66];
              *v86 = v85;
              *(v86 + 1) = v84;
              *(__p + v85) = v66;
              v20 = (v89 + 16 * v19);
            }
          }

          *v20 = v49;
LABEL_13:
          v20[1] = v50;
          *(__p + v49) = v19;
        }

LABEL_14:
        v18 = ++v12;
        v10 = *this;
        v9 = *(this + 1);
      }

      if (v88)
      {
        v16 = *(v94 + 3) + *(v89 + 3);
      }

      else
      {
        v16 = 0;
      }

      v13 += (v17 - v15) * v14;
      v11 = v12;
      v15 = v17;
      v14 = v16;
      if (v12 >= ((v9 - v10) >> 5))
      {
        goto LABEL_73;
      }
    }
  }

  v13 = 0;
LABEL_73:
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  return v13;
}

void sub_23CB7352C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::ProbingRectangle::ProbingRectangle(uint64_t a1, void *a2)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 160) = xmmword_23CE306D0;
  *(a1 + 192) = xmmword_23CE306D0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  v2 = a2[1];
  if (*a2 != v2)
  {
    if (!((0xB6DB6DB6DB6DB6DCLL * ((v2 - *a2) >> 3)) >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CB73D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  if (*(v9 + 192) >= 2uLL)
  {
    operator delete((*(v9 + 208) - (*(v9 + 200) & 1) - 8));
    if (*(v9 + 160) < 2uLL)
    {
LABEL_3:
      v11 = *(v9 + 72);
      if (!v11)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(v9 + 160) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(v9 + 176) - (*(v9 + 168) & 1) - 8));
  v11 = *(v9 + 72);
  if (!v11)
  {
LABEL_4:
    v12 = *v10;
    if (!*v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(v9 + 80) = v11;
  operator delete(v11);
  v12 = *v10;
  if (!*v10)
  {
LABEL_5:
    v13 = *(v9 + 24);
    v14 = a1;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v9 + 56) = v12;
  operator delete(v12);
  v13 = *(v9 + 24);
  v14 = a1;
  if (!v13)
  {
LABEL_6:
    v15 = *v9;
    if (!*v9)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v9 + 32) = v13;
  operator delete(v13);
  v15 = *v9;
  if (!*v9)
  {
LABEL_7:
    _Unwind_Resume(v14);
  }

LABEL_13:
  *(v9 + 8) = v15;
  operator delete(v15);
  _Unwind_Resume(v14);
}

void std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void std::vector<operations_research::sat::ProbingRectangle::PointsForCoordinate>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t operations_research::sat::ProbingRectangle::Reset(int64x2_t *this)
{
  v4 = this[10].u64[0];
  v2 = &this[10];
  v3 = v4;
  v5 = -1431655765 * ((*(v2 - 13) - *(v2 - 14)) >> 3);
  *(v2 - 5) = v5 - 1;
  *(v2 - 28) = 0;
  v6 = -1431655765 * ((*(v2 - 10) - *(v2 - 11)) >> 3);
  *(v2 - 8) = v6 - 1;
  *(v2 - 1) = v5 - 2;
  *(v2 - 12) = 0x100000001;
  *(v2 - 4) = v6 - 2;
  *(v2 - 6) = *(v2 - 7);
  if (v4 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(v2, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v3 < 0x80, 1u);
    v7 = &this[12];
    v8 = this[12].u64[0];
    if (v8 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    this[10].i64[1] = 0;
    v7 = &this[12];
    v8 = this[12].u64[0];
    if (v8 > 1)
    {
LABEL_3:
      absl::lts_20240722::container_internal::ClearBackingArray(v7, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v8 < 0x80, 1u);
      goto LABEL_6;
    }
  }

  this[12].i64[1] = 0;
LABEL_6:
  this[18] = 0u;
  this[19] = 0u;
  this[16] = 0u;
  this[17] = 0u;
  this[14] = 0u;
  this[15] = 0u;
  operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)1>(this);
  operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)2>(this);
  operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)3>(this);

  return operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)0>(this);
}

uint64_t operations_research::sat::ProbingRectangle::CacheShrinkDeltaEnergy(uint64_t this, uint64_t a2)
{
  v2 = *(this + 48);
  v4 = *(this + 128);
  v3 = *(this + 132);
  v5 = *(v2 + 24 * v3);
  v6 = *(v2 + 24 * *(this + 140));
  v7 = *(this + 72);
  v8 = *(v7 + 24 * *(this + 136));
  v9 = *(v7 + 24 * v4);
  if (a2)
  {
    v10 = *(this + 152);
    if (v4 <= v10)
    {
      *(this + 304) = 0;
      *(this + 288) = 0;
      return this;
    }

    v11 = *(v7 + 24 * v10);
    v12 = *(v7 + 24 * *(this + 144));
    v76 = v11 - v8;
    v75 = v9 - v12;
    v13 = (this + 256);
    v14 = (this + 272);
    v73 = (this + 304);
    v74 = (this + 288);
    v15 = v6;
    v16 = v5;
  }

  else
  {
    v17 = *(this + 156);
    if (v17 <= v3)
    {
      *(this + 296) = 0;
      *(this + 312) = 0;
      return this;
    }

    v16 = *(v2 + 24 * *(this + 148));
    v15 = *(v2 + 24 * v17);
    v76 = v16 - v5;
    v75 = v6 - v15;
    v14 = (this + 264);
    v13 = (this + 280);
    v73 = (this + 296);
    v74 = (this + 312);
    v12 = v9;
    v11 = v8;
  }

  v71 = *v13;
  v72 = *v14;
  v18 = this + 32 * a2;
  if (*(v18 + 168) < 2uLL)
  {
    v26 = 0;
    v25 = 0;
  }

  else
  {
    v78 = v8;
    v19 = v18 + 160;
    v20 = (v18 + 160);
    v22 = *v20;
    v21 = (v20 + 2);
    if (v22 >= 2)
    {
      v23 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (*v23 <= -2)
      {
        do
        {
          v24 = __clz(__rbit64((*v23 | ~(*v23 >> 7)) & 0x101010101010101)) >> 3;
          v23 = (v23 + v24);
          v21 += v24;
        }

        while (*v23 < -1);
      }
    }

    else
    {
      v23 = &absl::lts_20240722::container_internal::kSooControl;
    }

    v25 = 0;
    v26 = 0;
    v77 = **(this + 96);
    v79 = v6;
    v80 = v5;
    do
    {
      v27 = (v77 + 56 * *v21);
      v29 = v27[1];
      v28 = v27[2];
      v30 = v27[5];
      v31 = v27[6];
      v32 = v30 + v29;
      if (v30 + v29 >= v6)
      {
        v33 = v6;
      }

      else
      {
        v33 = v30 + v29;
      }

      if (v29 <= v5)
      {
        v34 = v5;
      }

      else
      {
        v34 = v27[1];
      }

      v35 = v33 - v34;
      if (v6 >= v28)
      {
        v36 = v27[2];
      }

      else
      {
        v36 = v6;
      }

      v37 = v28 - v30;
      if (v37 <= v5)
      {
        v38 = v5;
      }

      else
      {
        v38 = v37;
      }

      if (v36 - v38 < v35)
      {
        v35 = v36 - v38;
      }

      v39 = v27[3];
      v40 = v27[4];
      v41 = v31 + v39;
      if (v31 + v39 >= v9)
      {
        v42 = v9;
      }

      else
      {
        v42 = v31 + v39;
      }

      if (v39 <= v78)
      {
        v43 = v78;
      }

      else
      {
        v43 = v39;
      }

      if (v9 >= v40)
      {
        v44 = v40;
      }

      else
      {
        v44 = v9;
      }

      v45 = v40 - v31;
      v46 = a2;
      if (v45 <= v78)
      {
        v47 = v78;
      }

      else
      {
        v47 = v45;
      }

      v48 = v44 - v47;
      if (v44 - v47 >= v42 - v43)
      {
        v48 = v42 - v43;
      }

      if (v39 <= v11)
      {
        v39 = v11;
      }

      v49 = v42 - v39;
      if (v45 <= v11)
      {
        v50 = v11;
      }

      else
      {
        v50 = v45;
      }

      v51 = v44 - v50;
      if (v51 >= v49)
      {
        v51 = v49;
      }

      if (v41 >= v12)
      {
        v52 = v12;
      }

      else
      {
        v52 = v41;
      }

      v53 = v52 - v43;
      if (v12 >= v40)
      {
        v54 = v40;
      }

      else
      {
        v54 = v12;
      }

      v55 = v54 - v47;
      if (v55 < v53)
      {
        v53 = v55;
      }

      if (v29 <= v16)
      {
        v56 = v16;
      }

      else
      {
        v56 = v29;
      }

      v57 = v33 - v56;
      if (v37 <= v16)
      {
        v58 = v16;
      }

      else
      {
        v58 = v37;
      }

      v59 = v36 - v58;
      if (v59 >= v57)
      {
        v59 = v57;
      }

      if (v32 >= v15)
      {
        v60 = v15;
      }

      else
      {
        v60 = v32;
      }

      this = v60 - v34;
      if (v15 >= v28)
      {
        v61 = v28;
      }

      else
      {
        v61 = v15;
      }

      v62 = v61 - v38;
      a2 = v46;
      if (v62 >= this)
      {
        v62 = this;
      }

      v63 = v35 & ~(v35 >> 63);
      v64 = v48 & ~(v48 >> 63);
      if (v46)
      {
        v65 = (v53 & ~(v53 >> 63)) * v63;
      }

      else
      {
        v65 = v64 * (v62 & ~(v62 >> 63));
      }

      v66 = (v51 & ~(v51 >> 63)) * v63;
      if (v46)
      {
        v67 = v66;
      }

      else
      {
        v67 = v64 * (v59 & ~(v59 >> 63));
      }

      v69 = *(v23 + 1);
      v23 = (v23 + 1);
      LOBYTE(v68) = v69;
      ++v21;
      if (v69 <= -2)
      {
        do
        {
          v70 = __clz(__rbit64((*v23 | ~(*v23 >> 7)) & 0x101010101010101)) >> 3;
          v23 = (v23 + v70);
          v21 += v70;
          v68 = *v23;
        }

        while (v68 < -1);
      }

      v25 = v64 * v63 + v25 - v67;
      v26 = v64 * v63 + v26 - v65;
      v6 = v79;
      v5 = v80;
    }

    while (v68 != 255);
  }

  *v73 = v25 + v72 * v76;
  *v74 = v26 + v71 * v75;
  return this;
}

void operations_research::sat::FindRectanglesWithEnergyConflictMC(void *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v7 = a3;
  v134[3] = *MEMORY[0x277D85DE8];
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  operations_research::sat::ProbingRectangle::ProbingRectangle(&v107, a1);
  if ((atomic_load_explicit(&qword_27E25F630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E25F630))
  {
    operator new();
  }

  v104 = 0;
  v132 = 0;
  v130 = 0;
  v8 = 1.0 / a4;
  while (v116 > v121 || v122 > v117)
  {
    v9 = v114;
    if (v114 <= v115)
    {
      if (v115 * a5 < v114)
      {
        v101.n128_u64[0] = *(v110 + 3 * v117);
        v101.n128_u64[1] = *(v110 + 3 * v119);
        v102 = *&v112[24 * v118];
        v103 = *&v112[24 * v116];
        std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](v7 + 24, &v101);
      }
    }

    else
    {
      v101.n128_u64[0] = *(v110 + 3 * v117);
      v101.n128_u64[1] = *(v110 + 3 * v119);
      v102 = *&v112[24 * v118];
      v103 = *&v112[24 * v116];
      std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](v7, &v101);
    }

    if (!v9)
    {
      break;
    }

    if (v104)
    {
      operator delete(__p);
      v104 = 0;
      if (v132)
      {
LABEL_16:
        operator delete(v133);
        v132 = 0;
        v100 = 0;
        if (v116 <= v121)
        {
          goto LABEL_43;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v104 = 0;
      if (v132)
      {
        goto LABEL_16;
      }
    }

    v132 = 0;
    v100 = 0;
    if (v116 <= v121)
    {
      goto LABEL_43;
    }

LABEL_17:
    v10 = v104;
    if (v104)
    {
      v11 = v106;
    }

    else
    {
      v11 = 4;
    }

    if (v104 >> 1 == v11)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v104, &v100);
    }

    p_p = __p;
    if ((v104 & 1) == 0)
    {
      p_p = &__p;
    }

    p_p[v104 >> 1] = 0;
    v104 = v10 + 2;
    v13 = v110;
    v14 = *(v110 + 3 * v117);
    v15 = *(v110 + 3 * v119);
    v16 = *&v112[24 * v118];
    v17 = *&v112[24 * v116];
    if ((v100 & 0xFFFFFFFD) != 1)
    {
      v13 = v112;
    }

    v18 = 24 * v120[v100];
    v19 = *&v13[v18];
    if (v100 > 1)
    {
      if (v100 == 2)
      {
        v21 = v19 - v16;
        goto LABEL_35;
      }

      if (v100 == 3)
      {
        v20 = v15 - v19;
        goto LABEL_32;
      }
    }

    else
    {
      if (!v100)
      {
        v21 = v17 - v19;
LABEL_35:
        v18 = v21 * (v14 - v15);
        goto LABEL_36;
      }

      if (v100 == 1)
      {
        v20 = v19 - v14;
LABEL_32:
        v18 = v20 * (v16 - v17);
      }
    }

LABEL_36:
    v22 = v129[v100] + v18;
    v101.n128_u64[0] = v22;
    v23 = v132;
    if (v132)
    {
      v24 = v134[0];
    }

    else
    {
      v24 = 4;
    }

    if (v132 >> 1 == v24)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v132, &v101);
    }

    v25 = v133;
    if ((v132 & 1) == 0)
    {
      v25 = &v133;
    }

    v25[v132 >> 1] = v22;
    v132 = v23 + 2;
LABEL_43:
    v100 = 1;
    if (v122 <= v117)
    {
      goto LABEL_70;
    }

    v26 = v104;
    if (v104)
    {
      v27 = v106;
    }

    else
    {
      v27 = 4;
    }

    if (v104 >> 1 == v27)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v104, &v100);
    }

    v28 = __p;
    if ((v104 & 1) == 0)
    {
      v28 = &__p;
    }

    v28[v104 >> 1] = 1;
    v104 = v26 + 2;
    v29 = v110;
    v30 = *(v110 + 3 * v117);
    v31 = *(v110 + 3 * v119);
    v32 = *&v112[24 * v118];
    v33 = *&v112[24 * v116];
    if ((v100 & 0xFFFFFFFD) != 1)
    {
      v29 = v112;
    }

    v34 = 24 * v120[v100];
    v35 = *&v29[v34];
    if (v100 > 1)
    {
      if (v100 == 2)
      {
        v37 = v35 - v32;
        goto LABEL_62;
      }

      if (v100 == 3)
      {
        v36 = v31 - v35;
        goto LABEL_59;
      }
    }

    else
    {
      if (!v100)
      {
        v37 = v33 - v35;
LABEL_62:
        v34 = v37 * (v30 - v31);
        goto LABEL_63;
      }

      if (v100 == 1)
      {
        v36 = v35 - v30;
LABEL_59:
        v34 = v36 * (v32 - v33);
      }
    }

LABEL_63:
    v38 = v129[v100] + v34;
    v101.n128_u64[0] = v38;
    v39 = v132;
    if (v132)
    {
      v40 = v134[0];
    }

    else
    {
      v40 = 4;
    }

    if (v132 >> 1 == v40)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v132, &v101);
    }

    v41 = v133;
    if ((v132 & 1) == 0)
    {
      v41 = &v133;
    }

    v41[v132 >> 1] = v38;
    v132 = v39 + 2;
LABEL_70:
    v100 = 2;
    if (v116 <= v121)
    {
      goto LABEL_97;
    }

    v42 = v104;
    if (v104)
    {
      v43 = v106;
    }

    else
    {
      v43 = 4;
    }

    if (v104 >> 1 == v43)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v104, &v100);
    }

    v44 = __p;
    if ((v104 & 1) == 0)
    {
      v44 = &__p;
    }

    v44[v104 >> 1] = 2;
    v104 = v42 + 2;
    v45 = v110;
    v46 = *(v110 + 3 * v117);
    v47 = *(v110 + 3 * v119);
    v48 = *&v112[24 * v118];
    v49 = *&v112[24 * v116];
    if ((v100 & 0xFFFFFFFD) != 1)
    {
      v45 = v112;
    }

    v50 = 24 * v120[v100];
    v51 = *&v45[v50];
    if (v100 > 1)
    {
      if (v100 == 2)
      {
        v53 = v51 - v48;
        goto LABEL_89;
      }

      if (v100 == 3)
      {
        v52 = v47 - v51;
        goto LABEL_86;
      }
    }

    else
    {
      if (!v100)
      {
        v53 = v49 - v51;
LABEL_89:
        v50 = v53 * (v46 - v47);
        goto LABEL_90;
      }

      if (v100 == 1)
      {
        v52 = v51 - v46;
LABEL_86:
        v50 = v52 * (v48 - v49);
      }
    }

LABEL_90:
    v54 = v129[v100] + v50;
    v101.n128_u64[0] = v54;
    v55 = v132;
    if (v132)
    {
      v56 = v134[0];
    }

    else
    {
      v56 = 4;
    }

    if (v132 >> 1 == v56)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v132, &v101);
    }

    v57 = v133;
    if ((v132 & 1) == 0)
    {
      v57 = &v133;
    }

    v57[v132 >> 1] = v54;
    v132 = v55 + 2;
LABEL_97:
    v100 = 3;
    if (v122 <= v117)
    {
      goto LABEL_124;
    }

    v58 = v104;
    if (v104)
    {
      v59 = v106;
    }

    else
    {
      v59 = 4;
    }

    if (v104 >> 1 == v59)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(&v104, &v100);
    }

    v60 = __p;
    if ((v104 & 1) == 0)
    {
      v60 = &__p;
    }

    v60[v104 >> 1] = 3;
    v104 = v58 + 2;
    v61 = v110;
    v62 = *(v110 + 3 * v117);
    v63 = *(v110 + 3 * v119);
    v64 = *&v112[24 * v118];
    v65 = *&v112[24 * v116];
    if ((v100 & 0xFFFFFFFD) != 1)
    {
      v61 = v112;
    }

    v66 = 24 * v120[v100];
    v67 = *&v61[v66];
    if (v100 > 1)
    {
      if (v100 == 2)
      {
        v69 = v67 - v64;
        goto LABEL_116;
      }

      if (v100 == 3)
      {
        v68 = v63 - v67;
        goto LABEL_113;
      }
    }

    else
    {
      if (!v100)
      {
        v69 = v65 - v67;
LABEL_116:
        v66 = v69 * (v62 - v63);
        goto LABEL_117;
      }

      if (v100 == 1)
      {
        v68 = v67 - v62;
LABEL_113:
        v66 = v68 * (v64 - v65);
      }
    }

LABEL_117:
    v70 = v129[v100] + v66;
    v101.n128_u64[0] = v70;
    v71 = v132;
    if (v132)
    {
      v72 = v134[0];
    }

    else
    {
      v72 = 4;
    }

    if (v132 >> 1 == v72)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v132, &v101);
    }

    v73 = v133;
    if ((v132 & 1) == 0)
    {
      v73 = &v133;
    }

    v73[v132 >> 1] = v70;
    v132 = v71 + 2;
LABEL_124:
    v74 = v133;
    v75 = v132 & 1;
    if (v132)
    {
      v76 = v133;
    }

    else
    {
      v76 = &v133;
    }

    v77 = v132 >> 1;
    v78 = v133 + 8;
    if ((v132 & 1) == 0)
    {
      v78 = v134;
    }

    if ((v132 & 0x3FFFFFFFFFFFFFFELL) != 0)
    {
      v79 = &v76[v77];
      if (v78 != v79)
      {
        v80 = *v76;
        v81 = v78;
        do
        {
          v83 = *v81;
          v81 += 8;
          v82 = v83;
          if (v83 < v80)
          {
            v80 = v82;
            v76 = v78;
          }

          v78 = v81;
        }

        while (v81 != v79);
      }
    }

    v84 = *v76;
    if (v130)
    {
      operator delete(v131[0]);
      v74 = v133;
      v75 = v132 & 1;
      v77 = v132 >> 1;
    }

    v130 = 0;
    if (v75)
    {
      v85 = v74;
    }

    else
    {
      v85 = &v133;
    }

    if ((v77 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v86 = 8 * v77;
      do
      {
        v87 = ((5 * &(*v85)[-v84]) * v8 + 50.0);
        if (v87 >= 100)
        {
          v87 = 100;
        }

        v88 = (*_MergedGlobals_111 + 8 * (v87 & ~(v87 >> 63)));
        v89 = v130;
        if (v130)
        {
          v90 = v131[1];
        }

        else
        {
          v90 = 4;
        }

        if (v130 >> 1 == v90)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<double,4ul,std::allocator<double>>::EmplaceBackSlow<double const&>(&v130, v88);
        }

        v91 = v131[0];
        if ((v130 & 1) == 0)
        {
          v91 = v131;
        }

        v91[v130 >> 1] = *v88;
        v130 = v89 + 2;
        ++v85;
        v86 -= 8;
      }

      while (v86);
      v92 = v130;
      v7 = a3;
    }

    else
    {
      v92 = 0;
    }

    if (v92)
    {
      v93 = v131[0];
    }

    else
    {
      v93 = v131;
    }

    v101 = *a2;
    v102 = *(a2 + 2);
    v94 = operations_research::sat::WeightedPick(v93, v92 >> 1, &v101, v101);
    v95 = __p;
    if ((v104 & 1) == 0)
    {
      v95 = &__p;
    }

    v96 = v95[v94];
    if (v96 > 1)
    {
      if (v96 == 2)
      {
        operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)2>(&v107);
      }

      else if (v96 == 3)
      {
        operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)3>(&v107);
      }
    }

    else if (v96)
    {
      if (v96 == 1)
      {
        operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)1>(&v107);
      }
    }

    else
    {
      operations_research::sat::ProbingRectangle::ShrinkImpl<(operations_research::sat::ProbingRectangle::Edge)0>(&v107);
    }
  }

  if (v114 > v115)
  {
    v101.n128_u64[0] = *(v110 + 3 * v117);
    v101.n128_u64[1] = *(v110 + 3 * v119);
    v102 = *&v112[24 * v118];
    v103 = *&v112[24 * v116];
    std::vector<operations_research::sat::CapacityProfile::Event>::push_back[abi:ne200100](v7, &v101);
  }

  if (v130)
  {
    operator delete(v131[0]);
    if (v132)
    {
      goto LABEL_192;
    }

LABEL_179:
    if ((v104 & 1) == 0)
    {
      goto LABEL_180;
    }

LABEL_193:
    operator delete(__p);
    if (v126 >= 2)
    {
      goto LABEL_194;
    }

LABEL_181:
    if (v123 < 2)
    {
      goto LABEL_182;
    }

LABEL_195:
    operator delete((v125 - (v124 & 1) - 8));
    v97 = v112;
    if (v112)
    {
LABEL_183:
      v113 = v97;
      operator delete(v97);
    }
  }

  else
  {
    if ((v132 & 1) == 0)
    {
      goto LABEL_179;
    }

LABEL_192:
    operator delete(v133);
    if (v104)
    {
      goto LABEL_193;
    }

LABEL_180:
    if (v126 < 2)
    {
      goto LABEL_181;
    }

LABEL_194:
    operator delete((v128 - (v127 & 1) - 8));
    if (v123 >= 2)
    {
      goto LABEL_195;
    }

LABEL_182:
    v97 = v112;
    if (v112)
    {
      goto LABEL_183;
    }
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v107.i64[0])
  {
    v107.i64[1] = v107.i64[0];
    operator delete(v107.i64[0]);
  }
}

void sub_23CB750C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, operations_research::sat::LinearExpr *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  MEMORY[0x23EED9460](v23, 0x80C40D6874129, a3, a4, a5, a6, a7, a8);
  __cxa_guard_abort(&qword_27E25F630);
  operations_research::sat::ProbingRectangle::~ProbingRectangle(va);
  operations_research::sat::LinearExpr::~LinearExpr(a9);
  _Unwind_Resume(a1);
}

void sub_23CB75108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, operations_research::sat::LinearExpr *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *__p, uint64_t a23, ...)
{
  va_start(va, a23);
  if (*(v24 - 200))
  {
    operator delete(*(v23 + 328));
    if ((*(v24 - 160) & 1) == 0)
    {
LABEL_3:
      if ((a21 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v24 - 160) & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v23 + 368));
  if ((a21 & 1) == 0)
  {
LABEL_5:
    operations_research::sat::ProbingRectangle::~ProbingRectangle(va);
    operations_research::sat::LinearExpr::~LinearExpr(a9);
    _Unwind_Resume(a1);
  }

LABEL_4:
  operator delete(__p);
  goto LABEL_5;
}

void operations_research::sat::anonymous namespace::GetExpTable(operations_research::sat::_anonymous_namespace_ *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  operator new();
}

void sub_23CB75770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB75784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  std::vector<std::string>::~vector[abi:ne200100]((v7 - 112));
  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::PairwiseRestriction>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
  if (v9 > 0x1555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 4 * (v8 >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = v12 + 12;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void operations_research::sat::ProbingRectangle::~ProbingRectangle(operations_research::sat::ProbingRectangle *this)
{
  if (*(this + 24) >= 2uLL)
  {
    operator delete((*(this + 26) - (*(this + 25) & 1) - 8));
    if (*(this + 20) < 2uLL)
    {
LABEL_3:
      v2 = *(this + 9);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (*(this + 20) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(this + 22) - (*(this + 21) & 1) - 8));
  v2 = *(this + 9);
  if (v2)
  {
LABEL_4:
    *(this + 10) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = a2 - 1;
  v74 = a2 - 2;
  v12 = a2 - 3;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = a2 - v13;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if (a2[-1].n128_u64[1] < v13->n128_u64[1])
      {
        v98 = *v13;
        *v13 = a2[-1];
        result = v98;
        a2[-1] = v98;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v58 = v13 + 1;
      v60 = v13 == a2 || v58 == a2;
      if (a5)
      {
        if (!v60)
        {
          v61 = 0;
          v62 = v13;
          do
          {
            v64 = v62->n128_i64[1];
            v65 = v62[1].n128_i64[1];
            v62 = v58;
            if (v65 < v64)
            {
              v66 = v58->n128_u64[0];
              v67 = v61;
              do
              {
                result = *(v13 + v67);
                *(v13 + v67 + 16) = result;
                if (!v67)
                {
                  v63 = v13;
                  goto LABEL_125;
                }

                v68 = *(&v13->n128_i64[-1] + v67);
                v67 -= 16;
              }

              while (v65 < v68);
              v63 = (v13 + v67 + 16);
LABEL_125:
              v63->n128_u64[0] = v66;
              v63->n128_u64[1] = v65;
            }

            v58 = v62 + 1;
            v61 += 16;
          }

          while (&v62[1] != a2);
        }
      }

      else if (!v60)
      {
        do
        {
          v69 = a1->n128_i64[1];
          v70 = a1[1].n128_i64[1];
          a1 = v58;
          if (v70 < v69)
          {
            v71 = v58->n128_u64[0];
            v72 = a1;
            do
            {
              result = v72[-1];
              *v72 = result;
              v73 = v72[-2].n128_i64[1];
              --v72;
            }

            while (v70 < v73);
            v72->n128_u64[0] = v71;
            v72->n128_u64[1] = v70;
          }

          v58 = a1 + 1;
        }

        while (&a1[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,operations_research::sat::TaskTime *>(v13, a2, a2);
      }

      return result;
    }

    v15 = &v13[v14 >> 1];
    v16 = a2[-1].n128_i64[1];
    if (v14 < 0x81)
    {
      v18 = v13->n128_i64[1];
      if (v18 < v15->n128_u64[1])
      {
        if (v16 < v18)
        {
          v76 = *v15;
          *v15 = *v11;
          goto LABEL_36;
        }

        v85 = *v15;
        *v15 = *v13;
        result = v85;
        *v13 = v85;
        if (a2[-1].n128_u64[1] < v13->n128_u64[1])
        {
          v76 = *v13;
          *v13 = *v11;
LABEL_36:
          result = v76;
          *v11 = v76;
        }

LABEL_37:
        --a4;
        v19 = v13->n128_i64[1];
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v18)
      {
        goto LABEL_37;
      }

      v79 = *v13;
      *v13 = *v11;
      result = v79;
      *v11 = v79;
      if (v13->n128_u64[1] >= v15->n128_u64[1])
      {
        goto LABEL_37;
      }

      v80 = *v15;
      *v15 = *v13;
      result = v80;
      *v13 = v80;
      --a4;
      v19 = v13->n128_i64[1];
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v13[-1].n128_u64[1] < v19)
      {
        goto LABEL_62;
      }

      if (v19 >= a2[-1].n128_u64[1])
      {
        n128_u64 = v13[1].n128_u64;
        do
        {
          v13 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v46 = *(n128_u64 + 8);
          n128_u64 += 16;
        }

        while (v19 >= v46);
      }

      else
      {
        v43 = v13;
        do
        {
          v13 = v43 + 1;
          v44 = v43[1].n128_i64[1];
          ++v43;
        }

        while (v19 >= v44);
      }

      v47 = a2;
      if (v13 < a2)
      {
        v48 = a2;
        do
        {
          v47 = v48 - 1;
          v49 = v48[-1].n128_i64[1];
          --v48;
        }

        while (v19 < v49);
      }

      v50 = a1->n128_u64[0];
      while (v13 < v47)
      {
        v97 = *v13;
        *v13 = *v47;
        result = v97;
        *v47 = v97;
        do
        {
          v51 = v13[1].n128_i64[1];
          ++v13;
        }

        while (v19 >= v51);
        do
        {
          v52 = v47[-1].n128_i64[1];
          --v47;
        }

        while (v19 < v52);
      }

      v53 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v53;
        *a1 = *v53;
      }

      a5 = 0;
      v13[-1].n128_u64[0] = v50;
      v13[-1].n128_u64[1] = v19;
    }

    else
    {
      v17 = v15->n128_i64[1];
      if (v17 >= v13->n128_u64[1])
      {
        if (v16 < v17)
        {
          v77 = *v15;
          *v15 = *v11;
          *v11 = v77;
          if (v15->n128_u64[1] < v13->n128_u64[1])
          {
            v78 = *v13;
            *v13 = *v15;
            *v15 = v78;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          v81 = *v13;
          *v13 = *v15;
          *v15 = v81;
          if (a2[-1].n128_u64[1] >= v15->n128_u64[1])
          {
            goto LABEL_28;
          }

          v75 = *v15;
          *v15 = *v11;
        }

        else
        {
          v75 = *v13;
          *v13 = *v11;
        }

        *v11 = v75;
      }

LABEL_28:
      v20 = v15 - 1;
      v21 = v15[-1].n128_i64[1];
      v22 = a2[-2].n128_i64[1];
      if (v21 >= v13[1].n128_u64[1])
      {
        if (v22 < v21)
        {
          v83 = *v20;
          *v20 = *v74;
          *v74 = v83;
          if (v15[-1].n128_u64[1] < v13[1].n128_u64[1])
          {
            v84 = v13[1];
            v13[1] = *v20;
            *v20 = v84;
          }
        }
      }

      else
      {
        if (v22 >= v21)
        {
          v86 = v13[1];
          v13[1] = *v20;
          *v20 = v86;
          if (a2[-2].n128_u64[1] >= v15[-1].n128_u64[1])
          {
            goto LABEL_42;
          }

          v82 = *v20;
          v23 = a2 - 2;
          *v20 = *v74;
        }

        else
        {
          v82 = v13[1];
          v23 = a2 - 2;
          v13[1] = *v74;
        }

        *v23 = v82;
      }

LABEL_42:
      v24 = v15[1].n128_i64[1];
      v25 = a2[-3].n128_i64[1];
      if (v24 >= v13[2].n128_u64[1])
      {
        if (v25 < v24)
        {
          v88 = v15[1];
          v15[1] = *v12;
          *v12 = v88;
          if (v15[1].n128_u64[1] < v13[2].n128_u64[1])
          {
            v89 = v13[2];
            v13[2] = v15[1];
            v15[1] = v89;
          }
        }
      }

      else
      {
        if (v25 >= v24)
        {
          v90 = v13[2];
          v13[2] = v15[1];
          v15[1] = v90;
          if (a2[-3].n128_u64[1] >= v15[1].n128_u64[1])
          {
            goto LABEL_51;
          }

          v87 = v15[1];
          v15[1] = *v12;
        }

        else
        {
          v87 = v13[2];
          v13[2] = *v12;
        }

        *v12 = v87;
      }

LABEL_51:
      v26 = v15->n128_i64[1];
      v27 = v15[1].n128_i64[1];
      if (v26 >= v15[-1].n128_u64[1])
      {
        if (v27 < v26)
        {
          v92 = *v15;
          *v15 = v15[1];
          v15[1] = v92;
          if (v15->n128_u64[1] < v15[-1].n128_u64[1])
          {
            v93 = *v20;
            *v20 = *v15;
            *v15 = v93;
          }
        }
      }

      else
      {
        if (v27 >= v26)
        {
          v94 = *v20;
          *v20 = *v15;
          *v15 = v94;
          if (v15[1].n128_u64[1] >= v15->n128_u64[1])
          {
            goto LABEL_60;
          }

          v91 = *v15;
          *v15 = v15[1];
        }

        else
        {
          v91 = *v20;
          *v20 = v15[1];
        }

        v15[1] = v91;
      }

LABEL_60:
      v95 = *v13;
      *v13 = *v15;
      result = v95;
      *v15 = v95;
      --a4;
      v19 = v13->n128_i64[1];
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v28 = 0;
      v29 = v13->n128_u64[0];
      do
      {
        v30 = v13[++v28].n128_i64[1];
      }

      while (v30 < v19);
      v31 = &v13[v28];
      v32 = a2;
      if (v28 == 1)
      {
        v35 = a2;
        while (v31 < v35)
        {
          v33 = v35 - 1;
          v36 = v35[-1].n128_i64[1];
          --v35;
          if (v36 < v19)
          {
            goto LABEL_70;
          }
        }

        v33 = v35;
        v13 = v31;
      }

      else
      {
        do
        {
          v33 = v32 - 1;
          v34 = v32[-1].n128_i64[1];
          --v32;
        }

        while (v34 >= v19);
LABEL_70:
        v13 = v31;
        if (v31 < v33)
        {
          v37 = v33;
          do
          {
            v96 = *v13;
            *v13 = *v37;
            result = v96;
            *v37 = v96;
            do
            {
              v38 = v13[1].n128_i64[1];
              ++v13;
            }

            while (v38 < v19);
            do
            {
              v39 = v37[-1].n128_i64[1];
              --v37;
            }

            while (v39 >= v19);
          }

          while (v13 < v37);
        }
      }

      v40 = v13 - 1;
      if (&v13[-1] != a1)
      {
        result = *v40;
        *a1 = *v40;
      }

      v13[-1].n128_u64[0] = v29;
      v13[-1].n128_u64[1] = v19;
      if (v31 < v33)
      {
        goto LABEL_81;
      }

      v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *>(a1, v13 - 1, result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *>(v13, a2, v42))
      {
        a2 = v13 - 1;
        if (!v41)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v41)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(a1, v13 - 1, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v56 = v13[1].n128_i64[1];
      v57 = v13[2].n128_i64[1];
      if (v56 >= v13->n128_u64[1])
      {
        if (v57 < v56)
        {
          v102 = v13[1];
          v13[1] = v13[2];
          result = v102;
          v13[2] = v102;
          if (v13[1].n128_u64[1] < v13->n128_u64[1])
          {
            v103 = *v13;
            *v13 = v13[1];
            result = v103;
            v13[1] = v103;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v100 = *v13;
          *v13 = v13[2];
          goto LABEL_153;
        }

        v105 = *v13;
        *v13 = v13[1];
        result = v105;
        v13[1] = v105;
        if (v13[2].n128_u64[1] < v13[1].n128_u64[1])
        {
          v100 = v13[1];
          v13[1] = v13[2];
LABEL_153:
          result = v100;
          v13[2] = v100;
        }
      }

      if (a2[-1].n128_u64[1] >= v13[2].n128_u64[1])
      {
        return result;
      }

      v106 = v13[2];
      v13[2] = *v11;
      result = v106;
      *v11 = v106;
      if (v13[2].n128_u64[1] >= v13[1].n128_u64[1])
      {
        return result;
      }

      v107 = v13[1];
      v13[1] = v13[2];
      result = v107;
      v13[2] = v107;
LABEL_157:
      if (v13[1].n128_u64[1] < v13->n128_u64[1])
      {
        v108 = *v13;
        *v13 = v13[1];
        result = v108;
        v13[1] = v108;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,0>(v13, v13 + 1, v13 + 2, v13 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v54 = v13[1].n128_i64[1];
  v55 = a2[-1].n128_i64[1];
  if (v54 >= v13->n128_u64[1])
  {
    if (v55 >= v54)
    {
      return result;
    }

    v101 = v13[1];
    v13[1] = *v11;
    result = v101;
    *v11 = v101;
    goto LABEL_157;
  }

  if (v55 >= v54)
  {
    v104 = *v13;
    *v13 = v13[1];
    result = v104;
    v13[1] = v104;
    if (a2[-1].n128_u64[1] >= v13[1].n128_u64[1])
    {
      return result;
    }

    v99 = v13[1];
    v13[1] = *v11;
  }

  else
  {
    v99 = *v13;
    *v13 = *v11;
  }

  result = v99;
  *v11 = v99;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
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
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[1] < a1->n128_u64[1])
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_i64[1];
      v8 = a2[-1].n128_i64[1];
      if (v7 < a1->n128_u64[1])
      {
        if (v8 >= v7)
        {
          v24 = *a1;
          *a1 = a1[1];
          a1[1] = v24;
          if (a2[-1].n128_u64[1] >= a1[1].n128_u64[1])
          {
            return 1;
          }

          v9 = a1[1];
          a1[1] = *v6;
        }

        else
        {
          v9 = *a1;
          *a1 = *v6;
        }

        *v6 = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
      if (a1[1].n128_u64[1] >= a1->n128_u64[1])
      {
        return 1;
      }

LABEL_52:
      v38 = *a1;
      *a1 = a1[1];
      a1[1] = v38;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

LABEL_14:
      v10 = a1 + 2;
      v11 = a1->n128_i64[1];
      v12 = a1[1].n128_i64[1];
      v13 = a1[2].n128_i64[1];
      if (v12 >= v11)
      {
        if (v13 < v12)
        {
          v20 = a1[1];
          a1[1] = *v10;
          *v10 = v20;
          if (a1[1].n128_u64[1] < v11)
          {
            v21 = *a1;
            *a1 = a1[1];
            a1[1] = v21;
          }
        }
      }

      else
      {
        if (v13 >= v12)
        {
          v25 = *a1;
          *a1 = a1[1];
          a1[1] = v25;
          if (v13 >= a1[1].n128_u64[1])
          {
            goto LABEL_35;
          }

          v14 = a1[1];
          a1[1] = *v10;
        }

        else
        {
          v14 = *a1;
          *a1 = *v10;
        }

        *v10 = v14;
      }

LABEL_35:
      v26 = a1 + 3;
      if (&a1[3] == a2)
      {
        return 1;
      }

      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = v10->n128_i64[1];
        v30 = v26->n128_i64[1];
        if (v30 < v29)
        {
          break;
        }

LABEL_38:
        v10 = v26;
        v27 += 16;
        if (++v26 == a2)
        {
          return 1;
        }
      }

      v31 = v26->n128_u64[0];
      v32 = v27;
      do
      {
        *(a1 + v32 + 48) = *(a1 + v32 + 32);
        if (v32 == -32)
        {
          a1->n128_u64[0] = v31;
          a1->n128_u64[1] = v30;
          if (++v28 != 8)
          {
            goto LABEL_38;
          }

          return &v26[1] == a2;
        }

        v33 = *(&a1[1].n128_i64[1] + v32);
        v32 -= 16;
      }

      while (v30 < v33);
      v34 = a1 + v32;
      *(v34 + 6) = v31;
      *(v34 + 7) = v30;
      if (++v28 != 8)
      {
        goto LABEL_38;
      }

      return &v26[1] == a2;
    }

    v15 = a1->n128_i64[1];
    v16 = a1[1].n128_i64[1];
    v17 = a1[2].n128_i64[1];
    if (v16 >= v15)
    {
      if (v17 < v16)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_u64[1] < v15)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }
    }

    else
    {
      if (v17 < v16)
      {
        v18 = *a1;
        *a1 = a1[2];
LABEL_48:
        a1[2] = v18;
        goto LABEL_49;
      }

      v35 = *a1;
      *a1 = a1[1];
      a1[1] = v35;
      if (v17 < a1[1].n128_u64[1])
      {
        v18 = a1[1];
        a1[1] = a1[2];
        goto LABEL_48;
      }
    }

LABEL_49:
    if (a2[-1].n128_u64[1] >= a1[2].n128_u64[1])
    {
      return 1;
    }

    v36 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v36;
    if (a1[2].n128_u64[1] >= a1[1].n128_u64[1])
    {
      return 1;
    }

    v37 = a1[1];
    a1[1] = a1[2];
    a1[2] = v37;
    if (a1[1].n128_u64[1] >= a1->n128_u64[1])
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].n128_u64[1] >= a1->n128_u64[1])
  {
    return 1;
  }

  v5 = *a1;
  *a1 = a2[-1];
  a2[-1] = v5;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,operations_research::sat::TaskTime *>(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 4;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v7 = 16 * v5;
      if (v4 >= (16 * v5) >> 4)
      {
        v8 = (v7 >> 3) | 1;
        v9 = &a1[16 * v8];
        if ((v7 >> 3) + 2 < v3)
        {
          v10 = *(v9 + 3);
          v11 = *(v9 + 1);
          v9 += 16 * (v11 < v10);
          if (v11 < v10)
          {
            v8 = (v7 >> 3) + 2;
          }
        }

        v12 = &a1[v7];
        v13 = *(v12 + 1);
        if (*(v9 + 1) >= v13)
        {
          v14 = *v12;
          do
          {
            v15 = v12;
            v12 = v9;
            *v15 = *v9;
            if (v4 < v8)
            {
              break;
            }

            v16 = (2 * v8) | 1;
            v9 = &a1[16 * v16];
            v17 = 2 * v8 + 2;
            if (v17 < v3)
            {
              v18 = *(v9 + 3);
              v19 = *(v9 + 1);
              v9 += 16 * (v19 < v18);
              if (v19 < v18)
              {
                v16 = v17;
              }
            }

            v8 = v16;
          }

          while (*(v9 + 1) >= v13);
          *v12 = v14;
          *(v12 + 1) = v13;
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v21 = *i;
          *i = *a1;
          *a1 = v21;
        }

        i += 16;
      }

      while (i != a3);
      goto LABEL_42;
    }

    for (i = a2; i != a3; i += 16)
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v22 = *i;
        *i = *a1;
        *a1 = v22;
        if (a2 - a1 == 32)
        {
          v23 = a1 + 16;
          v24 = 1;
          v25 = *(a1 + 1);
          if (*(a1 + 3) >= v25)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v23 = &a1[16 * (*(a1 + 3) < *(a1 + 5)) + 16];
          if (*(a1 + 3) >= *(a1 + 5))
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          v25 = *(a1 + 1);
          if (*(v23 + 1) >= v25)
          {
LABEL_35:
            v26 = *a1;
            v27 = a1;
            do
            {
              v28 = v27;
              v27 = v23;
              *v28 = *v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[16 * v29];
              v30 = 2 * v24 + 2;
              if (v30 < v3)
              {
                v31 = *(v23 + 3);
                v32 = *(v23 + 1);
                v23 += 16 * (v32 < v31);
                if (v32 < v31)
                {
                  v29 = v30;
                }
              }

              v24 = v29;
            }

            while (*(v23 + 1) >= v25);
            *v27 = v26;
            *(v27 + 1) = v25;
          }
        }
      }
    }
  }

LABEL_42:
  if (v3 >= 2)
  {
    do
    {
      v34 = 0;
      v50 = *a1;
      v35 = (v3 - 2) >> 1;
      v36 = a1;
      do
      {
        while (1)
        {
          v41 = &v36[16 * v34];
          v40 = v41 + 16;
          v42 = (2 * v34) | 1;
          v34 = 2 * v34 + 2;
          if (v34 < v3)
          {
            break;
          }

          v34 = v42;
          *v36 = *v40;
          v36 = v41 + 16;
          if (v42 > v35)
          {
            goto LABEL_54;
          }
        }

        v37 = *(v41 + 5);
        v38 = *(v41 + 3);
        v39 = v41 + 32;
        if (v38 >= v37)
        {
          v34 = v42;
        }

        else
        {
          v40 = v39;
        }

        *v36 = *v40;
        v36 = v40;
      }

      while (v34 <= v35);
LABEL_54:
      a2 -= 16;
      if (v40 == a2)
      {
        *v40 = v50;
      }

      else
      {
        *v40 = *a2;
        *a2 = v50;
        v43 = (v40 - a1 + 16) >> 4;
        v6 = v43 < 2;
        v44 = v43 - 2;
        if (!v6)
        {
          v45 = v44 >> 1;
          v46 = &a1[16 * (v44 >> 1)];
          v47 = *(v40 + 1);
          if (*(v46 + 1) < v47)
          {
            v48 = *v40;
            do
            {
              v49 = v40;
              v40 = v46;
              *v49 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[16 * v45];
            }

            while (*(v46 + 1) < v47);
            *v40 = v48;
            *(v40 + 1) = v47;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,false>(__n128 *a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v11 = a2 - 24;
  v108 = a2 - 48;
  v12 = a2 - 72;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = &a2[-v13];
    v15 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v13] >> 3);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return result;
    }

    if (v15 == 2)
    {
      if (*(a2 - 2) < *(v13 + 8))
      {
        v166 = *(v13 + 16);
        v132 = *v13;
        v81 = *(a2 - 24);
        *(v13 + 16) = *(a2 - 1);
        *v13 = v81;
        result = v132;
        *(a2 - 1) = v166;
        *(a2 - 24) = v132;
      }

      return result;
    }

LABEL_9:
    if (v14 <= 575)
    {
      v87 = (v13 + 24);
      v89 = v13 == a2 || v87 == a2;
      if (a5)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v13;
          do
          {
            v93 = v87;
            v94 = v91[4];
            if (v94 < v91[1])
            {
              v95 = *v93;
              v96 = v91[5];
              v97 = v90;
              do
              {
                v98 = v13 + v97;
                result = *(v13 + v97);
                *(v98 + 24) = result;
                *(v98 + 40) = *(v13 + v97 + 16);
                if (!v97)
                {
                  v92 = v13;
                  goto LABEL_125;
                }

                v97 -= 24;
              }

              while (v94 < *(v98 - 16));
              v92 = (v13 + v97 + 24);
LABEL_125:
              *v92 = v95;
              v92[1] = v94;
              v92[2] = v96;
            }

            v87 = v93 + 24;
            v90 += 24;
            v91 = v93;
          }

          while (v93 + 24 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v100 = v87;
          v101 = a1[2].n128_i64[0];
          if (v101 < a1->n128_u64[1])
          {
            v102 = *v87;
            v103 = a1[2].n128_u64[1];
            v104 = v100;
            do
            {
              result = *(v104 - 24);
              *v104 = result;
              v104[1].n128_u64[0] = v104[-1].n128_u64[1];
              v105 = v104[-3].n128_i64[1];
              v104 = (v104 - 24);
            }

            while (v101 < v105);
            v104->n128_u64[0] = v102;
            v104->n128_u64[1] = v101;
            v104[1].n128_u64[0] = v103;
          }

          v87 = &v100[1].n128_i8[8];
          a1 = v100;
        }

        while (&v100[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,operations_research::sat::IndexedInterval*>(v13, a2, a2);
      }

      return result;
    }

    v16 = v15 >> 1;
    v17 = (v13 + 24 * (v15 >> 1));
    v18 = *(a2 - 2);
    if (v14 < 0xC01)
    {
      v21 = *(v13 + 8);
      if (v21 < v17->n128_u64[1])
      {
        if (v18 < v21)
        {
          v144 = v17[1].n128_u64[0];
          v110 = *v17;
          v22 = *v11;
          v17[1].n128_u64[0] = *(a2 - 1);
          *v17 = v22;
          goto LABEL_36;
        }

        v153 = v17[1].n128_u64[0];
        v119 = *v17;
        v37 = *v13;
        v17[1].n128_u64[0] = *(v13 + 16);
        *v17 = v37;
        result = v119;
        *(v13 + 16) = v153;
        *v13 = v119;
        if (*(a2 - 2) < *(v13 + 8))
        {
          v144 = *(v13 + 16);
          v110 = *v13;
          v38 = *v11;
          *(v13 + 16) = *(a2 - 1);
          *v13 = v38;
LABEL_36:
          result = v110;
          *(a2 - 1) = v144;
          *v11 = v110;
        }

LABEL_37:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v18 >= v21)
      {
        goto LABEL_37;
      }

      v147 = *(v13 + 16);
      v113 = *v13;
      v25 = *v11;
      *(v13 + 16) = *(a2 - 1);
      *v13 = v25;
      result = v113;
      *(a2 - 1) = v147;
      *v11 = v113;
      if (*(v13 + 8) >= v17->n128_u64[1])
      {
        goto LABEL_37;
      }

      v148 = v17[1].n128_u64[0];
      v114 = *v17;
      v26 = *v13;
      v17[1].n128_u64[0] = *(v13 + 16);
      *v17 = v26;
      result = v114;
      *(v13 + 16) = v148;
      *v13 = v114;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_61:
      v39 = *(v13 + 8);
      if (*(v13 - 16) < v39)
      {
        goto LABEL_62;
      }

      if (v39 >= *(a2 - 2))
      {
        v71 = v13 + 24;
        do
        {
          v13 = v71;
          if (v71 >= a2)
          {
            break;
          }

          v72 = *(v71 + 8);
          v71 += 24;
        }

        while (v39 >= v72);
      }

      else
      {
        v69 = v13;
        do
        {
          v13 = v69 + 24;
          v70 = *(v69 + 32);
          v69 += 24;
        }

        while (v39 >= v70);
      }

      v73 = a2;
      if (v13 < a2)
      {
        v74 = a2;
        do
        {
          v73 = v74 - 24;
          v75 = *(v74 - 2);
          v74 -= 24;
        }

        while (v39 < v75);
      }

      v76 = a1->n128_u64[0];
      v77 = a1[1].n128_u64[0];
      while (v13 < v73)
      {
        v165 = *(v13 + 16);
        v131 = *v13;
        v78 = *v73;
        *(v13 + 16) = *(v73 + 2);
        *v13 = v78;
        result = v131;
        *(v73 + 2) = v165;
        *v73 = v131;
        do
        {
          v79 = *(v13 + 32);
          v13 += 24;
        }

        while (v39 >= v79);
        do
        {
          v80 = *(v73 - 2);
          v73 -= 24;
        }

        while (v39 < v80);
      }

      if ((v13 - 24) != a1)
      {
        result = *(v13 - 24);
        a1[1].n128_u64[0] = *(v13 - 8);
        *a1 = result;
      }

      a5 = 0;
      *(v13 - 24) = v76;
      *(v13 - 16) = v39;
      *(v13 - 8) = v77;
    }

    else
    {
      v19 = v17->n128_i64[1];
      if (v19 >= *(v13 + 8))
      {
        if (v18 < v19)
        {
          v145 = v17[1].n128_u64[0];
          v111 = *v17;
          v23 = *v11;
          v17[1].n128_u64[0] = *(a2 - 1);
          *v17 = v23;
          *(a2 - 1) = v145;
          *v11 = v111;
          if (v17->n128_u64[1] < *(v13 + 8))
          {
            v146 = *(v13 + 16);
            v112 = *v13;
            v24 = *v17;
            *(v13 + 16) = v17[1].n128_u64[0];
            *v13 = v24;
            v17[1].n128_u64[0] = v146;
            *v17 = v112;
          }
        }
      }

      else
      {
        if (v18 >= v19)
        {
          v149 = *(v13 + 16);
          v115 = *v13;
          v27 = *v17;
          *(v13 + 16) = v17[1].n128_u64[0];
          *v13 = v27;
          v17[1].n128_u64[0] = v149;
          *v17 = v115;
          if (*(a2 - 2) >= v17->n128_u64[1])
          {
            goto LABEL_28;
          }

          v143 = v17[1].n128_u64[0];
          v109 = *v17;
          v28 = *v11;
          v17[1].n128_u64[0] = *(a2 - 1);
          *v17 = v28;
        }

        else
        {
          v143 = *(v13 + 16);
          v109 = *v13;
          v20 = *v11;
          *(v13 + 16) = *(a2 - 1);
          *v13 = v20;
        }

        *(a2 - 1) = v143;
        *v11 = v109;
      }

LABEL_28:
      v29 = v13 + 24 * v16;
      v30 = (v29 - 24);
      v31 = *(v29 - 16);
      v32 = *(a2 - 5);
      if (v31 >= *(v13 + 32))
      {
        if (v32 < v31)
        {
          v151 = v30[1].n128_i64[0];
          v117 = *v30;
          v35 = *v108;
          v30[1].n128_u64[0] = *(a2 - 4);
          *v30 = v35;
          *(a2 - 4) = v151;
          *v108 = v117;
          if (v30->n128_u64[1] < *(v13 + 32))
          {
            v152 = *(v13 + 40);
            v118 = *(v13 + 24);
            v36 = *v30;
            *(v13 + 40) = v30[1].n128_u64[0];
            *(v13 + 24) = v36;
            v30[1].n128_u64[0] = v152;
            *v30 = v118;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v154 = *(v13 + 40);
          v120 = *(v13 + 24);
          v40 = *v30;
          *(v13 + 40) = v30[1].n128_u64[0];
          *(v13 + 24) = v40;
          v30[1].n128_u64[0] = v154;
          *v30 = v120;
          if (*(a2 - 5) >= v30->n128_u64[1])
          {
            goto LABEL_42;
          }

          v150 = v30[1].n128_i64[0];
          v116 = *v30;
          v33 = a2 - 48;
          v41 = *v108;
          v30[1].n128_u64[0] = *(a2 - 4);
          *v30 = v41;
        }

        else
        {
          v150 = *(v13 + 40);
          v116 = *(v13 + 24);
          v33 = a2 - 48;
          v34 = *v108;
          *(v13 + 40) = *(a2 - 4);
          *(v13 + 24) = v34;
        }

        *(v33 + 2) = v150;
        *v33 = v116;
      }

LABEL_42:
      v42 = v13 + 24 * v16;
      v43 = *(v42 + 32);
      v44 = *(a2 - 8);
      if (v43 >= *(v13 + 56))
      {
        if (v44 < v43)
        {
          v156 = *(v42 + 40);
          v122 = *(v42 + 24);
          v46 = *v12;
          *(v42 + 40) = *(a2 - 7);
          *(v42 + 24) = v46;
          *(a2 - 7) = v156;
          *v12 = v122;
          if (*(v42 + 32) < *(v13 + 56))
          {
            v157 = *(v13 + 64);
            v123 = *(v13 + 48);
            v47 = *(v42 + 24);
            *(v13 + 64) = *(v42 + 40);
            *(v13 + 48) = v47;
            *(v42 + 40) = v157;
            *(v42 + 24) = v123;
          }
        }
      }

      else
      {
        if (v44 >= v43)
        {
          v158 = *(v13 + 64);
          v124 = *(v13 + 48);
          v48 = *(v42 + 24);
          *(v13 + 64) = *(v42 + 40);
          *(v13 + 48) = v48;
          *(v42 + 40) = v158;
          *(v42 + 24) = v124;
          if (*(a2 - 8) >= *(v42 + 32))
          {
            goto LABEL_51;
          }

          v155 = *(v42 + 40);
          v121 = *(v42 + 24);
          v49 = *v12;
          *(v42 + 40) = *(a2 - 7);
          *(v42 + 24) = v49;
        }

        else
        {
          v155 = *(v13 + 64);
          v121 = *(v13 + 48);
          v45 = *v12;
          *(v13 + 64) = *(a2 - 7);
          *(v13 + 48) = v45;
        }

        *(a2 - 7) = v155;
        *v12 = v121;
      }

LABEL_51:
      v50 = v17->n128_i64[1];
      v51 = *(v42 + 32);
      if (v50 >= v30->n128_u64[1])
      {
        if (v51 < v50)
        {
          v160 = v17[1].n128_u64[0];
          v126 = *v17;
          *v17 = *(v42 + 24);
          v17[1].n128_u64[0] = *(v42 + 40);
          *(v42 + 40) = v160;
          *(v42 + 24) = v126;
          if (v17->n128_u64[1] < v30->n128_u64[1])
          {
            v161 = v30[1].n128_u64[0];
            v127 = *v30;
            *v30 = *v17;
            v30[1].n128_u64[0] = v17[1].n128_u64[0];
            v17[1].n128_u64[0] = v161;
            *v17 = v127;
          }
        }
      }

      else
      {
        if (v51 >= v50)
        {
          v162 = v30[1].n128_u64[0];
          v128 = *v30;
          *v30 = *v17;
          v30[1].n128_u64[0] = v17[1].n128_u64[0];
          v17[1].n128_u64[0] = v162;
          *v17 = v128;
          if (*(v42 + 32) >= v17->n128_u64[1])
          {
            goto LABEL_60;
          }

          v159 = v17[1].n128_u64[0];
          v125 = *v17;
          *v17 = *(v42 + 24);
          v17[1].n128_u64[0] = *(v42 + 40);
        }

        else
        {
          v159 = v30[1].n128_u64[0];
          v125 = *v30;
          *v30 = *(v42 + 24);
          v30[1].n128_u64[0] = *(v42 + 40);
        }

        *(v42 + 40) = v159;
        *(v42 + 24) = v125;
      }

LABEL_60:
      v163 = *(v13 + 16);
      v129 = *v13;
      v52 = *v17;
      *(v13 + 16) = v17[1].n128_u64[0];
      *v13 = v52;
      result = v129;
      v17[1].n128_u64[0] = v163;
      *v17 = v129;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v39 = *(v13 + 8);
LABEL_62:
      v53 = 0;
      v54 = *v13;
      v55 = *(v13 + 16);
      do
      {
        v56 = *(v13 + v53 + 32);
        v53 += 24;
      }

      while (v56 < v39);
      v57 = v13 + v53;
      v58 = a2;
      if (v53 == 24)
      {
        v61 = a2;
        while (v57 < v61)
        {
          v59 = v61 - 24;
          v62 = *(v61 - 2);
          v61 -= 24;
          if (v62 < v39)
          {
            goto LABEL_70;
          }
        }

        v59 = v61;
        v13 = v57;
      }

      else
      {
        do
        {
          v59 = v58 - 24;
          v60 = *(v58 - 2);
          v58 -= 24;
        }

        while (v60 >= v39);
LABEL_70:
        v13 = v57;
        if (v57 < v59)
        {
          v63 = v59;
          do
          {
            v164 = *(v13 + 16);
            v130 = *v13;
            v64 = *v63;
            *(v13 + 16) = *(v63 + 16);
            *v13 = v64;
            result = v130;
            *(v63 + 16) = v164;
            *v63 = v130;
            do
            {
              v65 = *(v13 + 32);
              v13 += 24;
            }

            while (v65 < v39);
            do
            {
              v66 = *(v63 - 16);
              v63 -= 24;
            }

            while (v66 >= v39);
          }

          while (v13 < v63);
        }
      }

      if ((v13 - 24) != a1)
      {
        result = *(v13 - 24);
        a1[1].n128_u64[0] = *(v13 - 8);
        *a1 = result;
      }

      *(v13 - 24) = v54;
      *(v13 - 16) = v39;
      *(v13 - 8) = v55;
      if (v57 < v59)
      {
        goto LABEL_81;
      }

      v67 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*>(a1, (v13 - 24), result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*>(v13, a2, v68))
      {
        a2 = (v13 - 24);
        if (!v67)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v67)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,false>(a1, (v13 - 24), a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      v85 = *(v13 + 32);
      v86 = *(v13 + 56);
      if (v85 >= *(v13 + 8))
      {
        if (v86 < v85)
        {
          v170 = *(v13 + 40);
          v136 = *(v13 + 24);
          *(v13 + 24) = *(v13 + 48);
          *(v13 + 40) = *(v13 + 64);
          result = v136;
          *(v13 + 64) = v170;
          *(v13 + 48) = v136;
          if (*(v13 + 32) < *(v13 + 8))
          {
            v171 = *(v13 + 16);
            v137 = *v13;
            *v13 = *(v13 + 24);
            *(v13 + 16) = *(v13 + 40);
            result = v137;
            *(v13 + 40) = v171;
            *(v13 + 24) = v137;
          }
        }
      }

      else
      {
        if (v86 < v85)
        {
          v168 = *(v13 + 16);
          v134 = *v13;
          *v13 = *(v13 + 48);
          *(v13 + 16) = *(v13 + 64);
          goto LABEL_153;
        }

        v173 = *(v13 + 16);
        v139 = *v13;
        *v13 = *(v13 + 24);
        *(v13 + 16) = *(v13 + 40);
        result = v139;
        *(v13 + 40) = v173;
        *(v13 + 24) = v139;
        if (*(v13 + 56) < *(v13 + 32))
        {
          v168 = *(v13 + 40);
          v134 = *(v13 + 24);
          *(v13 + 24) = *(v13 + 48);
          *(v13 + 40) = *(v13 + 64);
LABEL_153:
          result = v134;
          *(v13 + 64) = v168;
          *(v13 + 48) = v134;
        }
      }

      if (*(a2 - 2) >= *(v13 + 56))
      {
        return result;
      }

      v174 = *(v13 + 64);
      v140 = *(v13 + 48);
      v107 = *v11;
      *(v13 + 64) = *(a2 - 1);
      *(v13 + 48) = v107;
      result = v140;
      *(a2 - 1) = v174;
      *v11 = v140;
      if (*(v13 + 56) >= *(v13 + 32))
      {
        return result;
      }

      v175 = *(v13 + 40);
      v141 = *(v13 + 24);
      *(v13 + 24) = *(v13 + 48);
      *(v13 + 40) = *(v13 + 64);
      result = v141;
      *(v13 + 64) = v175;
      *(v13 + 48) = v141;
LABEL_157:
      if (*(v13 + 32) < *(v13 + 8))
      {
        v176 = *(v13 + 16);
        v142 = *v13;
        *v13 = *(v13 + 24);
        *(v13 + 16) = *(v13 + 40);
        result = v142;
        *(v13 + 40) = v176;
        *(v13 + 24) = v142;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,0>(v13, (v13 + 24), (v13 + 48), (v13 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v82 = *(v13 + 32);
  v83 = *(a2 - 2);
  if (v82 >= *(v13 + 8))
  {
    if (v83 >= v82)
    {
      return result;
    }

    v169 = *(v13 + 40);
    v135 = *(v13 + 24);
    v99 = *v11;
    *(v13 + 40) = *(a2 - 1);
    *(v13 + 24) = v99;
    result = v135;
    *(a2 - 1) = v169;
    *v11 = v135;
    goto LABEL_157;
  }

  if (v83 >= v82)
  {
    v172 = *(v13 + 16);
    v138 = *v13;
    *v13 = *(v13 + 24);
    *(v13 + 16) = *(v13 + 40);
    result = v138;
    *(v13 + 40) = v172;
    *(v13 + 24) = v138;
    if (*(a2 - 2) >= *(v13 + 32))
    {
      return result;
    }

    v167 = *(v13 + 40);
    v133 = *(v13 + 24);
    v106 = *v11;
    *(v13 + 40) = *(a2 - 1);
    *(v13 + 24) = v106;
  }

  else
  {
    v167 = *(v13 + 16);
    v133 = *v13;
    v84 = *v11;
    *(v13 + 16) = *(a2 - 1);
    *v13 = v84;
  }

  result = v133;
  *(a2 - 1) = v167;
  *v11 = v133;
  return result;
}