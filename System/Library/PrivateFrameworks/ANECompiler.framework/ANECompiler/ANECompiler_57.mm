uint64_t operations_research::sat::FixedModuloPropagator::PropagateBoundsWhenExprIsPositive(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 112);
  v5 = *a3;
  v6 = *(a3 + 2);
  if (v5 == -1)
  {
    v10 = *(a3 + 2);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(a3 + 1);
    v8 = v4[5];
    v9 = 8 * v5;
    v10 = v6 - *(v8 + (v9 ^ 8)) * v7;
    v6 += *(v8 + v9) * v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (v10 != *(v3 + 32) - 1)
  {
LABEL_6:
    v11 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    if (v11 == -1)
    {
      v16 = *(a2 + 2);
      v18 = *(v3 + 32);
      v19 = v13 / v18;
      if (v13 % v18 >= v6)
      {
LABEL_8:
        v20 = v16 / v18;
        if (v16 % v18 <= v10)
        {
          return 1;
        }

LABEL_27:
        v35 = *(v3 + 112);
        v36 = v18 + v18 * v20 + v6;
        v37 = *a2;
        if (v37 == -1)
        {
          v48 = *(a2 + 2) < v36;
          v40 = 1;
          if (!v48)
          {
            v40 = -1;
          }

          v41 = 0xFFFFFFFFLL;
          v42 = *a3;
          if (v42 != -1)
          {
LABEL_32:
            v43 = v35[5];
            v44 = 8 * v42;
            v45 = *(v43 + v44);
            *&v49 = v42;
            *(&v49 + 1) = v45;
            v46 = *(v43 + (v44 ^ 8));
            if (v46 - 1 > 0x7FFFFFFFFFFFFFFDLL)
            {
              v46 = 0x7FFFFFFFFFFFFFFFLL;
            }

            *&v50 = v42 ^ 1;
            *(&v50 + 1) = v46;
            if (v37 != -1)
            {
LABEL_35:
              v47 = *(v35[5] + 8 * v37);
              v51 = v37;
              v52 = v47;
              result = operations_research::sat::IntegerTrail::SafeEnqueue(v35, v41, v40, &v49, 3);
              if (!result)
              {
                return result;
              }

              return 1;
            }

LABEL_42:
            v51 = 0xFFFFFFFFLL;
            v52 = -1;
            result = operations_research::sat::IntegerTrail::SafeEnqueue(v35, v41, v40, &v49, 3);
            if (!result)
            {
              return result;
            }

            return 1;
          }
        }

        else
        {
          v38 = *(a2 + 1);
          v39 = v36 - *(a2 + 2);
          if (v39 / v38 * v38 >= v39)
          {
            v40 = v39 / v38;
          }

          else
          {
            v40 = v39 / v38 + 1;
          }

          v41 = *a2;
          v42 = *a3;
          if (v42 != -1)
          {
            goto LABEL_32;
          }
        }

        v49 = xmmword_23CE49C10;
        *&v50 = 0xFFFFFFFFLL;
        *(&v50 + 1) = -1;
        if (v37 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v14 = v4[5];
      v15 = 8 * v11;
      v16 = v13 + *(v14 + v15) * v12;
      v17 = v13 - *(v14 + (v15 ^ 8)) * v12;
      v18 = *(v3 + 32);
      v19 = v17 / v18;
      if (v17 % v18 >= v6)
      {
        goto LABEL_8;
      }
    }

    v21 = v10 + (v19 - 1) * v18;
    if (v11 == -1)
    {
      v23 = 1;
      if (v21 >= v13)
      {
        v23 = -1;
      }

      v24 = 0xFFFFFFFFLL;
      *&v49 = 0xFFFFFFFFLL;
      *(&v49 + 1) = -1;
      v26 = v3;
      v27 = a2;
      v28 = a3;
      if (v5 != -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v22 = (v21 - v13) / v12 - ((v21 - v13) / v12 * v12 > v21 - v13);
      if (v22 >= 0x8000000000000002)
      {
        v23 = -v22;
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v24 = v11 ^ 1;
      v25 = *(v4[5] + ((8 * v11) ^ 8));
      if (v25 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v49 = v24;
      *(&v49 + 1) = v25;
      v26 = v3;
      v27 = a2;
      v28 = a3;
      if (v5 != -1)
      {
LABEL_18:
        v29 = v4[5];
        v30 = 8 * v5;
        v31 = *(v29 + v30);
        *&v50 = v5;
        *(&v50 + 1) = v31;
        v32 = *(v29 + (v30 ^ 8));
        if (v32 - 1 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v33 = v5 ^ 1;
LABEL_25:
        v51 = v33;
        v52 = v32;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v24, v23, &v49, 3);
        if (!result)
        {
          return result;
        }

        v3 = v26;
        v18 = *(v26 + 32);
        a3 = v28;
        a2 = v27;
        v20 = v16 / v18;
        if (v16 % v18 <= v10)
        {
          return 1;
        }

        goto LABEL_27;
      }
    }

    v50 = xmmword_23CE49C10;
    v32 = -1;
    v33 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  return 1;
}

uint64_t operations_research::sat::FixedModuloPropagator::RegisterWith(operations_research::sat::FixedModuloPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 10), v4, 0xFFFFFFFF);

  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

void *operations_research::sat::LinearConstraintPropagator<true>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F421D8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  return a1;
}

void operations_research::sat::LinearConstraintPropagator<true>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F421D8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearConstraintPropagator<false>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F42208;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  return a1;
}

void operations_research::sat::LinearConstraintPropagator<false>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F42208;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LevelZeroEquality::~LevelZeroEquality(operations_research::sat::LevelZeroEquality *this)
{
  *this = &unk_284F42238;
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
}

{
  *this = &unk_284F42238;
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

void operations_research::sat::LinMinPropagator::~LinMinPropagator(operations_research::sat::LinMinPropagator *this)
{
  operations_research::sat::LinMinPropagator::~LinMinPropagator(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F42268;
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *(this + 2);
    v9 = *(this + 1);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 32);
        if (v10)
        {
          *(v8 - 24) = v10;
          operator delete(v10);
        }

        v11 = v8 - 56;
        v12 = *(v8 - 56);
        if (v12)
        {
          *(v8 - 48) = v12;
          operator delete(v12);
        }

        v8 -= 56;
      }

      while (v11 != v7);
      v9 = *(this + 1);
    }

    *(this + 2) = v7;
    operator delete(v9);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<true>::Shared>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F42470;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[8];
    if (v3)
    {
      v1[9] = v3;
      operator delete(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      v1[6] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<true>::Shared>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F42470;
  a1[1] = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      v1[9] = v2;
      operator delete(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      v1[6] = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

void std::vector<std::pair<int *,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

__n128 std::__function::__func<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F424A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE49F1FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE49F1FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE49F1FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE49F1FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}::operator()(void *a1, int a2, int a3, int a4, char **a5, std::vector<int> *this)
{
  v10 = *a1;
  if ((*a1 + 72) != a5)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(a5, *(v10 + 72), *(v10 + 80), (*(v10 + 80) - *(v10 + 72)) >> 2);
  }

  this->__end_ = this->__begin_;
  *(*(v10 + 16) + 72) = *(*(v10 + 16) + 64);
  v11 = *(v10 + 44);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 & 0xFFFFFFFE;
    do
    {
      v15 = *(*(v10 + 48) + 4 * v13);
      if (v14 != (v15 & 0xFFFFFFFE))
      {
        TrailIndexOfVarBefore = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(*(*(v10 + 16) + 8), v15, a4);
        if ((TrailIndexOfVarBefore & 0x80000000) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](this, &TrailIndexOfVarBefore);
          if (a1[1] >= 1)
          {
            std::vector<long long>::push_back[abi:ne200100](*(v10 + 16) + 64, (*(v10 + 56) + v12));
          }
        }

        v11 = *(v10 + 44);
      }

      ++v13;
      v12 += 8;
    }

    while (v13 < v11);
  }

  v16 = a1[1];
  if (v16 > 0)
  {
    operations_research::sat::IntegerTrail::RelaxLinearReason(*(*(v10 + 16) + 8), v16, *(*(v10 + 16) + 64), (*(*(v10 + 16) + 72) - *(*(v10 + 16) + 64)) >> 3, this);
  }
}

void *operations_research::RevRepository<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::~RevRepository(void *a1)
{
  *a1 = &unk_284F42590;
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

void operations_research::sat::RevIntegerValueRepository::~RevIntegerValueRepository(operations_research::sat::RevIntegerValueRepository *this)
{
  *this = &unk_284F42590;
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

void operations_research::RevRepository<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::SetLevel(uint64_t a1, int a2)
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

        std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__append(v15, v6 - v13);
      }
    }
  }
}

void std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__append(uint64_t a1, unint64_t a2)
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

void *operations_research::sat::Model::Delete<operations_research::sat::RevIntegerValueRepository>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F425B8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::RevIntegerValueRepository>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F425B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<false>::Shared>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F425F0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[8];
    if (v3)
    {
      v1[9] = v3;
      operator delete(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      v1[6] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<false>::Shared>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F425F0;
  a1[1] = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      v1[9] = v2;
      operator delete(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      v1[6] = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42628;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4A158)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4A158 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4A158))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4A158 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral*>,std::__wrap_iter<operations_research::sat::IntegerLiteral*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v28 = 16 * ((__dst - v10) >> 4);
    v29 = v28;
    if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = 16 * a5;
      v31 = v28;
      v29 = (v28 + 16 * a5);
      do
      {
        v32 = *v6;
        v6 += 16;
        *v31++ = v32;
        v30 -= 16;
      }

      while (v30);
    }

    v33 = *(a1 + 8) - __dst;
    memcpy(v29, __dst, v33);
    v34 = &v29[v33];
    *(a1 + 8) = v5;
    v35 = *a1;
    v36 = &v5[-*a1];
    v37 = v28 - v36;
    memcpy((v28 - v36), *a1, v36);
    *a1 = v37;
    *(a1 + 8) = v34;
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v28;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 4;
  if (v15 < a5)
  {
    v16 = a4 - &__src[v14];
    if (a4 != &__src[v14])
    {
      v17 = a5;
      v18 = a4;
      memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
      a4 = v18;
      a5 = v17;
    }

    v19 = (v9 + v16);
    *(a1 + 8) = v9 + v16;
    if (v15 < 1)
    {
      return v5;
    }

    v20 = &v5[16 * a5];
    v21 = v9 + v16;
    if (&v19[-16 * a5] < v9)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -16 * a5];
      do
      {
        *(v22 - v6) = *(v23 - v6);
        v23 += 16;
        v22 += 16;
      }

      while (v23 - v6 < v9);
      v21 = v22 - v6;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[16 * a5], v5, v19 - v20);
    }

    if (v9 == v5)
    {
      return v5;
    }

LABEL_29:
    memmove(v5, v6, v14);
    return v5;
  }

  v14 = 16 * a5;
  v24 = &__dst[16 * a5];
  v25 = (v9 - 16 * a5);
  for (i = *(a1 + 8); v25 < v9; ++i)
  {
    v27 = *v25++;
    *i = v27;
  }

  *(a1 + 8) = i;
  if (v9 != v24)
  {
    memmove(&__dst[16 * a5], __dst, v9 - v24);
  }

  if (v14)
  {
    goto LABEL_29;
  }

  return v5;
}

__n128 std::__function::__func<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F426A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::operator()(void *a1, uint64_t *a2, unsigned int *a3, void **a4, std::vector<int> **a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a5;
  (*a4)[1] = **a4;
  v8->__end_ = v8->__begin_;
  v9 = a1[1];
  v10 = *(a1[2] + 8) - *a1[2];
  if ((v10 >> 2) < 1)
  {
    v15 = a1[4];
    if (v15 <= 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    operations_research::sat::IntegerTrail::RelaxLinearReason(v9[9], v15, 0, 0, v8);
    goto LABEL_12;
  }

  v18 = v8;
  v11 = 0;
  v12 = v6 & 0xFFFFFFFE;
  v13 = (v10 >> 2) & 0x7FFFFFFF;
  do
  {
    v14 = *(*a1[2] + 4 * v11);
    if (v12 != (v14 & 0xFFFFFFFE))
    {
      TrailIndexOfVarBefore = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(v9[9], v14, v7);
      if ((TrailIndexOfVarBefore & 0x80000000) == 0)
      {
        std::vector<int>::push_back[abi:ne200100](v18, &TrailIndexOfVarBefore);
        if (a1[4] >= 1)
        {
          operator new();
        }
      }
    }

    ++v11;
  }

  while (v13 != v11);
  v8 = v18;
  v15 = a1[4];
  if (v15 > 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v16 = v9[19];
  v17 = v9[20];
  while (v16 != v17)
  {
    v19 = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(v9[9], *v16, v7);
    if ((v19 & 0x80000000) == 0)
    {
      std::vector<int>::push_back[abi:ne200100](v8, &v19);
    }

    v16 += 4;
  }
}

void sub_23CC07B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  __pa = v10;
  if (__pa)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::ChooseBestObjectiveValue(int a1, void *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a2);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v6 = v4[9];
  if (v6 > 1)
  {
    v8 = 0;
    _X9 = v4[11];
    __asm { PRFM            #4, [X9] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((_X9 >> 12) ^ (v15 >> 7)) & v6;
    v18 = *(_X9 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_7;
    }

LABEL_5:
    while (*(v4[12] + 4 * ((v17 + (__clz(__rbit64(v19)) >> 3)) & v6)) != a1)
    {
      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_7:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v6;
          v18 = *(_X9 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_5;
          }
        }

        v22 = 0;
        v23 = a1 ^ 1u;
        __asm { PRFM            #4, [X9] }

        v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23));
        v26 = vdup_n_s8(v25 & 0x7F);
        v27 = ((_X9 >> 12) ^ (v25 >> 7)) & v6;
        v28 = *(_X9 + v27);
        v29 = vceq_s8(v28, v26);
        if (!v29)
        {
          goto LABEL_18;
        }

LABEL_16:
        while (*(v4[12] + 4 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v6)) != v23)
        {
          v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v29)
          {
LABEL_18:
            while (!*&vceq_s8(v28, 0x8080808080808080))
            {
              v22 += 8;
              v27 = (v22 + v27) & v6;
              v28 = *(_X9 + v27);
              v29 = vceq_s8(v28, v26);
              if (v29)
              {
                goto LABEL_16;
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        goto LABEL_22;
      }
    }

LABEL_11:
    if (*(*(v5 + 5) + 8 * a1) + *(*(v5 + 5) + ((8 * a1) ^ 8)))
    {
      return (a1 ^ 1);
    }

    else
    {
      return -1;
    }
  }

  if (v4[10] < 2uLL)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *(v4 + 22);
  if (v20 == a1)
  {
    goto LABEL_11;
  }

  LODWORD(v23) = a1 ^ 1;
  if (v20 != (a1 ^ 1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_22:
  if (*(*(v5 + 5) + 8 * v23) + *(*(v5 + 5) + ((8 * v23) ^ 8)))
  {
    return a1;
  }

  else
  {
    return -1;
  }
}

uint64_t operations_research::sat::SplitAroundGivenValue(int a1, uint64_t a2, void *a3)
{
  v6 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3) + 5);
  v7 = 8 * a1;
  v8 = *(v6 + v7);
  v9 = -*(v6 + (v7 ^ 8));
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a3);
  v11 = v8 > a2;
  v12 = v8 < a2;
  if (v9 <= a2)
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = 0;
  }

  v13 = v10[9];
  if (v13 > 1)
  {
    v15 = 0;
    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1));
    v17 = vdup_n_s8(v16 & 0x7F);
    _X14 = v10[11];
    __asm { PRFM            #4, [X14] }

    v24 = ((v16 >> 7) ^ (_X14 >> 12)) & v13;
    v25 = *(_X14 + v24);
    v26 = vceq_s8(v25, v17);
    if (!v26)
    {
      goto LABEL_13;
    }

LABEL_11:
    while (*(v10[12] + 4 * ((v24 + (__clz(__rbit64(v26)) >> 3)) & v13)) != a1)
    {
      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v26)
      {
LABEL_13:
        while (!*&vceq_s8(v25, 0x8080808080808080))
        {
          v15 += 8;
          v24 = (v15 + v24) & v13;
          v25 = *(_X14 + v24);
          v26 = vceq_s8(v25, v17);
          if (v26)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_17;
      }
    }

    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_17:
    v27 = 0;
    v28 = a1 ^ 1u;
    _X15 = v10[11];
    __asm { PRFM            #4, [X15] }

    v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v28) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v28));
    v32 = vdup_n_s8(v31 & 0x7F);
    v33 = ((v31 >> 7) ^ (_X15 >> 12)) & v13;
    v34 = *(_X15 + v33);
    v35 = vceq_s8(v34, v32);
    if (!v35)
    {
      goto LABEL_20;
    }

LABEL_18:
    while (*(v10[12] + 4 * ((v33 + (__clz(__rbit64(v35)) >> 3)) & v13)) != v28)
    {
      v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v35)
      {
LABEL_20:
        while (!*&vceq_s8(v34, 0x8080808080808080))
        {
          v27 += 8;
          v33 = (v27 + v33) & v13;
          v34 = *(_X15 + v33);
          v35 = vceq_s8(v34, v32);
          if (v35)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_25;
      }
    }

    if (v12)
    {
      return a1;
    }
  }

  else if (v10[10] >= 2uLL)
  {
    v14 = *(v10 + 22);
    if (v14 == a1 && !v11)
    {
LABEL_23:
      a1 ^= 1u;
      return a1;
    }

    if ((v14 ^ a1) == 1 && v12)
    {
      return a1;
    }
  }

LABEL_25:
  _ZF = !v12;
  v36 = -1;
  if (!_ZF)
  {
    v36 = a1;
  }

  if (v11)
  {
    return v36;
  }

  else
  {
    a1 ^= 1u;
  }

  return a1;
}

unint64_t operations_research::sat::SplitAroundLpValue(int a1, void *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingDispatcher>(a2);
  v6 = a1 & 0xFFFFFFFE;
  v7 = *v5;
  if (*v5 > 1uLL)
  {
    v9 = 0;
    v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (a1 & 0xFFFFFFFE);
    v11 = 0x9DDFEA08EB382D69 * v10;
    v12 = (v10 * 0x9DDFEA08EB382D69) >> 64;
    _X11 = v5[2];
    __asm { PRFM            #4, [X11] }

    v19 = v12 ^ v11;
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X11 >> 12)) & v7;
    v22 = *(_X11 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_8;
    }

LABEL_5:
    v24 = v5[3];
    while (1)
    {
      v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v7;
      if (*(v24 + 16 * v25) == v6)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
LABEL_8:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v9 += 8;
          v21 = (v9 + v21) & v7;
          v22 = *(_X11 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v26 = (v24 + 16 * v25);
    v8 = _X11 + v25;
    if (_X11 + v25)
    {
      goto LABEL_17;
    }
  }

  else if (v5[1] >= 2uLL)
  {
    v28 = *(v5 + 4);
    v27 = v5 + 2;
    _ZF = v28 == v6;
    v8 = &absl::lts_20240722::container_internal::kSooControl;
    if (_ZF)
    {
      v26 = v27;
    }

    else
    {
      v8 = 0;
      v26 = 0;
    }

    if (v8)
    {
LABEL_17:
      v29 = v26[1];
      if (v29 && *(v29 + 24260) == 1 && ((*(v4 + 692) & 1) != 0 || *(v29 + 24261) == 1))
      {
        SolutionValue = operations_research::sat::LinearProgrammingConstraint::GetSolutionValue(v29, (a1 & 0xFFFFFFFE));
        return operations_research::sat::SplitAroundGivenValue(a1 & 0xFFFFFFFE, llround(SolutionValue), a2);
      }

      v8 = 0;
    }
  }

  else
  {
LABEL_3:
    v8 = 0;
  }

  return v8 | 0xFFFFFFFF;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingDispatcher>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearProgrammingDispatcher>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearProgrammingDispatcher>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearProgrammingDispatcher>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearProgrammingDispatcher>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearProgrammingDispatcher>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::SplitUsingBestSolutionValueInRepository(int a1, atomic_ullong *a2, void *a3)
{
  absl::lts_20240722::Mutex::Lock(a2 + 4, a2);
  v7 = a2[12];
  v6 = a2[13];
  absl::lts_20240722::Mutex::Unlock(a2 + 4);
  if (((v6 - v7) & 0x3FFFFFFFC0) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = a1 & 0xFFFFFFFE;
  v11 = a3[3];
  if (v11 > 1)
  {
    v12 = 0;
    _X11 = a3[5];
    __asm { PRFM            #4, [X11] }

    v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d));
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X11 >> 12)) & v11;
    v22 = *(_X11 + v21);
    v9 = vceq_s8(v22, v20);
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_6:
    v23 = a3[6];
    do
    {
      v24 = (v21 + (__clz(__rbit64(v9)) >> 3)) & v11;
      if (*(v23 + 16 * v24) == &gtl::FastTypeId<operations_research::sat::CpModelMapping>(void)::d)
      {
        v9 = v23 + 16 * v24;
        goto LABEL_13;
      }

      v9 &= ((v9 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v9);
LABEL_9:
    while (!*&vceq_s8(v22, 0x8080808080808080))
    {
      v12 += 8;
      v21 = (v12 + v21) & v11;
      v22 = *(_X11 + v21);
      v9 = vceq_s8(v22, v20);
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  else if (a3[4] >= 2uLL)
  {
    v9 = (a3 + 5);
  }

LABEL_13:
  v25 = *(*(v9 + 8) + 96);
  if ((*(*(v9 + 8) + 104) - v25) >> 2 <= v10)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = *(v25 + 4 * v10);
  if ((v26 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  absl::lts_20240722::Mutex::Lock(a2 + 4, v8);
  v27 = *(*(a2[12] + 8) + 8 * v26);
  absl::lts_20240722::Mutex::Unlock(a2 + 4);
  return operations_research::sat::SplitAroundGivenValue(v10, v27, a3);
}

void operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = a1[1];
  if (v5 != *a1)
  {
    if (((v5 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a3 + 24) = 0;
  operator new();
}

void sub_23CC08830(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::MostFractionalHeuristic(operations_research::sat *this)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(this);
  operator new();
}

operations_research::sat::PseudoCosts *operations_research::sat::Model::GetOrCreate<operations_research::sat::PseudoCosts>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PseudoCosts>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::PseudoCosts>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::PseudoCosts>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::PseudoCosts>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::PseudoCosts>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::SequentialSearch(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  v4 = 0;
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>(&v3, *a1, a1[1], (a1[1] - *a1) >> 5);
  *(a2 + 24) = 0;
  operator new();
}

void operations_research::sat::SequentialValueSelection(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X0>)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a2);
  v10 = *(a1 + 24);
  if (v10)
  {
    if (v10 == a1)
    {
      v12 = v11;
      (*(*v10 + 24))(v10, v11);
    }

    else
    {
      v12 = (*(*v10 + 16))(v10);
    }
  }

  else
  {
    v12 = 0;
  }

  v13[0] = v9;
  v13[1] = 0uLL;
  std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>(v13 + 8, *a4, a4[1], (a4[1] - *a4) >> 5);
  v14 = v8;
  *(a3 + 24) = 0;
  operator new();
}

void sub_23CC08DB4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0::~$_0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[5];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v7 = a1[3];
  if (v7 == a1)
  {
    (*(*v7 + 32))(v7);
    return a1;
  }

  else
  {
    if (v7)
    {
      (*(*v7 + 40))(v7);
    }

    return a1;
  }
}

void operations_research::sat::IntegerValueSelectionHeuristic(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a2);
  v9 = *v7;
  v8 = *(v7 + 1);
  if (*v7 == v8)
  {
    v12 = 0;
LABEL_10:
    v18 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
    if (v12 >= ((*(v18 + 6) - *(v18 + 5)) >> 3) / 2 && ((v6[727] & 1) != 0 || v6[692] == 1))
    {
      v48 = &unk_284F42A18;
      v49 = a2;
      v51 = &v48;
      v44 = std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__emplace_back_slow_path<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>(&v43, &v48);
      if (v51 == &v48)
      {
        (*(*v51 + 4))(v51);
        if (v6[329] != 1)
        {
          goto LABEL_41;
        }

LABEL_17:
        v19 = a2[3];
        if (v19 > 1)
        {
          v21 = 0;
          _X11 = a2[5];
          __asm { PRFM            #4, [X11] }

          v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
          v29 = vdup_n_s8(v28 & 0x7F);
          v30 = ((v28 >> 7) ^ (_X11 >> 12)) & v19;
          v31 = *(_X11 + v30);
          v32 = vceq_s8(v31, v29);
          if (!v32)
          {
            goto LABEL_26;
          }

LABEL_23:
          v33 = a2[6];
          while (1)
          {
            v34 = (v30 + (__clz(__rbit64(v32)) >> 3)) & v19;
            if (*(v33 + 16 * v34) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
            {
              break;
            }

            v32 &= ((v32 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v32)
            {
LABEL_26:
              while (!*&vceq_s8(v31, 0x8080808080808080))
              {
                v21 += 8;
                v30 = (v21 + v30) & v19;
                v31 = *(_X11 + v30);
                v32 = vceq_s8(v31, v29);
                if (v32)
                {
                  goto LABEL_23;
                }
              }

LABEL_41:
              if (v6[693] == 1)
              {
                goto LABEL_42;
              }

              goto LABEL_49;
            }
          }

          v20 = (v33 + 16 * v34);
          if (!(_X11 + v34))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (a2[4] < 2uLL)
          {
            goto LABEL_41;
          }

          v20 = a2 + 5;
          if (a2[5] != &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
          {
            goto LABEL_41;
          }
        }

        v35 = v20[1];
        if (!v35)
        {
          goto LABEL_41;
        }

        if (dword_27E25D038[0] >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_3::operator() const(void)::site, dword_27E25D038[0]))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v48, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 387);
          v41 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v48, 3);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v41, "Using best solution value selection heuristic.", 0x2EuLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v48);
        }

        v48 = &unk_284F42AA8;
        v49 = a2;
        v50 = v35;
        v51 = &v48;
        v36 = v44;
        if (v44 >= v45)
        {
          v37 = std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__emplace_back_slow_path<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>(&v43, &v48);
        }

        else
        {
          *(v44 + 24) = v44;
          (*(*v51 + 3))(v51, v36);
          v37 = v36 + 32;
        }

        v44 = v37;
        if (v51 != &v48)
        {
          if (v51)
          {
            (*(*v51 + 5))();
          }

          goto LABEL_41;
        }

        (*(*v51 + 4))(v51);
        if (v6[693] == 1)
        {
LABEL_42:
          v48 = &unk_284F42B28;
          v49 = a2;
          v51 = &v48;
          v38 = v44;
          if (v44 >= v45)
          {
            v39 = std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__emplace_back_slow_path<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>(&v43, &v48);
          }

          else
          {
            *(v44 + 24) = v44;
            (*(*v51 + 3))(v51, v38);
            v39 = v38 + 32;
          }

          v44 = v39;
          if (v51 == &v48)
          {
            (*(*v51 + 4))(v51);
          }

          else if (v51)
          {
            (*(*v51 + 5))();
          }
        }

LABEL_49:
        memset(__p, 0, sizeof(__p));
        std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>(__p, v43, v44, (v44 - v43) >> 5);
        v40 = *(a1 + 24);
        if (v40)
        {
          if (v40 == a1)
          {
            v47 = v46;
            (*(*v40 + 24))(v40, v46);
LABEL_54:
            operations_research::sat::SequentialValueSelection(v46, a2, a3, __p);
          }

          v40 = (*(*v40 + 16))(v40);
        }

        v47 = v40;
        goto LABEL_54;
      }

      if (v51)
      {
        (*(*v51 + 5))();
      }
    }

    if (v6[329] != 1)
    {
      goto LABEL_41;
    }

    goto LABEL_17;
  }

  v10 = 0;
  if (v8 - 8 == v9)
  {
    v11 = *v7;
  }

  else
  {
    v13 = 0;
    v14 = ((v8 - 8 - v9) >> 3) + 1;
    v11 = &v9[8 * (v14 & 0x3FFFFFFFFFFFFFFELL)];
    v15 = v9 + 8;
    v16 = v14 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v10 += (*(*(v15 - 1) + 23640) - *(*(v15 - 1) + 23632)) >> 2;
      v13 += (*(*v15 + 23640) - *(*v15 + 23632)) >> 2;
      v15 += 2;
      v16 -= 2;
    }

    while (v16);
    v10 += v13;
    if (v14 == (v14 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  do
  {
    v17 = *v11;
    v11 += 8;
    v10 += (*(v17 + 23640) - *(v17 + 23632)) >> 2;
  }

  while (v11 != v8);
LABEL_9:
  v12 = 2 * v10;
  goto LABEL_10;
}

void sub_23CC09710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::~function(uint64_t a1)
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

char **std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::SatSolverHeuristic(operations_research::sat *this)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
  operator new();
}

operations_research::sat::IntegerTrail *operations_research::sat::PseudoCost@<X0>(operations_research::sat::IntegerTrail *this@<X0>, operations_research::sat::Model *a2@<X1>, char *a3@<X8>)
{
  v3 = *(this + 3);
  if (v3 > 1)
  {
    v4 = 0;
    _X12 = *(this + 5);
    __asm { PRFM            #4, [X12] }

    v11 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d));
    v12 = vdup_n_s8(v11 & 0x7F);
    v13 = ((v11 >> 7) ^ (_X12 >> 12)) & v3;
    v14 = *(_X12 + v13);
    v15 = vceq_s8(v14, v12);
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_5:
    v16 = *(this + 6);
    while (1)
    {
      v17 = (v13 + (__clz(__rbit64(v15)) >> 3)) & v3;
      if (*(v16 + 16 * v17) == &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
      {
        break;
      }

      v15 &= ((v15 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v15)
      {
LABEL_8:
        while (!*&vceq_s8(v14, 0x8080808080808080))
        {
          v4 += 8;
          v13 = (v4 + v13) & v3;
          v14 = *(_X12 + v13);
          v15 = vceq_s8(v14, v12);
          if (v15)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_19;
      }
    }

    v18 = (v16 + 16 * v17);
    if (_X12 + v17)
    {
      goto LABEL_16;
    }
  }

  else if (*(this + 4) >= 2uLL)
  {
    v18 = this + 40;
    v19 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(this + 5) != &gtl::FastTypeId<operations_research::sat::ObjectiveDefinition>(void)::d)
    {
      v19 = 0;
      v18 = a3;
    }

    if (v19)
    {
LABEL_16:
      v20 = *(v18 + 1);
      if (v20 && *(v20 + 16) != -1)
      {
        v21 = this;
        v23 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PseudoCosts>(this);
        this = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(v21);
        *a3 = &unk_284F42D28;
        *(a3 + 1) = v23;
        *(a3 + 2) = this;
        *(a3 + 3) = a3;
        return this;
      }
    }
  }

LABEL_19:
  *a3 = &unk_284F42CA8;
  *(a3 + 3) = a3;
  return this;
}

void operations_research::sat::SchedulingSearchHeuristic(uint64_t *__return_ptr a1@<X8>, operations_research::sat *this@<X0>)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntRepository>(this);
  v5 = (*(v4 + 72) - *(v4 + 64)) >> 3;
  v6 = -1431655765 * v5;
  if (0xAAAAAAAB00000000 * v5)
  {
    if (((0xAAAAAAAB00000000 * v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 1)
  {
    v7 = v6 & 0x7FFFFFFF;
    if (v7 <= 7)
    {
      v8 = 0;
      do
      {
LABEL_10:
        *(4 * v8) = v8;
        ++v8;
      }

      while (v7 != v8);
      goto LABEL_11;
    }

    v8 = v7 - (v6 & 7);
    v9 = xmmword_23CE38660;
    v10 = 16;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    v12.i64[0] = 0x800000008;
    v12.i64[1] = 0x800000008;
    v13 = v8;
    do
    {
      *(v10 - 16) = v9;
      *v10 = vaddq_s32(v9, v11);
      v9 = vaddq_s32(v9, v12);
      v10 += 32;
      v13 -= 8;
    }

    while (v13);
    if ((v6 & 7) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  a1[3] = 0;
  operator new();
}

void sub_23CC09E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::~$_0(va);
  if (v12)
  {
    operator delete(v12);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  _Unwind_Resume(a1);
}

void *operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::~$_0(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t *operations_research::sat::DisjunctivePrecedenceSearchHeuristic@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::sat *this@<X0>)
{
  result = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(this);
  *a1 = &unk_284F42EA8;
  a1[1] = result;
  a1[3] = a1;
  return result;
}

void operations_research::sat::CumulativePrecedenceSearchHeuristic(operations_research::sat *this)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerSearchHelper>(this);
  operator new();
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerSearchHelper>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerSearchHelper>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerSearchHelper>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::IntegerSearchHelper>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::IntegerSearchHelper>(a1);
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::IntegerSearchHelper>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::IntegerSearchHelper>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::RandomizeOnRestartHeuristic(operations_research::sat *this, void *a3)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a3);
  operator new();
}

void sub_23CC0BD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43)
{
  std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::~function(v45 - 256);
  if (v44)
  {
    operator delete(v44);
    std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~vector[abi:ne200100](&a43);
    v47 = *(v45 - 160);
    if (!v47)
    {
LABEL_3:
      v48 = v43;
      if (!v43)
      {
LABEL_8:
        std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](&a40);
        std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v45 - 128);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v48);
      goto LABEL_8;
    }
  }

  else
  {
    std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~vector[abi:ne200100](&a43);
    v47 = *(v45 - 160);
    if (!v47)
    {
      goto LABEL_3;
    }
  }

  *(v45 - 152) = v47;
  operator delete(v47);
  v48 = v43;
  if (!v43)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_23CC0C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~vector[abi:ne200100](&a43);
  if (*(v43 - 160))
  {
    JUMPOUT(0x23CC0BFACLL);
  }

  JUMPOUT(0x23CC0BF6CLL);
}

void *operations_research::sat::RandomizeOnRestartHeuristic(BOOL,operations_research::sat::Model *)::$_3::~$_3(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    v3 = a1[18];
    v4 = a1[17];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = a1[17];
    }

    a1[18] = v2;
    operator delete(v4);
  }

  v7 = a1[14];
  if (v7)
  {
    v8 = a1[15];
    v9 = a1[14];
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 8);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = a1[14];
    }

    a1[15] = v7;
    operator delete(v9);
  }

  v12 = a1[11];
  if (v12)
  {
    a1[12] = v12;
    operator delete(v12);
  }

  v13 = a1[7];
  if (v13)
  {
    a1[8] = v13;
    operator delete(v13);
  }

  return a1;
}

void operations_research::sat::FollowHint(uint64_t a1, uint64_t a2, void *a3)
{
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntRepository>(a3);
  operator new();
}

void sub_23CC0C48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_23CC0C4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v13 = *v11;
  if (*v11)
  {
    v9[7] = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    v9[4] = v14;
    operator delete(v14);
  }

  operator delete(v9);
  operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_23CC0C4E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::sat::FollowHint(std::vector<operations_research::sat::BooleanOrIntegerVariable> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::sat::Model *)::$_0::~$_0(void *a1)
{
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

operations_research::sat::RestartPolicy *operations_research::sat::Model::GetOrCreate<operations_research::sat::RestartPolicy>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RestartPolicy>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RestartPolicy>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::RestartPolicy>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::RestartPolicy>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::RestartPolicy>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::ConfigureSearchHeuristics(operations_research::sat *this, operations_research::sat::Model *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(this);
  if (!*(v3 + 176))
  {
    operations_research::sat::ConfigureSearchHeuristics(&v23);
  }

  v4 = v3;
  *(v3 + 48) = 0;
  v6 = *v3;
  v5 = *(v3 + 8);
  if (v5 != *v3)
  {
    v7 = v5 - 32;
    do
    {
      v8 = *(v5 - 8);
      v5 -= 32;
      if (v5 == v8)
      {
        (*(*v8 + 32))(v8);
      }

      else if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      v7 -= 32;
    }

    while (v5 != v6);
  }

  v9 = v4[3];
  v4[1] = v6;
  v10 = v4[4];
  if (v10 != v9)
  {
    v11 = v10 - 32;
    do
    {
      v12 = *(v10 - 8);
      v10 -= 32;
      if (v10 == v12)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v11 -= 32;
    }

    while (v10 != v9);
  }

  v4[4] = v9;
  v14 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(this) + 62);
  if (v14 > 3)
  {
    if (v14 <= 5)
    {
      if (v14 != 4)
      {
        operations_research::sat::RandomizeOnRestartHeuristic(0, this);
      }

      operations_research::sat::PseudoCost(this, v13, &v23);
      operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
      operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
      operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
      operator new();
    }

    switch(v14)
    {
      case 6:
        v18 = v4[26];
        if (v18)
        {
          if (v18 == v4 + 23)
          {
            v24 = &v23;
            (*(*v18 + 24))(v18, &v23);
          }

          else
          {
            v24 = (*(*v18 + 16))(v18);
          }

          operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
          operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
          operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
          operator new();
        }

        operations_research::sat::ConfigureSearchHeuristics(&v23);
      case 7:
        v19 = v4[10];
        if (v19)
        {
          if (v19 == v4 + 7)
          {
            v24 = &v23;
            (*(*v19 + 24))(v19, &v23);
          }

          else
          {
            v24 = (*(*v19 + 16))(v19);
          }

          operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
          operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
          operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
          operator new();
        }

        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
        operator new();
      case 8:
        operations_research::sat::RandomizeOnRestartHeuristic(0, this);
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      operations_research::sat::RandomizeOnRestartHeuristic(1, this);
    }

    v16 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(this);
    if (*v16 != *(v16 + 1))
    {
      operations_research::sat::LinearProgrammingConstraint::HeuristicLpReducedCostAverageBranching(v21, **v16);
      v17 = v22;
      if (v22)
      {
        if (v22 == v21)
        {
          v24 = &v23;
          (*(*v22 + 24))();
LABEL_36:
          v25 = 0;
          operator new();
        }

        v17 = (*(*v22 + 16))();
      }

      v24 = v17;
      goto LABEL_36;
    }

    v20 = v4[22];
    if (v20)
    {
      if (v20 == v4 + 19)
      {
        v24 = &v23;
        (*(*v20 + 24))(v20, &v23);
LABEL_60:
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
        operator new();
      }

      v20 = (*(*v20 + 16))(v20);
    }

    v24 = v20;
    goto LABEL_60;
  }

  if (!v14)
  {
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
    operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
    operator new();
  }

  if (v14 == 1)
  {
    v15 = v4[22];
    if (v15)
    {
      if (v15 == v4 + 19)
      {
        v24 = &v23;
        (*(*v15 + 24))(v15, &v23);
LABEL_54:
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(this);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this);
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this);
        operator new();
      }

      v15 = (*(*v15 + 16))(v15);
    }

    v24 = v15;
    goto LABEL_54;
  }
}

void sub_23CC0FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v60 - 136);
  _Unwind_Resume(a1);
}

void sub_23CC0FE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC0FF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC0FF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC0FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC0FFB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<BOOL ()(void)>>::assign(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v28 = *MEMORY[0x277D85DE8];
  v6 = result[2];
  v7 = *result;
  if (a2 > (v6 - *result) >> 5)
  {
    if (v7)
    {
      v8 = result[1];
      v9 = *result;
      if (v8 != v7)
      {
        v10 = v8 - 32;
        do
        {
          v11 = *(v8 - 8);
          v8 -= 32;
          if (v8 == v11)
          {
            (*(*v11 + 32))(v11);
          }

          else if (v11)
          {
            (*(*v11 + 40))(v11);
          }

          v10 -= 32;
        }

        while (v8 != v7);
        v9 = *v5;
      }

      v5[1] = v7;
      operator delete(v9);
      v6 = 0;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    if (!(a2 >> 59))
    {
      v23 = v6 >> 4;
      if (v6 >> 4 <= a2)
      {
        v23 = a2;
      }

      v24 = v6 >= 0x7FFFFFFFFFFFFFE0;
      v25 = 0x7FFFFFFFFFFFFFFLL;
      if (!v24)
      {
        v25 = v23;
      }

      if (!(v25 >> 59))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1] - v7;
  v13 = v12 >> 5;
  if (v12 >> 5 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v12 >> 5;
  }

  for (; v14; --v14)
  {
    v15 = a3[3];
    if (v15)
    {
      if (v15 == a3)
      {
        v27 = v26;
        (*(*v15 + 24))(v15, v26);
      }

      else
      {
        v27 = (*(*v15 + 16))(v15);
      }
    }

    else
    {
      v27 = 0;
    }

    std::__function::__value_func<BOOL ()(void)>::swap[abi:ne200100](v26, v7);
    result = v27;
    if (v27 == v26)
    {
      result = (*(*v27 + 32))(v27);
    }

    else if (v27)
    {
      result = (*(*v27 + 40))();
    }

    v7 += 4;
  }

  v16 = a2 - v13;
  if (a2 <= v13)
  {
    v20 = v5[1];
    v21 = *v5 + 32 * a2;
    if (v20 != v21)
    {
      v22 = v20 - 4;
      do
      {
        result = *(v20 - 1);
        v20 -= 4;
        if (v20 == result)
        {
          result = (*(*result + 32))(result);
        }

        else if (result)
        {
          result = (*(*result + 40))(result);
        }

        v22 -= 4;
      }

      while (v20 != v21);
    }

    v5[1] = v21;
    return result;
  }

  v17 = v5[1];
  if ((v16 & 0x7FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_52;
  }

  v18 = v17 + 32 * v16;
  v19 = 32 * a2 - 32 * v13;
  do
  {
    result = a3[3];
    if (!result)
    {
      goto LABEL_29;
    }

    if (result != a3)
    {
      result = (*(*result + 16))(result);
LABEL_29:
      *(v17 + 24) = result;
      goto LABEL_30;
    }

    *(v17 + 24) = v17;
    result = (*(*a3[3] + 24))(a3[3], v17);
LABEL_30:
    v17 += 32;
    v19 -= 32;
  }

  while (v19);
  v17 = v18;
LABEL_52:
  v5[1] = v17;
  return result;
}

uint64_t std::function<operations_research::sat::IntegerLiteral ()(void)>::~function(uint64_t a1)
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

void operations_research::sat::CompleteHeuristics(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::reserve(a3, (a1[1] - *a1) >> 5);
  v5 = *a1;
  if (*a1 != a1[1])
  {
    v6 = *(v5 + 24);
    if (v6)
    {
      if (v6 == v5)
      {
        v14 = v13;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v13);
LABEL_7:
        v7 = *(a2 + 24);
        if (v7)
        {
          if (v7 == a2)
          {
            v16 = v15;
            (*(*v7 + 24))(v7, v15);
LABEL_12:
            __p = 0;
            v9 = 0;
            v10 = 0;
            std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>(&__p, v13, v17, 2uLL);
            v11 = 0uLL;
            v12 = 0;
            std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>(&v11, __p, v9, (v9 - __p) >> 5);
            v18 = 0;
            operator new();
          }

          v7 = (*(*v7 + 16))(v7);
        }

        v16 = v7;
        goto LABEL_12;
      }

      v6 = (*(*v6 + 16))(v6);
    }

    v14 = v6;
    goto LABEL_7;
  }
}

void sub_23CC10A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, char *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va2);
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](va);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v4);
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(va1);
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~vector[abi:ne200100](v3);
  _Unwind_Resume(a1);
}

void std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::reserve(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CC10C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::IntegerSearchHelper::BeforeTakingDecision(operations_research::sat::IntegerSearchHelper *this)
{
  v2 = *(*(this + 3) + 816);
  if (*v2 == v2[1] && v2[3] == v2[4] || (result = operations_research::sat::SatSolver::ResetToLevelZero(*(this + 2)), result))
  {
    if (*(*(this + 2) + 296))
    {
      return 1;
    }

    v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LevelZeroCallbackHelper>(*(this + 1));
    v5 = *v4;
    v6 = v4[1];
    if (*v4 == v6)
    {
LABEL_11:
      if (*(*this + 688) != 1 || (operations_research::sat::Inprocessing::InprocessingRound(*(this + 10)) & 1) != 0)
      {
        return 1;
      }
    }

    else
    {
      while (1)
      {
        v7 = *(v5 + 24);
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if (((*(*v7 + 48))(v7) & 1) == 0)
        {
          break;
        }

        v5 += 32;
        if (v5 == v6)
        {
          goto LABEL_11;
        }
      }
    }

    result = 0;
    *(*(this + 2) + 528) = 1;
  }

  return result;
}

uint64_t operations_research::sat::IntegerSearchHelper::GetDecisionLiteral(uint64_t a1, unsigned int *a2)
{
  result = *a2;
  if (result == -1)
  {
    result = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(a1 + 32), *(a2 + 1), *(a2 + 2));
  }

  if (((*(*(*(*(a1 + 16) + 216) + 24) + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (result & 0x3E)) & 3) != 0)
  {
    if (dword_27E25D050 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::IntegerSearchHelper::GetDecisionLiteral(operations_research::sat::BooleanOrIntegerLiteral const&)::$_0::operator() const(void)::site, dword_27E25D050))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 1379);
      v4 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v5, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, "Trying to take a decision that is already assigned!", 0x33uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v4, " Fix this. Continuing for now...", 0x20uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v5);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t operations_research::sat::IntegerSearchHelper::GetDecision(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = -1;
  if (operations_research::TimeLimit::LimitReached(*(a1 + 64)))
  {
    return 1;
  }

  while (1)
  {
    LODWORD(v23) = -1;
    LODWORD(v24) = -1;
    v25 = 0;
    if (operations_research::sat::IntegerTrail::InPropagationLoop(*(a1 + 24)))
    {
      VariableToBranchOnInPropagationLoop = operations_research::sat::IntegerTrail::NextVariableToBranchOnInPropagationLoop(*(a1 + 24));
      if (VariableToBranchOnInPropagationLoop != -1)
      {
        v7 = *(*(a1 + 24) + 40);
        v8 = 8 * VariableToBranchOnInPropagationLoop;
        v9 = *(v7 + v8);
        v28 = v9;
        v27 = -*(v7 + (v8 ^ 8));
        if (v27 <= v9)
        {
          operations_research::sat::IntegerSearchHelper::GetDecision(&v28, &v27, v26);
        }

        v10 = (v27 - v9) / 2;
        if (v10 <= 1)
        {
          v10 = 1;
        }

        v24 = VariableToBranchOnInPropagationLoop;
        v25 = v10 + v9;
        goto LABEL_23;
      }
    }

    v11 = *(a2 + 24);
    if (!v11)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v11 + 48))(&v23);
    if (*(a1 + 88) == 1)
    {
      break;
    }

    if (v23 == -1 && v24 == -1)
    {
      if (!operations_research::sat::IntegerTrail::CurrentBranchHadAnIncompletePropagation(*(a1 + 24)))
      {
        return 1;
      }

      UnassignedVariable = operations_research::sat::IntegerTrail::FirstUnassignedVariable(*(a1 + 24));
      if (UnassignedVariable == -1)
      {
        return 1;
      }

      v13 = *(*(a1 + 24) + 40);
      v14 = 8 * UnassignedVariable;
      v15 = *(v13 + v14);
      v16 = *(v13 + (v14 ^ 8));
      if (v15 >= 0x8000000000000002)
      {
        v17 = -v15;
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v18 = UnassignedVariable ^ 1;
      v19 = v15 + v16 == 0;
      if (v15 + v16)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v18 = 0xFFFFFFFFLL;
      }

      v24 = v18;
      v25 = v20;
      if (v18 == 0xFFFFFFFFLL)
      {
        return 1;
      }
    }

LABEL_23:
    DecisionLiteral = operations_research::sat::IntegerSearchHelper::GetDecisionLiteral(a1, &v23);
    *a3 = DecisionLiteral;
    if (DecisionLiteral != -1 || operations_research::TimeLimit::LimitReached(*(a1 + 64)))
    {
      return 1;
    }
  }

  *(a1 + 88) = 0;
  operations_research::sat::SatSolver::ProcessCurrentConflict(*(a1 + 16));
  operations_research::sat::SatSolver::FinishPropagation(*(a1 + 16));
  return 0;
}

uint64_t operations_research::sat::IntegerSearchHelper::TakeDecision(uint64_t a1, unsigned int a2, double a3)
{
  operations_research::sat::PseudoCosts::BeforeTakingDecision(*(a1 + 72), a2, a3);
  v5 = *(a1 + 16);
  v6 = *(v5 + 296);
  if (operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v5, a2, v7, v8) == -1)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (!v6 && *(v9 + 296) == 1)
  {
    if (operations_research::sat::ImpliedBounds::ProcessIntegerTrail(*(a1 + 40), a2))
    {
      operations_research::sat::ProductDetector::ProcessTrailAtLevelOne(*(a1 + 56));
      v9 = *(a1 + 16);
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  operations_research::sat::PseudoCosts::AfterTakingDecision(*(a1 + 72), *(v9 + 296) <= v6);
  v10 = *(a1 + 16);
  v11 = *(a1 + 64);
  v12 = operations_research::sat::SatSolver::deterministic_time(v10);
  *(v11 + 112) = *(v11 + 112) + v12 - v10[147];
  v10[147] = v12;
  v13 = *(a1 + 16);

  return operations_research::sat::SatSolver::ReapplyAssumptionsIfNeeded(v13);
}

uint64_t operations_research::sat::IntegerSearchHelper::SolveIntegerProblem(operations_research::TimeLimit **this)
{
  if (operations_research::TimeLimit::LimitReached(this[8]))
  {
    return 3;
  }

  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SearchHeuristics>(this[1]);
  v4 = v3[1] - *v3;
  v5 = v4 >> 5;
  if (!(v4 >> 5))
  {
    operations_research::sat::IntegerSearchHelper::SolveIntegerProblem(v41);
  }

  v6 = v3;
  v7 = (v3[4] - v3[3]) >> 5;
  v8 = (v4 >> 5);
  if (v7 != v8)
  {
    operations_research::sat::IntegerSearchHelper::SolveIntegerProblem(v8, v7, v41);
  }

  v9 = operations_research::sat::SatSolver::FinishPropagation(this[2]);
  v10 = this[2];
  if (v9)
  {
    v11 = operations_research::sat::SatSolver::num_failures(v10);
    v12 = *(*this + 57);
    if (operations_research::TimeLimit::LimitReached(this[8]))
    {
      return 3;
    }

    v13 = 0;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d));
    v15 = v14 >> 7;
    v16 = vdup_n_s8(v14 & 0x7F);
LABEL_8:
    if (operations_research::sat::SatSolver::num_failures(this[2]) - v11 >= v12)
    {
      return 3;
    }

    v17 = *(v6[3] + 32 * *(v6 + 12) + 24);
    if (!v17)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v17 + 48))(v17))
    {
      if ((operations_research::sat::SatSolver::RestoreSolverToAssumptionLevel(this[2]) & 1) == 0)
      {
        return *(this[2] + 528);
      }

      *(v6 + 12) = (*(v6 + 12) + 1) % v5;
    }

    if (operations_research::sat::IntegerSearchHelper::BeforeTakingDecision(this))
    {
      v41[0] = -1;
      while (1)
      {
        result = *(this[2] + 528);
        if (result)
        {
          return result;
        }

        if (!v6[30])
        {
          break;
        }

        if (operations_research::sat::IntegerSearchHelper::GetDecision(this, (v6 + 27), v41))
        {
          if (v41[0] != -1)
          {
LABEL_25:
            if (operations_research::TimeLimit::LimitReached(this[8]))
            {
              return 3;
            }

            if (v41[0] == -1)
            {
              if (*(*this + 548) != 1)
              {
                return 2;
              }

              v37 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(this[1]);
              v38 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(this[1]);
              if (*(v38 + 12) < 1)
              {
                return 2;
              }

              v39 = v38;
              v40 = 0;
              do
              {
                operations_research::sat::SatDecisionPolicy::SetAssignmentPreference(v37, *(*(v39 + 48) + 4 * v40++), 0.0);
                result = 2;
              }

              while (v40 < *(v39 + 12));
              return result;
            }

            if ((operations_research::sat::IntegerSearchHelper::TakeDecision(this, v41[0], v19) & 1) == 0)
            {
              return *(this[2] + 528);
            }

            v21 = this[1];
            v22 = *(v21 + 3);
            if (v22 > 1)
            {
              v24 = 0;
              _X9 = *(v21 + 5);
              __asm { PRFM            #4, [X9] }

              v31 = (v15 ^ (_X9 >> 12)) & v22;
              v32 = *(_X9 + v31);
              v33 = vceq_s8(v32, v16);
              if (!v33)
              {
                goto LABEL_37;
              }

LABEL_34:
              v34 = *(v21 + 6);
              while (1)
              {
                v35 = (v31 + (__clz(__rbit64(v33)) >> 3)) & v22;
                if (*(v34 + 16 * v35) == &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
                {
                  break;
                }

                v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v33)
                {
LABEL_37:
                  while (!*&vceq_s8(v32, 0x8080808080808080))
                  {
                    v24 += 8;
                    v31 = (v24 + v31) & v22;
                    v32 = *(_X9 + v31);
                    v33 = vceq_s8(v32, v16);
                    if (v33)
                    {
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_46;
                }
              }

              v23 = (v34 + 16 * v35);
              if (!(_X9 + v35))
              {
                goto LABEL_46;
              }
            }

            else
            {
              if (*(v21 + 4) < 2uLL)
              {
                goto LABEL_46;
              }

              v23 = v21 + 40;
              if (*(v21 + 5) != &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
              {
                goto LABEL_46;
              }
            }

            if (*(v23 + 1) && *(*this + 143) >= 2 && ++v13 >= 100)
            {
              operations_research::sat::RecordLPRelaxationValues(v21, v20);
              v13 = 0;
            }

LABEL_46:
            v36 = operations_research::TimeLimit::LimitReached(this[8]);
            result = 3;
            if (!v36)
            {
              goto LABEL_8;
            }

            return result;
          }

          v18 = v6[30];
          v6[30] = 0;
          if (v18 == v6 + 27)
          {
            (*(*v18 + 32))(v18);
          }

          else if (v18)
          {
            (*(*v18 + 40))(v18);
          }

LABEL_16:
          if (operations_research::sat::IntegerSearchHelper::GetDecision(this, *v6 + 32 * *(v6 + 12), v41))
          {
            goto LABEL_25;
          }
        }
      }

      if (v41[0] != -1)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    return *(this[2] + 528);
  }

  return v10[528];
}

uint64_t operations_research::sat::ResetAndSolveIntegerProblem(uint64_t a1, void *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  if ((operations_research::sat::SatSolver::ResetToLevelZero(v4) & 1) == 0)
  {
    return v4[528];
  }

  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerSearchHelper>(a2);
  if ((operations_research::sat::IntegerSearchHelper::BeforeTakingDecision(v5) & 1) == 0 || (operations_research::sat::SatSolver::ResetWithGivenAssumptions(v4, a1) & 1) == 0)
  {
    return v4[528];
  }

  return operations_research::sat::IntegerSearchHelper::SolveIntegerProblem(v5);
}

operations_research::sat::ContinuousProber *operations_research::sat::ContinuousProber::ContinuousProber(operations_research::sat::ContinuousProber *this, const operations_research::sat::CpModelProto *a2, operations_research::sat::Model *a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = a3;
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
  *(this + 8) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a3);
  *(this + 9) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a3);
  *(this + 10) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a3);
  *(this + 11) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
  *(this + 12) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  *(this + 13) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a3);
  *(this + 14) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Inprocessing>(a3);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a3);
  operations_research::sat::SatParameters::SatParameters(this + 120, 0, v6);
  *(this + 137) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LevelZeroCallbackHelper>(a3);
  *(this + 138) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Prober>(a3);
  v7 = *(a3 + 3);
  if (v7 > 1)
  {
    v10 = 0;
    _X11 = *(a3 + 5);
    __asm { PRFM            #4, [X11] }

    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = ((v17 >> 7) ^ (_X11 >> 12)) & v7;
    v20 = *(_X11 + v19);
    v21 = vceq_s8(v20, v18);
    if (!v21)
    {
      goto LABEL_10;
    }

LABEL_7:
    v22 = *(a3 + 6);
    while (1)
    {
      v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v7;
      if (*(v22 + 16 * v23) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
      {
        break;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v21)
      {
LABEL_10:
        while (!*&vceq_s8(v20, 0x8080808080808080))
        {
          v10 += 8;
          v19 = (v10 + v19) & v7;
          v20 = *(_X11 + v19);
          v21 = vceq_s8(v20, v18);
          if (v21)
          {
            goto LABEL_7;
          }
        }

        goto LABEL_13;
      }
    }

    v8 = (v22 + 16 * v23);
    v9 = (_X11 + v23);
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else if (*(a3 + 4) >= 2uLL && (v8 = a3 + 40, *(a3 + 5) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d))
  {
    v9 = &absl::lts_20240722::container_internal::kSooControl;
    if (&absl::lts_20240722::container_internal::kSooControl)
    {
LABEL_14:
      v9 = *(v8 + 1);
    }
  }

  else
  {
LABEL_13:
    v9 = 0;
  }

  *(this + 139) = v9;
  if (v7 > 1)
  {
    v31 = 0;
    _X11 = *(a3 + 5);
    __asm { PRFM            #4, [X11] }

    v34 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d));
    v35 = vdup_n_s8(v34 & 0x7F);
    v36 = ((v34 >> 7) ^ (_X11 >> 12)) & v7;
    v37 = *(_X11 + v36);
    v38 = vceq_s8(v37, v35);
    if (!v38)
    {
      goto LABEL_35;
    }

LABEL_32:
    v39 = *(a3 + 6);
    while (1)
    {
      v40 = (v36 + (__clz(__rbit64(v38)) >> 3)) & v7;
      if (*(v39 + 16 * v40) == &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d)
      {
        break;
      }

      v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v38)
      {
LABEL_35:
        while (!*&vceq_s8(v37, 0x8080808080808080))
        {
          v31 += 8;
          v36 = (v31 + v36) & v7;
          v37 = *(_X11 + v36);
          v38 = vceq_s8(v37, v35);
          if (v38)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_17;
      }
    }

    v41 = (v39 + 16 * v40);
    v24 = (_X11 + v40);
    if (_X11 + v40)
    {
      goto LABEL_18;
    }
  }

  else if (*(a3 + 4) >= 2uLL)
  {
    v41 = a3 + 40;
    v24 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(a3 + 5) != &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d)
    {
      v24 = 0;
      v41 = 0;
    }

    if (v24)
    {
LABEL_18:
      v24 = *(v41 + 1);
    }
  }

  else
  {
LABEL_17:
    v24 = 0;
  }

  *(this + 140) = v24;
  *(this + 141) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a3);
  *(this + 149) = 0;
  *(this + 71) = 0u;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  *(this + 1181) = 0;
  *(this + 150) = *(this + 115);
  *(this + 1208) = xmmword_23CE306D0;
  *(this + 1240) = xmmword_23CE306D0;
  *(this + 318) = 1;
  *(this + 1284) = 0;
  *(this + 1292) = 0;
  *(this + 1276) = 0;
  *(this + 1304) = 0u;
  *(this + 1320) = 0u;
  *(this + 1336) = 0u;
  v25 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(*(this + 6));
  v49 = xmmword_23CE306D0;
  v26 = *(this + 12);
  *(this + 298) = *(*(this + 11) + 12);
  *(this + 299) = -1431655765 * ((*(v26 + 160) - *(v26 + 152)) >> 3);
  if (*(a2 + 8) >= 1)
  {
    v27 = v25;
    v28 = 0;
    do
    {
      v29 = *(v27[6] + 4 * v28);
      if (v29 == -1)
      {
        v46 = *(*v27 + 4 * v28);
        if (*(*(*(this + 12) + 40) + 8 * v46) + *(*(*(this + 12) + 40) + ((8 * v46) ^ 8)))
        {
          std::vector<int>::push_back[abi:ne200100](this + 24, &v46);
        }
      }

      else
      {
        LODWORD(v51) = (2 * v29) >> 1;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>(&v49, &v51, &v46);
        if (v48 == 1)
        {
          *v47 = v51;
          std::vector<int>::push_back[abi:ne200100](this, &v51);
        }
      }

      ++v28;
    }

    while (v28 < *(a2 + 8));
  }

  if (dword_27E25D068 > 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::ContinuousProber::ContinuousProber(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0::operator() const(void)::site, dword_27E25D068))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v46, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_search.cc", 1647);
    v42 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v46, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v42, "Start continuous probing with ", 0x1EuLL);
    v51 = (*(this + 1) - *this) >> 2;
    v43 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v42, &v51);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, " Boolean variables,  ", 0x15uLL);
    v51 = (*(this + 4) - *(this + 3)) >> 2;
    v44 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v43, &v51);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v44, " integer variables, deterministic time limit = ", 0x2FuLL);
    v51 = *(*(this + 8) + 104);
    v45 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v44, &v51);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, " on ", 4uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v45, *(this + 6));
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v46);
  }

  if (v49 >= 2)
  {
    operator delete((v50 - (BYTE8(v49) & 1) - 8));
  }

  return this;
}

void sub_23CC11B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, char a16, uint64_t a17)
{
  if (a15 >= 2)
  {
    operator delete((a17 - (a16 & 1) - 8));
    v21 = *(v17 + 1328);
    if (!v21)
    {
LABEL_3:
      std::vector<std::vector<int>>::~vector[abi:ne200100](v18);
      if (v19[4] < 2uLL)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v21 = *(v17 + 1328);
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 1336) = v21;
  operator delete(v21);
  std::vector<std::vector<int>>::~vector[abi:ne200100](v18);
  if (v19[4] < 2uLL)
  {
LABEL_4:
    if (*v19 < 2uLL)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  operator delete((*(v17 + 1256) - (*(v17 + 1248) & 1) - 8));
  if (*v19 < 2uLL)
  {
LABEL_6:
    operations_research::sat::SatParameters::~SatParameters((v17 + 120));
    v22 = *(v17 + 24);
    if (v22)
    {
      *(v17 + 32) = v22;
      operator delete(v22);
      v23 = *v17;
      if (!*v17)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }
    }

    else
    {
      v23 = *v17;
      if (!*v17)
      {
        goto LABEL_8;
      }
    }

    *(v17 + 8) = v23;
    operator delete(v23);
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete((*(v17 + 1224) - (*(v17 + 1216) & 1) - 8));
  goto LABEL_6;
}

uint64_t operations_research::sat::ContinuousProber::Probe(operations_research::sat::ContinuousProber *this)
{
  v189 = *MEMORY[0x277D85DE8];
  if (operations_research::sat::SatSolver::ResetToLevelZero(*(this + 7)))
  {
    if (operations_research::TimeLimit::LimitReached(*(this + 8)))
    {
      return 3;
    }

    v183 = (this + 1276);
    v182 = (this + 1224);
    v178 = (this + 1240);
    while (1)
    {
      if (*(this + 808) == 1 && (operations_research::sat::Inprocessing::InprocessingRound(*(this + 14)) & 1) == 0)
      {
        result = 1;
        *(*(this + 7) + 528) = 1;
        return result;
      }

      v179 = *(*(this + 138) + 304);
      v180 = *(this + 143);
      v184 = *(*(this + 7) + 216);
      v3 = *(this + 319);
      v4 = v3;
      v6 = *(this + 3);
      v5 = *(this + 4);
      if (v3 < ((v5 - v6) >> 2))
      {
        while (1)
        {
          v7 = *(v6 + 4 * v4);
          v8 = *(*(this + 12) + 40);
          v9 = 8 * v7;
          v10 = *(v8 + v9);
          v11 = v9 ^ 8;
          if (!(v10 + *(v8 + (v9 ^ 8))))
          {
            goto LABEL_9;
          }

          v12 = v10 >= 0x8000000000000002 ? -v10 : 0x7FFFFFFFFFFFFFFFLL;
          AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(this + 13), v7 ^ 1u, v12);
          v14 = (AssociatedLiteral >> 1);
          v15 = *(this + 151);
          if (v15 > 1)
          {
            break;
          }

          if (*(this + 152) <= 1uLL)
          {
            *(this + 152) = 2;
            v16 = (this + 1224);
LABEL_26:
            *v16 = v14;
            if (!operations_research::sat::Prober::ProbeOneVariable(*(this + 138), v14))
            {
              return 1;
            }

            ++*(this + 142);
            goto LABEL_28;
          }

          if (*v182 != v14)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::resize_impl(this + 151, 3uLL);
          }

LABEL_28:
          v29 = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(this + 13), v7, -*(*(*(this + 12) + 40) + v11));
          v185 = v29 >> 1;
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>(this + 151, &v185, &v186);
          if (v188 == 1)
          {
            v30 = v185;
            *v187 = v185;
            if (!operations_research::sat::Prober::ProbeOneVariable(*(this + 138), v30))
            {
              return 1;
            }

            ++*(this + 142);
          }

          if (*(this + 1188) == 1)
          {
            result = operations_research::sat::ContinuousProber::ShaveLiteral(this, AssociatedLiteral);
            if ((result - 1) < 2)
            {
              return result;
            }

            result = operations_research::sat::ContinuousProber::ShaveLiteral(this, v29);
            if ((result - 3) > 0xFFFFFFFD)
            {
              return result;
            }
          }

          result = operations_research::sat::ContinuousProber::PeriodicSyncAndCheck(this);
          if (result != 2)
          {
            return result;
          }

          v3 = *(this + 319);
          v6 = *(this + 3);
          v5 = *(this + 4);
LABEL_9:
          *v183 = ++v3;
          v4 = v3;
          if (v3 >= ((v5 - v6) >> 2))
          {
            goto LABEL_36;
          }
        }

        v17 = 0;
        _X9 = *v182;
        __asm { PRFM            #4, [X9] }

        v23 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14));
        v24 = vdup_n_s8(v23 & 0x7F);
        v25 = ((v23 >> 7) ^ (*v182 >> 12)) & v15;
        v26 = *(*v182 + v25);
        v27 = vceq_s8(v26, v24);
        if (!v27)
        {
          goto LABEL_20;
        }

        do
        {
LABEL_18:
          if (*(*(this + 154) + 4 * ((v25 + (__clz(__rbit64(v27)) >> 3)) & v15)) == v14)
          {
            goto LABEL_28;
          }

          v27 &= ((v27 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v27);
LABEL_20:
        while (1)
        {
          v28 = vceq_s8(v26, 0x8080808080808080);
          if (v28)
          {
            break;
          }

          v17 += 8;
          v25 = (v17 + v25) & v15;
          v26 = *(_X9 + v25);
          v27 = vceq_s8(v26, v24);
          if (v27)
          {
            goto LABEL_18;
          }
        }

        v16 = (*(this + 154) + 4 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 151, v23, (v25 + (__clz(__rbit64(v28)) >> 3)) & v15, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::GetPolicyFunctions(void)::value));
        goto LABEL_26;
      }

LABEL_36:
      for (i = *(this + 320); i < (*(this + 1) - *this) >> 2; i = i)
      {
        v32 = (*this + 4 * i);
        if (((*(*(v184 + 24) + (((2 * *v32) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (*v32 & 0x1Fu))) & 3) != 0)
        {
          goto LABEL_37;
        }

        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>(this + 151, v32, &v186);
        if (v188 != 1)
        {
          goto LABEL_37;
        }

        v33 = *v32;
        *v187 = *v32;
        if (!operations_research::sat::Prober::ProbeOneVariable(*(this + 138), v33))
        {
          return 1;
        }

        ++*(this + 142);
        if (*(this + 1188) == 1)
        {
          v34 = 2 * *v32;
          if (((*(*(v184 + 24) + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v34 & 0x3E)) & 3) == 0)
          {
            result = operations_research::sat::ContinuousProber::ShaveLiteral(this, v34);
            if ((result - 1) < 2)
            {
              return result;
            }

            if (!result)
            {
              goto LABEL_37;
            }

            result = operations_research::sat::ContinuousProber::ShaveLiteral(this, v34 | 1u);
            if ((result - 1) < 2)
            {
              return result;
            }
          }
        }

        result = operations_research::sat::ContinuousProber::PeriodicSyncAndCheck(this);
        if (result != 2)
        {
          return result;
        }

LABEL_37:
        LODWORD(i) = *(this + 320) + 1;
        *(this + 320) = i;
      }

      if (*(this + 894) == 1)
      {
        v35 = *(this + 10);
        v36 = *(v35 + 280);
        v37 = (*(v35 + 288) - v36) >> 3;
        v38 = *(v35 + 308);
        v39 = v38;
        if (v37 > v38)
        {
          v40 = (v35 + 308);
          do
          {
            while (1)
            {
              v41 = *(v36 + 8 * v39);
              v42 = *v41;
              ++v38;
              if (!v42)
              {
                break;
              }

              *v40 = v38;
              v43 = v41 + 1;
              if ((v42 & 0x3FFFFFFFFFFFFFFFLL) != 0)
              {
                v44 = 4 * v42;
                v45 = v41 + 1;
                while (((*(*(v184 + 24) + ((*v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v45) & 1) == 0)
                {
                  ++v45;
                  v44 -= 4;
                  if (!v44)
                  {
                    goto LABEL_59;
                  }
                }
              }

              else
              {
LABEL_59:
                v46 = *(this + 164);
                v47 = *(this + 163);
                if (v46 == v47)
                {
                  goto LABEL_65;
                }

                v48 = *(this + 164);
                do
                {
                  v50 = *(v48 - 24);
                  v48 -= 24;
                  v49 = v50;
                  if (v50)
                  {
                    *(v46 - 16) = v49;
                    operator delete(v49);
                  }

                  v46 = v48;
                }

                while (v48 != v47);
                v42 = *v41;
                *(this + 164) = v47;
                if (v42)
                {
LABEL_65:
                  v51 = 4 * v42;
                  do
                  {
                    if (((*(*(v184 + 24) + ((*v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v43 & 0x3E)) & 3) == 0)
                    {
                      operator new();
                    }

                    ++v43;
                    v51 -= 4;
                  }

                  while (v51);
                }

                ++*(this + 145);
                if ((operations_research::sat::Prober::ProbeDnf(*(this + 138), "at_least_one", 0xCuLL, *(this + 163), 0xAAAAAAAAAAAAAAABLL * ((v47 - *(this + 163)) >> 3)) & 1) == 0)
                {
                  return 1;
                }

                result = operations_research::sat::ContinuousProber::PeriodicSyncAndCheck(this);
                if (result != 2)
                {
                  return result;
                }
              }

              v52 = *(this + 10);
              v40 = (v52 + 308);
              v36 = *(v52 + 280);
              v37 = (*(v52 + 288) - v36) >> 3;
              v38 = *(v52 + 308);
              v39 = v38;
              if (v37 <= v38)
              {
                goto LABEL_72;
              }
            }

            v39 = v38;
          }

          while (v37 > v38);
          *v40 = v38;
        }

LABEL_72:
        v53 = operations_research::sat::BinaryImplicationGraph::NextAtMostOne(*(this + 9));
        if (v54)
        {
          v55 = v53;
          do
          {
            v56 = 4 * v54;
            v57 = v54 & 0x3FFFFFFFFFFFFFFFLL;
            if ((v54 & 0x3FFFFFFFFFFFFFFFLL) != 0)
            {
              v58 = 4 * v54;
              v59 = v55;
              while (((*(*(v184 + 24) + ((*v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v59) & 1) == 0)
              {
                ++v59;
                v58 -= 4;
                if (!v58)
                {
                  goto LABEL_78;
                }
              }

              goto LABEL_96;
            }

LABEL_78:
            v60 = *(this + 164);
            v61 = *(this + 163);
            if (v60 != v61)
            {
              v62 = *(this + 164);
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

              while (v62 != v61);
            }

            *(this + 164) = v61;
            *(this + 167) = *(this + 166);
            if (v57)
            {
              do
              {
                if (((*(*(v184 + 24) + ((*v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v55 & 0x3E)) & 3) == 0)
                {
                  operator new();
                }

                ++v55;
                v56 -= 4;
              }

              while (v56);
              v61 = *(this + 164);
              if (v61 >= *(this + 165))
              {
LABEL_93:
                v67 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(this + 1304, this + 166);
                goto LABEL_94;
              }
            }

            else if (v61 >= *(this + 165))
            {
              goto LABEL_93;
            }

            *v61 = 0;
            v61[1] = 0;
            v61[2] = 0;
            v65 = *(this + 166);
            v66 = *(this + 167);
            if (v66 != v65)
            {
              if (((v66 - v65) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v67 = v61 + 3;
            *(this + 164) = v61 + 3;
LABEL_94:
            *(this + 164) = v67;
            ++*(this + 146);
            if ((operations_research::sat::Prober::ProbeDnf(*(this + 138), "at_most_one", 0xBuLL, *(this + 163), 0xAAAAAAAAAAAAAAABLL * ((v67 - *(this + 163)) >> 3)) & 1) == 0)
            {
              return 1;
            }

            result = operations_research::sat::ContinuousProber::PeriodicSyncAndCheck(this);
            if (result != 2)
            {
              return result;
            }

LABEL_96:
            v55 = operations_research::sat::BinaryImplicationGraph::NextAtMostOne(*(this + 9));
          }

          while (v54);
        }

        v181 = *(this + 268);
        v68 = (2 * v181);
        v70 = *this;
        v69 = *(this + 1);
        v71 = v69 - *this;
        v177 = v71 >> 2;
        if ((v71 >> 2) < (sqrt(v68) != 0))
        {
          v72 = *(this + 321);
          v73 = v72 + 1;
          if (v72 + 1 < (v71 >> 2))
          {
            do
            {
              if (((*(*(v184 + 24) + (((2 * *(v70 + v72)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (*(v70 + v72) & 0x1Fu))) & 3) == 0)
              {
                if (v73 <= *(this + 322))
                {
                  v73 = *(this + 322);
                }

                *(this + 322) = v73;
                v175 = v73;
                if (v73 < ((v69 - v70) >> 2))
                {
                  v176 = v73;
                  do
                  {
                    if (((*(*(v184 + 24) + (((2 * *(v70 + v175)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (*(v70 + v175) & 0x1Fu))) & 3) == 0)
                    {
                      v186 = 0;
                      v187 = 0;
                      v188 = 0;
                      operator new();
                    }

                    *(this + 322) = ++v176;
                    v175 = v176;
                  }

                  while (v176 < ((v69 - v70) >> 2));
                  v72 = *(this + 321);
                }

                *(this + 322) = 0;
              }

              v73 = v72 + 2;
              *(this + 321) = ++v72;
            }

            while (v73 < ((v69 - v70) >> 2));
          }

LABEL_101:
          if (v177 < (cbrt(v68) != 0))
          {
            v181 = (v177 - 1) * v177 * (v177 - 2) / 2;
          }

          v74 = *(this + 324);
          while (2)
          {
            if (v74 >= v181)
            {
              goto LABEL_214;
            }

            v75 = *this;
            v76 = (*(this + 1) - *this) >> 2;
            if ((v76 - (v76 != 0x80000000)) < 0)
            {
              v80 = 0;
            }

            else
            {
              v77 = *(this + 141);
              LODWORD(v186) = 0;
              HIDWORD(v186) = v76;
              v185 = 0;
              v78 = v77[1];
              if (v78 == absl::lts_20240722::BitGenRef::NotAMock)
              {
                v81 = 0;
              }

              else
              {
                if ((v78)(*v77, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v186, &v185))
                {
                  v79 = v185;
                  goto LABEL_118;
                }

                v81 = v186;
                LODWORD(v76) = HIDWORD(v186);
              }

              v82 = (v77[2])(*v77);
              v83 = v76 - v81 - (v76 != 0x80000000);
              v84 = v83 + 1;
              if (((v83 + 1) & v83) != 0)
              {
                v85 = v82 * v84;
                if (v84 > v85)
                {
                    ;
                  }
                }

                v86 = HIDWORD(v85);
              }

              else
              {
                LODWORD(v86) = v82 & v83;
              }

              v79 = v81 + v86;
LABEL_118:
              v80 = v79;
              v75 = *this;
            }

            v87 = *(v75 + v80);
            v88 = *(v184 + 24);
            if (((*(v88 + (((2 * v87) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v87 & 0x1Fu))) & 3) != 0)
            {
              goto LABEL_104;
            }

            v89 = (*(this + 1) - v75) >> 2;
            if ((v89 - (v89 != 0x80000000)) < 0)
            {
              v93 = 0;
            }

            else
            {
              v90 = *(this + 141);
              LODWORD(v186) = 0;
              HIDWORD(v186) = v89;
              v185 = 0;
              v91 = v90[1];
              if (v91 == absl::lts_20240722::BitGenRef::NotAMock)
              {
                v94 = 0;
              }

              else
              {
                if ((v91)(*v90, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v186, &v185))
                {
                  v92 = v185;
                  goto LABEL_132;
                }

                v94 = v186;
                LODWORD(v89) = HIDWORD(v186);
              }

              v95 = (v90[2])(*v90);
              v96 = v89 - v94 - (v89 != 0x80000000);
              v97 = v96 + 1;
              if (((v96 + 1) & v96) != 0)
              {
                v98 = v95 * v97;
                if (v97 > v98)
                {
                    ;
                  }
                }

                v99 = HIDWORD(v98);
              }

              else
              {
                LODWORD(v99) = v95 & v96;
              }

              v92 = v94 + v99;
LABEL_132:
              v93 = v92;
              v75 = *this;
              v88 = *(v184 + 24);
            }

            v100 = *(v75 + v93);
            if (v87 == v100 || ((3 << (2 * (v100 & 0x1Fu))) & *(v88 + (((2 * v100) >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0)
            {
LABEL_104:
              v74 = *(this + 324) + 1;
              *(this + 324) = v74;
              continue;
            }

            break;
          }

          v102 = (*(this + 1) - v75) >> 2;
          if ((v102 - (v102 != 0x80000000)) < 0)
          {
            v106 = 0;
          }

          else
          {
            v103 = *(this + 141);
            LODWORD(v186) = 0;
            HIDWORD(v186) = v102;
            v185 = 0;
            v104 = v103[1];
            if (v104 == absl::lts_20240722::BitGenRef::NotAMock)
            {
              v107 = 0;
            }

            else
            {
              if ((v104)(*v103, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v186, &v185))
              {
                v105 = v185;
                goto LABEL_150;
              }

              v107 = v186;
              LODWORD(v102) = HIDWORD(v186);
            }

            v108 = (v103[2])(*v103);
            v109 = v102 - v107 - (v102 != 0x80000000);
            v110 = v109 + 1;
            if (((v109 + 1) & v109) != 0)
            {
              v111 = v108 * v110;
              if (v110 > v111)
              {
                  ;
                }
              }

              v112 = HIDWORD(v111);
            }

            else
            {
              LODWORD(v112) = v108 & v109;
            }

            v105 = v107 + v112;
LABEL_150:
            v106 = v105;
            v75 = *this;
            v88 = *(v184 + 24);
          }

          v113 = *(v75 + v106);
          if (v100 != v113 && v87 != v113 && ((3 << (2 * (v113 & 0x1Fu))) & *(v88 + (((2 * v113) >> 3) & 0x1FFFFFFFFFFFFFF8))) == 0)
          {
            v116 = *(this + 164);
            v117 = *(this + 163);
            if (v116 != v117)
            {
              v118 = *(this + 164);
              do
              {
                v120 = *(v118 - 24);
                v118 -= 24;
                v119 = v120;
                if (v120)
                {
                  *(v116 - 16) = v119;
                  operator delete(v119);
                }

                v116 = v118;
              }

              while (v118 != v117);
            }

            *(this + 164) = v117;
            operator new();
          }

          goto LABEL_104;
        }

        if (*(this + 323) > 9999)
        {
          goto LABEL_101;
        }

        while (2)
        {
          v125 = *this;
          v126 = (*(this + 1) - *this) >> 2;
          if ((v126 - (v126 != 0x80000000)) < 0)
          {
            v130 = 0;
          }

          else
          {
            v127 = *(this + 141);
            LODWORD(v186) = 0;
            HIDWORD(v186) = v126;
            v185 = 0;
            v128 = v127[1];
            if (v128 == absl::lts_20240722::BitGenRef::NotAMock)
            {
              v131 = 0;
            }

            else
            {
              if ((v128)(*v127, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v186, &v185))
              {
                v129 = v185;
                goto LABEL_187;
              }

              v131 = v186;
              LODWORD(v126) = HIDWORD(v186);
            }

            v132 = (v127[2])(*v127);
            v133 = v126 - v131 - (v126 != 0x80000000);
            v134 = v133 + 1;
            if (((v133 + 1) & v133) != 0)
            {
              v135 = v132 * v134;
              if (v134 > v135)
              {
                  ;
                }
              }

              v136 = HIDWORD(v135);
            }

            else
            {
              LODWORD(v136) = v132 & v133;
            }

            v129 = v131 + v136;
LABEL_187:
            v130 = v129;
            v125 = *this;
          }

          v137 = *(v125 + v130);
          v138 = *(v184 + 24);
          if (((*(v138 + (((2 * v137) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v137 & 0x1Fu))) & 3) == 0)
          {
            v139 = (*(this + 1) - v125) >> 2;
            if ((v139 - (v139 != 0x80000000)) < 0)
            {
              v143 = 0;
            }

            else
            {
              v140 = *(this + 141);
              LODWORD(v186) = 0;
              HIDWORD(v186) = v139;
              v185 = 0;
              v141 = v140[1];
              if (v141 == absl::lts_20240722::BitGenRef::NotAMock)
              {
                v144 = 0;
              }

              else
              {
                if ((v141)(*v140, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v186, &v185))
                {
                  v142 = v185;
                  goto LABEL_201;
                }

                v144 = v186;
                LODWORD(v139) = HIDWORD(v186);
              }

              v145 = (v140[2])(*v140);
              v146 = v139 - v144 - (v139 != 0x80000000);
              v147 = v146 + 1;
              if (((v146 + 1) & v146) != 0)
              {
                v148 = v145 * v147;
                if (v147 > v148)
                {
                    ;
                  }
                }

                v149 = HIDWORD(v148);
              }

              else
              {
                LODWORD(v149) = v145 & v146;
              }

              v142 = v144 + v149;
LABEL_201:
              v143 = v142;
              v125 = *this;
              v138 = *(v184 + 24);
            }

            v150 = *(v125 + v143);
            if (v137 != v150 && ((3 << (2 * (v150 & 0x1Fu))) & *(v138 + (((2 * v150) >> 3) & 0x1FFFFFFFFFFFFFF8))) == 0)
            {
              v186 = 0;
              v187 = 0;
              v188 = 0;
              operator new();
            }
          }

          v124 = *(this + 323) + 1;
          *(this + 323) = v124;
          if (v124 >= 10000)
          {
            goto LABEL_101;
          }

          continue;
        }
      }

LABEL_214:
      if (*(this + 1188) == 1)
      {
        v154 = *(this + 115);
        if (*(this + 143) == v180 && *(*(this + 138) + 304) == v179)
        {
          v155 = *(this + 150);
          if (v155 >= v154 * 25.0)
          {
            goto LABEL_220;
          }

          v154 = v154 + v155;
        }

        *(this + 150) = v154;
      }

LABEL_220:
      ++*(this + 318);
      *v183 = xmmword_23CE4A460;
      *(this + 1292) = 0;
      *(*(this + 9) + 332) = 0;
      *(*(this + 10) + 308) = 0;
      v156 = *(this + 151);
      if (v156 > 1)
      {
        absl::lts_20240722::container_internal::ClearBackingArray(this + 151, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_>>>::GetPolicyFunctions(void)::value, v156 < 0x80, 1u);
      }

      else
      {
        *(this + 152) = 0;
      }

      if (*v178 > 1)
      {
        absl::lts_20240722::container_internal::ClearBackingArray(v178, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::GetPolicyFunctions(void)::value, *v178 < 0x80, 1u);
      }

      else
      {
        *(this + 156) = 0;
      }

      v157 = *(*(this + 11) + 12);
      if (*(this + 895) == 1)
      {
        v158 = *(this + 1188) ^ 1;
      }

      else
      {
        v158 = 0;
      }

      v159 = -1431655765 * ((*(*(this + 12) + 160) - *(*(this + 12) + 152)) >> 3);
      *(this + 1188) = v158 & 1;
      *(this + 298) = v157;
      *(this + 299) = v159;
      v160 = *this;
      v161 = (*(this + 1) - *this) >> 2;
      if (*(this + 1) == *this)
      {
        v163 = 0;
      }

      else
      {
        v162 = 0;
        LODWORD(v163) = 0;
        v164 = *(*(*(this + 7) + 216) + 24);
        v165 = 1;
        do
        {
          v166 = *(v160 + v162);
          if (((*(v164 + (((2 * v166) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * (v166 & 0x1Fu))) & 3) == 0)
          {
            *(v160 + v163) = v166;
            LODWORD(v163) = v163 + 1;
          }

          v162 = v165++;
        }

        while (v161 > v162);
        v163 = v163;
        if (v163 > v161)
        {
          std::vector<int>::__append(this, v163 - v161);
          goto LABEL_239;
        }
      }

      if (v161 > v163)
      {
        *(this + 1) = v160 + 4 * v163;
      }

LABEL_239:
      v167 = *(this + 3);
      v168 = (*(this + 4) - v167) >> 2;
      if (*(this + 4) == v167)
      {
        v170 = 0;
LABEL_247:
        if (v168 > v170)
        {
          *(this + 4) = v167 + 4 * v170;
        }

        goto LABEL_249;
      }

      v169 = 0;
      LODWORD(v170) = 0;
      v171 = *(*(this + 12) + 40);
      v172 = 1;
      do
      {
        v173 = *(v167 + 4 * v169);
        if (*(v171 + 8 * v173) + *(v171 + ((8 * v173) ^ 8)))
        {
          *(v167 + 4 * v170) = v173;
          LODWORD(v170) = v170 + 1;
        }

        v169 = v172++;
      }

      while (v168 > v169);
      v170 = v170;
      if (v170 <= v168)
      {
        goto LABEL_247;
      }

      std::vector<int>::__append(this + 1, v170 - v168);
LABEL_249:
      v174 = operations_research::TimeLimit::LimitReached(*(this + 8));
      result = 3;
      if (v174)
      {
        return result;
      }
    }
  }

  return 1;
}

void sub_23CC136D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
    v38 = a33;
    if (!a33)
    {
LABEL_3:
      v39 = a30;
      if (!a30)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v38 = a33;
    if (!a33)
    {
      goto LABEL_3;
    }
  }

  operator delete(v38);
  v39 = a30;
  if (!a30)
  {
LABEL_4:
    v40 = a27;
    if (!a27)
    {
LABEL_10:
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    operator delete(v40);
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(v39);
  v40 = a27;
  if (!a27)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t operations_research::sat::ContinuousProber::ShaveLiteral(uint64_t a1, int a2)
{
  LODWORD(__p) = a2;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>((a1 + 1240), &__p, v10);
  v4 = v12;
  if (v12 == 1)
  {
    *v11 = __p;
  }

  if (((*(*(*(a1 + 88) + 24) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (a2 & 0x3E)) & 3) == 0 && v4 != 0)
  {
    ++*(a1 + 1152);
    v6 = *(a1 + 64);
    v7 = *(v6 + 112) + *(a1 + 1200);
    if (v7 >= *(v6 + 104))
    {
      v7 = *(v6 + 104);
    }

    *(v6 + 104) = v7;
    operator new();
  }

  return 3;
}

void sub_23CC13AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ContinuousProber::PeriodicSyncAndCheck(operations_research::sat::ContinuousProber *this)
{
  v2 = *(this + 296) - 1;
  *(this + 296) = v2;
  if (v2 <= 0)
  {
    *(this + 296) = 20;
    if (operations_research::TimeLimit::LimitReached(*(this + 8)))
    {
      return 3;
    }
  }

  v4 = *(this + 294) - 1;
  *(this + 294) = v4;
  if (v4 <= 0)
  {
    *(this + 294) = 1000;
    operations_research::sat::ContinuousProber::LogStatistics(this);
    v6 = *(this + 295) - 1;
    *(this + 295) = v6;
    if (v6 > 0)
    {
      return 2;
    }
  }

  else
  {
    v5 = *(this + 295) - 1;
    *(this + 295) = v5;
    if (v5 > 0)
    {
      return 2;
    }
  }

  *(this + 295) = 50;
  if (!operations_research::sat::SatSolver::ResetToLevelZero(*(this + 7)))
  {
    return 1;
  }

  v7 = *(this + 137);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 == v9)
  {
    return 2;
  }

  while (1)
  {
    v10 = *(v8 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (((*(*v10 + 48))(v10) & 1) == 0)
    {
      break;
    }

    v8 += 32;
    if (v8 == v9)
    {
      return 2;
    }
  }

  result = 1;
  *(*(this + 7) + 528) = 1;
  return result;
}

void operations_research::sat::ContinuousProber::LogStatistics(operations_research::sat::ContinuousProber *this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(this + 139) || !*(this + 140) || dword_27E25D080 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::ContinuousProber::LogStatistics(void)::$_0::operator() const(void)::site, dword_27E25D080))
  {
    return;
  }

  v3 = *(this + 139);
  v18 = 5;
  strcpy(v17, "Probe");
  *&v25 = " (iterations=";
  *(&v25 + 1) = 13;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 318), v24, v2);
  *&v23 = v24;
  *(&v23 + 1) = v4 - v24;
  v22[0] = " linearization_level=";
  v22[1] = 21;
  v6 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 173), v21, v5);
  *&v20 = v21;
  *(&v20 + 1) = v6 - v21;
  *&v19 = " shaving=";
  *(&v19 + 1) = 9;
  v15 = (*(this + 1) - *this) >> 2;
  v7 = (*(*(this + 12) + 48) - *(*(this + 12) + 40)) >> 3;
  v13 = *(*(this + 138) + 304);
  v14 = v7;
  v8 = *(this + 140);
  v11 = 7;
  strcpy(v10, "probing");
  v12 = operations_research::sat::SharedBoundsManager::NumBoundsExported(v8, v10);
  v9 = *(*(this + 138) + 296);
  absl::lts_20240722::StrCat<BOOL,char [19],unsigned long,char [18],operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,char [24],int,char [2],long long,char [22],long long,char [2],long long,char [21],int,char [20],int,char [26],long long,char [25],long long,char [2]>(&__p, &v25, &v23, v22, &v20, &v19, this + 1188, " active_BOOL_vars=", &v15, " active_int_vars=", &v14, " literals fixed/probed=", &v13, "/", this + 142, " bounds shaved/tried=", this + 143, "/", this + 144, " new_integer_bounds=", &v12, " new_binary_clause=", &v9, " num_at_least_one_probed=", this + 145, " num_at_most_one_probed=", this + 146, ")");
  operations_research::sat::SharedResponseManager::LogMessageWithThrottling(v3, v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_8:
      if (v18 < 0)
      {
        goto LABEL_12;
      }

      return;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v10[0]);
  if (v18 < 0)
  {
LABEL_12:
    operator delete(v17[0]);
  }
}

void sub_23CC13EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a44 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a50 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a45);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a30);
  if ((a50 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void absl::lts_20240722::StrCat<BOOL,char [19],unsigned long,char [18],operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,char [24],int,char [2],long long,char [22],long long,char [2],long long,char [21],int,char [20],int,char [26],long long,char [25],long long,char [2]>(std::string *__return_ptr a1@<X8>, _OWORD *a2@<X0>, __int128 *a3@<X1>, char *a4@<X2>, __int128 *a5@<X3>, _OWORD *a6@<X4>, unsigned __int8 *a7@<X5>, const char *a8@<X6>, unint64_t *a9@<X7>, const char *a10, unsigned int *a11, const char *a12, unsigned int *a13, const char *a14, unint64_t *a15, const char *a16, unint64_t *a17, const char *a18, unint64_t *a19, const char *a20, unsigned int *a21, const char *a22, unsigned int *a23, const char *a24, unint64_t *a25, const char *a26, unint64_t *a27, char *__s)
{
  v143 = *MEMORY[0x277D85DE8];
  v31 = *a3;
  v98[0] = *a2;
  v98[1] = v31;
  v32 = *a5;
  v98[2] = *a4;
  v98[3] = v32;
  v98[4] = *a6;
  v33 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a7, v97, a4);
  v95 = v97;
  v96 = v33 - v97;
  v99 = v97;
  v100 = v33 - v97;
  v34 = strlen(a8);
  v101 = a8;
  v102 = v34;
  v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a9, v94, v35);
  v92 = v94;
  v93 = v36 - v94;
  v103 = v94;
  v104 = v36 - v94;
  v37 = strlen(a10);
  v105 = a10;
  v106 = v37;
  __p = 0;
  v66 = 0;
  v67 = 0;
  v89 = *a11;
  v90 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&__p, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%v", 2, &v89, 1uLL);
  v38 = HIBYTE(v67);
  if (v67 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v67 < 0)
  {
    v38 = v66;
  }

  v107 = p_p;
  v108 = v38;
  v40 = strlen(a12);
  v109 = a12;
  v110 = v40;
  v42 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a13, v91, v41);
  v89 = v91;
  v90 = (v42 - v91);
  v111 = v91;
  v112 = v42 - v91;
  v43 = strlen(a14);
  v113 = a14;
  v114 = v43;
  v45 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a15, v88, v44);
  v86 = v88;
  v87 = v45 - v88;
  v115 = v88;
  v116 = v45 - v88;
  v46 = strlen(a16);
  v117 = a16;
  v118 = v46;
  v48 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a17, v85, v47);
  v83 = v85;
  v84 = v48 - v85;
  v119 = v85;
  v120 = v48 - v85;
  v49 = strlen(a18);
  v121 = a18;
  v122 = v49;
  v51 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a19, v82, v50);
  v80 = v82;
  v81 = v51 - v82;
  v123 = v82;
  v124 = v51 - v82;
  v52 = strlen(a20);
  v125 = a20;
  v126 = v52;
  v54 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a21, v79, v53);
  v77 = v79;
  v78 = v54 - v79;
  v127 = v79;
  v128 = v54 - v79;
  v55 = strlen(a22);
  v129 = a22;
  v130 = v55;
  v57 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a23, v76, v56);
  v74 = v76;
  v75 = v57 - v76;
  v131 = v76;
  v132 = v57 - v76;
  v58 = strlen(a24);
  v133 = a24;
  v134 = v58;
  v60 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a25, v73, v59);
  v71 = v73;
  v72 = v60 - v73;
  v135 = v73;
  v136 = v60 - v73;
  v61 = strlen(a26);
  v137 = a26;
  v138 = v61;
  v63 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a27, v70, v62);
  v68 = v70;
  v69 = v63 - v70;
  v139 = v70;
  v140 = v63 - v70;
  v64 = strlen(__s);
  v141 = __s;
  v142 = v64;
  absl::lts_20240722::strings_internal::CatPieces(v98, 27, a1);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p);
  }
}

void sub_23CC14298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42728;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42728;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_284F42728;
  v3 = a2 + 1;
  v4 = *(result + 32);
  if (v4)
  {
    if (v4 == result + 8)
    {
      a2[4] = v3;
      v5 = *(**(result + 32) + 24);

      return v5();
    }

    else
    {
      result = (*(*v4 + 16))(*(result + 32), v3);
      a2[4] = result;
    }
  }

  else
  {
    a2[4] = 0;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2);
  *a2 = -1;
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0,std::allocator<operations_research::sat::anonymous namespace::WrapIntegerLiteralHeuristic(std::function<operations_research::sat::IntegerLiteral ()(void)>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_127WrapIntegerLiteralHeuristicENSt3__18functionIFNS0_14IntegerLiteralEvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_127WrapIntegerLiteralHeuristicENSt3__18functionIFNS0_14IntegerLiteralEvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_127WrapIntegerLiteralHeuristicENSt3__18functionIFNS0_14IntegerLiteralEvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_127WrapIntegerLiteralHeuristicENSt3__18functionIFNS0_14IntegerLiteralEvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearProgrammingDispatcher>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F427A8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    if (*v1 >= 2uLL)
    {
      operator delete((v1[2] - (v1[1] & 1) - 8));
    }

    MEMORY[0x23EED9460](v1, 0x1082C4091D7F878);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearProgrammingDispatcher>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F427A8;
  a1[1] = 0;
  if (v1)
  {
    if (*v1 >= 2uLL)
    {
      operator delete((v1[2] - (v1[1] & 1) - 8));
    }

    MEMORY[0x23EED9460](v1, 0x1082C4091D7F878);
  }

  JUMPOUT(0x23EED9460);
}

void *std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *result)
{
  *result = &unk_284F427E0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F427E0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CC14BE0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(void *result, void *a2)
{
  a2[1] = 0;
  *a2 = &unk_284F427E0;
  a2[2] = 0;
  a2[3] = 0;
  v3 = result[1];
  v2 = result[2];
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a2[4] = result[4];
  return result;
}

void sub_23CC14CB4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 == v3)
  {
LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    *a2 = -1;
    *(a2 + 2) = -1;
    a2[2] = 0;
  }

  else
  {
    v4 = *(result[4] + 40);
    while (1)
    {
      v5 = *v2;
      v6 = 8 * v5;
      v7 = *(v4 + v6);
      v8 = -*(v4 + (v6 ^ 8));
      if (v5 != -2 && v7 != v8)
      {
        break;
      }

      if (++v2 == v3)
      {
        goto LABEL_9;
      }
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7 >= 0x8000000000000002)
    {
      v10 = -v7;
    }

    *a2 = -1;
    a2[1] = v5 ^ 1;
    a2[2] = v10;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::FirstUnassignedVarAtItsMinHeuristic(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat35FirstUnassignedVarAtItsMinHeuristicERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat35FirstUnassignedVarAtItsMinHeuristicERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat35FirstUnassignedVarAtItsMinHeuristicERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat35FirstUnassignedVarAtItsMinHeuristicERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::MostFractionalHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::MostFractionalHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42860;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::MostFractionalHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::MostFractionalHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  *(a2 + 8) = -1;
  *(a2 + 16) = 0;
  v3 = *(result + 8);
  v4 = *v3;
  if (((v3[1] - *v3) >> 3) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    result = *(a2 + 8);
    v8 = 0.0;
    do
    {
      v9 = v7;
      v10 = 8 * v7;
      v11 = (*(*(v5 + 16) + 40) + v10);
      if (*v11 + v11[1])
      {
        v12 = *(v4 + v10);
        v13 = vabdd_f64(v12, round(v12));
        if (v13 > v8)
        {
          result = operations_research::sat::SplitAroundGivenValue(v9, vcvtmd_s64_f64(v12), *(v5 + 24));
          v3 = *(v5 + 8);
          v4 = *v3;
          v8 = v13;
        }
      }

      v7 = v9 + 2;
    }

    while (v9 + 2 < ((v3[1] - v4) >> 3));
    *a2 = -1;
    *(a2 + 8) = result;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::MostFractionalHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::MostFractionalHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat23MostFractionalHeuristicEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat23MostFractionalHeuristicEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat23MostFractionalHeuristicEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat23MostFractionalHeuristicEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::PseudoCosts>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F428E0;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::PseudoCosts::~PseudoCosts(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::PseudoCosts>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F428E0;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::PseudoCosts::~PseudoCosts(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::PseudoCosts::~PseudoCosts(operations_research::sat::PseudoCosts *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 13);
  if (v7)
  {
    *(this + 14) = v7;
    operator delete(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    *(this + 11) = v8;
    operator delete(v8);
  }
}

void *std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42918;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42918;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_284F42918;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>*>((a2 + 1), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 5);
}

void std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v1)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v1);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v1;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    v3 = __p[2];
    v4 = __p[1];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = __p[1];
    }

    __p[2] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 == v4)
  {
LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    *a2 = -1;
    *(a2 + 2) = -1;
    a2[2] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *(v3 + 24);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v5 + 48))(v5);
      if (*a2 != -1 || *(a2 + 2) != -1)
      {
        break;
      }

      v3 += 32;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0,std::allocator<operations_research::sat::SequentialSearch(std::vector<std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>>)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16SequentialSearchENSt3__16vectorINS1_8functionIFNS0_23BooleanOrIntegerLiteralEvEEENS1_9allocatorIS6_EEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16SequentialSearchENSt3__16vectorINS1_8functionIFNS0_23BooleanOrIntegerLiteralEvEEENS1_9allocatorIS6_EEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16SequentialSearchENSt3__16vectorINS1_8functionIFNS0_23BooleanOrIntegerLiteralEvEEENS1_9allocatorIS6_EEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16SequentialSearchENSt3__16vectorINS1_8functionIFNS0_23BooleanOrIntegerLiteralEvEEENS1_9allocatorIS6_EEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CC159B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v10 + 8) = v11;
  std::__exception_guard_exceptions<std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        do
        {
          v7 = *(v4 - 1);
          v4 -= 32;
          if (v4 == v7)
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          v6 -= 32;
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

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void *std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42998;
  v2 = a1 + 1;
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v8 = a1[4];
  if (v8 == v2)
  {
    (*(*v8 + 32))(v8);
    return a1;
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42998;
  v2 = a1 + 1;
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  v8 = a1[4];
  if (v8 == v2)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CC15F44(_Unwind_Exception *a1)
{
  std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~function(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(void *a1, void *a2)
{
  *a2 = &unk_284F42998;
  v4 = a1[4];
  if (v4)
  {
    if (v4 == a1 + 1)
    {
      a2[4] = a2 + 1;
      (*(*a1[4] + 24))(a1[4], a2 + 1);
    }

    else
    {
      a2[4] = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    a2[4] = 0;
  }

  v5 = a1[5];
  a2[6] = 0;
  a2[5] = v5;
  a2[7] = 0;
  a2[8] = 0;
  std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__init_with_size[abi:ne200100]<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*,std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>*>((a2 + 6), a1[6], a1[7], (a1[7] - a1[6]) >> 5);
  a2[9] = a1[9];
}

void *std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(void *a1)
{
  v2 = a1 + 1;
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[7];
    v5 = a1[6];
    if (v4 != v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v3);
      v5 = a1[6];
    }

    a1[7] = v3;
    operator delete(v5);
  }

  result = a1[4];
  if (result == v2)
  {
    v9 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v9 = *(*result + 40);
  }

  return v9();
}

void std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 6);
  if (v3)
  {
    v4 = *(__p + 7);
    v5 = *(__p + 6);
    if (v4 != v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 8);
        v4 -= 32;
        if (v4 == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v6 -= 32;
      }

      while (v4 != v3);
      v5 = *(__p + 6);
    }

    *(__p + 7) = v3;
    operator delete(v5);
  }

  v8 = *(__p + 4);
  if (v8 == v2)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  operator delete(__p);
}

int **std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  if (!v3)
  {
    goto LABEL_22;
  }

  result = (*(*v3 + 48))(&v16);
  if (v16 != -1)
  {
    if (*(a1[5] + 280) == 1 || (result = operations_research::sat::IntegerEncoder::GetAllAssociatedVariables(a1[9], v16), v6 = *result, v7 = result[1], *result == v7) || a1[6] == a1[7])
    {
LABEL_12:
      *a2 = v16;
      *(a2 + 16) = v17;
      return result;
    }

    while (1)
    {
      v12 = a1[6];
      v13 = a1[7];
      if (v12 != v13)
      {
        break;
      }

LABEL_14:
      if (++v6 == v7)
      {
        goto LABEL_12;
      }
    }

    v14 = *v6;
    while (1)
    {
      v18 = v14;
      v15 = *(v12 + 24);
      if (!v15)
      {
        break;
      }

      result = (*(*v15 + 48))(v15, &v18);
      if (result != -1)
      {
        goto LABEL_21;
      }

      v12 += 32;
      if (v12 == v13)
      {
        goto LABEL_14;
      }
    }

LABEL_22:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (DWORD2(v16) == -1)
  {
    goto LABEL_12;
  }

  v9 = a1[6];
  v8 = a1[7];
  if (v9 == v8)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v18 = DWORD2(v16);
    v10 = *(v9 + 24);
    if (!v10)
    {
      goto LABEL_22;
    }

    result = (*(*v10 + 48))(v10, &v18);
    if (result != -1)
    {
      break;
    }

    v9 += 32;
    if (v9 == v8)
    {
      goto LABEL_12;
    }
  }

LABEL_21:
  *a2 = -1;
  *(a2 + 8) = result;
  *(a2 + 16) = v11;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SequentialValueSelection(std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>,std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat24SequentialValueSelectionENSt3__16vectorINS1_8functionIFNS0_14IntegerLiteralENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEEENS1_9allocatorIS9_EEEENS3_IFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat24SequentialValueSelectionENSt3__16vectorINS1_8functionIFNS0_14IntegerLiteralENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEEENS1_9allocatorIS9_EEEENS3_IFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat24SequentialValueSelectionENSt3__16vectorINS1_8functionIFNS0_14IntegerLiteralENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEEENS1_9allocatorIS9_EEEENS3_IFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat24SequentialValueSelectionENSt3__16vectorINS1_8functionIFNS0_14IntegerLiteralENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEEENS1_9allocatorIS9_EEEENS3_IFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::IntegerEncoder::GetAllAssociatedVariables(unint64_t *a1, int a2)
{
  v4 = a1 + 25;
  a1[26] = a1[25];
  v5 = a1[14];
  v6 = -858993459 * ((a1[15] - v5) >> 3);
  v7 = (v5 + 40 * a2);
  if (a2 >= v6)
  {
    v8 = a1 + 9;
  }

  else
  {
    v8 = v7;
  }

  v11 = *v8;
  v10 = v8 + 1;
  v9 = v11;
  if (v11)
  {
    v10 = *v10;
  }

  if ((v9 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v12 = 16 * (v9 >> 1);
    do
    {
      v13 = *v10;
      v10 += 2;
      v23 = v13;
      std::vector<int>::push_back[abi:ne200100](v4, &v23);
      v12 -= 16;
    }

    while (v12);
  }

  v14 = a1[22];
  v15 = -858993459 * ((a1[23] - v14) >> 3);
  v16 = (v14 + 40 * a2);
  if (a2 >= v15)
  {
    v17 = a1 + 17;
  }

  else
  {
    v17 = v16;
  }

  v20 = *v17;
  v19 = v17 + 1;
  v18 = v20;
  if (v20)
  {
    v19 = *v19;
  }

  if ((v18 & 0x1FFFFFFFFFFFFFFELL) != 0)
  {
    v21 = 16 * (v18 >> 1);
    do
    {
      std::vector<int>::push_back[abi:ne200100](v4, v19);
      v19 += 4;
      v21 -= 16;
    }

    while (v21);
  }

  return v4;
}

uint64_t std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__emplace_back_slow_path<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>(uint64_t *a1, uint64_t a2)
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
  std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__swap_out_circular_buffer(a1, &__p);
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

void sub_23CC167E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
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

uint64_t std::__split_buffer<std::function<operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>>::~__split_buffer(uint64_t a1)
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

uint64_t std::__function::__func<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F42A18;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_0>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_1>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_1>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_2>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F42B28;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::IntegerValueSelectionHeuristic(std::function<operations_research::sat::BooleanOrIntegerLiteral ()(void)>,operations_research::sat::Model *)::$_2>,operations_research::sat::IntegerLiteral ()(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat30IntegerValueSelectionHeuristicENSt3__18functionIFNS0_23BooleanOrIntegerLiteralEvEEEPNS0_5ModelEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42BA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(*(a1 + 16) + 12) == *(*(a1 + 8) + 16))
  {
    *a2 = 0;
    a2[1] = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = operations_research::sat::SatDecisionPolicy::NextBranch(*(a1 + 24));
    if (((*(*(*(*(a1 + 8) + 216) + 24) + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (result & 0x3E)) & 3) != 0)
    {
      std::__function::__func<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(&v5);
    }
  }

  *a2 = result;
  *(a2 + 2) = -1;
  a2[2] = 0;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SatSolverHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat18SatSolverHeuristicEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat18SatSolverHeuristicEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat18SatSolverHeuristicEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat18SatSolverHeuristicEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::ShaveObjectiveLb(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ShaveObjectiveLb(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42C28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::ShaveObjectiveLb(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ShaveObjectiveLb(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  *(a2 + 8) = -1;
  *(a2 + 16) = 0;
  if (*(*(result + 24) + 296) > 0)
  {
    return result;
  }

  v2 = *(result + 8);
  if (v2 == -1)
  {
    return result;
  }

  v3 = *(*(result + 16) + 40);
  v4 = 8 * v2;
  v5 = *(v3 + v4);
  v6 = *(v3 + (v4 ^ 8));
  if (!(v5 + v6))
  {
    return result;
  }

  v8 = (-v6 - v5) / 2;
  v9 = *(result + 32);
  v24 = 0;
  v25 = v8;
  v26 = 2;
  v23 = 0;
  v10 = v9[1];
  v11 = result;
  if (v10 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v13 = 0;
    v18 = 0;
    v19 = (-v6 - v5) / 2;
    v20 = 2;
    v21 = v19;
    goto LABEL_10;
  }

  result = (v10)(*v9, &absl::lts_20240722::base_internal::FastTypeTag<long long ()(absl::lts_20240722::log_uniform_int_distribution<long long>,std::tuple<long long,long long,long long>)>::dummy_var, &v24, &v23);
  if (!result)
  {
    v13 = v24;
    v18 = v24;
    v19 = v25;
    v8 = v25 - v24;
    v20 = v26;
    v21 = v25 - v24;
    if (v26 != 2)
    {
      v15 = 1.0 / log(v26);
      v14 = vcvtpd_s64_f64(v15 * log(v8 + 0.5));
      goto LABEL_12;
    }

LABEL_10:
    v14 = 64 - __clz(v8);
LABEL_12:
    v22 = v14;
    result = absl::lts_20240722::log_uniform_int_distribution<long long>::Generate<absl::lts_20240722::BitGenRef>(&v18, v9, &v18);
    v12 = result + v13;
    goto LABEL_13;
  }

  v12 = v23;
LABEL_13:
  v16 = v12 + v5;
  if (v16 >= 0x8000000000000002)
  {
    v17 = -v16;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a2 + 8) = *(v11 + 8) ^ 1;
  *(a2 + 16) = v17;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::ShaveObjectiveLb(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::ShaveObjectiveLb(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16ShaveObjectiveLbEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16ShaveObjectiveLbEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16ShaveObjectiveLbEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16ShaveObjectiveLbEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__function::__func<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *a1 = -1;
  *(a1 + 2) = -1;
  a1[2] = 0;
}

uint64_t std::__function::__func<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_1>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42D28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_1>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = operations_research::sat::PseudoCosts::GetBestDecisionVar(*(a1 + 8));
  if (result == -1)
  {
    *a2 = 0;
    a2[1] = 0;
    *a2 = -1;
    *(a2 + 2) = -1;
    a2[2] = 0;
  }

  else
  {
    v5 = *(*(a1 + 16) + 40);
    v6 = 8 * result;
    v7 = *(v5 + v6);
    v11 = v7;
    v10 = -*(v5 + (v6 ^ 8));
    if (v10 <= v7)
    {
      operations_research::sat::IntegerSearchHelper::GetDecision(&v11, &v10, &v9);
    }

    v8 = (v10 - v7) / 2;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    *a2 = -1;
    a2[1] = result;
    a2[2] = v8 + v7;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::PseudoCost(operations_research::sat::Model *)::$_1>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat10PseudoCostEPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42DA8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F42DA8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[8];
  if (v2)
  {
    __p[9] = v2;
    operator delete(v2);
  }

  v3 = __p[5];
  if (v3)
  {
    __p[6] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

void std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v2 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_23CC183FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0>,operations_research::sat::BooleanOrIntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat25SchedulingSearchHeuristicEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::$_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 32) = 0;
  *a1 = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v4 = *(a2 + 4);
  v3 = *(a2 + 5);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a2[5];
  v8 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v8;
  *(a1 + 80) = v7;
  return a1;
}

void sub_23CC185D8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::IntegerTrail::ConditionalLowerBound(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 864);
  if (v3 > 1)
  {
    v4 = 0;
    v5 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a3;
    v6 = 0x9DDFEA08EB382D69 * v5;
    v7 = (v5 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = *(a1 + 880);
    __asm { PRFM            #4, [X10] }

    v13 = v7 ^ v6;
    v14 = vdup_n_s8(v13 & 0x7F);
    v15 = ((v13 >> 7) ^ (_X10 >> 12)) & v3;
    v16 = *(_X10 + v15);
    v17 = vceq_s8(v16, v14);
    if (!v17)
    {
      goto LABEL_10;
    }

LABEL_5:
    while (1)
    {
      v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v3;
      v19 = *(a1 + 888) + 16 * v18;
      if (*v19 == a2 && *(v19 + 4) == a3)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
LABEL_10:
        while (!*&vceq_s8(v16, 0x8080808080808080))
        {
          v4 += 8;
          v15 = (v4 + v15) & v3;
          v16 = *(_X10 + v15);
          v17 = vceq_s8(v16, v14);
          if (v17)
          {
            goto LABEL_5;
          }
        }

        return *(*(a1 + 40) + 8 * a3);
      }
    }

    if (!(_X10 + v18))
    {
      return *(*(a1 + 40) + 8 * a3);
    }
  }

  else
  {
    if (*(a1 + 872) < 2uLL)
    {
      return *(*(a1 + 40) + 8 * a3);
    }

    v22 = *(a1 + 880) == a2 && *(a1 + 884) == a3;
    v23 = &absl::lts_20240722::container_internal::kSooControl;
    if (v22)
    {
      v19 = a1 + 880;
    }

    else
    {
      v23 = 0;
      v19 = 0;
    }

    if (!v23)
    {
      return *(*(a1 + 40) + 8 * a3);
    }
  }

  if (*(*(a1 + 40) + 8 * a3) <= *(v19 + 8))
  {
    return *(v19 + 8);
  }

  else
  {
    return *(*(a1 + 40) + 8 * a3);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,false>(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v8 = 0x2E8BA2E8BA2E8BA3;
LABEL_2:
  v9 = (a2 - 88);
  v232 = (a2 - 32);
  i = result;
  while (1)
  {
    result = i;
    v11 = a2 - i;
    v12 = ((a2 - i) >> 3) * v8;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(i, (i + 88), (a2 - 88));
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(i, i + 88, i + 176, a2 - 88);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(i, (i + 88), (i + 176), (i + 264), (a2 - 88));
          return;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v91 = *(a2 - 24);
        v92 = *(i + 64);
        if (v91 < v92 || v92 >= v91 && ((v212 = *(a2 - 16), v213 = *(i + 72), v212 < v213) || v213 >= v212 && ((v214 = *(a2 - 32), v215 = *(i + 56), v214 < v215) || v215 >= v214 && *(a2 - 8) < *(i + 80))))
        {
          v248 = *i;
          v256 = *(i + 16);
          v285 = *(i + 80);
          v272 = *(i + 48);
          v280 = *(i + 64);
          v264 = *(i + 32);
          v94 = *(a2 - 40);
          v93 = *(a2 - 24);
          v95 = *(a2 - 56);
          *(i + 80) = *(a2 - 8);
          *(i + 48) = v94;
          *(i + 64) = v93;
          *(i + 32) = v95;
          v96 = *(a2 - 72);
          *i = *v9;
          *(i + 16) = v96;
          *v9 = v248;
          *(a2 - 72) = v256;
          *(a2 - 8) = v285;
          *(a2 - 40) = v272;
          *(a2 - 24) = v280;
          *(a2 - 56) = v264;
        }

        return;
      }
    }

    if (v11 <= 2111)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v122 = (v12 - 2) >> 1;
      v123 = v122;
      while (1)
      {
        v125 = v123;
        v126 = 88 * v123;
        v127 = ((88 * v123) >> 3) * v8;
        if (v122 >= v127)
        {
          v128 = 2 * v127;
          v129 = (2 * v127) | 1;
          v124 = i + 88 * v129;
          v130 = v128 + 2;
          if (v130 < v12)
          {
            v131 = *(v124 + 64);
            v132 = *(v124 + 152);
            if (v131 < v132 || v132 >= v131 && ((v161 = *(v124 + 72), v162 = *(v124 + 160), v161 < v162) || v162 >= v161 && ((v163 = *(v124 + 56), v164 = *(v124 + 144), v163 < v164) || v164 >= v163 && *(v124 + 80) < *(v124 + 168))))
            {
              v124 += 88;
              v129 = v130;
            }
          }

          v133 = i + v126;
          v134 = *(v124 + 64);
          v135 = *(i + v126 + 64);
          if (v134 >= v135)
          {
            v136 = *(v133 + 72);
            if (v135 < v134)
            {
              v137 = *(v133 + 56);
LABEL_210:
              v274 = *(v133 + 48);
              v258 = *(v133 + 16);
              v266 = *(v133 + 32);
              v250 = *v133;
              v138 = *(v133 + 80);
              v139 = *(v124 + 16);
              *v133 = *v124;
              *(v133 + 16) = v139;
              v140 = *(v124 + 80);
              v141 = *(v124 + 64);
              v142 = *(v124 + 32);
              *(v133 + 48) = *(v124 + 48);
              *(v133 + 64) = v141;
              *(v133 + 32) = v142;
              *(v133 + 80) = v140;
              while (1)
              {
                if (v122 < v129)
                {
                  goto LABEL_200;
                }

                v147 = v124;
                v148 = 2 * v129;
                v129 = (2 * v129) | 1;
                v124 = i + 88 * v129;
                v149 = v148 + 2;
                if (v149 < v12)
                {
                  v150 = *(v124 + 64);
                  v151 = *(v124 + 152);
                  if (v150 < v151 || v151 >= v150 && ((v155 = *(v124 + 72), v156 = *(v124 + 160), v155 < v156) || v156 >= v155 && ((v157 = *(v124 + 56), v158 = *(v124 + 144), v157 < v158) || v158 >= v157 && *(v124 + 80) < *(v124 + 168))))
                  {
                    v124 += 88;
                    v129 = v149;
                  }
                }

                v152 = *(v124 + 64);
                if (v152 < v135)
                {
                  break;
                }

                if (v135 >= v152)
                {
                  v153 = *(v124 + 72);
                  if (v153 < v136)
                  {
                    break;
                  }

                  if (v136 >= v153)
                  {
                    v154 = *(v124 + 56);
                    if (v154 < v137 || v137 >= v154 && *(v124 + 80) < v138)
                    {
                      break;
                    }
                  }
                }

                v143 = *(v124 + 16);
                *v147 = *v124;
                *(v147 + 16) = v143;
                v144 = *(v124 + 32);
                v145 = *(v124 + 48);
                v146 = *(v124 + 64);
                *(v147 + 80) = *(v124 + 80);
                *(v147 + 48) = v145;
                *(v147 + 64) = v146;
                *(v147 + 32) = v144;
              }

              v124 = v147;
LABEL_200:
              *(v124 + 16) = v258;
              *(v124 + 32) = v266;
              *v124 = v250;
              *(v124 + 48) = v274;
              *(v124 + 56) = v137;
              *(v124 + 64) = v135;
              *(v124 + 72) = v136;
              *(v124 + 80) = v138;
              goto LABEL_201;
            }

            v159 = *(v124 + 72);
            if (v159 >= v136)
            {
              v137 = *(v133 + 56);
              if (v136 < v159)
              {
                goto LABEL_210;
              }

              v160 = *(v124 + 56);
              if (v160 >= v137 && (v137 < v160 || *(v124 + 80) >= *(v133 + 80)))
              {
                goto LABEL_210;
              }
            }
          }
        }

LABEL_201:
        v123 = v125 - 1;
        if (!v125)
        {
          v165 = (v11 >> 3) * v8;
          while (1)
          {
            v167 = 0;
            v251 = *i;
            v259 = *(i + 16);
            v286 = *(i + 80);
            v275 = *(i + 48);
            v281 = *(i + 64);
            v267 = *(i + 32);
            v168 = i;
            do
            {
              v173 = v168;
              v174 = v168 + 88 * v167;
              v168 = v174 + 88;
              v175 = 2 * v167;
              v167 = (2 * v167) | 1;
              v176 = v175 + 2;
              if (v176 < v165)
              {
                v177 = *(v174 + 152);
                v178 = *(v174 + 240);
                if (v177 < v178 || v178 >= v177 && ((v179 = *(v174 + 160), v180 = *(v174 + 248), v179 < v180) || v180 >= v179 && ((v181 = *(v174 + 144), v182 = *(v174 + 232), v181 < v182) || v182 >= v181 && *(v174 + 168) < *(v174 + 256))))
                {
                  v168 = v174 + 176;
                  v167 = v176;
                }
              }

              v169 = *(v168 + 16);
              *v173 = *v168;
              *(v173 + 16) = v169;
              v170 = *(v168 + 32);
              v171 = *(v168 + 48);
              v172 = *(v168 + 64);
              *(v173 + 80) = *(v168 + 80);
              *(v173 + 48) = v171;
              *(v173 + 64) = v172;
              *(v173 + 32) = v170;
            }

            while (v167 <= ((v165 - 2) >> 1));
            a2 -= 88;
            if (v168 == a2)
            {
              *v168 = v251;
              *(v168 + 16) = v259;
              *(v168 + 80) = v286;
              *(v168 + 48) = v275;
              *(v168 + 64) = v281;
              *(v168 + 32) = v267;
            }

            else
            {
              v183 = *(a2 + 16);
              *v168 = *a2;
              *(v168 + 16) = v183;
              v184 = *(a2 + 32);
              v185 = *(a2 + 48);
              v186 = *(a2 + 64);
              *(v168 + 80) = *(a2 + 80);
              *(v168 + 48) = v185;
              *(v168 + 64) = v186;
              *(v168 + 32) = v184;
              *(a2 + 80) = v286;
              *(a2 + 48) = v275;
              *(a2 + 64) = v281;
              *(a2 + 32) = v267;
              *a2 = v251;
              *(a2 + 16) = v259;
              v187 = v168 - i + 88;
              if (v187 >= 89)
              {
                v188 = (v187 >> 3) * v8 - 2;
                v189 = v188 >> 1;
                v190 = i + 88 * (v188 >> 1);
                v191 = *(v190 + 64);
                v192 = *(v168 + 64);
                if (v191 < v192)
                {
                  v193 = *(v168 + 72);
LABEL_262:
                  v244 = *(v168 + 48);
                  v238 = *(v168 + 16);
                  v241 = *(v168 + 32);
                  v235 = *v168;
                  v194 = *(v168 + 56);
                  v195 = *(v168 + 80);
                  v197 = *(v190 + 48);
                  v196 = *(v190 + 64);
                  v198 = *(v190 + 32);
                  *(v168 + 80) = *(v190 + 80);
                  v199 = *(v190 + 16);
                  *v168 = *v190;
                  *(v168 + 16) = v199;
                  *(v168 + 48) = v197;
                  *(v168 + 64) = v196;
                  *(v168 + 32) = v198;
                  if (v188 >= 2)
                  {
                    while (1)
                    {
                      v204 = v190;
                      v205 = v189 - 1;
                      v189 = (v189 - 1) >> 1;
                      v190 = i + 88 * v189;
                      v206 = *(v190 + 64);
                      if (v206 >= v192)
                      {
                        if (v192 < v206)
                        {
                          break;
                        }

                        v207 = *(v190 + 72);
                        if (v207 >= v193)
                        {
                          if (v193 < v207)
                          {
                            break;
                          }

                          v208 = *(v190 + 56);
                          if (v208 >= v194 && (v194 < v208 || *(v190 + 80) >= v195))
                          {
                            break;
                          }
                        }
                      }

                      v200 = *(v190 + 16);
                      *v204 = *v190;
                      *(v204 + 16) = v200;
                      v201 = *(v190 + 32);
                      v202 = *(v190 + 48);
                      v203 = *(v190 + 64);
                      *(v204 + 80) = *(v190 + 80);
                      *(v204 + 48) = v202;
                      *(v204 + 64) = v203;
                      *(v204 + 32) = v201;
                      if (v205 <= 1)
                      {
                        goto LABEL_273;
                      }
                    }

                    v190 = v204;
                  }

LABEL_273:
                  *(v190 + 16) = v238;
                  *(v190 + 32) = v241;
                  *v190 = v235;
                  *(v190 + 48) = v244;
                  *(v190 + 56) = v194;
                  *(v190 + 64) = v192;
                  *(v190 + 72) = v193;
                  *(v190 + 80) = v195;
                  goto LABEL_245;
                }

                if (v192 >= v191)
                {
                  v209 = *(v190 + 72);
                  v193 = *(v168 + 72);
                  if (v209 < v193)
                  {
                    goto LABEL_262;
                  }

                  if (v193 >= v209)
                  {
                    v210 = *(v190 + 56);
                    v211 = *(v168 + 56);
                    if (v210 < v211 || v211 >= v210 && *(v190 + 80) < *(v168 + 80))
                    {
                      goto LABEL_262;
                    }
                  }
                }
              }
            }

LABEL_245:
            if (v165-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v13 = v12 >> 1;
    v14 = i + 88 * (v12 >> 1);
    if (v11 < 0x2C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(v14, result, (a2 - 88));
      --a3;
      if (a4)
      {
LABEL_23:
        v24 = *(result + 64);
        goto LABEL_24;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(result, v14, (a2 - 88));
      v15 = v8;
      v16 = 88 * v13;
      v17 = (88 * v13 + result - 88);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>((result + 88), v17, (a2 - 176));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>((result + 176), (result + 88 + v16), (a2 - 264));
      v18 = (result + 88 + v16);
      v8 = v15;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(v17, v14, v18);
      v245 = *result;
      v253 = *(result + 16);
      v282 = *(result + 80);
      v269 = *(result + 48);
      v277 = *(result + 64);
      v261 = *(result + 32);
      v20 = *(v14 + 48);
      v19 = *(v14 + 64);
      v21 = *(v14 + 32);
      *(result + 80) = *(v14 + 80);
      *(result + 48) = v20;
      *(result + 64) = v19;
      *(result + 32) = v21;
      v22 = *(v14 + 16);
      *result = *v14;
      *(result + 16) = v22;
      *v14 = v245;
      *(v14 + 16) = v253;
      *(v14 + 80) = v282;
      *(v14 + 48) = v269;
      *(v14 + 64) = v277;
      *(v14 + 32) = v261;
      --a3;
      if (a4)
      {
        goto LABEL_23;
      }
    }

    v23 = *(result - 24);
    v24 = *(result + 64);
    if (v23 < v24)
    {
      goto LABEL_24;
    }

    v25 = *(result + 72);
    if (v24 < v23)
    {
      v27 = *(result + 56);
      goto LABEL_88;
    }

    v26 = *(result - 16);
    if (v26 < v25 || (v27 = *(result + 56), v25 >= v26) && ((v28 = *(result - 32), v28 < v27) || v27 >= v28 && *(result - 8) < *(result + 80)))
    {
LABEL_24:
      v29 = 0;
      v30 = *(result + 56);
      v242 = *(result + 48);
      v236 = *(result + 16);
      v239 = *(result + 32);
      v233 = *result;
      v31 = *(result + 72);
      v32 = *(result + 80);
      while (1)
      {
        v33 = result + v29;
        v34 = *(result + v29 + 152);
        if (v34 >= v24)
        {
          if (v24 < v34)
          {
            break;
          }

          v35 = *(v33 + 160);
          if (v35 >= v31)
          {
            if (v31 < v35)
            {
              break;
            }

            v36 = *(v33 + 144);
            if (v36 >= v30 && (v30 < v36 || *(v33 + 168) >= v32))
            {
              break;
            }
          }
        }

        v29 += 88;
      }

      v37 = result + v29 + 88;
      if (v29)
      {
        v38 = *(a2 - 24);
        v39 = a2 - 32;
        v40 = a2 - 88;
        if (v38 >= v24)
        {
          do
          {
            if (v24 >= v38)
            {
              v41 = *(v39 + 16);
              if (v41 < v31)
              {
                goto LABEL_59;
              }

              if (v31 >= v41)
              {
                if (*v39 < v30)
                {
                  goto LABEL_59;
                }

                if (v30 >= *v39 && *(v39 + 24) < v32)
                {
                  break;
                }
              }
            }

            v40 -= 88;
            v38 = *(v39 - 80);
            v39 -= 88;
          }

          while (v38 >= v24);
LABEL_43:
          v40 = v39 - 56;
        }
      }

      else
      {
        v40 = a2;
        if (v37 < a2)
        {
          v42 = *(a2 - 24);
          v40 = a2 - 88;
          if (v42 >= v24)
          {
            v39 = a2 - 32;
            v40 = a2 - 88;
            while (1)
            {
              v43 = v39 - 56;
              if (v24 < v42)
              {
                goto LABEL_52;
              }

              v44 = *(v39 + 16);
              if (v44 < v31)
              {
                break;
              }

              if (v31 < v44)
              {
                goto LABEL_52;
              }

              if (*v39 < v30)
              {
                break;
              }

              if (v30 >= *v39)
              {
                if (v37 >= v43 || *(v39 + 24) < v32)
                {
                  break;
                }
              }

              else
              {
LABEL_52:
                if (v37 >= v43)
                {
                  v40 = v39 - 56;
                  break;
                }
              }

              v40 -= 88;
              v42 = *(v39 - 80);
              v39 -= 88;
              if (v42 < v24)
              {
                goto LABEL_43;
              }
            }
          }
        }
      }

LABEL_59:
      i = v37;
      if (v37 < v40)
      {
        v45 = v40;
        do
        {
          v246 = *i;
          v254 = *(i + 16);
          v283 = *(i + 80);
          v270 = *(i + 48);
          v278 = *(i + 64);
          v262 = *(i + 32);
          v48 = *(v45 + 48);
          v47 = *(v45 + 64);
          v49 = *(v45 + 32);
          *(i + 80) = *(v45 + 80);
          *(i + 48) = v48;
          *(i + 64) = v47;
          *(i + 32) = v49;
          v50 = *(v45 + 16);
          *i = *v45;
          *(i + 16) = v50;
          *v45 = v246;
          *(v45 + 16) = v254;
          *(v45 + 80) = v283;
          *(v45 + 48) = v270;
          *(v45 + 64) = v278;
          *(v45 + 32) = v262;
          while (1)
          {
            do
            {
              i += 88;
              v51 = *(i + 64);
            }

            while (v51 < v24);
            if (v24 < v51)
            {
              break;
            }

            v52 = *(i + 72);
            if (v52 >= v31)
            {
              if (v31 < v52)
              {
                break;
              }

              v53 = *(i + 56);
              if (v53 >= v30 && (v30 < v53 || *(i + 80) >= v32))
              {
                break;
              }
            }
          }

          v46 = v45 - 88;
          v54 = *(v45 - 24);
          if (v54 >= v24)
          {
            v55 = v45 - 32;
            while (1)
            {
              if (v24 >= v54)
              {
                v56 = *(v55 + 16);
                if (v56 < v31)
                {
                  break;
                }

                if (v31 >= v56)
                {
                  if (*v55 < v30)
                  {
LABEL_61:
                    v46 = v55 - 56;
                    break;
                  }

                  if (v30 >= *v55 && *(v55 + 24) < v32)
                  {
                    break;
                  }
                }
              }

              v46 -= 88;
              v54 = *(v55 - 80);
              v55 -= 88;
              if (v54 < v24)
              {
                goto LABEL_61;
              }
            }
          }

          v45 = v46;
        }

        while (i < v46);
      }

      v57 = (i - 88);
      if (i - 88 != result)
      {
        v58 = *(i - 72);
        *result = *v57;
        *(result + 16) = v58;
        v59 = *(i - 56);
        v60 = *(i - 40);
        v61 = *(i - 24);
        *(result + 80) = *(i - 8);
        *(result + 48) = v60;
        *(result + 64) = v61;
        *(result + 32) = v59;
      }

      *(i - 40) = v242;
      *(i - 72) = v236;
      *(i - 56) = v239;
      *v57 = v233;
      *(i - 32) = v30;
      *(i - 24) = v24;
      *(i - 16) = v31;
      *(i - 8) = v32;
      if (v37 < v40)
      {
LABEL_86:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,false>(result, i - 88, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *>(result, i - 88);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *>(i, a2))
        {
          a2 = i - 88;
          if (v62)
          {
            return;
          }

          goto LABEL_2;
        }

        if ((v62 & 1) == 0)
        {
          goto LABEL_86;
        }
      }
    }

    else
    {
LABEL_88:
      v243 = *(result + 48);
      v237 = *(result + 16);
      v240 = *(result + 32);
      v234 = *result;
      v63 = *(result + 80);
      v64 = *(a2 - 24);
      if (v24 < v64 || v64 >= v24 && ((v90 = *(a2 - 16), v25 < v90) || v90 >= v25 && (v27 < *v232 || *v232 >= v27 && v63 < *(a2 - 8))))
      {
        i = result + 88;
        v65 = *(result + 152);
        if (v24 >= v65)
        {
          v66 = result + 144;
          do
          {
            if (v65 >= v24)
            {
              v67 = *(v66 + 16);
              if (v25 < v67)
              {
                goto LABEL_99;
              }

              if (v67 >= v25)
              {
                if (v27 < *v66)
                {
                  goto LABEL_99;
                }

                if (*v66 >= v27 && v63 < *(v66 + 24))
                {
                  break;
                }
              }
            }

            i += 88;
            v65 = *(v66 + 96);
            v66 += 88;
          }

          while (v24 >= v65);
          i = v66 - 56;
        }
      }

      else
      {
        for (i = result + 88; i < a2; i += 88)
        {
          v87 = *(i + 64);
          if (v24 < v87)
          {
            break;
          }

          if (v87 >= v24)
          {
            v88 = *(i + 72);
            if (v25 < v88)
            {
              break;
            }

            if (v88 >= v25)
            {
              v89 = *(i + 56);
              if (v27 < v89 || v89 >= v27 && v63 < *(i + 80))
              {
                break;
              }
            }
          }
        }
      }

LABEL_99:
      v68 = a2;
      if (i < a2)
      {
        for (j = a2 - 32; ; j -= 88)
        {
          if (v24 >= v64)
          {
            if (v64 < v24)
            {
              break;
            }

            v70 = *(j + 16);
            if (v25 >= v70 && (v70 < v25 || v27 >= *j && (*j < v27 || v63 >= *(j + 24))))
            {
              break;
            }
          }

          v64 = *(j - 80);
        }

        v68 = j - 56;
      }

      while (i < v68)
      {
        v247 = *i;
        v255 = *(i + 16);
        v284 = *(i + 80);
        v271 = *(i + 48);
        v279 = *(i + 64);
        v263 = *(i + 32);
        v72 = *(v68 + 48);
        v71 = *(v68 + 64);
        v73 = *(v68 + 32);
        *(i + 80) = *(v68 + 80);
        *(i + 48) = v72;
        *(i + 64) = v71;
        *(i + 32) = v73;
        v74 = *(v68 + 16);
        *i = *v68;
        *(i + 16) = v74;
        *v68 = v247;
        *(v68 + 16) = v255;
        *(v68 + 80) = v284;
        *(v68 + 48) = v271;
        *(v68 + 64) = v279;
        *(v68 + 32) = v263;
        v75 = i + 88;
        v76 = *(i + 152);
        if (v24 >= v76)
        {
          v77 = i + 144;
          while (1)
          {
            if (v76 >= v24)
            {
              v78 = *(v77 + 16);
              if (v25 < v78)
              {
                i = v75;
                goto LABEL_123;
              }

              if (v78 >= v25)
              {
                if (v27 < *v77)
                {
LABEL_121:
                  i = v77 - 56;
                  goto LABEL_123;
                }

                if (*v77 >= v27 && v63 < *(v77 + 24))
                {
                  i = v75;
                  goto LABEL_123;
                }
              }
            }

            v75 += 88;
            v76 = *(v77 + 96);
            v77 += 88;
            if (v24 < v76)
            {
              goto LABEL_121;
            }
          }
        }

        i += 88;
        while (1)
        {
          do
          {
LABEL_123:
            v68 -= 88;
            v79 = *(v68 + 64);
          }

          while (v24 < v79);
          if (v79 < v24)
          {
            break;
          }

          v80 = *(v68 + 72);
          if (v25 >= v80)
          {
            if (v80 < v25)
            {
              break;
            }

            v81 = *(v68 + 56);
            if (v27 >= v81 && (v81 < v27 || v63 >= *(v68 + 80)))
            {
              break;
            }
          }
        }
      }

      v82 = (i - 88);
      if (i - 88 != result)
      {
        v83 = *(i - 72);
        *result = *v82;
        *(result + 16) = v83;
        v84 = *(i - 56);
        v85 = *(i - 40);
        v86 = *(i - 24);
        *(result + 80) = *(i - 8);
        *(result + 48) = v85;
        *(result + 64) = v86;
        *(result + 32) = v84;
      }

      a4 = 0;
      *(i - 40) = v243;
      *(i - 72) = v237;
      *(i - 56) = v240;
      *v82 = v234;
      *(i - 32) = v27;
      *(i - 24) = v24;
      *(i - 16) = v25;
      *(i - 8) = v63;
    }
  }

  v97 = i + 88;
  v99 = i == a2 || v97 == a2;
  if ((a4 & 1) == 0)
  {
    if (!v99)
    {
      do
      {
        v216 = result;
        result = v97;
        v217 = *(v216 + 152);
        v218 = *(v216 + 64);
        if (v217 < v218 || v218 >= v217 && ((v228 = *(v216 + 160), v229 = *(v216 + 72), v228 < v229) || v229 >= v228 && ((v230 = *(v216 + 144), v231 = *(v216 + 56), v230 < v231) || v231 >= v230 && *(v216 + 168) < *(v216 + 80))))
        {
          v276 = *(result + 48);
          v260 = *(result + 16);
          v268 = *(result + 32);
          v252 = *result;
          v219 = *(v216 + 144);
          v220 = *(v216 + 160);
          v221 = *(v216 + 168);
          while (1)
          {
            do
            {
              v222 = v216;
              v223 = *(v216 + 48);
              *(v216 + 120) = *(v216 + 32);
              *(v216 + 136) = v223;
              *(v216 + 152) = *(v216 + 64);
              v224 = *(v216 + 16);
              *(v216 + 88) = *v216;
              *(v216 + 168) = *(v216 + 80);
              *(v216 + 104) = v224;
              v216 -= 88;
              v225 = *(v222 - 24);
            }

            while (v217 < v225);
            if (v225 < v217)
            {
              break;
            }

            v226 = *(v222 - 16);
            if (v220 >= v226)
            {
              if (v226 < v220)
              {
                break;
              }

              v227 = *(v222 - 32);
              if (v219 >= v227 && (v227 < v219 || v221 >= *(v222 - 8)))
              {
                break;
              }
            }
          }

          *(v222 + 16) = v260;
          *(v222 + 32) = v268;
          *v222 = v252;
          *(v222 + 48) = v276;
          *(v222 + 56) = v219;
          *(v222 + 64) = v217;
          *(v222 + 72) = v220;
          *(v222 + 80) = v221;
        }

        v97 = result + 88;
      }

      while (result + 88 != a2);
    }

    return;
  }

  if (v99)
  {
    return;
  }

  v100 = 0;
  v101 = i;
  while (2)
  {
    v103 = v101;
    v101 = v97;
    v104 = *(v103 + 152);
    v105 = *(v103 + 64);
    if (v104 >= v105)
    {
      if (v105 < v104)
      {
        goto LABEL_176;
      }

      v118 = *(v103 + 160);
      v119 = *(v103 + 72);
      if (v118 >= v119)
      {
        if (v119 < v118)
        {
          goto LABEL_176;
        }

        v120 = *(v103 + 144);
        v121 = *(v103 + 56);
        if (v120 >= v121 && (v121 < v120 || *(v103 + 168) >= *(v103 + 80)))
        {
          goto LABEL_176;
        }
      }
    }

    v273 = *(v101 + 48);
    v257 = *(v101 + 16);
    v265 = *(v101 + 32);
    v249 = *v101;
    v106 = *(v103 + 144);
    v107 = *(v103 + 160);
    v108 = *(v103 + 168);
    v109 = *(v103 + 48);
    *(v101 + 32) = *(v103 + 32);
    *(v101 + 48) = v109;
    *(v101 + 64) = *(v103 + 64);
    *(v101 + 80) = *(v103 + 80);
    v110 = *(v103 + 16);
    v102 = i;
    *v101 = *v103;
    *(v101 + 16) = v110;
    if (v103 == i)
    {
      goto LABEL_175;
    }

    v111 = v100;
    while (2)
    {
      v114 = i + v111;
      v115 = *(i + v111 - 24);
      if (v104 < v115)
      {
        goto LABEL_180;
      }

      if (v115 < v104)
      {
        goto LABEL_188;
      }

      v116 = *(v114 - 16);
      if (v107 < v116)
      {
        goto LABEL_180;
      }

      if (v116 < v107)
      {
        goto LABEL_188;
      }

      v117 = *(v114 - 32);
      if (v106 < v117)
      {
LABEL_180:
        v103 -= 88;
        v112 = *(v114 - 40);
        *(v114 + 32) = *(v114 - 56);
        *(v114 + 48) = v112;
        *(v114 + 64) = *(v114 - 24);
        *(v114 + 80) = *(v114 - 8);
        v113 = *(v114 - 72);
        *v114 = *(v114 - 88);
        *(v114 + 16) = v113;
        v111 -= 88;
        if (!v111)
        {
          v102 = i;
          goto LABEL_175;
        }

        continue;
      }

      break;
    }

    if (v117 >= v106)
    {
      if (v108 >= *(v114 - 8))
      {
LABEL_188:
        v102 = v103;
        goto LABEL_175;
      }

      goto LABEL_180;
    }

    v102 = i + v111;
LABEL_175:
    *(v102 + 16) = v257;
    *(v102 + 32) = v265;
    *v102 = v249;
    *(v102 + 48) = v273;
    *(v102 + 56) = v106;
    *(v102 + 64) = v104;
    *(v102 + 72) = v107;
    *(v102 + 80) = v108;
LABEL_176:
    v97 = v101 + 88;
    v100 += 88;
    if (v101 + 88 != a2)
    {
      continue;
    }

    break;
  }
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (v3 < v4 || v4 >= v3 && ((v32 = *(a2 + 9), v33 = *(a1 + 9), v32 < v33) || v33 >= v32 && ((v34 = *(a2 + 7), v35 = *(a1 + 7), v34 < v35) || v35 >= v34 && (result = *(a2 + 10), result < *(a1 + 10)))))
  {
    v5 = *(a3 + 8);
    if (v5 < v3 || v3 >= v5 && ((v40 = *(a3 + 9), v41 = *(a2 + 9), v40 < v41) || v41 >= v40 && ((v42 = *(a3 + 7), v43 = *(a2 + 7), v42 < v43) || v43 >= v42 && *(a3 + 10) < *(a2 + 10))))
    {
      v60 = a1[2];
      v64 = a1[3];
      v68 = a1[4];
      v72 = *(a1 + 10);
      v52 = *a1;
      v56 = a1[1];
      v6 = a3[1];
      *a1 = *a3;
      a1[1] = v6;
      v8 = a3[3];
      v7 = a3[4];
      v9 = a3[2];
      *(a1 + 10) = *(a3 + 10);
      a1[3] = v8;
      a1[4] = v7;
      a1[2] = v9;
    }

    else
    {
      v63 = a1[2];
      v67 = a1[3];
      v71 = a1[4];
      v75 = *(a1 + 10);
      v55 = *a1;
      v59 = a1[1];
      v22 = a2[1];
      *a1 = *a2;
      a1[1] = v22;
      v24 = a2[3];
      v23 = a2[4];
      v25 = a2[2];
      *(a1 + 10) = *(a2 + 10);
      a1[3] = v24;
      a1[4] = v23;
      a1[2] = v25;
      *(a2 + 10) = v75;
      a2[3] = v67;
      a2[4] = v71;
      a2[1] = v59;
      a2[2] = v63;
      result = *&v55;
      *a2 = v55;
      v26 = *(a3 + 8);
      v27 = *(a2 + 8);
      if (v26 >= v27)
      {
        if (v27 < v26)
        {
          return result;
        }

        v48 = *(a3 + 9);
        v49 = *(a2 + 9);
        if (v48 >= v49)
        {
          if (v49 < v48)
          {
            return result;
          }

          v50 = *(a3 + 7);
          v51 = *(a2 + 7);
          if (v50 >= v51)
          {
            if (v51 < v50)
            {
              return result;
            }

            result = *(a3 + 10);
            if (result >= *(a2 + 10))
            {
              return result;
            }
          }
        }
      }

      v60 = a2[2];
      v64 = a2[3];
      v68 = a2[4];
      v72 = *(a2 + 10);
      v52 = *a2;
      v56 = a2[1];
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      v30 = a3[3];
      v29 = a3[4];
      v31 = a3[2];
      *(a2 + 10) = *(a3 + 10);
      a2[3] = v30;
      a2[4] = v29;
      a2[2] = v31;
    }

    *(a3 + 10) = v72;
    a3[3] = v64;
    a3[4] = v68;
    a3[1] = v56;
    a3[2] = v60;
    result = *&v52;
    *a3 = v52;
    return result;
  }

  v10 = *(a3 + 8);
  if (v10 < v3 || v3 >= v10 && ((v36 = *(a3 + 9), v37 = *(a2 + 9), v36 < v37) || v37 >= v36 && ((v38 = *(a3 + 7), v39 = *(a2 + 7), v38 < v39) || v39 >= v38 && (result = *(a3 + 10), result < *(a2 + 10)))))
  {
    v61 = a2[2];
    v65 = a2[3];
    v69 = a2[4];
    v73 = *(a2 + 10);
    v53 = *a2;
    v57 = a2[1];
    v11 = a3[1];
    *a2 = *a3;
    a2[1] = v11;
    v13 = a3[3];
    v12 = a3[4];
    v14 = a3[2];
    *(a2 + 10) = *(a3 + 10);
    a2[3] = v13;
    a2[4] = v12;
    a2[2] = v14;
    *(a3 + 10) = v73;
    a3[3] = v65;
    a3[4] = v69;
    a3[1] = v57;
    a3[2] = v61;
    result = *&v53;
    *a3 = v53;
    v16 = *(a2 + 8);
    v17 = *(a1 + 8);
    if (v16 < v17 || v17 >= v16 && ((v44 = *(a2 + 9), v45 = *(a1 + 9), v44 < v45) || v45 >= v44 && ((v46 = *(a2 + 7), v47 = *(a1 + 7), v46 < v47) || v47 >= v46 && (result = *(a2 + 10), result < *(a1 + 10)))))
    {
      v62 = a1[2];
      v66 = a1[3];
      v70 = a1[4];
      v74 = *(a1 + 10);
      v54 = *a1;
      v58 = a1[1];
      v18 = a2[1];
      *a1 = *a2;
      a1[1] = v18;
      v20 = a2[3];
      v19 = a2[4];
      v21 = a2[2];
      *(a1 + 10) = *(a2 + 10);
      a1[3] = v20;
      a1[4] = v19;
      a1[2] = v21;
      *(a2 + 10) = v74;
      a2[3] = v66;
      a2[4] = v70;
      a2[1] = v58;
      a2[2] = v62;
      result = *&v54;
      *a2 = v54;
    }
  }

  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(a1, a2, a3);
  v9 = *(a4 + 64);
  v10 = *(a3 + 64);
  if (v9 < v10 || v10 >= v9 && ((v27 = *(a4 + 72), v28 = *(a3 + 72), v27 < v28) || v28 >= v27 && ((v29 = *(a4 + 56), v30 = *(a3 + 56), v29 < v30) || v30 >= v29 && (result = *(a4 + 80), result < *(a3 + 80)))))
  {
    v45 = *(a3 + 32);
    v48 = *(a3 + 48);
    v51 = *(a3 + 64);
    v54 = *(a3 + 80);
    v39 = *a3;
    v42 = *(a3 + 16);
    v11 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v11;
    v13 = *(a4 + 48);
    v12 = *(a4 + 64);
    v14 = *(a4 + 32);
    *(a3 + 80) = *(a4 + 80);
    *(a3 + 48) = v13;
    *(a3 + 64) = v12;
    *(a3 + 32) = v14;
    *(a4 + 80) = v54;
    *(a4 + 48) = v48;
    *(a4 + 64) = v51;
    *(a4 + 16) = v42;
    *(a4 + 32) = v45;
    result = *&v39;
    *a4 = v39;
    v15 = *(a3 + 64);
    v16 = *(a2 + 64);
    if (v15 < v16 || v16 >= v15 && ((v31 = *(a3 + 72), v32 = *(a2 + 72), v31 < v32) || v32 >= v31 && ((v33 = *(a3 + 56), v34 = *(a2 + 56), v33 < v34) || v34 >= v33 && (result = *(a3 + 80), result < *(a2 + 80)))))
    {
      v46 = *(a2 + 32);
      v49 = *(a2 + 48);
      v52 = *(a2 + 64);
      v55 = *(a2 + 80);
      v40 = *a2;
      v43 = *(a2 + 16);
      v17 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v17;
      v19 = *(a3 + 48);
      v18 = *(a3 + 64);
      v20 = *(a3 + 32);
      *(a2 + 80) = *(a3 + 80);
      *(a2 + 48) = v19;
      *(a2 + 64) = v18;
      *(a2 + 32) = v20;
      *(a3 + 80) = v55;
      *(a3 + 48) = v49;
      *(a3 + 64) = v52;
      *(a3 + 16) = v43;
      *(a3 + 32) = v46;
      result = *&v40;
      *a3 = v40;
      v21 = *(a2 + 64);
      v22 = *(a1 + 64);
      if (v21 < v22 || v22 >= v21 && ((v35 = *(a2 + 72), v36 = *(a1 + 72), v35 < v36) || v36 >= v35 && ((v37 = *(a2 + 56), v38 = *(a1 + 56), v37 < v38) || v38 >= v37 && (result = *(a2 + 80), result < *(a1 + 80)))))
      {
        v47 = *(a1 + 32);
        v50 = *(a1 + 48);
        v53 = *(a1 + 64);
        v56 = *(a1 + 80);
        v41 = *a1;
        v44 = *(a1 + 16);
        v23 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v23;
        v25 = *(a2 + 48);
        v24 = *(a2 + 64);
        v26 = *(a2 + 32);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 48) = v25;
        *(a1 + 64) = v24;
        *(a1 + 32) = v26;
        *(a2 + 80) = v56;
        *(a2 + 48) = v50;
        *(a2 + 64) = v53;
        *(a2 + 16) = v44;
        *(a2 + 32) = v47;
        result = *&v41;
        *a2 = v41;
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(a1, a2, a3, a4);
  v11 = *(a5 + 8);
  v12 = *(a4 + 8);
  if (v11 < v12 || v12 >= v11 && ((v35 = *(a5 + 9), v36 = *(a4 + 9), v35 < v36) || v36 >= v35 && ((v37 = *(a5 + 7), v38 = *(a4 + 7), v37 < v38) || v38 >= v37 && (result = *(a5 + 10), result < *(a4 + 10)))))
  {
    v59 = a4[2];
    v63 = a4[3];
    v67 = a4[4];
    v71 = *(a4 + 10);
    v51 = *a4;
    v55 = a4[1];
    v13 = a5[1];
    *a4 = *a5;
    a4[1] = v13;
    v15 = a5[3];
    v14 = a5[4];
    v16 = a5[2];
    *(a4 + 10) = *(a5 + 10);
    a4[3] = v15;
    a4[4] = v14;
    a4[2] = v16;
    *(a5 + 10) = v71;
    a5[3] = v63;
    a5[4] = v67;
    a5[1] = v55;
    a5[2] = v59;
    result = *&v51;
    *a5 = v51;
    v17 = *(a4 + 8);
    v18 = *(a3 + 8);
    if (v17 < v18 || v18 >= v17 && ((v39 = *(a4 + 9), v40 = *(a3 + 9), v39 < v40) || v40 >= v39 && ((v41 = *(a4 + 7), v42 = *(a3 + 7), v41 < v42) || v42 >= v41 && (result = *(a4 + 10), result < *(a3 + 10)))))
    {
      v60 = a3[2];
      v64 = a3[3];
      v68 = a3[4];
      v72 = *(a3 + 10);
      v52 = *a3;
      v56 = a3[1];
      v19 = a4[1];
      *a3 = *a4;
      a3[1] = v19;
      v21 = a4[3];
      v20 = a4[4];
      v22 = a4[2];
      *(a3 + 10) = *(a4 + 10);
      a3[3] = v21;
      a3[4] = v20;
      a3[2] = v22;
      *(a4 + 10) = v72;
      a4[3] = v64;
      a4[4] = v68;
      a4[1] = v56;
      a4[2] = v60;
      result = *&v52;
      *a4 = v52;
      v23 = *(a3 + 8);
      v24 = *(a2 + 8);
      if (v23 < v24 || v24 >= v23 && ((v43 = *(a3 + 9), v44 = *(a2 + 9), v43 < v44) || v44 >= v43 && ((v45 = *(a3 + 7), v46 = *(a2 + 7), v45 < v46) || v46 >= v45 && (result = *(a3 + 10), result < *(a2 + 10)))))
      {
        v61 = a2[2];
        v65 = a2[3];
        v69 = a2[4];
        v73 = *(a2 + 10);
        v53 = *a2;
        v57 = a2[1];
        v25 = a3[1];
        *a2 = *a3;
        a2[1] = v25;
        v27 = a3[3];
        v26 = a3[4];
        v28 = a3[2];
        *(a2 + 10) = *(a3 + 10);
        a2[3] = v27;
        a2[4] = v26;
        a2[2] = v28;
        *(a3 + 10) = v73;
        a3[3] = v65;
        a3[4] = v69;
        a3[1] = v57;
        a3[2] = v61;
        result = *&v53;
        *a3 = v53;
        v29 = *(a2 + 8);
        v30 = *(a1 + 8);
        if (v29 < v30 || v30 >= v29 && ((v47 = *(a2 + 9), v48 = *(a1 + 9), v47 < v48) || v48 >= v47 && ((v49 = *(a2 + 7), v50 = *(a1 + 7), v49 < v50) || v50 >= v49 && (result = *(a2 + 10), result < *(a1 + 10)))))
        {
          v62 = a1[2];
          v66 = a1[3];
          v70 = a1[4];
          v74 = *(a1 + 10);
          v54 = *a1;
          v58 = a1[1];
          v31 = a2[1];
          *a1 = *a2;
          a1[1] = v31;
          v33 = a2[3];
          v32 = a2[4];
          v34 = a2[2];
          *(a1 + 10) = *(a2 + 10);
          a1[3] = v33;
          a1[4] = v32;
          a1[2] = v34;
          *(a2 + 10) = v74;
          a2[3] = v66;
          a2[4] = v70;
          a2[1] = v58;
          a2[2] = v62;
          result = *&v54;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *>(uint64_t a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(a2 - 24);
        v4 = *(a1 + 64);
        if (v3 < v4 || v4 >= v3 && ((v37 = *(a2 - 16), v38 = *(a1 + 72), v37 < v38) || v38 >= v37 && ((v39 = *(a2 - 32), v40 = *(a1 + 56), v39 < v40) || v40 >= v39 && *(a2 - 8) < *(a1 + 80))))
        {
          v5 = a2 - 88;
          v45 = *(a1 + 32);
          v47 = *(a1 + 48);
          v49 = *(a1 + 64);
          v50 = *(a1 + 80);
          v41 = *a1;
          v43 = *(a1 + 16);
          v6 = *(a2 - 72);
          *a1 = *(a2 - 88);
          *(a1 + 16) = v6;
          v8 = *(a2 - 40);
          v7 = *(a2 - 24);
          v9 = *(a2 - 56);
          *(a1 + 80) = *(a2 - 8);
          *(a1 + 48) = v8;
          *(a1 + 64) = v7;
          *(a1 + 32) = v9;
          *(v5 + 80) = v50;
          *(v5 + 48) = v47;
          *(v5 + 64) = v49;
          *(v5 + 16) = v43;
          *(v5 + 32) = v45;
          *v5 = v41;
          return 1;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(a1, (a1 + 88), (a2 - 88));
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(a1, a1 + 88, a1 + 176, a2 - 88);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(a1, (a1 + 88), (a1 + 176), (a1 + 264), (a2 - 88));
      return 1;
  }

LABEL_11:
  v11 = a1 + 176;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SchedulingSearchHeuristic(operations_research::sat::Model *)::$_0::operator()(void)::ToSchedule *,0>(a1, (a1 + 88), (a1 + 176));
  v15 = a1 + 264;
  if (a1 + 264 == a2)
  {
LABEL_39:
    v36 = 1;
    return (v36 | v14) & 1;
  }

  v14 = a2;
  v16 = 0;
  v17 = 0;
  while (2)
  {
    v19 = *(v15 + 64);
    v20 = *(v11 + 64);
    if (v19 >= v20)
    {
      if (v20 < v19)
      {
        goto LABEL_15;
      }

      v21 = *(v15 + 72);
      v33 = *(v11 + 72);
      if (v21 >= v33)
      {
        if (v33 < v21)
        {
          goto LABEL_15;
        }

        v34 = *(v15 + 56);
        v35 = *(v11 + 56);
        if (v34 >= v35 && (v35 < v34 || *(v15 + 80) >= *(v11 + 80)))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v21 = *(v15 + 72);
    }

    v22 = *(v15 + 56);
    v48 = *(v15 + 48);
    v44 = *(v15 + 16);
    v46 = *(v15 + 32);
    v42 = *v15;
    v23 = *(v15 + 80);
    *(v15 + 80) = *(v11 + 80);
    v24 = *(v11 + 48);
    *(v15 + 32) = *(v11 + 32);
    *(v15 + 48) = v24;
    *(v15 + 64) = *(v11 + 64);
    v25 = *(v11 + 16);
    v18 = a1;
    *v15 = *v11;
    *(v15 + 16) = v25;
    if (v11 == a1)
    {
      goto LABEL_14;
    }

    v26 = v16;
    while (1)
    {
      v29 = a1 + v26;
      v30 = *(a1 + v26 + 152);
      if (v19 >= v30)
      {
        if (v30 < v19)
        {
          goto LABEL_36;
        }

        v31 = *(v29 + 160);
        if (v21 >= v31)
        {
          if (v31 < v21)
          {
            goto LABEL_36;
          }

          v32 = *(v29 + 144);
          if (v22 >= v32)
          {
            break;
          }
        }
      }

LABEL_20:
      v11 -= 88;
      v27 = *(v29 + 136);
      *(v29 + 208) = *(v29 + 120);
      *(v29 + 224) = v27;
      *(v29 + 240) = *(v29 + 152);
      *(v29 + 256) = *(v29 + 168);
      v28 = *(v29 + 104);
      v26 -= 88;
      *(v29 + 176) = *(v29 + 88);
      *(v29 + 192) = v28;
      if (v26 == -176)
      {
        v18 = a1;
        goto LABEL_14;
      }
    }

    if (v32 >= v22)
    {
      if (v23 >= *(v29 + 168))
      {
        v18 = a1 + v26 + 176;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_36:
    v18 = v11;
LABEL_14:
    *(v18 + 16) = v44;
    *(v18 + 32) = v46;
    *v18 = v42;
    *(v18 + 48) = v48;
    *(v18 + 56) = v22;
    *(v18 + 64) = v19;
    *(v18 + 72) = v21;
    ++v17;
    *(v18 + 80) = v23;
    if (v17 != 8)
    {
LABEL_15:
      v11 = v15;
      v16 += 88;
      v15 += 88;
      if (v15 == a2)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v36 = 0;
  v14 = v15 + 88 == a2;
  return (v36 | v14) & 1;
}