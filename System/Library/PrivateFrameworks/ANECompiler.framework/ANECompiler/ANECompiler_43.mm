__n128 std::__function::__func<operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F407D0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v48 = *a2;
  if ((*(*(a1 + 96) + 8) & 0xFFFFFFF) != 0 && *(a1 + 80) == 1)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 104);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v4 == -1)
  {
    v9 = *(a1 + 48);
    v10 = v9;
    v11 = a1 + 56;
    v12 = *(a1 + 56);
    if (v12 == -1)
    {
      return 1;
    }
  }

  else
  {
    v8 = *(v5 + 152);
    v9 = v6 + *(v8 + 24 * v4) * v7;
    v10 = v6 - *(v8 + 24 * (v4 ^ 1)) * v7;
    v11 = a1 + 56;
    v12 = *(a1 + 56);
    if (v12 == -1)
    {
      return 1;
    }
  }

  if (v9 == v10)
  {
    return 1;
  }

  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  v16 = *(v5 + 152);
  v17 = v14 + *(v16 + 24 * v12) * v15;
  v18 = v14 - *(v16 + 24 * (v12 ^ 1)) * v15;
  if (v17 == v18)
  {
    return 1;
  }

  v19.i64[0] = v14 + *(v16 + 24 * v12) * v15;
  v19.i64[1] = v9;
  v20 = vabsq_s64(v19);
  v21.i64[0] = v14 - *(v16 + 24 * (v12 ^ 1)) * v15;
  v21.i64[1] = v10;
  v22 = vabsq_s64(v21);
  v23 = vbslq_s8(vcgtq_s64(v20, v22), v20, v22);
  v24 = v23.i64[0] * v23.i64[1];
  if ((v23.i64[0] * v23.i64[1]) >> 64 != (v23.i64[0] * v23.i64[1]) >> 63)
  {
    v24 = ((v23.i64[0] ^ v23.i64[1]) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v24 > 0x1FFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v25 = v6 >= 0 ? *(a1 + 48) : -v6;
  v26 = (v23.i64[0] * v25) >> 64 == (v23.i64[0] * v25) >> 63 ? v23.i64[0] * v25 : ((v23.i64[0] ^ v25) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v26 > 0x1FFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v27 = v14 >= 0 ? *(v11 + 16) : -v14;
  v28 = (v23.i64[1] * v27) >> 64 == (v23.i64[1] * v27) >> 63 ? v23.i64[1] * v27 : ((v27 ^ v23.i64[1]) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v28 > 0x1FFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v29 = *(v2 + 272);
  if (v4 == -1)
  {
    v33 = v6;
    if (v6 < 0x8000000000000003)
    {
      v33 = -INFINITY;
    }

    if (v6 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v33 = INFINITY;
    }

    v32 = *v29;
  }

  else
  {
    v30 = v7;
    v31 = -INFINITY;
    if (v7 < 0x8000000000000003)
    {
      v30 = -INFINITY;
    }

    v32 = *v29;
    if (v7 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v30 = INFINITY;
    }

    if (v6 >= 0x8000000000000003)
    {
      v31 = v6;
    }

    if (v6 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v31 = INFINITY;
    }

    v33 = v31 + v30 * *(v32 + 8 * v4);
  }

  v47 = v33;
  v34 = v15;
  v35 = -INFINITY;
  if (v15 < 0x8000000000000003)
  {
    v34 = -INFINITY;
  }

  if (v15 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v34 = INFINITY;
  }

  if (v14 >= 0x8000000000000003)
  {
    v35 = v14;
  }

  if (v14 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v35 = INFINITY;
  }

  v46 = v35 + v34 * *(v32 + 8 * v12);
  v36 = *(a1 + 8);
  if (v36 == -1)
  {
    v42 = *(a1 + 24);
    v41 = v42;
    if (v42 < 0x8000000000000003)
    {
      v41 = -INFINITY;
    }

    if (v42 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v41 = INFINITY;
    }
  }

  else
  {
    v37 = -INFINITY;
    v38 = *(a1 + 16);
    v39 = *(a1 + 24);
    v40 = v38;
    if (v38 < 0x8000000000000003)
    {
      v40 = -INFINITY;
    }

    if (v38 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v40 = INFINITY;
    }

    if (v39 >= 0x8000000000000003)
    {
      v37 = v39;
    }

    if (v39 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v37 = INFINITY;
    }

    v41 = v37 + v40 * *(v32 + 8 * v36);
  }

  v45 = v41;
  v44[0] = &v45;
  v44[1] = &v47;
  v44[2] = &v46;
  v44[3] = a1 + 88;
  v44[4] = a1 + 8;
  v44[5] = a1 + 32;
  v44[6] = v11;
  v44[7] = &v48;
  v43[0] = &v45;
  v43[1] = &v47;
  v43[2] = &v46;
  v43[3] = a1 + 88;
  v43[4] = a1 + 8;
  v43[5] = a1 + 32;
  v43[6] = v11;
  v43[7] = &v48;
  operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(long long,long long,long long)#1}::operator()(v44, v17, v9, v17 * v9);
  operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(long long,long long,long long)#1}::operator()(v44, v18, v10, v18 * v10);
  operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(long long,long long,long long)#2}::operator()(v43, v18, v9, v18 * v9);
  operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(long long,long long,long long)#2}::operator()(v43, v17, v10, v17 * v10);
  return 1;
}

uint64_t std::__function::__func<operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat40CreatePositiveMultiplicationCutGeneratorENS0_16AffineExpressionES1_S1_iPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat40CreatePositiveMultiplicationCutGeneratorENS0_16AffineExpressionES1_S1_iPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat40CreatePositiveMultiplicationCutGeneratorENS0_16AffineExpressionES1_S1_iPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat40CreatePositiveMultiplicationCutGeneratorENS0_16AffineExpressionES1_S1_iPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(long long,long long,long long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (**(a1 + 16) * a3 - (**a1 - **(a1 + 8) * a2) < a4 + 0.0001)
  {
    return;
  }

  v7 = **(a1 + 24);
  v8 = v7[3];
  if (v8 > 1)
  {
    v11 = 0;
    _X12 = v7[5];
    __asm { PRFM            #4, [X12] }

    v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X12 >> 12)) & v8;
    v21 = *(_X12 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_11;
    }

LABEL_8:
    v23 = v7[6];
    while (1)
    {
      v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v8;
      if (*(v23 + 16 * v24) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_11:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v11 += 8;
          v20 = (v11 + v20) & v8;
          v21 = *(_X12 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_17;
      }
    }

    v9 = (v23 + 16 * v24);
    if (_X12 + v24)
    {
      goto LABEL_15;
    }
  }

  else if (v7[4] >= 2uLL)
  {
    v10 = v7[5];
    v9 = v7 + 5;
    if (v10 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
LABEL_15:
        v25 = v9[1];
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  v25 = 0;
LABEL_18:
  v44[0] = v25;
  v44[1] = 0x8000000000000002;
  v44[2] = a4;
  v45 = 0u;
  v46 = 0u;
  v26 = *(a1 + 32);
  v27 = *(v26 + 2);
  v42 = *v26;
  v43 = v27;
  operations_research::sat::LinearConstraintBuilder::AddTerm(v44, &v42, -1);
  if (a2)
  {
    v28 = *(a1 + 40);
    v29 = *(v28 + 2);
    v42 = *v28;
    v43 = v29;
    operations_research::sat::LinearConstraintBuilder::AddTerm(v44, &v42, a2);
  }

  if (a3)
  {
    v30 = *(a1 + 48);
    v31 = *(v30 + 2);
    v42 = *v30;
    v43 = v31;
    operations_research::sat::LinearConstraintBuilder::AddTerm(v44, &v42, a3);
  }

  v32 = **(a1 + 56);
  operations_research::sat::LinearConstraintBuilder::Build(v44, v39);
  v38 = 15;
  strcpy(&v37, "PositiveProduct");
  v36 = 0;
  LOBYTE(__p) = 0;
  operations_research::sat::LinearConstraintManager::AddCut(v32, v39, &v37, &__p);
  if ((v36 & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_32:
    operator delete(v37);
    v33 = v41;
    v41 = 0;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(__p);
  if (v38 < 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v33 = v41;
  v41 = 0;
  if (v33)
  {
LABEL_25:
    MEMORY[0x23EED9440](v33, 0x1000C8000313F17);
  }

LABEL_26:
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    MEMORY[0x23EED9440](v34, 0x1000C8052888210);
  }

  if (*(&v45 + 1))
  {
    *&v46 = *(&v45 + 1);
    operator delete(*(&v45 + 1));
  }
}

void sub_23CB5287C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a22);
  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CreatePositiveMultiplicationCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(long long,long long,long long)#2}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (**(a1 + 16) * a3 - (**a1 - **(a1 + 8) * a2) > a4 + -0.0001)
  {
    return;
  }

  v7 = **(a1 + 24);
  v8 = v7[3];
  if (v8 > 1)
  {
    v11 = 0;
    _X12 = v7[5];
    __asm { PRFM            #4, [X12] }

    v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X12 >> 12)) & v8;
    v21 = *(_X12 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_11;
    }

LABEL_8:
    v23 = v7[6];
    while (1)
    {
      v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v8;
      if (*(v23 + 16 * v24) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_11:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v11 += 8;
          v20 = (v11 + v20) & v8;
          v21 = *(_X12 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_17;
      }
    }

    v9 = (v23 + 16 * v24);
    if (_X12 + v24)
    {
      goto LABEL_15;
    }
  }

  else if (v7[4] >= 2uLL)
  {
    v10 = v7[5];
    v9 = v7 + 5;
    if (v10 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
LABEL_15:
        v25 = v9[1];
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  v25 = 0;
LABEL_18:
  v44[0] = v25;
  v44[1] = a4;
  v44[2] = 0x7FFFFFFFFFFFFFFELL;
  v45 = 0u;
  v46 = 0u;
  v26 = *(a1 + 32);
  v27 = *(v26 + 2);
  v42 = *v26;
  v43 = v27;
  operations_research::sat::LinearConstraintBuilder::AddTerm(v44, &v42, -1);
  if (a2)
  {
    v28 = *(a1 + 40);
    v29 = *(v28 + 2);
    v42 = *v28;
    v43 = v29;
    operations_research::sat::LinearConstraintBuilder::AddTerm(v44, &v42, a2);
  }

  if (a3)
  {
    v30 = *(a1 + 48);
    v31 = *(v30 + 2);
    v42 = *v30;
    v43 = v31;
    operations_research::sat::LinearConstraintBuilder::AddTerm(v44, &v42, a3);
  }

  v32 = **(a1 + 56);
  operations_research::sat::LinearConstraintBuilder::Build(v44, v39);
  v38 = 15;
  strcpy(&v37, "PositiveProduct");
  v36 = 0;
  LOBYTE(__p) = 0;
  operations_research::sat::LinearConstraintManager::AddCut(v32, v39, &v37, &__p);
  if ((v36 & 0x80000000) == 0)
  {
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_32:
    operator delete(v37);
    v33 = v41;
    v41 = 0;
    if (!v33)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(__p);
  if (v38 < 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v33 = v41;
  v41 = 0;
  if (v33)
  {
LABEL_25:
    MEMORY[0x23EED9440](v33, 0x1000C8000313F17);
  }

LABEL_26:
  v34 = v40;
  v40 = 0;
  if (v34)
  {
    MEMORY[0x23EED9440](v34, 0x1000C8052888210);
  }

  if (*(&v45 + 1))
  {
    *&v46 = *(&v45 + 1);
    operator delete(*(&v45 + 1));
  }
}

void sub_23CB52BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a22);
  v24 = *(v22 - 56);
  if (v24)
  {
    *(v22 - 48) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__value_func<BOOL ()(operations_research::sat::LinearConstraintManager *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23CB52EAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<operations_research::sat::CreateSquareCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateSquareCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40860;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CreateSquareCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateSquareCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 + 64) + 8) & 0xFFFFFFF) == 0 || *(a1 + 56) != 1)
  {
    v5 = (a1 + 32);
    v4 = *(a1 + 32);
    if (v4 != -1)
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = *(*(a1 + 72) + 152);
      v9 = v6 - *(v8 + 24 * (v4 ^ 1)) * v7;
      v10 = v6 + *(v8 + 24 * v4) * v7;
      if (v9 <= 0x80000000 && v10 != v9)
      {
        v12 = *a2;
        v28 = *v5;
        v29 = *(a1 + 48);
        v34 = *(a1 + 8);
        v35 = *(a1 + 24);
        operations_research::sat::ComputeHyperplanAboveSquare(&v28, &v34, v10, v9, *(a1 + 80), v36);
        HIBYTE(v35) = 11;
        strcpy(&v34, "SquareUpper");
        v33 = 0;
        LOBYTE(__p) = 0;
        operations_research::sat::LinearConstraintManager::AddCut(v12, v36, &v34, &__p);
        if (v33 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v35) < 0)
        {
          operator delete(v34);
        }

        v13 = v38;
        v38 = 0;
        if (v13)
        {
          MEMORY[0x23EED9440](v13, 0x1000C8000313F17);
        }

        v14 = v37;
        v37 = 0;
        if (v14)
        {
          MEMORY[0x23EED9440](v14, 0x1000C8052888210);
        }

        if (*v5 == -1)
        {
          v20 = *(a1 + 48);
          v19 = v20;
          if (v20 < 0x8000000000000003)
          {
            v19 = -INFINITY;
          }

          if (v20 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v19 = INFINITY;
          }
        }

        else
        {
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);
          v17 = v15;
          v18 = -INFINITY;
          if (v15 < 0x8000000000000003)
          {
            v17 = -INFINITY;
          }

          if (v15 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v17 = INFINITY;
          }

          if (v16 >= 0x8000000000000003)
          {
            v18 = v16;
          }

          if (v16 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v18 = INFINITY;
          }

          v19 = v18 + v17 * *(**(v12 + 272) + 8 * *v5);
        }

        *v26 = *v5;
        v27 = *(v5 + 2);
        *v24 = *(a1 + 8);
        v25 = *(a1 + 24);
        operations_research::sat::ComputeHyperplanBelowSquare(v26, v24, vcvtmd_s64_f64(v19), *(a1 + 80), &v28);
        HIBYTE(v27) = 11;
        strcpy(v26, "SquareLower");
        HIBYTE(v25) = 0;
        LOBYTE(v24[0]) = 0;
        operations_research::sat::LinearConstraintManager::AddCut(v12, &v28, v26, v24);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24[0]);
          if ((SHIBYTE(v27) & 0x80000000) == 0)
          {
LABEL_34:
            v21 = v31;
            v31 = 0;
            if (!v21)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }
        }

        else if ((SHIBYTE(v27) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        operator delete(v26[0]);
        v21 = v31;
        v31 = 0;
        if (!v21)
        {
LABEL_36:
          v22 = v30;
          v30 = 0;
          if (v22)
          {
            MEMORY[0x23EED9440](v22, 0x1000C8052888210);
          }

          return 1;
        }

LABEL_35:
        MEMORY[0x23EED9440](v21, 0x1000C8000313F17);
        goto LABEL_36;
      }
    }
  }

  return 1;
}

void sub_23CB53298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a23);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateSquareCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateSquareCutGenerator(operations_research::sat::AffineExpression,operations_research::sat::AffineExpression,int,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat24CreateSquareCutGeneratorENS0_16AffineExpressionES1_iPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat24CreateSquareCutGeneratorENS0_16AffineExpressionES1_iPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat24CreateSquareCutGeneratorENS0_16AffineExpressionES1_iPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat24CreateSquareCutGeneratorENS0_16AffineExpressionES1_iPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::ImpliedBoundsProcessor::BestImpliedBoundInfo>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::ImpliedBoundsProcessor::BestImpliedBoundInfo>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,48ul,true,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::TransferRelocatable<48ul>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(unsigned __int8 ***a1)
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
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

void *std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *result)
{
  *result = &unk_284F40910;
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

void std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40910;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CB537C4(_Unwind_Exception *a1)
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

__n128 std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(__n128 *a1, __n128 *a2)
{
  *a2 = &unk_284F40910;
  a2[1] = 0uLL;
  v3 = a1->n128_u64[1];
  v2 = a1[1].n128_u64[0];
  if (v2 != v3)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void sub_23CB538C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *a1)
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

uint64_t std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(void *a1, operations_research::sat::LinearConstraintManager **a2)
{
  if ((*(a1[5] + 8) & 0xFFFFFFF) == 0)
  {
    v15 = *a2;
    v3 = *(*a2 + 34);
    v5 = a1[1];
    for (i = a1[2]; v5 != i; v5 += 6)
    {
      if (*v5 != -1)
      {
        v6 = *(v5 + 1);
        v7 = *(v5 + 2);
        if (v7 + *(*(a1[4] + 152) + 24 * *v5) * v6 != v7 - *(*(a1[4] + 152) + 24 * (*v5 ^ 1)) * v6)
        {
          operator new();
        }
      }
    }

    v16 = 5;
    *v17 = 0u;
    *__p = 0u;
    v19 = 0u;
    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,false>(0, 0, 0, 1, 0);
    operations_research::sat::TopNCuts::TransferToManager(&v16, v15);
    v8 = __p[1];
    if (__p[1])
    {
      v9 = v19;
      v10 = __p[1];
      if (v19 != __p[1])
      {
        do
        {
          v11 = *(v9 - 8);
          *(v9 - 8) = 0;
          if (v11)
          {
            MEMORY[0x23EED9440](v11, 0x1000C8000313F17);
          }

          v12 = *(v9 - 16);
          *(v9 - 16) = 0;
          if (v12)
          {
            MEMORY[0x23EED9440](v12, 0x1000C8052888210);
          }

          v13 = (v9 - 64);
          if (*(v9 - 41) < 0)
          {
            operator delete(*v13);
          }

          v9 -= 64;
        }

        while (v13 != v8);
        v10 = __p[1];
      }

      *&v19 = v8;
      operator delete(v10);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }
  }

  return 1;
}

void sub_23CB53D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat30CreateAllDifferentCutGeneratorERKNSt3__16vectorINS0_16AffineExpressionENS1_9allocatorIS3_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat30CreateAllDifferentCutGeneratorERKNSt3__16vectorINS0_16AffineExpressionENS1_9allocatorIS3_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat30CreateAllDifferentCutGeneratorERKNSt3__16vectorINS0_16AffineExpressionENS1_9allocatorIS3_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat30CreateAllDifferentCutGeneratorERKNSt3__16vectorINS0_16AffineExpressionENS1_9allocatorIS3_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::anonymous namespace::TryToGenerateAllDiffCut(operations_research::sat::AffineExpression *a1, operations_research::sat::AffineExpression *a2, operations_research::sat::IntegerTrail *a3, uint64_t *a4, int *a5, void *a6)
{
  v93 = *MEMORY[0x277D85DE8];
  v85[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v85[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v86 = 0u;
  v87 = 0u;
  v82[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v82[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v83 = 0u;
  v84 = 0u;
  if (a2 == a1)
  {
    v9 = 0;
    goto LABEL_82;
  }

  v8 = a1;
  v9 = 0;
  v10 = 0;
  v11 = (a2 - a1) >> 5;
  v63 = a6 + 5;
  v12 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v62 = v12 >> 7;
  v13 = vdup_n_s8(v12 & 0x7F);
  v14 = 0.0;
  do
  {
    while (1)
    {
      v15 = *v8;
      operations_research::sat::SumOfAllDiffLowerBounder::Add(v85, (v8 + 8), v11, a3);
      if (*(v8 + 2) == -1)
      {
        v18 = 0;
        v17 = -1;
      }

      else
      {
        v16 = *(v8 + 2);
        v17 = *(v8 + 2) ^ (v16 >> 63) ^ 1;
        if (v16 >= 0)
        {
          v18 = *(v8 + 2);
        }

        else
        {
          v18 = -v16;
        }
      }

      v19 = -*(v8 + 3);
      LODWORD(v71) = v17;
      v72 = v18;
      v73 = v19;
      operations_research::sat::SumOfAllDiffLowerBounder::Add(v82, &v71, v11, a3);
      v20 = v10 - v9;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
      v22 = v21 + 1;
      if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * (-v9 >> 3) > v22)
      {
        v22 = 0x5555555555555556 * (-v9 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v9 >> 3) >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        if (v23 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v24 = 24 * v21;
      *v24 = *(v8 + 8);
      *(v24 + 16) = *(v8 + 3);
      v10 = 24 * v21 + 24;
      v25 = v24 - v20;
      memcpy((v24 - v20), v9, v20);
      if (v9)
      {
        operator delete(v9);
      }

      v9 = v25;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v25) >> 3);
      v28 = ((v87 - *(&v86 + 1)) >> 3);
      if (v27 != v28)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v27, v28, "current_set_exprs.size() == diff_mins.size()");
      }

      v29 = ((v84 - *(&v83 + 1)) >> 3);
      if (v27 != v29)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v27, v29, "current_set_exprs.size() == negated_diff_maxes.size()");
      }

      v79 = 0;
      v80 = 0;
      v81 = 0;
      BestLowerBound = operations_research::sat::SumOfAllDiffLowerBounder::GetBestLowerBound(v85, &v79, v26);
      __p = 0;
      v77 = 0;
      v78 = 0;
      v32 = operations_research::sat::SumOfAllDiffLowerBounder::GetBestLowerBound(v82, &__p, v31);
      v14 = v14 + v15;
      v33 = -v32;
      v34 = BestLowerBound + -0.0001;
      if (BestLowerBound < 0x8000000000000003)
      {
        v34 = -INFINITY;
      }

      if (BestLowerBound > 0x7FFFFFFFFFFFFFFDLL)
      {
        v34 = INFINITY;
      }

      if (v14 < v34)
      {
        goto LABEL_33;
      }

      v35 = v33 + 0.0001;
      if (v33 < 0x8000000000000003)
      {
        v35 = -INFINITY;
      }

      if (v33 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v35 = INFINITY;
      }

      if (v14 > v35)
      {
LABEL_33:
        v36 = a6[3];
        if (v36 > 1)
        {
          v38 = 0;
          _X10 = *v63;
          __asm { PRFM            #4, [X10] }

          v45 = (v62 ^ (*v63 >> 12)) & v36;
          v46 = *(*v63 + v45);
          v47 = vceq_s8(v46, v13);
          if (!v47)
          {
            goto LABEL_41;
          }

LABEL_38:
          v48 = a6[6];
          while (1)
          {
            v49 = (v45 + (__clz(__rbit64(v47)) >> 3)) & v36;
            if (*(v48 + 16 * v49) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              break;
            }

            v47 &= ((v47 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v47)
            {
LABEL_41:
              while (!*&vceq_s8(v46, 0x8080808080808080))
              {
                v38 += 8;
                v45 = (v38 + v45) & v36;
                v46 = *&_X10[v45];
                v47 = vceq_s8(v46, v13);
                if (v47)
                {
                  goto LABEL_38;
                }
              }

              goto LABEL_45;
            }
          }

          v50 = v48 + 16 * v49;
          if (&_X10[v49])
          {
            goto LABEL_36;
          }
        }

        else if (a6[4] >= 2uLL)
        {
          if (*v63 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            v50 = v63;
          }

          else
          {
            v50 = -v32;
          }

          v61 = &absl::lts_20240722::container_internal::kSooControl;
          if (*v63 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            v61 = 0;
          }

          if (v61)
          {
LABEL_36:
            v37 = *(v50 + 8);
            goto LABEL_46;
          }
        }

LABEL_45:
        v37 = 0;
LABEL_46:
        v71 = v37;
        v72 = BestLowerBound;
        v73 = -v32;
        v74 = 0u;
        v51 = v9;
        for (i = 0u; v51 != v10; v51 += 24)
        {
          v52 = *v51;
          v92 = *(v51 + 16);
          v91 = v52;
          v89 = v52;
          v90 = v92;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v71, &v89, 1);
        }

        operations_research::sat::LinearConstraintBuilder::Build(&v71, v68);
        *&v91 = "AllDiff_";
        *(&v91 + 1) = 8;
        v53 = HIBYTE(v81);
        v54 = &v79;
        if (v81 < 0)
        {
          v54 = v79;
          v53 = v80;
        }

        *&v89 = v54;
        *(&v89 + 1) = v53;
        v55 = HIBYTE(v78);
        p_p = &__p;
        if (v78 < 0)
        {
          p_p = __p;
          v55 = v77;
        }

        v88[0] = p_p;
        v88[1] = v55;
        absl::lts_20240722::StrCat(&v91, &v89, v88, &v67);
        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v67;
        }

        else
        {
          v57 = v67.__r_.__value_.__r.__words[0];
        }

        if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v67.__r_.__value_.__l.__size_;
        }

        operations_research::sat::TopNCuts::AddCut(a5, v68, v57, size, a4);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
          v59 = v70;
          v70 = 0;
          if (!v59)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v59 = v70;
          v70 = 0;
          if (!v59)
          {
LABEL_61:
            v60 = v69;
            v69 = 0;
            if (v60)
            {
              MEMORY[0x23EED9440](v60, 0x1000C8052888210);
            }

            absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(v85);
            *&v87 = *(&v86 + 1);
            absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(v82);
            *&v84 = *(&v83 + 1);
            if (*(&v74 + 1))
            {
              *&i = *(&v74 + 1);
              operator delete(*(&v74 + 1));
            }

            v14 = 0.0;
            v10 = v9;
            goto LABEL_66;
          }
        }

        MEMORY[0x23EED9440](v59, 0x1000C8000313F17);
        goto LABEL_61;
      }

LABEL_66:
      if ((SHIBYTE(v78) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      if (SHIBYTE(v81) < 0)
      {
        goto LABEL_68;
      }

LABEL_4:
      v8 = (v8 + 32);
      if (v8 == a2)
      {
        goto LABEL_79;
      }
    }

    if ((SHIBYTE(v81) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_68:
    operator delete(v79);
    v8 = (v8 + 32);
  }

  while (v8 != a2);
LABEL_79:
  if (*(&v83 + 1))
  {
    *&v84 = *(&v83 + 1);
    operator delete(*(&v83 + 1));
  }

LABEL_82:
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(v82);
  if (*(&v86 + 1))
  {
    *&v87 = *(&v86 + 1);
    operator delete(*(&v86 + 1));
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(v85);
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_23CB544B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CB545E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(&a35);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(va);
  if (!v40)
  {
    JUMPOUT(0x23CB545A8);
  }

  JUMPOUT(0x23CB545A0);
}

void sub_23CB54604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(&a35);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(va);
  if (!v40)
  {
    JUMPOUT(0x23CB545A8);
  }

  JUMPOUT(0x23CB545A0);
}

void sub_23CB54620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(&a35);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(va);
  if (!v40)
  {
    JUMPOUT(0x23CB545A8);
  }

  JUMPOUT(0x23CB545A0);
}

void sub_23CB5463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(&a35);
  operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(va);
  if (!v40)
  {
    JUMPOUT(0x23CB545A8);
  }

  JUMPOUT(0x23CB545A0);
}

void operations_research::sat::TopNCuts::~TopNCuts(operations_research::sat::TopNCuts *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        *(v3 - 1) = 0;
        if (v5)
        {
          MEMORY[0x23EED9440](v5, 0x1000C8000313F17);
        }

        v6 = *(v3 - 2);
        *(v3 - 2) = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v6, 0x1000C8052888210);
        }

        v7 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          operator delete(*v7);
        }

        v3 -= 8;
      }

      while (v7 != v2);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

double std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,false>(unint64_t a1, double *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a2 - 7;
  v11 = a2 - 11;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v13 == 2)
      {
        a5.n128_f64[0] = *(a2 - 4);
        v96 = *v12;
        if (a5.n128_f64[0] < *v12)
        {
          *v12 = a5.n128_u64[0];
          *(a2 - 4) = v96;
          v217 = *(v12 + 24);
          v183 = *(v12 + 8);
          v97 = *(a2 - 3);
          *(v12 + 24) = *(a2 - 1);
          goto LABEL_113;
        }

        return a5.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      a5.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,0>(v12, v12 + 32, v12 + 64, (a2 - 4), a5).n128_u64[0];
      return a5.n128_f64[0];
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,0>(v12, v12 + 32, v12 + 64, v12 + 96, a5);
      a5.n128_f64[0] = *(a2 - 4);
      v93 = *(v12 + 96);
      if (a5.n128_f64[0] >= v93)
      {
        return a5.n128_f64[0];
      }

      *(v12 + 96) = a5.n128_u64[0];
      *(a2 - 4) = v93;
      v214 = *(v12 + 120);
      v180 = *(v12 + 104);
      a5 = *(a2 - 3);
      *(v12 + 120) = *(a2 - 1);
      *(v12 + 104) = a5;
      *(a2 - 1) = v214;
      *(a2 - 3) = v180;
      a5.n128_u64[0] = *(v12 + 96);
      v94 = *(v12 + 64);
      if (a5.n128_f64[0] >= v94)
      {
        return a5.n128_f64[0];
      }

      *(v12 + 64) = a5.n128_u64[0];
      *(v12 + 96) = v94;
      v215 = *(v12 + 88);
      v181 = *(v12 + 72);
      *(v12 + 72) = *(v12 + 104);
      *(v12 + 88) = *(v12 + 120);
      *(v12 + 120) = v215;
      *(v12 + 104) = v181;
      a5.n128_u64[0] = *(v12 + 64);
      v95 = *(v12 + 32);
      if (a5.n128_f64[0] >= v95)
      {
        return a5.n128_f64[0];
      }

      *(v12 + 32) = a5.n128_u64[0];
      *(v12 + 64) = v95;
      v216 = *(v12 + 56);
      v182 = *(v12 + 40);
      *(v12 + 40) = *(v12 + 72);
      *(v12 + 56) = *(v12 + 88);
      *(v12 + 88) = v216;
      *(v12 + 72) = v182;
      goto LABEL_167;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v100 = (v12 + 32);
      v102 = v12 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v12;
          do
          {
            v106 = v100;
            a5.n128_u64[0] = *(v104 + 32);
            if (a5.n128_f64[0] < *v104)
            {
              v218 = *(v104 + 56);
              v184 = *(v104 + 40);
              v107 = *v104;
              v108 = v103;
              do
              {
                v109 = v12 + v108;
                *(v109 + 32) = v107;
                *(v109 + 40) = *(v12 + v108 + 8);
                *(v109 + 56) = *(v12 + v108 + 24);
                if (!v108)
                {
                  v105 = v12;
                  goto LABEL_128;
                }

                v107 = *(v109 - 32);
                v108 -= 32;
              }

              while (a5.n128_f64[0] < v107);
              v105 = (v12 + v108 + 32);
LABEL_128:
              *v105 = a5.n128_u64[0];
              a5.n128_u64[0] = v184;
              *(v109 + 24) = v218;
              *(v109 + 8) = v184;
            }

            v100 = v106 + 4;
            v103 += 32;
            v104 = v106;
          }

          while (v106 + 4 != a2);
        }
      }

      else if (!v102)
      {
        v144 = v12 + 40;
        do
        {
          v145 = v100;
          a5.n128_u64[0] = *(a1 + 32);
          if (a5.n128_f64[0] < *a1)
          {
            v223 = *(a1 + 56);
            v189 = *(a1 + 40);
            v146 = *a1;
            v147 = v144;
            do
            {
              *(v147 - 8) = v146;
              *v147 = *(v147 - 32);
              *(v147 + 16) = *(v147 - 16);
              v146 = *(v147 - 72);
              v147 -= 32;
            }

            while (a5.n128_f64[0] < v146);
            *(v147 - 8) = a5.n128_u64[0];
            a5.n128_u64[0] = v189;
            *(v147 + 16) = v223;
            *v147 = v189;
          }

          v100 = (v145 + 32);
          v144 += 32;
          a1 = v145;
        }

        while ((v145 + 32) != a2);
      }

      return a5.n128_f64[0];
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        return a5.n128_f64[0];
      }

      v110 = (v13 - 2) >> 1;
      v111 = v110;
      do
      {
        v113 = 32 * v111;
        if (v110 >= (32 * v111) >> 5)
        {
          v114 = (v113 >> 4) | 1;
          v115 = v12 + 32 * v114;
          if ((v113 >> 4) + 2 < v13 && *v115 < *(v115 + 32))
          {
            v115 += 32;
            v114 = (v113 >> 4) + 2;
          }

          v116 = v12 + v113;
          v117 = *v115;
          v118 = *v116;
          if (*v115 >= *v116)
          {
            v219 = *(v116 + 24);
            v185 = *(v116 + 8);
            do
            {
              v119 = v116;
              v116 = v115;
              *v119 = v117;
              v120 = *(v115 + 8);
              *(v119 + 24) = *(v115 + 24);
              *(v119 + 8) = v120;
              if (v110 < v114)
              {
                break;
              }

              v121 = 2 * v114;
              v114 = (2 * v114) | 1;
              v115 = v12 + 32 * v114;
              v122 = v121 + 2;
              if (v122 < v13 && *v115 < *(v115 + 32))
              {
                v115 += 32;
                v114 = v122;
              }

              v117 = *v115;
            }

            while (*v115 >= v118);
            *v116 = v118;
            *(v116 + 24) = v219;
            *(v116 + 8) = v185;
          }
        }

        v112 = v111-- <= 0;
      }

      while (!v112);
      while (2)
      {
        v124 = 0;
        v125 = *v12;
        v153 = *(v12 + 8);
        v156 = *(v12 + 24);
        v126 = v12;
        do
        {
          v128 = v126;
          v129 = v126 + 32 * v124;
          v126 = v129 + 32;
          v130 = 2 * v124;
          v124 = (2 * v124) | 1;
          v131 = v130 + 2;
          if (v131 < v13)
          {
            v133 = *(v129 + 64);
            v132 = v129 + 64;
            if (*(v132 - 32) < v133)
            {
              v126 = v132;
              v124 = v131;
            }
          }

          *v128 = *v126;
          v127 = *(v126 + 8);
          *(v128 + 24) = *(v126 + 24);
          *(v128 + 8) = v127;
        }

        while (v124 <= ((v13 - 2) >> 1));
        if (v126 != a2 - 4)
        {
          *v126 = *(a2 - 4);
          v134 = *(a2 - 3);
          *(v126 + 24) = *(a2 - 1);
          *(v126 + 8) = v134;
          *(a2 - 4) = v125;
          a5.n128_u64[0] = v153.n128_u64[0];
          *(a2 - 1) = v156;
          *(a2 - 3) = v153;
          v135 = (v126 - v12 + 32) >> 5;
          v112 = v135 < 2;
          v136 = v135 - 2;
          if (!v112)
          {
            v137 = v136 >> 1;
            v138 = v12 + 32 * v137;
            v139 = *v138;
            a5.n128_u64[0] = *v126;
            if (*v138 < *v126)
            {
              v220 = *(v126 + 24);
              v186 = *(v126 + 8);
              do
              {
                v140 = v126;
                v126 = v138;
                *v140 = v139;
                v141 = *(v138 + 8);
                *(v140 + 24) = *(v138 + 24);
                *(v140 + 8) = v141;
                if (!v137)
                {
                  break;
                }

                v137 = (v137 - 1) >> 1;
                v138 = v12 + 32 * v137;
                v139 = *v138;
              }

              while (*v138 < a5.n128_f64[0]);
              *v126 = a5.n128_u64[0];
              a5 = v186;
              v123 = v220;
LABEL_151:
              *(v126 + 24) = v123;
              *(v126 + 8) = a5;
            }
          }

          a2 -= 4;
          v112 = v13-- <= 2;
          if (v112)
          {
            return a5.n128_f64[0];
          }

          continue;
        }

        break;
      }

      *v126 = v125;
      a5 = v153;
      v123 = v156;
      goto LABEL_151;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = *(a2 - 4);
    if (v13 < 0x81)
    {
      v19 = *v12;
      v20 = *v14;
      if (*v12 < *v14)
      {
        if (v15 < v19)
        {
          *v14 = v15;
          *(a2 - 4) = v20;
          v192 = *(v14 + 24);
          v158 = *(v14 + 8);
          v21 = *v9;
          *(v14 + 24) = *(a2 - 1);
          *(v14 + 8) = v21;
          goto LABEL_36;
        }

        *v14 = v19;
        *v12 = v20;
        v201 = *(v14 + 24);
        v167 = *(v14 + 8);
        v41 = *(v12 + 8);
        *(v14 + 24) = *(v12 + 24);
        *(v14 + 8) = v41;
        *(v12 + 24) = v201;
        *(v12 + 8) = v167;
        v42 = *(a2 - 4);
        v43 = *v12;
        if (v42 < *v12)
        {
          *v12 = v42;
          *(a2 - 4) = v43;
          v192 = *(v12 + 24);
          v158 = *(v12 + 8);
          v44 = *v9;
          *(v12 + 24) = *(a2 - 1);
          *(v12 + 8) = v44;
LABEL_36:
          *(a2 - 1) = v192;
          *v9 = v158;
        }

LABEL_37:
        --a3;
        v28 = *v12;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v15 >= v19)
      {
        goto LABEL_37;
      }

      *v12 = v15;
      *(a2 - 4) = v19;
      v195 = *(v12 + 24);
      v161 = *(v12 + 8);
      v25 = *v9;
      *(v12 + 24) = *(a2 - 1);
      *(v12 + 8) = v25;
      *(a2 - 1) = v195;
      *v9 = v161;
      v26 = *v14;
      if (*v12 >= *v14)
      {
        goto LABEL_37;
      }

      *v14 = *v12;
      *v12 = v26;
      v196 = *(v14 + 24);
      v162 = *(v14 + 8);
      v27 = *(v12 + 8);
      *(v14 + 24) = *(v12 + 24);
      *(v14 + 8) = v27;
      *(v12 + 24) = v196;
      *(v12 + 8) = v162;
      --a3;
      v28 = *v12;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v12 - 32) < v28)
      {
        goto LABEL_62;
      }

      v155 = *(v12 + 24);
      v152 = *(v12 + 8);
      if (v28 >= *(a2 - 4))
      {
        v84 = v12 + 32;
        do
        {
          v12 = v84;
          if (v84 >= a2)
          {
            break;
          }

          v84 += 32;
        }

        while (v28 >= *v12);
      }

      else
      {
        do
        {
          v83 = *(v12 + 32);
          v12 += 32;
        }

        while (v28 >= v83);
      }

      v85 = a2;
      if (v12 < a2)
      {
        v85 = a2;
        do
        {
          v86 = *(v85 - 4);
          v85 -= 4;
        }

        while (v28 < v86);
      }

      if (v12 < v85)
      {
        v87 = *v12;
        v88 = *v85;
        do
        {
          *v12 = v88;
          *v85 = v87;
          v213 = *(v12 + 24);
          v179 = *(v12 + 8);
          v89 = *(v85 + 1);
          *(v12 + 24) = v85[3];
          *(v12 + 8) = v89;
          *(v85 + 3) = v213;
          *(v85 + 1) = v179;
          do
          {
            v90 = *(v12 + 32);
            v12 += 32;
            v87 = v90;
          }

          while (v28 >= v90);
          do
          {
            v91 = *(v85 - 4);
            v85 -= 4;
            v88 = v91;
          }

          while (v28 < v91);
        }

        while (v12 < v85);
      }

      if (v12 - 32 != a1)
      {
        *a1 = *(v12 - 32);
        v92 = *(v12 - 24);
        *(a1 + 24) = *(v12 - 8);
        *(a1 + 8) = v92;
      }

      a4 = 0;
      *(v12 - 32) = v28;
      a5 = v152;
      *(v12 - 8) = v155;
      *(v12 - 24) = v152;
    }

    else
    {
      v16 = *v14;
      v17 = *v12;
      if (*v14 >= *v12)
      {
        if (v15 < v16)
        {
          *v14 = v15;
          *(a2 - 4) = v16;
          v193 = *(v14 + 24);
          v159 = *(v14 + 8);
          v22 = *v9;
          *(v14 + 24) = *(a2 - 1);
          *(v14 + 8) = v22;
          *(a2 - 1) = v193;
          *v9 = v159;
          v23 = *v12;
          if (*v14 < *v12)
          {
            *v12 = *v14;
            *v14 = v23;
            v194 = *(v12 + 24);
            v160 = *(v12 + 8);
            v24 = *(v14 + 8);
            *(v12 + 24) = *(v14 + 24);
            *(v12 + 8) = v24;
            *(v14 + 24) = v194;
            *(v14 + 8) = v160;
          }
        }
      }

      else
      {
        if (v15 >= v16)
        {
          *v12 = v16;
          *v14 = v17;
          v197 = *(v12 + 24);
          v163 = *(v12 + 8);
          v29 = *(v14 + 8);
          *(v12 + 24) = *(v14 + 24);
          *(v12 + 8) = v29;
          *(v14 + 24) = v197;
          *(v14 + 8) = v163;
          v30 = *(a2 - 4);
          v31 = *v14;
          if (v30 >= *v14)
          {
            goto LABEL_28;
          }

          *v14 = v30;
          *(a2 - 4) = v31;
          v191 = *(v14 + 24);
          v157 = *(v14 + 8);
          v32 = *v9;
          *(v14 + 24) = *(a2 - 1);
          *(v14 + 8) = v32;
        }

        else
        {
          *v12 = v15;
          *(a2 - 4) = v17;
          v191 = *(v12 + 24);
          v157 = *(v12 + 8);
          v18 = *v9;
          *(v12 + 24) = *(a2 - 1);
          *(v12 + 8) = v18;
        }

        *(a2 - 1) = v191;
        *v9 = v157;
      }

LABEL_28:
      v33 = (v14 - 32);
      v34 = *(v14 - 32);
      v35 = *(v12 + 32);
      v36 = *(a2 - 8);
      if (v34 >= v35)
      {
        if (v36 < v34)
        {
          *v33 = v36;
          *(a2 - 8) = v34;
          v199 = *(v14 - 8);
          v165 = *(v14 - 24);
          v38 = *v10;
          *(v14 - 8) = *(a2 - 5);
          *(v14 - 24) = v38;
          *(a2 - 5) = v199;
          *v10 = v165;
          v39 = *(v12 + 32);
          if (*v33 < v39)
          {
            *(v12 + 32) = *v33;
            *v33 = v39;
            v200 = *(v12 + 56);
            v166 = *(v12 + 40);
            v40 = *(v14 - 24);
            *(v12 + 56) = *(v14 - 8);
            *(v12 + 40) = v40;
            *(v14 - 8) = v200;
            *(v14 - 24) = v166;
          }
        }
      }

      else
      {
        if (v36 >= v34)
        {
          *(v12 + 32) = v34;
          *v33 = v35;
          v202 = *(v12 + 56);
          v168 = *(v12 + 40);
          v45 = *(v14 - 24);
          *(v12 + 56) = *(v14 - 8);
          *(v12 + 40) = v45;
          *(v14 - 8) = v202;
          *(v14 - 24) = v168;
          v46 = *(a2 - 8);
          v47 = *v33;
          if (v46 >= *v33)
          {
            goto LABEL_42;
          }

          *v33 = v46;
          *(a2 - 8) = v47;
          v198 = *(v14 - 8);
          v164 = *(v14 - 24);
          v48 = *v10;
          *(v14 - 8) = *(a2 - 5);
          *(v14 - 24) = v48;
        }

        else
        {
          *(v12 + 32) = v36;
          *(a2 - 8) = v35;
          v198 = *(v12 + 56);
          v164 = *(v12 + 40);
          v37 = *v10;
          *(v12 + 56) = *(a2 - 5);
          *(v12 + 40) = v37;
        }

        *(a2 - 5) = v198;
        *v10 = v164;
      }

LABEL_42:
      v49 = (v14 + 32);
      v50 = *(v14 + 32);
      v51 = *(v12 + 64);
      v52 = *(a2 - 12);
      if (v50 >= v51)
      {
        if (v52 < v50)
        {
          *v49 = v52;
          *(a2 - 12) = v50;
          v204 = *(v14 + 56);
          v170 = *(v14 + 40);
          v54 = *v11;
          *(v14 + 56) = *(a2 - 9);
          *(v14 + 40) = v54;
          *(a2 - 9) = v204;
          *v11 = v170;
          v55 = *(v12 + 64);
          if (*v49 < v55)
          {
            *(v12 + 64) = *v49;
            *v49 = v55;
            v205 = *(v12 + 88);
            v171 = *(v12 + 72);
            v56 = *(v14 + 40);
            *(v12 + 88) = *(v14 + 56);
            *(v12 + 72) = v56;
            *(v14 + 56) = v205;
            *(v14 + 40) = v171;
          }
        }
      }

      else
      {
        if (v52 >= v50)
        {
          *(v12 + 64) = v50;
          *v49 = v51;
          v206 = *(v12 + 88);
          v172 = *(v12 + 72);
          v57 = *(v14 + 40);
          *(v12 + 88) = *(v14 + 56);
          *(v12 + 72) = v57;
          *(v14 + 56) = v206;
          *(v14 + 40) = v172;
          v58 = *(a2 - 12);
          v59 = *v49;
          if (v58 >= *v49)
          {
            goto LABEL_51;
          }

          *v49 = v58;
          *(a2 - 12) = v59;
          v203 = *(v14 + 56);
          v169 = *(v14 + 40);
          v60 = *v11;
          *(v14 + 56) = *(a2 - 9);
          *(v14 + 40) = v60;
        }

        else
        {
          *(v12 + 64) = v52;
          *(a2 - 12) = v51;
          v203 = *(v12 + 88);
          v169 = *(v12 + 72);
          v53 = *v11;
          *(v12 + 88) = *(a2 - 9);
          *(v12 + 72) = v53;
        }

        *(a2 - 9) = v203;
        *v11 = v169;
      }

LABEL_51:
      v61 = *v14;
      v62 = *v33;
      v63 = *v49;
      if (*v14 >= *v33)
      {
        if (v63 < v61)
        {
          *v14 = v63;
          *v49 = v61;
          v208 = *(v14 + 24);
          v174 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 40);
          *(v14 + 24) = *(v14 + 56);
          *(v14 + 56) = v208;
          *(v14 + 40) = v174;
          v64 = *v33;
          if (*v14 < *v33)
          {
            *v33 = *v14;
            *v14 = v64;
            v209 = *(v14 - 8);
            v175 = *(v14 - 24);
            *(v14 - 24) = *(v14 + 8);
            *(v14 - 8) = *(v14 + 24);
            *(v14 + 24) = v209;
            *(v14 + 8) = v175;
          }
        }
      }

      else
      {
        if (v63 >= v61)
        {
          *v33 = v61;
          *v14 = v62;
          v210 = *(v14 - 8);
          v176 = *(v14 - 24);
          *(v14 - 24) = *(v14 + 8);
          *(v14 - 8) = *(v14 + 24);
          *(v14 + 24) = v210;
          *(v14 + 8) = v176;
          v65 = *v14;
          if (*v49 >= *v14)
          {
            goto LABEL_60;
          }

          *v14 = *v49;
          *v49 = v65;
          v207 = *(v14 + 24);
          v173 = *(v14 + 8);
          *(v14 + 8) = *(v14 + 40);
          *(v14 + 24) = *(v14 + 56);
        }

        else
        {
          *v33 = v63;
          *v49 = v62;
          v207 = *(v14 - 8);
          v173 = *(v14 - 24);
          *(v14 - 24) = *(v14 + 40);
          *(v14 - 8) = *(v14 + 56);
        }

        *(v14 + 56) = v207;
        *(v14 + 40) = v173;
      }

LABEL_60:
      v66 = *v12;
      *v12 = *v14;
      *v14 = v66;
      v211 = *(v12 + 24);
      v177 = *(v12 + 8);
      v67 = *(v14 + 8);
      *(v12 + 24) = *(v14 + 24);
      *(v12 + 8) = v67;
      *(v14 + 24) = v211;
      *(v14 + 8) = v177;
      --a3;
      v28 = *v12;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v68 = 0;
      v154 = *(v12 + 24);
      v151 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 32);
        v68 += 32;
      }

      while (v69 < v28);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 32)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 4);
          v71 -= 4;
        }

        while (v73 >= v28);
      }

      else
      {
        do
        {
          v72 = *(v71 - 4);
          v71 -= 4;
        }

        while (v72 >= v28);
      }

      if (v70 >= v71)
      {
        v12 += v68;
        v79 = (v70 - 32);
        if (v70 - 32 != a1)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v74 = *v71;
        v12 += v68;
        v75 = v71;
        do
        {
          *v12 = v74;
          *v75 = v69;
          v212 = *(v12 + 24);
          v178 = *(v12 + 8);
          v76 = *(v75 + 1);
          *(v12 + 24) = v75[3];
          *(v12 + 8) = v76;
          *(v75 + 3) = v212;
          *(v75 + 1) = v178;
          do
          {
            v77 = *(v12 + 32);
            v12 += 32;
            v69 = v77;
          }

          while (v77 < v28);
          do
          {
            v78 = *(v75 - 4);
            v75 -= 4;
            v74 = v78;
          }

          while (v78 >= v28);
        }

        while (v12 < v75);
        v79 = (v12 - 32);
        if (v12 - 32 != a1)
        {
LABEL_77:
          *a1 = *(v12 - 32);
          v80 = *(v12 - 24);
          *(a1 + 24) = *(v12 - 8);
          *(a1 + 8) = v80;
        }
      }

      *(v12 - 32) = v28;
      a5 = v151;
      *(v12 - 8) = v154;
      *(v12 - 24) = v151;
      if (v70 < v71)
      {
        goto LABEL_81;
      }

      v81 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*>(a1, v79, v151);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*>(v12, a2, v82))
      {
        a2 = v79;
        if (v81)
        {
          return a5.n128_f64[0];
        }

        goto LABEL_1;
      }

      if ((v81 & 1) == 0)
      {
LABEL_81:
        a5.n128_f64[0] = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,false>(a1, v79, a3, a4 & 1, a5);
        a4 = 0;
      }
    }
  }

  a5.n128_u64[0] = *(v12 + 32);
  v98 = *v12;
  v99 = *(a2 - 4);
  if (a5.n128_f64[0] >= *v12)
  {
    if (v99 >= a5.n128_f64[0])
    {
      return a5.n128_f64[0];
    }

    *(v12 + 32) = v99;
    *(a2 - 4) = a5.n128_f64[0];
    v221 = *(v12 + 56);
    v187 = *(v12 + 40);
    v142 = *(a2 - 3);
    *(v12 + 56) = *(a2 - 1);
    *(v12 + 40) = v142;
    *(a2 - 1) = v221;
    *(a2 - 3) = v187;
LABEL_167:
    a5.n128_u64[0] = *(v12 + 32);
    v143 = *v12;
    if (a5.n128_f64[0] < *v12)
    {
      *v12 = a5.n128_u64[0];
      *(v12 + 32) = v143;
      v222 = *(v12 + 24);
      v188 = *(v12 + 8);
      *(v12 + 24) = *(v12 + 56);
      *(v12 + 8) = *(v12 + 40);
      a5.n128_u64[0] = v188;
      *(v12 + 56) = v222;
      *(v12 + 40) = v188;
    }

    return a5.n128_f64[0];
  }

  if (v99 >= a5.n128_f64[0])
  {
    *v12 = a5.n128_u64[0];
    *(v12 + 32) = v98;
    v224 = *(v12 + 24);
    v190 = *(v12 + 8);
    *(v12 + 24) = *(v12 + 56);
    *(v12 + 8) = *(v12 + 40);
    *(v12 + 56) = v224;
    *(v12 + 40) = v190;
    a5.n128_f64[0] = *(a2 - 4);
    v148 = *(v12 + 32);
    if (a5.n128_f64[0] >= v148)
    {
      return a5.n128_f64[0];
    }

    *(v12 + 32) = a5.n128_u64[0];
    *(a2 - 4) = v148;
    v217 = *(v12 + 56);
    v183 = *(v12 + 40);
    v149 = *(a2 - 3);
    *(v12 + 56) = *(a2 - 1);
    *(v12 + 40) = v149;
  }

  else
  {
    *v12 = v99;
    *(a2 - 4) = v98;
    v217 = *(v12 + 24);
    v183 = *(v12 + 8);
    v97 = *(a2 - 3);
    *(v12 + 24) = *(a2 - 1);
LABEL_113:
    *(v12 + 8) = v97;
  }

  a5.n128_u64[0] = v183;
  *(a2 - 1) = v217;
  *(a2 - 3) = v183;
  return a5.n128_f64[0];
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 result)
{
  v5 = *a2;
  v6 = *a1;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = *(a2 + 24);
      result = *(a2 + 8);
      v11 = *(a3 + 24);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = v11;
      *(a3 + 8) = result;
      *(a3 + 24) = v10;
      v12 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v12;
        v13 = *(a1 + 24);
        result = *(a1 + 8);
        v14 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v14;
        *(a2 + 8) = result;
        *(a2 + 24) = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      *a1 = v7;
      *a3 = v6;
      v8 = *(a1 + 24);
      result = *(a1 + 8);
      v9 = *(a3 + 24);
      *(a1 + 8) = *(a3 + 8);
      *(a1 + 24) = v9;
LABEL_9:
      *(a3 + 8) = result;
      *(a3 + 24) = v8;
      goto LABEL_10;
    }

    *a1 = v5;
    *a2 = v6;
    v15 = *(a1 + 24);
    result = *(a1 + 8);
    v16 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v16;
    *(a2 + 8) = result;
    *(a2 + 24) = v15;
    v17 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v8 = *(a2 + 24);
      result = *(a2 + 8);
      v18 = *(a3 + 24);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = v18;
      goto LABEL_9;
    }
  }

LABEL_10:
  result.n128_u64[0] = *a4;
  v19 = *a3;
  if (*a4 < *a3)
  {
    *a3 = result.n128_u64[0];
    *a4 = v19;
    v20 = *(a3 + 24);
    result = *(a3 + 8);
    v21 = *(a4 + 24);
    *(a3 + 8) = *(a4 + 8);
    *(a3 + 24) = v21;
    *(a4 + 8) = result;
    *(a4 + 24) = v20;
    result.n128_u64[0] = *a3;
    v22 = *a2;
    if (*a3 < *a2)
    {
      *a2 = result.n128_u64[0];
      *a3 = v22;
      v23 = *(a2 + 24);
      result = *(a2 + 8);
      v24 = *(a3 + 24);
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = v24;
      *(a3 + 8) = result;
      *(a3 + 24) = v23;
      result.n128_u64[0] = *a2;
      v25 = *a1;
      if (*a2 < *a1)
      {
        *a1 = result.n128_u64[0];
        *a2 = v25;
        v26 = *(a1 + 24);
        result = *(a1 + 8);
        v27 = *(a2 + 24);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = v27;
        *(a2 + 8) = result;
        *(a2 + 24) = v26;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v27 = *(a1 + 32);
        v28 = *a1;
        v29 = *(a2 - 32);
        if (v27 >= *a1)
        {
          if (v29 < v27)
          {
            *(a1 + 32) = v29;
            *(a2 - 32) = v27;
            v37 = *(a1 + 56);
            v38 = *(a1 + 40);
            v39 = *(a2 - 8);
            *(a1 + 40) = *(a2 - 24);
            *(a1 + 56) = v39;
            *(a2 - 24) = v38;
            *(a2 - 8) = v37;
            v40 = *(a1 + 32);
            v41 = *a1;
            if (v40 < *a1)
            {
              *a1 = v40;
              *(a1 + 32) = v41;
              v42 = *(a1 + 24);
              v43 = *(a1 + 8);
              *(a1 + 8) = *(a1 + 40);
              *(a1 + 24) = *(a1 + 56);
              *(a1 + 40) = v43;
              *(a1 + 56) = v42;
            }
          }

          return 1;
        }

        if (v29 < v27)
        {
          *a1 = v29;
          *(a2 - 32) = v28;
          v6 = *(a1 + 24);
          v7 = *(a1 + 8);
          v30 = *(a2 - 8);
          *(a1 + 8) = *(a2 - 24);
          *(a1 + 24) = v30;
          goto LABEL_30;
        }

        *a1 = v27;
        *(a1 + 32) = v28;
        v48 = *(a1 + 24);
        v49 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 24) = *(a1 + 56);
        *(a1 + 40) = v49;
        *(a1 + 56) = v48;
        v50 = *(a2 - 32);
        if (v50 < v28)
        {
          *(a1 + 32) = v50;
          *(a2 - 32) = v28;
          v6 = *(a1 + 56);
          v7 = *(a1 + 40);
          v51 = *(a2 - 8);
          *(a1 + 40) = *(a2 - 24);
          *(a1 + 56) = v51;
          goto LABEL_30;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,0>(a1, a1 + 32, a1 + 64, a2 - 32, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CreateAllDifferentCutGenerator(std::vector<operations_research::sat::AffineExpression> const&,operations_research::sat::Model *)::$_0::operator() const(operations_research::sat::LinearConstraintManager *)::{lambda(std::pair<double,operations_research::sat::AffineExpression> &,std::pair<double,operations_research::sat::AffineExpression> const&)#1} &,std::pair<double,operations_research::sat::AffineExpression>*,0>(a1, a1 + 32, a1 + 64, a1 + 96, a3);
        v11 = *(a2 - 32);
        v12 = *(a1 + 96);
        if (v11 < v12)
        {
          *(a1 + 96) = v11;
          *(a2 - 32) = v12;
          v13 = *(a1 + 120);
          v14 = *(a1 + 104);
          v15 = *(a2 - 8);
          *(a1 + 104) = *(a2 - 24);
          *(a1 + 120) = v15;
          *(a2 - 24) = v14;
          *(a2 - 8) = v13;
          v16 = *(a1 + 96);
          v17 = *(a1 + 64);
          if (v16 < v17)
          {
            *(a1 + 64) = v16;
            *(a1 + 96) = v17;
            v18 = *(a1 + 88);
            v19 = *(a1 + 72);
            *(a1 + 72) = *(a1 + 104);
            *(a1 + 88) = *(a1 + 120);
            *(a1 + 104) = v19;
            v20 = *(a1 + 32);
            *(a1 + 120) = v18;
            if (v16 < v20)
            {
              *(a1 + 32) = v16;
              *(a1 + 64) = v20;
              v21 = *(a1 + 56);
              v22 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 72);
              *(a1 + 56) = *(a1 + 88);
              *(a1 + 72) = v22;
              v23 = *a1;
              v24 = v16 < *a1;
              *(a1 + 88) = v21;
              if (v24)
              {
                *a1 = v16;
                *(a1 + 32) = v23;
                v25 = *(a1 + 24);
                v26 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 40);
                *(a1 + 24) = *(a1 + 56);
                *(a1 + 40) = v26;
                *(a1 + 56) = v25;
              }
            }
          }
        }

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
      v4 = *(a2 - 32);
      v5 = *a1;
      if (v4 < *a1)
      {
        *a1 = v4;
        *(a2 - 32) = v5;
        v6 = *(a1 + 24);
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
        *(a1 + 8) = *(a2 - 24);
        *(a1 + 24) = v8;
LABEL_30:
        *(a2 - 24) = v7;
        *(a2 - 8) = v6;
        return 1;
      }

      return 1;
    }
  }

  v31 = (a1 + 64);
  v32 = *(a1 + 64);
  v33 = *(a1 + 32);
  v34 = *a1;
  if (v33 >= *a1)
  {
    if (v32 < v33)
    {
      *(a1 + 32) = v32;
      *(a1 + 64) = v33;
      v44 = *(a1 + 56);
      v45 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 72);
      *(a1 + 56) = *(a1 + 88);
      *(a1 + 72) = v45;
      *(a1 + 88) = v44;
      if (v32 < v34)
      {
        *a1 = v32;
        *(a1 + 32) = v34;
        v46 = *(a1 + 24);
        v47 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 24) = *(a1 + 56);
        *(a1 + 40) = v47;
        *(a1 + 56) = v46;
      }
    }

    goto LABEL_35;
  }

  if (v32 < v33)
  {
    *a1 = v32;
    *(a1 + 64) = v34;
    v35 = *(a1 + 24);
    v36 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 72);
    *(a1 + 24) = *(a1 + 88);
LABEL_34:
    *(a1 + 72) = v36;
    *(a1 + 88) = v35;
    goto LABEL_35;
  }

  *a1 = v33;
  *(a1 + 32) = v34;
  v53 = *(a1 + 24);
  v54 = *(a1 + 8);
  *(a1 + 8) = *(a1 + 40);
  *(a1 + 24) = *(a1 + 56);
  *(a1 + 40) = v54;
  *(a1 + 56) = v53;
  if (v32 < v34)
  {
    *(a1 + 32) = v32;
    *(a1 + 64) = v34;
    v35 = *(a1 + 56);
    v36 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 72);
    *(a1 + 56) = *(a1 + 88);
    goto LABEL_34;
  }

LABEL_35:
  v55 = a1 + 96;
  if (a1 + 96 == a2)
  {
LABEL_45:
    v63 = 1;
  }

  else
  {
    v56 = 0;
    v57 = 0;
    while (1)
    {
      v59 = *v55;
      if (*v55 < *v31)
      {
        v64 = *(v55 + 8);
        v65 = *(v55 + 24);
        v60 = *v31;
        v61 = v56;
        do
        {
          v62 = a1 + v61;
          *(v62 + 96) = v60;
          *(v62 + 104) = *(a1 + v61 + 72);
          *(v62 + 120) = *(a1 + v61 + 88);
          if (v61 == -64)
          {
            v58 = a1;
            goto LABEL_38;
          }

          v60 = *(v62 + 32);
          v61 -= 32;
        }

        while (v59 < v60);
        v58 = (a1 + v61 + 96);
LABEL_38:
        *v58 = v59;
        *(v62 + 72) = v64;
        *(v62 + 88) = v65;
        if (++v57 == 8)
        {
          break;
        }
      }

      v31 = v55;
      v56 += 32;
      v55 += 32;
      if (v55 == a2)
      {
        goto LABEL_45;
      }
    }

    v63 = 0;
    LODWORD(v55) = v55 + 32 == a2;
  }

  return (v63 | v55) & 1;
}

void operations_research::sat::SumOfAllDiffLowerBounder::~SumOfAllDiffLowerBounder(operations_research::sat::SumOfAllDiffLowerBounder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(this);
}

uint64_t operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  v4 = *(a2 + 32);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>((a1 + 56), *(a2 + 56), *(a2 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>((a1 + 56), *(a2 + 56), *(a2 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_23CB55F94(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    v5 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void *std::__function::__func<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40990;
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 56);
        if (v7)
        {
          *(v3 - 48) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40990;
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 32);
        if (v5)
        {
          *(v3 - 24) = v5;
          operator delete(v5);
        }

        v6 = v3 - 56;
        v7 = *(v3 - 56);
        if (v7)
        {
          *(v3 - 48) = v7;
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v6 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v71 = *(*a2 + 272);
  v3 = v71[1] - *v71;
  v67 = *a2;
  if (v3)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v4 = *(a1 + 60);
  if (v4 >= 1 && *(a1 + 8) != *(a1 + 16))
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(a1 + 8);
      v68 = *(a1 + 16);
      if (v6 != v68)
      {
        v7 = *(a1 + 64);
        v8 = *(a1 + 72);
        do
        {
          v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3);
          if (v9 <= i)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(i, v9, "target_index < exprs.size()");
          }

          v10 = *v6;
          v11 = *(a1 + 88);
          v12 = *(*v71 + 8 * *v6);
          CoefficientOfPositiveVar = operations_research::sat::GetCoefficientOfPositiveVar(*v6, (v7 + 56 * i));
          v14 = CoefficientOfPositiveVar;
          v69 = (8 * v10);
          v15 = CoefficientOfPositiveVar;
          if (CoefficientOfPositiveVar < 0x8000000000000003)
          {
            v15 = -INFINITY;
          }

          if (CoefficientOfPositiveVar > 0x7FFFFFFFFFFFFFFDLL)
          {
            v15 = INFINITY;
          }

          v16 = v12 * v15;
          v7 = *(a1 + 64);
          v8 = *(a1 + 72);
          if (v8 != v7)
          {
            v17 = 0;
            v18 = 1;
            do
            {
              if (i != v18 - 1)
              {
                v19 = *(*v71 + 8 * *(*(a1 + 32) + 4 * v17));
                v20 = operations_research::sat::GetCoefficientOfPositiveVar(v10, (v7 + 56 * v17));
                v21 = *(v11 + 152);
                v22 = (v20 - v14) * *(v21 + 24 * (v10 ^ 1));
                if (*(v21 + 24 * v10) * (v20 - v14) <= -v22)
                {
                  v23 = -v22;
                }

                else
                {
                  v23 = *(v21 + 24 * v10) * (v20 - v14);
                }

                v24 = v23;
                if (v23 < 0x8000000000000003)
                {
                  v24 = -INFINITY;
                }

                if (v23 > 0x7FFFFFFFFFFFFFFDLL)
                {
                  v24 = INFINITY;
                }

                v16 = v16 + v24 * v19;
                v7 = *(a1 + 64);
                v8 = *(a1 + 72);
              }

              v17 = v18++;
            }

            while (0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 3) > v17);
          }

          if (v16 < *v69)
          {
            *(4 * v10) = i;
            *v69 = v16;
          }

          ++v6;
        }

        while (v6 != v68);
        v4 = *(a1 + 60);
      }
    }
  }

  v25 = *(a1 + 96);
  v26 = v25[3];
  if (v26 > 1)
  {
    v29 = 0;
    _X12 = v25[5];
    __asm { PRFM            #4, [X12] }

    v36 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v37 = vdup_n_s8(v36 & 0x7F);
    v38 = ((v36 >> 7) ^ (_X12 >> 12)) & v26;
    v39 = *(_X12 + v38);
    v40 = vceq_s8(v39, v37);
    if (!v40)
    {
      goto LABEL_40;
    }

LABEL_37:
    v41 = v25[6];
    while (1)
    {
      v42 = (v38 + (__clz(__rbit64(v40)) >> 3)) & v26;
      if (*(v41 + 16 * v42) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v40)
      {
LABEL_40:
        while (!*&vceq_s8(v39, 0x8080808080808080))
        {
          v29 += 8;
          v38 = (v29 + v38) & v26;
          v39 = *(_X12 + v38);
          v40 = vceq_s8(v39, v37);
          if (v40)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_46;
      }
    }

    v27 = (v41 + 16 * v42);
    if (_X12 + v42)
    {
      goto LABEL_44;
    }
  }

  else if (v25[4] >= 2uLL)
  {
    v28 = v25[5];
    v27 = v25 + 5;
    if (v28 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
LABEL_44:
        v43 = v27[1];
        goto LABEL_47;
      }
    }
  }

LABEL_46:
  v43 = 0;
LABEL_47:
  v79 = v43;
  v80 = xmmword_23CE46930;
  *__p = 0u;
  v82 = 0u;
  v44 = *(a1 + 56);
  v45 = *(*v71 + 8 * v44);
  operations_research::sat::LinearConstraintBuilder::AddTerm(&v79, v44, -1);
  v46 = *(a1 + 8);
  for (j = *(a1 + 16); v46 != j; ++v46)
  {
    v49 = *v46;
    v50 = operations_research::sat::GetCoefficientOfPositiveVar(*v46, (*(a1 + 64) + 56 * *(4 * *v46)));
    if (v50)
    {
      operations_research::sat::LinearConstraintBuilder::AddTerm(&v79, v49, v50);
    }

    v48 = -v50;
    if (v50 < 0x8000000000000003)
    {
      v48 = INFINITY;
    }

    if (v50 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v48 = -INFINITY;
    }

    v45 = v45 + v48 * *(*v71 + 8 * v49);
  }

  if (*(a1 + 60) >= 1)
  {
    v51 = 0;
    do
    {
      v70 = *(*(a1 + 32) + 4 * v51);
      v53 = *(a1 + 8);
      v54 = *(a1 + 16);
      v55 = *(*(a1 + 64) + 56 * v51 + 48);
      if (v53 != v54)
      {
        v56 = *(a1 + 88);
        do
        {
          v57 = *v53;
          v58 = *(4 * *v53);
          if (v51 != v58)
          {
            v59 = operations_research::sat::GetCoefficientOfPositiveVar(*v53, (*(a1 + 64) + 56 * v58));
            v60 = operations_research::sat::GetCoefficientOfPositiveVar(v57, (*(a1 + 64) + 56 * v51));
            v61 = *(v56 + 152);
            v62 = (v60 - v59) * *(v61 + 24 * (v57 ^ 1));
            if (*(v61 + 24 * v57) * (v60 - v59) <= -v62)
            {
              v63 = -v62;
            }

            else
            {
              v63 = *(v61 + 24 * v57) * (v60 - v59);
            }

            v55 += v63;
          }

          ++v53;
        }

        while (v53 != v54);
      }

      if (v55)
      {
        operations_research::sat::LinearConstraintBuilder::AddTerm(&v79, v70, v55);
      }

      v52 = -v55;
      if (v55 < 0x8000000000000003)
      {
        v52 = INFINITY;
      }

      if (v55 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v52 = -INFINITY;
      }

      v45 = v45 + v52 * *(*v71 + 8 * v70);
      ++v51;
    }

    while (v51 < *(a1 + 60));
  }

  if (v45 > 0.01)
  {
    operations_research::sat::LinearConstraintBuilder::Build(&v79, v76);
    v75 = 6;
    strcpy(v74, "LinMax");
    v73 = 0;
    LOBYTE(v72) = 0;
    operations_research::sat::LinearConstraintManager::AddCut(v67, v76, v74, &v72);
    if (v73 < 0)
    {
      operator delete(v72);
      if ((v75 & 0x80000000) == 0)
      {
LABEL_76:
        v64 = v78;
        v78 = 0;
        if (!v64)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }
    }

    else if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    operator delete(v74[0]);
    v64 = v78;
    v78 = 0;
    if (!v64)
    {
LABEL_78:
      v65 = v77;
      v77 = 0;
      if (v65)
      {
        MEMORY[0x23EED9440](v65, 0x1000C8052888210);
      }

      goto LABEL_80;
    }

LABEL_77:
    MEMORY[0x23EED9440](v64, 0x1000C8000313F17);
    goto LABEL_78;
  }

LABEL_80:
  if (__p[1])
  {
    *&v82 = __p[1];
    operator delete(__p[1]);
  }

  return 1;
}

void sub_23CB569FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a28);
  if (a37)
  {
    a38 = a37;
    operator delete(a37);
    if (!a11)
    {
LABEL_7:
      if (!a13)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else if (!a11)
  {
    goto LABEL_7;
  }

  operator delete(a11);
  if (!a13)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat24CreateLinMaxCutGeneratorENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEERKNSt3__16vectorINS0_16LinearExpressionENS4_9allocatorIS6_EEEERKNS5_IS3_NS7_IS3_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat24CreateLinMaxCutGeneratorENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEERKNSt3__16vectorINS0_16LinearExpressionENS4_9allocatorIS6_EEEERKNS5_IS3_NS7_IS3_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat24CreateLinMaxCutGeneratorENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEERKNSt3__16vectorINS0_16LinearExpressionENS4_9allocatorIS6_EEEERKNS5_IS3_NS7_IS3_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat24CreateLinMaxCutGeneratorENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEERKNSt3__16vectorINS0_16LinearExpressionENS4_9allocatorIS6_EEEERKNS5_IS3_NS7_IS3_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_23CB56C64(_Unwind_Exception *exception_object)
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

std::string *operations_research::sat::LinearConstraint::DebugString@<X0>(std::string *__return_ptr a1@<X8>, operations_research::sat::LinearConstraint *this@<X0>, char *a3@<X2>)
{
  v38 = *MEMORY[0x277D85DE8];
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v5 = *this;
  if (v5 >= 0x8000000000000003)
  {
    v35 = v37;
    v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5, v37, a3) - v37;
    v32 = " <= ";
    v33 = 4;
    absl::lts_20240722::StrAppend(a1, &v35, &v32);
  }

  if (*(this + 4) >= 1)
  {
    v27 = &byte_23CE7F131;
    v28 = 0;
    v6 = *(this + 4);
    v7 = **(this + 3);
    if (v7)
    {
      v8 = -*v6;
    }

    else
    {
      v8 = *v6;
    }

    v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v8, v37, a3);
    v35 = v37;
    v36 = v9 - v37;
    v32 = "*X";
    v33 = 2;
    v29 = v31;
    v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v7 / 2), v31, v10) - v31;
    absl::lts_20240722::StrCat(&v35, &v32, &v29, &__p);
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

    v25 = p_p;
    v26 = size;
    absl::lts_20240722::StrAppend(a1, &v27, &v25);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (*(this + 4) < 2)
      {
        goto LABEL_28;
      }
    }

    else if (*(this + 4) < 2)
    {
      goto LABEL_28;
    }

    v13 = 1;
    do
    {
      v27 = " ";
      v28 = 1;
      v14 = *(this + 4);
      v15 = *(*(this + 3) + 4 * v13);
      if (v15)
      {
        v16 = -*(v14 + 8 * v13);
      }

      else
      {
        v16 = *(v14 + 8 * v13);
      }

      v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v16, v37, a3);
      v35 = v37;
      v36 = v17 - v37;
      v32 = "*X";
      v33 = 2;
      v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer((v15 / 2), v31, v18);
      v29 = v31;
      v30 = v19 - v31;
      absl::lts_20240722::StrCat(&v35, &v32, &v29, &__p);
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = __p.__r_.__value_.__l.__size_;
      }

      v25 = v21;
      v26 = v20;
      absl::lts_20240722::StrAppend(a1, &v27, &v25);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    while (v13 < *(this + 4));
  }

LABEL_28:
  result = *(this + 1);
  if (result < 0x7FFFFFFFFFFFFFFELL)
  {
    v35 = " <= ";
    v36 = 4;
    v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer(result, v34, a3);
    v32 = v34;
    v33 = v23 - v34;
    return absl::lts_20240722::StrAppend(a1, &v35, &v32);
  }

  return result;
}

void sub_23CB56F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F40A10;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F40A10;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void **__p)
{
  if (*(__p + 119) < 0)
  {
    operator delete(__p[12]);
  }

  v2 = __p[9];
  if (v2)
  {
    __p[10] = v2;
    operator delete(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    __p[5] = v3;
    operator delete(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    __p[2] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 64);
  if (!(*(*(*(a1 + 120) + 40) + 8 * v3) + *(*(*(a1 + 120) + 40) + ((8 * v3) ^ 8))))
  {
    return 1;
  }

  v5 = *a2;
  v6 = *(a1 + 128);
  v7 = v6[3];
  if (v7 > 1)
  {
    v9 = 0;
    _X11 = v6[5];
    __asm { PRFM            #4, [X11] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X11 >> 12)) & v7;
    v19 = *(_X11 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_11;
    }

LABEL_8:
    v21 = v6[6];
    while (1)
    {
      v22 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v7;
      if (*(v21 + 16 * v22) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
LABEL_11:
        while (!*&vceq_s8(v19, 0x8080808080808080))
        {
          v9 += 8;
          v18 = (v9 + v18) & v7;
          v19 = *(_X11 + v18);
          v20 = vceq_s8(v19, v17);
          if (v20)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_17;
      }
    }

    v8 = (v21 + 16 * v22);
    if (_X11 + v22)
    {
      goto LABEL_15;
    }
  }

  else if (v6[4] >= 2uLL)
  {
    v8 = v6 + 5;
    if (v6[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
LABEL_15:
        v23 = v8[1];
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  v23 = 0;
LABEL_18:
  v33 = v23;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (operations_research::sat::BuildMaxAffineUpConstraint((a1 + 8), v3, (a1 + 72), v6, &v33))
  {
    operations_research::sat::LinearConstraintBuilder::Build(&v33, v30);
    if (*(a1 + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      v29 = *(a1 + 96);
    }

    v28 = 0;
    LOBYTE(__p) = 0;
    operations_research::sat::LinearConstraintManager::AddCut(v5, v30, &v29, &__p);
    if (v28 < 0)
    {
      operator delete(__p);
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_24:
        v24 = v32;
        v32 = 0;
        if (!v24)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(v29.__r_.__value_.__l.__data_);
    v24 = v32;
    v32 = 0;
    if (!v24)
    {
LABEL_26:
      v25 = v31;
      v31 = 0;
      if (v25)
      {
        MEMORY[0x23EED9440](v25, 0x1000C8052888210);
      }

      goto LABEL_28;
    }

LABEL_25:
    MEMORY[0x23EED9440](v24, 0x1000C8000313F17);
    goto LABEL_26;
  }

LABEL_28:
  if (*(&v35 + 1))
  {
    *&v36 = *(&v35 + 1);
    operator delete(*(&v35 + 1));
  }

  return 1;
}

void sub_23CB574EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a23);
  v25 = *(v23 - 40);
  if (v25)
  {
    *(v23 - 32) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27CreateMaxAffineCutGeneratorENS0_16LinearExpressionENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENSt3__16vectorINS5_4pairINS_11StrongInt64INS0_25IntegerValue_integer_tag_EEESA_EENS5_9allocatorISB_EEEENS5_12basic_stringIcNS5_11char_traitsIcEENSC_IcEEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27CreateMaxAffineCutGeneratorENS0_16LinearExpressionENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENSt3__16vectorINS5_4pairINS_11StrongInt64INS0_25IntegerValue_integer_tag_EEESA_EENS5_9allocatorISB_EEEENS5_12basic_stringIcNS5_11char_traitsIcEENSC_IcEEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27CreateMaxAffineCutGeneratorENS0_16LinearExpressionENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENSt3__16vectorINS5_4pairINS_11StrongInt64INS0_25IntegerValue_integer_tag_EEESA_EENS5_9allocatorISB_EEEENS5_12basic_stringIcNS5_11char_traitsIcEENSC_IcEEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27CreateMaxAffineCutGeneratorENS0_16LinearExpressionENS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENSt3__16vectorINS5_4pairINS_11StrongInt64INS0_25IntegerValue_integer_tag_EEESA_EENS5_9allocatorISB_EEEENS5_12basic_stringIcNS5_11char_traitsIcEENSC_IcEEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  v4 = operations_research::sat::LinearExpression::LinearExpression(a1, a2);
  v5 = *(a2 + 56);
  *(v4 + 8) = 0;
  *(v4 + 14) = v5;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_23CB57688(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 9) = v4;
    operator delete(v4);
  }

  operations_research::sat::LinearExpr::~LinearExpr(v1);
  _Unwind_Resume(a1);
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(result, 3uLL);
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

void *std::__function::__func<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40AC0;
  if (a1[12] >= 2uLL)
  {
    operator delete((a1[14] - (a1[13] & 1) - 8));
    if (a1[8] < 2uLL)
    {
LABEL_3:
      v2 = a1[4];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (a1[8] < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((a1[10] - (a1[9] & 1) - 8));
  v2 = a1[4];
  if (v2)
  {
LABEL_4:
    a1[5] = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40AC0;
  if (a1[12] >= 2uLL)
  {
    operator delete((a1[14] - (a1[13] & 1) - 8));
    if (a1[8] < 2uLL)
    {
LABEL_3:
      v2 = a1[4];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (a1[8] < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((a1[10] - (a1[9] & 1) - 8));
  v2 = a1[4];
  if (!v2)
  {
LABEL_5:
    v3 = a1[1];
    if (v3)
    {
      a1[2] = v3;
      operator delete(v3);
    }

    JUMPOUT(0x23EED9460);
  }

LABEL_4:
  a1[5] = v2;
  operator delete(v2);
  goto LABEL_5;
}

void std::__function::__func<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(void *a1)
{
  if (a1[12] >= 2uLL)
  {
    operator delete((a1[14] - (a1[13] & 1) - 8));
    if (a1[8] < 2uLL)
    {
LABEL_3:
      v2 = a1[4];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (a1[8] < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((a1[10] - (a1[9] & 1) - 8));
  v2 = a1[4];
  if (v2)
  {
LABEL_4:
    a1[5] = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__function::__func<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *__p)
{
  if (__p[12] >= 2uLL)
  {
    operator delete((__p[14] - (__p[13] & 1) - 8));
    if (__p[8] < 2uLL)
    {
LABEL_3:
      v2 = __p[4];
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (__p[8] < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((__p[10] - (__p[9] & 1) - 8));
  v2 = __p[4];
  if (v2)
  {
LABEL_4:
    __p[5] = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = __p[1];
  if (v3)
  {
    __p[2] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = *a2;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v21 = (a1 + 32);
  if (*(a1 + 40) != *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *(v4 + 272);
    v9 = 1;
    do
    {
      v10 = 8 * *(*(a1 + 8) + 4 * v7);
      v11 = v6 - v5;
      v12 = (v6 - v5) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (-v5 >> 2 > v13)
      {
        v13 = -v5 >> 2;
      }

      if (-v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = v12;
      v16 = (8 * v12);
      v17 = &v16[-v15];
      *v16 = *(*v8 + v10);
      v6 = (v16 + 1);
      memcpy(v17, v5, v11);
      v22 = v17;
      v24 = 0;
      if (v5)
      {
        operator delete(v5);
      }

      v5 = v17;
      v23 = v6;
      v7 = v9++;
    }

    while (v7 < (*(a1 + 40) - *(a1 + 32)) >> 2);
  }

  v18 = operations_research::sat::BinaryImplicationGraph::GenerateAtMostOnesWithLargeWeight(*(a1 + 56), v21, &v22, a3);
  v19 = v18[1];
  if (v19 != *v18)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v19 - *v18) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  return 1;
}

void sub_23CB583A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a26);
  if (a35)
  {
    a36 = a35;
    operator delete(a35);
    v38 = *(v36 - 152);
    if (!v38)
    {
LABEL_7:
      v39 = *(v36 - 128);
      if (!v39)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v38 = *(v36 - 152);
    if (!v38)
    {
      goto LABEL_7;
    }
  }

  v40 = *(v36 - 144);
  v41 = v38;
  if (v40 != v38)
  {
    v42 = *(v36 - 144);
    do
    {
      v44 = *(v42 - 3);
      v42 -= 24;
      v43 = v44;
      if (v44)
      {
        *(v40 - 2) = v43;
        operator delete(v43);
      }

      v40 = v42;
    }

    while (v42 != v38);
    v41 = *(v36 - 152);
  }

  *(v36 - 144) = v38;
  operator delete(v41);
  v39 = *(v36 - 128);
  if (!v39)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_17:
  *(v36 - 120) = v39;
  operator delete(v39);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat24CreateCliqueCutGeneratorERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat24CreateCliqueCutGeneratorERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat24CreateCliqueCutGeneratorERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat24CreateCliqueCutGeneratorERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS1_9allocatorIS5_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0::$_0(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v6 = a2[3];
  v5 = a2[4];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  a1[6] = a2[6];
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set((a1 + 7), a2 + 7, &v8);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set((a1 + 11), a2 + 11, &v9);
  a1[15] = a2[15];
  return a1;
}

void sub_23CB5865C(_Unwind_Exception *exception_object)
{
  if (v1[7] >= 2)
  {
    operations_research::sat::CreateCliqueCutGenerator(v1);
  }

  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    v1[1] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0_11(uint64_t a1)
{
  v2 = (*(a1 + 72) - (*(a1 + 64) & 1) - 8);

  operator delete(v2);
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v5, a2, 1241);
}

void operations_research::sat::AddNonOverlappingRectangles(unsigned int **a1, unsigned int **a2, operations_research::sat::Model *a3)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a3);
  operations_research::sat::IntervalsRepository::GetOrCreateHelper(v5, a1, 0);
  operations_research::sat::IntervalsRepository::GetOrCreateHelper(v5, a2, 0);
  operator new();
}

void operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::Register(operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator *this, int a2, int a3)
{
  v6 = operations_research::sat::GenericLiteralWatcher::Register(*(this + 78), this);
  *(this + 158) = v6;
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(*(this + 78), v6, a2);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(this + 1), *(this + 158), *(this + 78), 1, 1);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(this + 2), *(this + 158), *(this + 78), 1, 1);
  operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(*(this + 78), *(this + 158));
  v7 = operations_research::sat::GenericLiteralWatcher::Register(*(this + 78), this);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(*(this + 78), v7, a3);
  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(*(this + 1), v7, *(this + 78), 1, 1);
  v8 = *(this + 2);
  v9 = *(this + 78);

  operations_research::sat::SchedulingConstraintHelper::WatchAllTasks(v8, v7, v9, 1, 1);
}

void operations_research::sat::anonymous namespace::AddDiffnCumulativeRelationOnX(operations_research::sat::_anonymous_namespace_ *this, operations_research::sat::SchedulingConstraintHelper *a2, operations_research::sat::SchedulingConstraintHelper *a3, operations_research::sat::Model *a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 10);
  v5 = *(a2 + 11);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (v5 != v4)
  {
    v6 = v4;
    do
    {
      *__p = 0u;
      v45 = 0u;
      *v43 = 0u;
      v46 = v6[2];
      if (*v6 != -1)
      {
        operator new();
      }

      v7 = v48;
      if (v48 >= v49)
      {
        v8 = std::vector<operations_research::sat::LinearExpression>::__emplace_back_slow_path<operations_research::sat::LinearExpression const&>(&v47, v43);
      }

      else
      {
        operations_research::sat::LinearExpression::LinearExpression(v48, v43);
        v8 = (v7 + 56);
      }

      v48 = v8;
      if (__p[1])
      {
        *&v45 = __p[1];
        operator delete(__p[1]);
      }

      if (v43[0])
      {
        v43[1] = v43[0];
        operator delete(v43[0]);
      }

      v6 += 3;
    }

    while (v6 != v5);
  }

  v46 = 0;
  *__p = 0u;
  v45 = 0u;
  *v43 = 0u;
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  if (v5 == v4)
  {
    v11 = 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x8000000000000002;
  }

  else
  {
    v10 = v4 + 1;
    v11 = 0x7FFFFFFFFFFFFFFELL;
    v12 = 0x8000000000000002;
    do
    {
      while (1)
      {
        v18 = v10 - 1;
        v19 = *(v10 - 2);
        v20 = v10[1];
        if (v19 != -1)
        {
          break;
        }

        if (v20 < v11)
        {
          v11 = v10[1];
        }

        if (v12 <= v20)
        {
          v12 = v10[1];
        }

        v10 += 3;
        if (v18 + 3 == v5)
        {
          goto LABEL_28;
        }
      }

      v14 = *v10;
      v10 += 3;
      v13 = v14;
      v15 = *(v9 + 19);
      v16 = v20 + *(v15 + 24 * v19) * v14;
      if (v16 < v11)
      {
        v11 = v16;
      }

      v17 = v20 - *(v15 + 24 * (v19 ^ 1)) * v13;
      if (v12 <= v17)
      {
        v12 = v17;
      }
    }

    while (v18 + 3 != v5);
  }

LABEL_28:
  v21 = operations_research::sat::IntegerTrail::AddIntegerVariable(v9, v11, v12);
  v22 = v43[1];
  if (v43[1] >= __p[0])
  {
    v24 = v43[0];
    v25 = v43[1] - v43[0];
    v26 = (v43[1] - v43[0]) >> 2;
    v27 = v26 + 1;
    if ((v26 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v28 = __p[0] - v43[0];
    if ((__p[0] - v43[0]) >> 1 > v27)
    {
      v27 = v28 >> 1;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v29 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      if (!(v29 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v30 = (4 * v26);
    v31 = &v30[-((v43[1] - v43[0]) >> 2)];
    *v30 = v21;
    v23 = v30 + 1;
    memcpy(v31, v24, v25);
    v43[0] = v31;
    v43[1] = v23;
    __p[0] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v43[1] = v21;
    v23 = v22 + 4;
  }

  v43[1] = v23;
  v32 = v45;
  if (v45 >= *(&v45 + 1))
  {
    v34 = __p[1];
    v35 = v45 - __p[1];
    v36 = (v45 - __p[1]) >> 3;
    v37 = v36 + 1;
    if ((v36 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v38 = *(&v45 + 1) - __p[1];
    if ((*(&v45 + 1) - __p[1]) >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (!(v39 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v40 = (8 * v36);
    v41 = &v40[-((v45 - __p[1]) >> 3)];
    *v40 = 1;
    v33 = v40 + 1;
    memcpy(v41, v34, v35);
    __p[1] = v41;
    v45 = v33;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v45 = 1;
    v33 = (v32 + 8);
  }

  *&v45 = v33;
  operations_research::sat::IsEqualToMinOf(v43, &v50, &v47);
}

void sub_23CB59DA0(_Unwind_Exception *a1)
{
  MEMORY[0x23EED9460](v1, 0x10B1C40111CA07FLL);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_23CB59DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
    v28 = *(v26 - 160);
    if (!v28)
    {
LABEL_3:
      operator delete(v25);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v28 = *(v26 - 160);
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  *(v26 - 152) = v28;
  operator delete(v28);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void sub_23CB59E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  std::function<void ()(operations_research::sat::Model *)>::~function(v9 - 160);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CB59ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  operations_research::sat::LinearExpr::~LinearExpr((v9 - 160));
  operations_research::sat::LinearExpr::~LinearExpr(va);
  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CB59EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CB59F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  operations_research::sat::LinearExpr::~LinearExpr(va);
  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23CB59F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::function<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> ()(operations_research::sat::Model *)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::NonOverlappingRectanglesEnergyPropagator::~NonOverlappingRectanglesEnergyPropagator(operations_research::sat::NonOverlappingRectanglesEnergyPropagator *this)
{
  *this = &unk_284F40B40;
  if (dword_27E25CD20 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::NonOverlappingRectanglesEnergyPropagator::~NonOverlappingRectanglesEnergyPropagator()::$_0::operator() const(void)::site, dword_27E25CD20))
  {
    operator new();
  }

  operations_research::sat::OrthogonalPackingInfeasibilityDetector::~OrthogonalPackingInfeasibilityDetector((this + 40));
}

{
  operations_research::sat::NonOverlappingRectanglesEnergyPropagator::~NonOverlappingRectanglesEnergyPropagator(this);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  v1 = this;
  v2 = this[1];
  v4 = *(v2 + 10);
  v3 = *(v2 + 11);
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v2, 1);
  if (!result)
  {
    return result;
  }

  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v1[2], 1);
  if (!result)
  {
    return result;
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  v7 = 0x492492492492492;
  if (v6 << 32)
  {
    if (v6 <= 0x492492492492492)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v38 = 0;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = v6 & 0x7FFFFFFF;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x8000000000000000;
    v12 = 0x8000000000000000;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0;
    v63 = v9;
    v72 = v1;
    do
    {
      v15 = v1[1];
      v16 = *(*(v15 + 29) + 8 * v8);
      if (v16)
      {
        v17 = v1[2];
        v18 = *(*(v17 + 29) + 8 * v8);
        if (v18)
        {
          v19 = *(*(v15 + 19) + 4 * v8);
          if (v19 == -1 || ((*(*(*(v15 + 3) + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) != 0)
          {
            v20 = *(*(v17 + 19) + 4 * v8);
            if (v20 == -1 || ((*(*(*(v17 + 3) + 24) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20) & 1) != 0)
            {
              v21 = *(v15 + 30);
              v22 = *(v21 + 8 * v8);
              if (v22 < v13)
              {
                v13 = *(v21 + 8 * v8);
              }

              v24 = (v15 + 256);
              v23 = *(v15 + 32);
              v25 = *(v24[1] + 8 * v8);
              if (v12 <= -v25)
              {
                v12 = -v25;
              }

              v26 = *(v17 + 30);
              v27 = *(v26 + 8 * v8);
              if (v27 < v10)
              {
                v10 = *(v26 + 8 * v8);
              }

              v29 = (v17 + 256);
              v28 = *(v17 + 32);
              v30 = *(v29[1] + 8 * v8);
              v31 = *(v23 + 8 * v8);
              if (v11 <= -v30)
              {
                v11 = -v30;
              }

              v32 = v18 - *(v28 + 8 * v8);
              v33 = v38 - v14;
              v34 = 0x6DB6DB6DB6DB6DB7 * ((v38 - v14) >> 3);
              v35 = v34 + 1;
              __src = v14;
              if ((v34 + 1) > 0x492492492492492)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (0xDB6DB6DB6DB6DB6ELL * (-v14 >> 3) > v35)
              {
                v35 = 0xDB6DB6DB6DB6DB6ELL * (-v14 >> 3);
              }

              if ((0x6DB6DB6DB6DB6DB7 * (-v14 >> 3)) >= 0x249249249249249)
              {
                v36 = 0x492492492492492;
              }

              else
              {
                v36 = v35;
              }

              v66 = v11;
              v68 = v10;
              v64 = v13;
              v65 = v12;
              if (v36)
              {
                if (v36 <= 0x492492492492492)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v37 = 56 * v34;
              *v37 = v8;
              *(v37 + 8) = v22;
              *(v37 + 16) = v16 - v31;
              *(v37 + 24) = v27;
              *(v37 + 32) = v32;
              *(v37 + 40) = v16;
              *(v37 + 48) = v18;
              v38 = 56 * v34 + 56;
              v39 = v37 - v33;
              memcpy((v37 - v33), v14, v33);
              if (__src)
              {
                operator delete(__src);
              }

              v14 = v39;
              v1 = v72;
              v7 = 0x492492492492492;
              v11 = v66;
              v10 = v68;
              v13 = v64;
              v12 = v65;
              v9 = v63;
            }
          }
        }
      }

      ++v8;
    }

    while (v9 != v8);
  }

  else
  {
    v12 = 0x8000000000000000;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = 0x8000000000000000;
  }

  v40 = 0x6DB6DB6DB6DB6DB7 * ((v38 - v14) >> 3);
  if ((v40 - 1001) >= 0xFFFFFFFFFFFFFC19)
  {
    v41 = v12 - v13;
    if (v12 - v13 <= v11 - v10)
    {
      v41 = v11 - v10;
    }

    if (v41 * v40 <= 0x7FFFFFFF)
    {
      v1[31] = (v1[31] + 1);
      __p = v14;
      v86 = v38;
      v87 = 0;
      operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(v1, &__p, &v88);
      if (__p)
      {
        v86 = __p;
        operator delete(__p);
      }

      v42 = v96;
      if ((v96 & 1) == 0)
      {
        return v42 ^ 1u;
      }

      v67 = v96;
      v1[32] = (v1[32] + 1);
      v69 = 0;
      __srca = 0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3);
      while (1)
      {
        if (*(&v88 + 1) != v88)
        {
          if ((0x6DB6DB6DB6DB6DB7 * ((*(&v88 + 1) - v88) >> 3)) <= 0x492492492492492)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v53 = 0;
        v54 = v93;
        v55 = v94;
        if (v93 == v94)
        {
          v74 = 0;
          v75 = 0;
          v73 = 0;
        }

        else
        {
          v43 = 0;
          do
          {
            v44 = v88 + 56 * *v54;
            v45 = v43 - v53;
            v46 = 0x6DB6DB6DB6DB6DB7 * ((v43 - v53) >> 3);
            v47 = v46 + 1;
            if ((v46 + 1) > 0x492492492492492)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (0xDB6DB6DB6DB6DB6ELL * (-v53 >> 3) > v47)
            {
              v47 = 0xDB6DB6DB6DB6DB6ELL * (-v53 >> 3);
            }

            if ((0x6DB6DB6DB6DB6DB7 * (-v53 >> 3)) < 0x249249249249249)
            {
              v7 = v47;
            }

            if (v7)
            {
              if (v7 <= 0x492492492492492)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v48 = 56 * v46;
            v49 = *v44;
            v50 = *(v44 + 16);
            v51 = *(v44 + 32);
            *(v48 + 48) = *(v44 + 48);
            *(v48 + 16) = v50;
            *(v48 + 32) = v51;
            *v48 = v49;
            v43 = 56 * v46 + 56;
            v52 = (v48 - v45);
            memcpy((v48 - v45), v53, v45);
            if (v53)
            {
              operator delete(v53);
            }

            v53 = v52;
            v7 = 0x492492492492492;
            v54 += 6;
          }

          while (v54 != v55);
          v74 = 0;
          v75 = 0;
          v73 = 0;
          if (v43 != v52)
          {
            if ((0x6DB6DB6DB6DB6DB7 * ((v43 - v52) >> 3)) <= 0x492492492492492)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }
        }

        operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(v1, &v73, v76);
        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        if ((v84 & 1) == 0)
        {
          v59 = 6;
          if (!v53)
          {
            goto LABEL_47;
          }

LABEL_96:
          operator delete(v53);
          goto LABEL_47;
        }

        v57 = v81;
        v56 = v82;
        v58 = 0xAAAAAAAAAAAAAAABLL * ((v82 - v81) >> 3);
        if (__srca <= v58)
        {
          break;
        }

        if (v96 == v84)
        {
          if (!v96)
          {
            v59 = 0;
            v69 = 1;
            if (!v81)
            {
              goto LABEL_93;
            }

            goto LABEL_92;
          }

          if (v88)
          {
            *(&v88 + 1) = v88;
            operator delete(v88);
          }

          v88 = *v76;
          v89 = v77;
          v76[1] = 0;
          v77 = 0;
          v76[0] = 0;
          v90 = v78;
          v91 = v79;
          v92 = v80;
          if (v93)
          {
            v94 = v93;
            operator delete(v93);
          }

          v59 = 0;
          v93 = v57;
          v94 = v56;
          v95 = v83;
          v69 = 1;
          v60 = v76[0];
          if (v76[0])
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v96)
          {
            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v88)
            {
              *(&v88 + 1) = v88;
              operator delete(v88);
            }

            v59 = 0;
            v96 = 0;
            v69 = 1;
            if (!v57)
            {
LABEL_93:
              v60 = v76[0];
              if (!v76[0])
              {
                goto LABEL_95;
              }

LABEL_94:
              operator delete(v60);
              goto LABEL_95;
            }

LABEL_92:
            operator delete(v57);
            goto LABEL_93;
          }

          v59 = 0;
          v89 = v77;
          v93 = v81;
          v94 = v82;
          v88 = *v76;
          v76[1] = 0;
          v77 = 0;
          v76[0] = 0;
          v90 = v78;
          v91 = v79;
          v92 = v80;
          v95 = v83;
          v69 = 1;
          v96 = 1;
        }

LABEL_95:
        __srca = v58;
        if (v53)
        {
          goto LABEL_96;
        }

LABEL_47:
        if (v59)
        {
          v1[34] = (v1[34] + (v69 & 1));
          operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(v76, v1, &v88);
          if (__srca == 2)
          {
            v1[33] = (v1[33] + 1);
          }

          operations_research::sat::NonOverlappingRectanglesEnergyPropagator::BuildAndReportEnergyTooLarge(v1, v76, v61, v62);
          v42 = v67;
          if (v76[0])
          {
            v76[1] = v76[0];
            operator delete(v76[0]);
          }

          if (v96)
          {
            if (v93)
            {
              v94 = v93;
              operator delete(v93);
            }

            if (v88)
            {
              *(&v88 + 1) = v88;
              operator delete(v88);
            }
          }

          return v42 ^ 1u;
        }
      }

      v59 = 6;
      v58 = __srca;
      if (!v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }
  }

  if (v14)
  {
    operator delete(v14);
  }

  return 1;
}

void sub_23CB5ACE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  if (__p)
  {
    operator delete(__p);
    std::optional<operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict>::~optional(va);
    _Unwind_Resume(a1);
  }

  std::optional<operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict>::~optional(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(uint64_t a1@<X0>, char **a2@<X1>, _BYTE *a3@<X8>)
{
  v100 = *MEMORY[0x277D85DE8];
  *&v98 = *(a1 + 24);
  *(&v98 + 1) = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
  v99 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
  operations_research::sat::FindRectanglesWithEnergyConflictMC(a2, &v98, &v95, 1.0, 0.8);
  if (v95 != *(&v95 + 1) || (v6 = v96, v96 != v97))
  {
    memset(v93, 0, sizeof(v93));
    *v92 = 0u;
    *v94 = 2;
    memset(&v94[4], 0, 36);
    *&v98 = 0;
    std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::back_insert_iterator<absl::lts_20240722::InlinedVector<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>>,long,operations_research::sat::ModelRandomGenerator>(v95, *(&v95 + 1), &v98, 5, *(a1 + 24));
    std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::back_insert_iterator<absl::lts_20240722::InlinedVector<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>>,unsigned long,operations_research::sat::ModelRandomGenerator>(v96, v97, &v98, 10 - (v98 >> 1), *(a1 + 24));
    if (v98)
    {
      v7 = *(&v98 + 1);
    }

    else
    {
      v7 = &v98 + 8;
    }

    v8 = 126 - 2 * __clz((16 * v98) >> 5);
    if ((v98 & 0xFFFFFFFFFFFFFFELL) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,false>(v7, &v7[(16 * v98) & 0xFFFFFFFFFFFFFFE0], v9, 1);
    v10 = a2[1] - *a2;
    v78 = a3;
    if (v10)
    {
      if (!((0x6DB6DB6DB6DB6DB7 * (v10 >> 3)) >> 61))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v84 = 0;
    v11 = 0;
    if (v98)
    {
      v12 = *(&v98 + 1);
    }

    else
    {
      v12 = &v98 + 1;
    }

    if ((v98 & 0xFFFFFFFFFFFFFFELL) == 0)
    {
      v13 = 0;
LABEL_17:
      if (*v94)
      {
        *v78 = 0;
        v78[96] = 0;
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        *v78 = *v92;
        *(v78 + 2) = *v93;
        v92[0] = 0;
        v92[1] = 0;
        *(v78 + 24) = *&v93[8];
        *(v78 + 40) = *&v93[24];
        *(v78 + 56) = *v94;
        *(v78 + 72) = *&v94[16];
        *(v78 + 11) = *&v94[32];
        *v93 = 0;
        memset(&v94[16], 0, 24);
        v78[96] = 1;
        if (!v13)
        {
LABEL_20:
          if (v98)
          {
            operator delete(*(&v98 + 1));
          }

          if (*&v94[16])
          {
            *&v94[24] = *&v94[16];
            operator delete(*&v94[16]);
          }

          if (v92[0])
          {
            v92[1] = v92[0];
            operator delete(v92[0]);
          }

          v6 = v96;
          if (v96)
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        }
      }

      operator delete(v13);
      goto LABEL_20;
    }

    v79 = &v12[4 * (v98 >> 1)];
    v80 = a1;
    while (1)
    {
      v14 = *a2;
      if (a2[1] != *a2)
      {
        v15 = 0;
        v16 = 1;
        v82 = 0;
        v83 = 0;
        v17 = v11;
        v18 = v11;
        v81 = v12;
        while (1)
        {
          v19 = &v14[56 * v15];
          v20 = v12[1];
          v21 = v12[2];
          v22 = v12[3];
          v24 = *(v19 + 5);
          v23 = *(v19 + 6);
          v25 = *(v19 + 3);
          v26 = v25 + v23;
          v27 = *(v19 + 1);
          if (*v12 <= v27)
          {
            v28 = *(v19 + 1);
          }

          else
          {
            v28 = *v12;
          }

          if (v21 > v25)
          {
            v25 = v12[2];
          }

          if (v27 + v24 >= v20)
          {
            v29 = v12[1];
          }

          else
          {
            v29 = v27 + v24;
          }

          if (v26 >= v22)
          {
            v26 = v12[3];
          }

          if (v28 < v29 && v25 < v26)
          {
            v32 = v28;
            v33 = v29;
            v34 = v25;
            v35 = v26;
            v31 = (v26 - v25) * (v29 - v28);
            if (v31)
            {
              if (v31 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v32 = 0;
                v33 = 0;
                v34 = 0;
                v35 = 0;
              }

              v36 = *(v19 + 4);
              v37 = v36 - v23;
              if (v21 <= v37)
              {
                v21 = v37;
              }

              if (v36 < v22)
              {
                v22 = *(v19 + 4);
              }

              if (v28 >= v29 || v21 >= v22)
              {
                goto LABEL_95;
              }

              v41 = (v22 - v21) * (v29 - v28);
              if (!v41)
              {
                goto LABEL_95;
              }

              if (v41 < v31)
              {
                v32 = v28;
                v33 = v29;
                v34 = v21;
                v35 = v22;
                v31 = (v22 - v21) * (v29 - v28);
              }

              v42 = *(v19 + 2);
              v43 = v42 - v24;
              if (*v12 > v43)
              {
                v43 = *v12;
              }

              v44 = v42 >= v20 ? v12[1] : *(v19 + 2);
              if (v43 >= v44 || v25 >= v26)
              {
                goto LABEL_95;
              }

              v46 = (v26 - v25) * (v44 - v43);
              if (!v46)
              {
                goto LABEL_95;
              }

              v47 = 0;
              if (v46 < v31)
              {
                v40 = v43;
              }

              else
              {
                v40 = v32;
              }

              if (v46 < v31)
              {
                v39 = v44;
              }

              else
              {
                v39 = v33;
              }

              if (v46 < v31)
              {
                v48 = (v26 - v25) * (v44 - v43);
              }

              else
              {
                v25 = v34;
                v26 = v35;
                v48 = v31;
              }

              v49 = 0;
              v50 = 0;
              v51 = 0;
              if (v43 < v44 && v21 < v22)
              {
                v47 = v43;
                v49 = v44;
                v50 = v21;
                v51 = v22;
              }

              v52 = (v51 - v50) * (v49 - v47);
              if (v52)
              {
                if (v52 < v48)
                {
                  v39 = v49;
                  v25 = v50;
                  v26 = v51;
                  v40 = v47;
                }
              }

              else
              {
LABEL_95:
                v39 = 0;
                v25 = 0;
                v26 = 0;
                v40 = 0;
              }

              goto LABEL_96;
            }
          }

          else
          {
            v31 = 0;
          }

          v39 = v31;
          v25 = v31;
          v26 = v31;
          v40 = v31;
LABEL_96:
          if (v39 - v40 >= 1)
          {
            v85 = v17;
            v53 = v26 - v25;
            if (v26 - v25 >= 1)
            {
              v57 = v18;
              v58 = v83;
              v59 = v83 >> 3;
              if (((v83 >> 3) + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (v83 >> 3 != -1)
              {
                if (!(((v83 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v59) = v39 - v40;
              v83 = 8 * v59 + 8;
              memcpy(0, 0, v58);
              v60 = v82;
              v61 = v82 >> 3;
              if (((v82 >> 3) + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              if (v82 >> 3 != -1)
              {
                if (!(((v82 >> 3) + 1) >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              *(8 * v61) = v53;
              v82 = 8 * v61 + 8;
              memcpy(0, 0, v60);
              v17 = v85;
              v62 = v57;
              v12 = v81;
              if (v62 < v84)
              {
                v54 = *v19;
                v55 = *(v19 + 1);
                v56 = *(v19 + 2);
                *(v62 + 48) = *(v19 + 6);
                *(v62 + 16) = v55;
                *(v62 + 32) = v56;
                *v62 = v54;
                v18 = v62 + 56;
              }

              else
              {
                v63 = v62 - v85;
                v64 = 0x6DB6DB6DB6DB6DB7 * (v63 >> 3) + 1;
                if (v64 > 0x492492492492492)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if (0xDB6DB6DB6DB6DB6ELL * ((v84 - v85) >> 3) > v64)
                {
                  v64 = 0xDB6DB6DB6DB6DB6ELL * ((v84 - v85) >> 3);
                }

                if ((0x6DB6DB6DB6DB6DB7 * ((v84 - v85) >> 3)) >= 0x249249249249249)
                {
                  v65 = 0x492492492492492;
                }

                else
                {
                  v65 = v64;
                }

                if (v65)
                {
                  if (v65 <= 0x492492492492492)
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v66 = 8 * (v63 >> 3);
                v67 = *v19;
                v68 = *(v19 + 1);
                v69 = *(v19 + 2);
                v84 = 0;
                *(v66 + 48) = *(v19 + 6);
                *(v66 + 16) = v68;
                *(v66 + 32) = v69;
                *v66 = v67;
                v70 = v66 + 56;
                v71 = (v66 - v63);
                memcpy((v66 - v63), v85, v63);
                if (v85)
                {
                  operator delete(v85);
                }

                v17 = v71;
                v18 = v70;
              }
            }
          }

          v15 = v16;
          v14 = *a2;
          ++v16;
          if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3) <= v15)
          {
            goto LABEL_122;
          }
        }
      }

      v17 = v11;
      v18 = v11;
      v82 = 0;
      v83 = 0;
LABEL_122:
      v72 = v12[1] - *v12;
      v73 = v12[3] - v12[2];
      v86 = 257;
      v87 = 1;
      v88 = 0x6400000007;
      operations_research::sat::OrthogonalPackingInfeasibilityDetector::TestFeasibility((v80 + 40), 0, v83 >> 3, 0, v82 >> 3, v72, v73, &v86, &v89);
      if (!v89)
      {
        if (!*v94)
        {
          v74 = v90;
          if (*&v94[24] - *&v94[16] <= (v91 - v90))
          {
            goto LABEL_127;
          }
        }

        std::vector<operations_research::sat::RectangleInRange>::__assign_with_size[abi:ne200100]<operations_research::sat::RectangleInRange*,operations_research::sat::RectangleInRange*>(v92, v17, v18, 0x6DB6DB6DB6DB6DB7 * ((v18 - v17) >> 3));
        *v94 = v89;
        std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(&v94[16], v90, v91, 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3));
        v75 = *v12;
        *&v93[24] = *(v12 + 1);
        *&v93[8] = v75;
      }

      v74 = v90;
LABEL_127:
      v76 = v18;
      v13 = *a2;
      *a2 = v17;
      a2[1] = v76;
      v77 = a2[2];
      a2[2] = v84;
      if (v74)
      {
        v91 = v74;
        operator delete(v74);
      }

      v12 += 4;
      v11 = v13;
      v84 = v77;
      if (v12 == v79)
      {
        goto LABEL_17;
      }
    }
  }

  *a3 = 0;
  a3[96] = 0;
  if (v6)
  {
LABEL_27:
    v97 = v6;
    operator delete(v6);
  }

LABEL_28:
  if (v95)
  {
    *(&v95 + 1) = v95;
    operator delete(v95);
  }
}

void sub_23CB5B8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  operator delete(__p);
  if (v47)
  {
    operator delete(v47);
    if (a47)
    {
LABEL_6:
      operator delete(*(v48 + 152));
      operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict::~Conflict(&a29);
      operations_research::sat::LinearExpr::~LinearExpr(&a41);
      _Unwind_Resume(a1);
    }
  }

  else if (a47)
  {
    goto LABEL_6;
  }

  operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict::~Conflict(&a29);
  operations_research::sat::LinearExpr::~LinearExpr(&a41);
  _Unwind_Resume(a1);
}

uint64_t std::optional<operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict>::~optional(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    v1 = *(result + 72);
    if (v1)
    {
      *(result + 80) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    v3 = *result;
    if (*result)
    {
      *(result + 8) = v3;
      v4 = result;
      operator delete(v3);
      return v4;
    }
  }

  return result;
}

void operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(uint64_t *__return_ptr a1@<X8>, operations_research::sat::NonOverlappingRectanglesEnergyPropagator *this@<X0>, const operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict *a3@<X1>)
{
  v5 = *(a3 + 56);
  v15 = v5;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v6 = *(a3 + 9);
  v7 = *(a3 + 10);
  if (v7 != v6)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 35) = *(this + 35);
  if (dword_27E25CD38 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_0::operator() const(void)::site, dword_27E25CD38) && (absl::lts_20240722::log_internal::LogEveryNSecState::ShouldLog(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::absl_log_internal_stateful_condition_state, 3.0) & 1) != 0)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v14, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/diffn.cc", 488);
    v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v14, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Found a conflict on the OPP sub-problem of rectangle: ", 0x36uLL);
    v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::Rectangle,0>(v9, a3 + 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " using ", 7uLL);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 10) - *(a3 + 9)) >> 3);
    v11 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v10, &v13);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "/", 1uLL);
    v13 = 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 1) - *a3) >> 3);
    v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v11, &v13);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " items.", 7uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v14);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = *(a3 + 1);
  if (v8 != *a3)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - *a3) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v17 != __p)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,false>(0, 0, 0, 1, v5);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }
}

void sub_23CB5BF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::NonOverlappingRectanglesEnergyPropagator::BuildAndReportEnergyTooLarge(uint64_t a1, char **a2, uint64_t a3, operations_research::sat::SchedulingConstraintHelper *a4)
{
  v5 = *a2;
  if (a2[1] - *a2 == 112)
  {
    ++*(a1 + 264);
    v6 = *v5;
    v7 = v5[14];
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    operations_research::sat::SchedulingConstraintHelper::ImportOtherReasons(v9, v8);

    return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v9);
  }

  else
  {
    operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 8));
    operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 16));
    v13 = *a2;
    v14 = a2[1];
    if (*a2 != v14)
    {
      do
      {
        v15 = *v13;
        v16 = *(a1 + 8);
        v17 = *(v13 + 1);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v16, *v13);
        v18 = v15;
        v19 = 24 * v15;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v16, (*(v16 + 22) + v19), -v17, (*(v16 + 25) + v19), (*(v16 + 16) + v19));
        v20 = *(a1 + 16);
        v21 = *(v13 + 3);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v20, v15);
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v20, (*(v20 + 22) + v19), -v21, (*(v20 + 25) + v19), (*(v20 + 16) + v19));
        v22 = *(a1 + 8);
        v23 = *(v13 + 2);
        v24 = *(v13 + 5);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v22, v15);
        v25 = *(v22 + 16) + v19;
        v26 = *v25;
        if (*v25 == -1)
        {
          v27 = 0;
        }

        else
        {
          v27 = *(v25 + 8);
          v26 ^= (v27 >> 63) ^ 1;
          if (v27 < 0)
          {
            v27 = -v27;
          }
        }

        v28 = *(v22 + 10);
        v29 = *(v22 + 13);
        v30 = 24 * v15;
        v31 = -*(v25 + 16);
        v59 = v26;
        v60 = v27;
        v61 = v31;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v22, (v28 + 24 * v18), v23 - v24, (v29 + 24 * v18), &v59);
        v32 = *(a1 + 16);
        v33 = *(v13 + 4);
        v34 = *(v13 + 6);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v32, v18);
        v35 = *(v32 + 10);
        v36 = *(v32 + 13);
        v37 = *(v32 + 16) + v30;
        v38 = *v37;
        if (*v37 == -1)
        {
          v39 = 0;
        }

        else
        {
          v39 = *(v37 + 8);
          v38 ^= (v39 >> 63) ^ 1;
          if (v39 < 0)
          {
            v39 = -v39;
          }
        }

        v40 = -*(v37 + 16);
        v59 = v38;
        v60 = v39;
        v61 = v40;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v32, (v35 + v30), v33 - v34, (v36 + v30), &v59);
        v41 = *(a1 + 8);
        v42 = *(*(v41 + 29) + 8 * v18);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v41, v18);
        if (v42 >= 1)
        {
          v43 = *(v41 + 16) + 24 * v18;
          if (*v43 == -1)
          {
            v46 = 0;
            v45 = -1;
          }

          else
          {
            v44 = *(v43 + 8);
            v45 = *v43 ^ (v44 >> 63) ^ 1;
            if (v44 >= 0)
            {
              v46 = *(v43 + 8);
            }

            else
            {
              v46 = -v44;
            }
          }

          v47 = -*(v43 + 16);
          v59 = v45;
          v60 = v46;
          v61 = v47;
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v41, &v59, -v42, (*(v41 + 25) + v30), (*(v41 + 10) + v30));
        }

        v48 = *(a1 + 16);
        v49 = *(*(v48 + 29) + 8 * v18);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v18);
        if (v49 >= 1)
        {
          v50 = *(v48 + 16) + 24 * v18;
          if (*v50 == -1)
          {
            v53 = 0;
            v52 = -1;
          }

          else
          {
            v51 = *(v50 + 8);
            v52 = *v50 ^ (v51 >> 63) ^ 1;
            if (v51 >= 0)
            {
              v53 = *(v50 + 8);
            }

            else
            {
              v53 = -v51;
            }
          }

          v54 = -*(v50 + 16);
          v59 = v52;
          v60 = v53;
          v61 = v54;
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v48, &v59, -v49, (*(v48 + 25) + v30), (*(v48 + 10) + v30));
        }

        v55 = *(a1 + 8);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v55, v18);
        v56 = *(*(v55 + 19) + 4 * v18);
        if (v56 != -1)
        {
          v59 = v56 ^ 1;
          std::vector<int>::push_back[abi:ne200100](v55 + 496, &v59);
        }

        v57 = *(a1 + 16);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v57, v18);
        v58 = *(*(v57 + 19) + 4 * v18);
        if (v58 != -1)
        {
          v59 = v58 ^ 1;
          std::vector<int>::push_back[abi:ne200100](v57 + 496, &v59);
        }

        v13 += 14;
      }

      while (v13 != v14);
    }

    operations_research::sat::SchedulingConstraintHelper::ImportOtherReasons(*(a1 + 8), *(a1 + 16));
    return operations_research::sat::SchedulingConstraintHelper::ReportConflict(*(a1 + 8));
  }
}

double operations_research::sat::RectangleInRange::GetMinimumIntersection@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[3];
  v10 = v8 + v9;
  v11 = a1[1];
  v12 = v7 + v11;
  if (v4 > v11)
  {
    v11 = v4;
  }

  if (v6 <= v9)
  {
    v13 = a1[3];
  }

  else
  {
    v13 = v6;
  }

  if (v12 >= v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = v12;
  }

  if (v10 >= v5)
  {
    v10 = v5;
  }

  if (v11 >= v14 || v13 >= v10)
  {
    v11 = 0;
    v14 = 0;
    v13 = 0;
    v10 = 0;
  }

  v16 = (v10 - v13) * (v14 - v11);
  if (!v16)
  {
    goto LABEL_69;
  }

  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v14 = 0;
    v13 = 0;
    v10 = 0;
  }

  v17 = 0;
  v18 = a1[4];
  v19 = v18 - v8;
  v20 = a1[1];
  v21 = v7 + v20;
  if (v4 > v20)
  {
    v20 = v4;
  }

  if (v6 > v19)
  {
    v19 = v6;
  }

  if (v21 >= v3)
  {
    v22 = v3;
  }

  else
  {
    v22 = v21;
  }

  if (v18 >= v5)
  {
    v23 = v5;
  }

  else
  {
    v23 = a1[4];
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v20 < v22 && v19 < v23)
  {
    v17 = v20;
    v24 = v22;
    v25 = v19;
    v26 = v23;
  }

  v27 = (v26 - v25) * (v24 - v17);
  if (!v27)
  {
    goto LABEL_69;
  }

  v28 = 0;
  if (v27 < v16)
  {
    v11 = v17;
    v14 = v24;
    v13 = v25;
    v10 = v26;
    v16 = (v26 - v25) * (v24 - v17);
  }

  v30 = a1[2];
  v29 = a1[3];
  v31 = v30 - v7;
  if (v4 > v30 - v7)
  {
    v31 = v4;
  }

  if (v6 <= v29)
  {
    v32 = a1[3];
  }

  else
  {
    v32 = v6;
  }

  if (v30 >= v3)
  {
    v33 = v3;
  }

  else
  {
    v33 = a1[2];
  }

  if (v8 + v29 >= v5)
  {
    v34 = v5;
  }

  else
  {
    v34 = v8 + v29;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (v31 < v33 && v32 < v34)
  {
    v28 = v31;
    v35 = v33;
    v36 = v32;
    v37 = v34;
  }

  v38 = (v37 - v36) * (v35 - v28);
  if (!v38)
  {
    goto LABEL_69;
  }

  if (v38 < v16)
  {
    v11 = v28;
    v14 = v35;
    v13 = v36;
    v10 = v37;
    v16 = (v37 - v36) * (v35 - v28);
  }

  v39 = 0;
  v40 = a1[4];
  v41 = v40 - v8;
  v42 = a1[2];
  v43 = v42 - v7;
  if (v4 > v43)
  {
    v43 = v4;
  }

  if (v6 <= v41)
  {
    v6 = v41;
  }

  if (v42 >= v3)
  {
    v44 = v3;
  }

  else
  {
    v44 = v42;
  }

  if (v40 >= v5)
  {
    v45 = v5;
  }

  else
  {
    v45 = v40;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (v43 < v44 && v6 < v45)
  {
    v39 = v43;
    v46 = v44;
    v47 = v6;
    v48 = v45;
  }

  v49 = (v48 - v47) * (v46 - v39);
  if (v49)
  {
    if (v49 < v16)
    {
      v11 = v39;
      v14 = v46;
      v13 = v47;
      v10 = v48;
    }

    *a3 = v11;
    a3[1] = v14;
    a3[2] = v13;
    a3[3] = v10;
  }

  else
  {
LABEL_69:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

void operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict::~Conflict(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::Rectangle,0>(uint64_t a1, uint64_t *a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = a1;
  v9[0] = v3;
  v9[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[2] = v4;
  v9[3] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[4] = v5;
  v9[5] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  v9[6] = v6;
  v9[7] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&v8, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::log_internal::StringifySink>, "rectangle(x(%i..%i), y(%i..%i))", 31, v9, 4uLL);
  return a1;
}

void operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::NonOverlappingRectanglesDisjunctivePropagator(operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator *this, operations_research::sat::SchedulingConstraintHelper *a2, operations_research::sat::SchedulingConstraintHelper *a3, operations_research::sat::Model *a4)
{
  *this = &unk_284F40B70;
  *(this + 1) = a2;
  *(this + 2) = a3;
  v6 = (this + 24);
  operations_research::sat::SchedulingConstraintHelper::SchedulingConstraintHelper((this + 24), -1431655765 * ((*(a2 + 11) - *(a2 + 10)) >> 3), a4);
  *(this + 78) = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a4);
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = xmmword_23CE306D0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 98) = 0;
  operations_research::sat::DisjunctiveOverloadChecker::DisjunctiveOverloadChecker((this + 792), v6);
}

void sub_23CB5C95C(_Unwind_Exception *a1)
{
  v6 = *(v2 + 1632);
  if (v6)
  {
    *(v2 + 1640) = v6;
    operator delete(v6);
  }

  v7 = *v4;
  if (*v4)
  {
    *(v2 + 1616) = v7;
    operator delete(v7);
  }

  operations_research::sat::DisjunctiveEdgeFinding::~DisjunctiveEdgeFinding(v3);
  operations_research::sat::DisjunctiveNotLast::~DisjunctiveNotLast((v2 + 1296));
  operations_research::sat::DisjunctiveNotLast::~DisjunctiveNotLast((v2 + 1192));
  operations_research::sat::DisjunctiveDetectablePrecedences::~DisjunctiveDetectablePrecedences((v2 + 1040));
  operations_research::sat::DisjunctiveDetectablePrecedences::~DisjunctiveDetectablePrecedences((v2 + 888));
  operations_research::sat::DisjunctiveOverloadChecker::~DisjunctiveOverloadChecker((v2 + 792));
  v8 = *(v2 + 768);
  if (v8)
  {
    *(v2 + 776) = v8;
    operator delete(v8);
  }

  v9 = (v2 + 720);
  v10 = *(v2 + 744);
  if (v10)
  {
    *(v2 + 752) = v10;
    operator delete(v10);
    v11 = *v9;
    if (!*v9)
    {
LABEL_9:
      v12 = (v2 + 640);
      if (*(v2 + 688) < 2uLL)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = *v9;
    if (!*v9)
    {
      goto LABEL_9;
    }
  }

  *(v2 + 728) = v11;
  operator delete(v11);
  v12 = (v2 + 640);
  if (*(v2 + 688) < 2uLL)
  {
LABEL_10:
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v2 + 664));
    v13 = *v12;
    if (!*v12)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete((*(v2 + 704) - (*(v2 + 696) & 1) - 8));
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v2 + 664));
  v13 = *v12;
  if (!*v12)
  {
LABEL_11:
    operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper(v1);
    _Unwind_Resume(a1);
  }

LABEL_15:
  *(v2 + 648) = v13;
  operator delete(v13);
  operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper(v1);
  _Unwind_Resume(a1);
}

void sub_23CB5CAAC()
{
  operations_research::sat::DisjunctiveOverloadChecker::~DisjunctiveOverloadChecker((v0 + 792));
  if (!*(v0 + 768))
  {
    JUMPOUT(0x23CB5CA00);
  }

  JUMPOUT(0x23CB5C9F8);
}

void sub_23CB5CAC4()
{
  if (!*(v0 + 768))
  {
    JUMPOUT(0x23CB5CA00);
  }

  JUMPOUT(0x23CB5C9F8);
}

void operations_research::sat::DisjunctiveEdgeFinding::~DisjunctiveEdgeFinding(operations_research::sat::DisjunctiveEdgeFinding *this)
{
  *this = &unk_284F40EF8;
  v2 = *(this + 20);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

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
}

{
  *this = &unk_284F40EF8;
  v2 = *(this + 20);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    *(this + 12) = v5;
    operator delete(v5);
  }

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

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::DisjunctiveNotLast::~DisjunctiveNotLast(operations_research::sat::DisjunctiveNotLast *this)
{
  *this = &unk_284F40EB0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_284F40EB0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::DisjunctiveDetectablePrecedences::~DisjunctiveDetectablePrecedences(operations_research::sat::DisjunctiveDetectablePrecedences *this)
{
  *this = &unk_284F40E68;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

{
  *this = &unk_284F40E68;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::DisjunctiveOverloadChecker::~DisjunctiveOverloadChecker(operations_research::sat::DisjunctiveOverloadChecker *this)
{
  *this = &unk_284F40E20;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C80F7F8B94BLL);
  }
}

{
  *this = &unk_284F40E20;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C80F7F8B94BLL);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::~NonOverlappingRectanglesDisjunctivePropagator(operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator *this)
{
  *this = &unk_284F40B70;
  *(this + 198) = &unk_284F40EF8;
  v2 = *(this + 218);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 215);
  if (v3)
  {
    *(this + 216) = v3;
    operator delete(v3);
  }

  v4 = *(this + 212);
  if (v4)
  {
    *(this + 213) = v4;
    operator delete(v4);
  }

  v5 = *(this + 209);
  if (v5)
  {
    *(this + 210) = v5;
    operator delete(v5);
  }

  v6 = *(this + 204);
  if (v6)
  {
    *(this + 205) = v6;
    operator delete(v6);
  }

  v7 = *(this + 201);
  if (v7)
  {
    *(this + 202) = v7;
    operator delete(v7);
  }

  *(this + 175) = &unk_284F40EF8;
  v8 = *(this + 195);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 192);
  if (v9)
  {
    *(this + 193) = v9;
    operator delete(v9);
  }

  v10 = *(this + 189);
  if (v10)
  {
    *(this + 190) = v10;
    operator delete(v10);
  }

  v11 = *(this + 186);
  if (v11)
  {
    *(this + 187) = v11;
    operator delete(v11);
  }

  v12 = *(this + 181);
  if (v12)
  {
    *(this + 182) = v12;
    operator delete(v12);
  }

  v13 = *(this + 178);
  if (v13)
  {
    *(this + 179) = v13;
    operator delete(v13);
  }

  *(this + 162) = &unk_284F40EB0;
  v14 = *(this + 171);
  if (v14)
  {
    *(this + 172) = v14;
    operator delete(v14);
  }

  v15 = *(this + 166);
  if (v15)
  {
    *(this + 167) = v15;
    operator delete(v15);
  }

  v16 = *(this + 163);
  if (v16)
  {
    *(this + 164) = v16;
    operator delete(v16);
  }

  *(this + 149) = &unk_284F40EB0;
  v17 = *(this + 158);
  if (v17)
  {
    *(this + 159) = v17;
    operator delete(v17);
  }

  v18 = *(this + 153);
  if (v18)
  {
    *(this + 154) = v18;
    operator delete(v18);
  }

  v19 = *(this + 150);
  if (v19)
  {
    *(this + 151) = v19;
    operator delete(v19);
  }

  *(this + 130) = &unk_284F40E68;
  v20 = *(this + 145);
  if (v20)
  {
    *(this + 146) = v20;
    operator delete(v20);
  }

  v21 = *(this + 140);
  if (v21)
  {
    *(this + 141) = v21;
    operator delete(v21);
  }

  v22 = *(this + 137);
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(this + 134);
  if (v23)
  {
    *(this + 135) = v23;
    operator delete(v23);
  }

  v24 = *(this + 131);
  if (v24)
  {
    *(this + 132) = v24;
    operator delete(v24);
  }

  *(this + 111) = &unk_284F40E68;
  v25 = *(this + 126);
  if (v25)
  {
    *(this + 127) = v25;
    operator delete(v25);
  }

  v26 = *(this + 121);
  if (v26)
  {
    *(this + 122) = v26;
    operator delete(v26);
  }

  v27 = *(this + 118);
  if (v27)
  {
    operator delete(v27);
  }

  v28 = *(this + 115);
  if (v28)
  {
    *(this + 116) = v28;
    operator delete(v28);
  }

  v29 = *(this + 112);
  if (v29)
  {
    *(this + 113) = v29;
    operator delete(v29);
  }

  *(this + 99) = &unk_284F40E20;
  v30 = *(this + 108);
  if (v30)
  {
    *(this + 109) = v30;
    operator delete(v30);
  }

  v31 = *(this + 103);
  if (v31)
  {
    *(this + 104) = v31;
    operator delete(v31);
  }

  v32 = *(this + 102);
  *(this + 102) = 0;
  if (v32)
  {
    MEMORY[0x23EED9440](v32, 0x1000C8052888210);
  }

  v33 = *(this + 101);
  *(this + 101) = 0;
  if (v33)
  {
    MEMORY[0x23EED9440](v33, 0x1000C80F7F8B94BLL);
  }

  v34 = *(this + 96);
  if (v34)
  {
    *(this + 97) = v34;
    operator delete(v34);
  }

  v35 = *(this + 93);
  if (v35)
  {
    *(this + 94) = v35;
    operator delete(v35);
  }

  v36 = *(this + 90);
  if (v36)
  {
    *(this + 91) = v36;
    operator delete(v36);
  }

  if (*(this + 86) >= 2uLL)
  {
    operator delete((*(this + 88) - (*(this + 87) & 1) - 8));
  }

  v37 = *(this + 83);
  if (v37)
  {
    v38 = *(this + 84);
    v39 = *(this + 83);
    if (v38 != v37)
    {
      v40 = *(this + 84);
      do
      {
        v42 = *(v40 - 24);
        v40 -= 24;
        v41 = v42;
        if (v42)
        {
          *(v38 - 16) = v41;
          operator delete(v41);
        }

        v38 = v40;
      }

      while (v40 != v37);
      v39 = *(this + 83);
    }

    *(this + 84) = v37;
    operator delete(v39);
  }

  v43 = *(this + 80);
  if (v43)
  {
    *(this + 81) = v43;
    operator delete(v43);
  }

  operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper((this + 24));
}

{
  operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::~NonOverlappingRectanglesDisjunctivePropagator(this);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::FindBoxesThatMustOverlapAHorizontalLineAndPropagate(operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator *this, char a2, const operations_research::sat::SchedulingConstraintHelper *a3, operations_research::sat::SchedulingConstraintHelper *a4)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(a4, 1);
  if (!result)
  {
    return result;
  }

  v149 = this;
  *(this + 81) = *(this + 80);
  started = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(a4, v9);
  v13 = (v12 - 1);
  if (v12 - 1 >= 0)
  {
    v14 = v13 + 1;
    v15 = (started + 16 * v13 + 8);
    do
    {
      v17 = *(v15 - 2);
      v18 = *(*(a3 + 19) + 4 * v17);
      if (v18 != -1 && ((*(*(*(a3 + 3) + 24) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 & 0x3F ^ 1)) & 1) != 0)
      {
        goto LABEL_4;
      }

      v19 = *(*(a4 + 19) + 4 * v17);
      if (v19 != -1 && ((*(*(*(a4 + 3) + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v19 & 0x3F ^ 1)) & 1) != 0)
      {
        goto LABEL_4;
      }

      if (v18 == -1 || (v20 = v18 >> 6, v21 = *(*(a3 + 3) + 24), v22 = 1 << v18, (*(v21 + 8 * (v18 >> 6)) & (1 << v18)) != 0))
      {
        if (v19 != -1 && ((*(*(*(a4 + 3) + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_4;
        }

        if (v18 == -1)
        {
          goto LABEL_24;
        }

        v21 = *(*(a3 + 3) + 24);
        v20 = v18 >> 6;
        v22 = 1 << v18;
      }

      _ZF = v19 != -1 && (*(v21 + 8 * v20) & v22) == 0;
      if (!_ZF || (v18 != v19 ? (v24 = (*(*(*(a4 + 3) + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) == 0) : (v24 = 0), !v24))
      {
LABEL_24:
        v25 = *v15;
        v26 = *(*(a4 + 31) + 8 * v17);
        if (*v15 < v26)
        {
          LODWORD(v152) = *(v15 - 2);
          *(&v152 + 1) = v25;
          v153 = v26;
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](v149 + 640, &v152);
        }
      }

LABEL_4:
      v15 -= 2;
    }

    while (v14-- > 1);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v149 + 81) - *(v149 + 80)) >> 3) < 2)
  {
    return 1;
  }

  operations_research::sat::ConstructOverlappingSets(1, v149 + 80, v149 + 83, v11);
  *(v149 + 91) = *(v149 + 90);
  v27 = *(v149 + 86);
  v142 = a4;
  v147 = (v149 + 688);
  v144 = a3;
  v141 = a2;
  if (v27 <= 1)
  {
    *(v149 + 87) = 0;
    v28 = v149;
    v29 = *(v149 + 83);
    if (*(v149 + 84) == v29)
    {
      goto LABEL_117;
    }

    goto LABEL_31;
  }

  absl::lts_20240722::container_internal::ClearBackingArray(v149 + 86, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<absl::lts_20240722::Span<int>>,absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,std::equal_to<absl::lts_20240722::Span<int>>,std::allocator<absl::lts_20240722::Span<int>>>::GetPolicyFunctions(void)::value, v27 < 0x80, 1u);
  v28 = v149;
  v29 = *(v149 + 83);
  if (*(v149 + 84) != v29)
  {
LABEL_31:
    v30 = 0;
    v31 = 0;
    v146 = (v28 + 704);
    while (1)
    {
      v143 = v31;
      v32 = (v29 + 24 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = v33 - *v32;
      v36 = v35 >> 2;
      *(v28 + 94) = *(v28 + 93);
      *&v152 = v144;
      v37 = 126 - 2 * __clz(v35 >> 2);
      if (v35 >= 4)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v36 >= 2)
      {
        v42 = 0;
        v43 = *(v144 + 33);
        v44 = (v43 + 8 * *v34);
        v45 = 1;
        v46 = 1;
LABEL_41:
        v48 = -*v44;
        v49 = *(v144 + 34);
        v50 = v34[v45];
        if (*(v49 + 8 * v50) >= v48)
        {
          goto LABEL_40;
        }

        v51 = 1;
        while (1)
        {
          v52 = v46 + v51;
          if (v36 <= v52)
          {
            break;
          }

          v53 = *(v43 + 8 * v50);
          if (v48 <= -v53)
          {
            v48 = -v53;
          }

          v50 = v34[v52];
          ++v51;
          if (*(v49 + 8 * v50) >= v48)
          {
            v46 = v51 + v46 - 1;
            if (v51 <= 1)
            {
              goto LABEL_40;
            }

            v54 = &v34[v42];
            v55 = *(v28 + 94);
            v56 = *(v28 + 95);
            if (v55 < v56)
            {
              *v55 = v54;
              *(v55 + 1) = v51;
              v47 = (v55 + 16);
              goto LABEL_39;
            }

            v57 = *(v28 + 93);
            v58 = v55 - v57;
            v59 = (v55 - v57) >> 4;
            v60 = v59 + 1;
            if ((v59 + 1) >> 60)
            {
              goto LABEL_165;
            }

            v61 = v56 - v57;
            if (v61 >> 3 > v60)
            {
              v60 = v61 >> 3;
            }

            if (v61 >= 0x7FFFFFFFFFFFFFF0)
            {
              v62 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v62 = v60;
            }

            if (v62)
            {
              if (!(v62 >> 60))
              {
                operator new();
              }

              goto LABEL_166;
            }

            v28 = v149;
            v63 = (16 * v59);
            *v63 = v54;
            v63[1] = v51;
            v47 = 16 * v59 + 16;
            memcpy(0, v57, v58);
            *(v149 + 93) = 0;
            *(v149 + 94) = v47;
            *(v149 + 95) = 0;
            if (v57)
            {
              operator delete(v57);
            }

LABEL_39:
            *(v28 + 94) = v47;
            v43 = *(v144 + 33);
LABEL_40:
            v44 = (v43 + 8 * v50);
            v42 = v46++;
            v45 = v46;
            if (v36 <= v46)
            {
              goto LABEL_75;
            }

            goto LABEL_41;
          }
        }

        v64 = v51 + 1;
        if (v51 + 1 > 1)
        {
          v65 = &v34[v42];
          v66 = *(v28 + 94);
          v67 = *(v28 + 95);
          if (v66 >= v67)
          {
            v69 = *(v28 + 93);
            v70 = v66 - v69;
            v71 = (v66 - v69) >> 4;
            v72 = v71 + 1;
            if ((v71 + 1) >> 60)
            {
LABEL_165:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v73 = v67 - v69;
            if (v73 >> 3 > v72)
            {
              v72 = v73 >> 3;
            }

            if (v73 >= 0x7FFFFFFFFFFFFFF0)
            {
              v74 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v74 = v72;
            }

            if (v74)
            {
              if (!(v74 >> 60))
              {
                operator new();
              }

LABEL_166:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v75 = (16 * v71);
            *v75 = v65;
            v75[1] = v64;
            v68 = 16 * v71 + 16;
            memcpy(0, v69, v70);
            *(v149 + 93) = 0;
            *(v149 + 94) = v68;
            *(v149 + 95) = 0;
            v28 = v149;
            if (v69)
            {
              operator delete(v69);
            }
          }

          else
          {
            *v66 = v65;
            *(v66 + 1) = v64;
            v68 = (v66 + 16);
          }

          *(v28 + 94) = v68;
        }
      }

LABEL_75:
      v76 = *(v28 + 93);
      v145 = *(v28 + 94);
      if (v76 != v145)
      {
        break;
      }

LABEL_32:
      v31 = v143 + 1;
      v30 = v143 + 1;
      v29 = *(v28 + 83);
      if (0xAAAAAAAAAAAAAAABLL * ((*(v28 + 84) - v29) >> 3) <= v30)
      {
        goto LABEL_117;
      }
    }

    while (1)
    {
      v78 = *v76;
      v148 = *v76;
      if (*v147 > 1)
      {
        break;
      }

      if (*(v28 + 87) > 1uLL)
      {
        if (4 * *(&v78 + 1) != 4 * *(v28 + 89) || memcmp(*(v149 + 88), v78, 4 * *(&v78 + 1)))
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<absl::lts_20240722::Span<int>>,absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,std::equal_to<absl::lts_20240722::Span<int>>,std::allocator<absl::lts_20240722::Span<int>>>::resize_impl(v147, 3uLL, v39, v40, v41);
        }

        goto LABEL_79;
      }

      *(v28 + 87) = 2;
      *v146 = v78;
      v79 = *(v28 + 91);
      v80 = *(v28 + 92);
      if (v79 >= v80)
      {
LABEL_104:
        v103 = *(v28 + 90);
        v104 = v79 - v103;
        v105 = (v79 - v103) >> 4;
        v106 = v105 + 1;
        if ((v105 + 1) >> 60)
        {
          goto LABEL_165;
        }

        v107 = v80 - v103;
        if (v107 >> 3 > v106)
        {
          v106 = v107 >> 3;
        }

        if (v107 >= 0x7FFFFFFFFFFFFFF0)
        {
          v108 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v108 = v106;
        }

        if (v108)
        {
          if (!(v108 >> 60))
          {
            operator new();
          }

          goto LABEL_166;
        }

        v109 = v105;
        v110 = (16 * v105);
        v111 = &v110[-v109];
        *v110 = v78;
        v77 = v110 + 1;
        memcpy(v111, v103, v104);
        *(v28 + 90) = v111;
        *(v28 + 91) = v77;
        *(v28 + 92) = 0;
        if (v103)
        {
          operator delete(v103);
        }

        goto LABEL_78;
      }

LABEL_77:
      *v79 = v78;
      v77 = v79 + 16;
LABEL_78:
      *(v28 + 91) = v77;
LABEL_79:
      ++v76;
      v28 = v149;
      if (v76 == v145)
      {
        goto LABEL_32;
      }
    }

    _X8 = *v146;
    __asm { PRFM            #4, [X8] }

    v86 = *v76;
    v87 = 4 * *(&v78 + 1);
    if ((4 * *(&v78 + 1)) < 0x11)
    {
      if (v87 >= 9)
      {
        v89 = __ROR8__(*v78, 53);
        v90 = ((((*(v78 + v87 - 8) ^ 0x9DDFEA0B63F465D9) * (v89 + 0x9DDFEA0B63F465D9)) >> 64) ^ ((*(v78 + v87 - 8) ^ 0x9DDFEA0B63F465D9) * (v89 + 0x9DDFEA0B63F465D9)));
LABEL_95:
        v91 = 0;
        v92 = (((v90 + *(&v86 + 1)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v90 + *(&v86 + 1)));
        v93 = *v146;
        v94 = *v147;
        v95 = vdup_n_s8(v92 & 0x7F);
        v96 = ((v92 >> 7) ^ (*v146 >> 12)) & *v147;
        v97 = *(*v146 + v96);
        v98 = vceq_s8(v97, v95);
        if (!v98)
        {
          goto LABEL_100;
        }

LABEL_96:
        v99 = *(v149 + 89);
        do
        {
          v100 = v99 + 16 * ((v96 + (__clz(__rbit64(v98)) >> 3)) & v94);
          if (v87 == 4 * *(v100 + 8) && !memcmp(*v100, v86, v87))
          {
            goto LABEL_79;
          }

          v98 &= ((v98 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v98);
LABEL_100:
        while (1)
        {
          v101 = vceq_s8(v97, 0x8080808080808080);
          if (v101)
          {
            break;
          }

          v91 += 8;
          v96 = (v91 + v96) & v94;
          v97 = *(v93 + v96);
          v98 = vceq_s8(v97, v95);
          if (v98)
          {
            goto LABEL_96;
          }
        }

        inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v147, v92, (v96 + (__clz(__rbit64(v101)) >> 3)) & v94, v91, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<absl::lts_20240722::Span<int>>,absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,std::equal_to<absl::lts_20240722::Span<int>>,std::allocator<absl::lts_20240722::Span<int>>>::GetPolicyFunctions(void)::value);
        v28 = v149;
        v78 = v148;
        *(*(v149 + 89) + 16 * inserted) = v148;
        v79 = *(v149 + 91);
        v80 = *(v149 + 92);
        if (v79 >= v80)
        {
          goto LABEL_104;
        }

        goto LABEL_77;
      }

      if (!v87)
      {
        v90 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
        goto LABEL_95;
      }

      v88 = (*(v78 + v87 - 4) << (32 * BYTE8(v78) - 32)) | *v78;
    }

    else
    {
      if (v87 >= 0x401)
      {
        v90 = absl::lts_20240722::hash_internal::MixingHashState::CombineLargeContiguousImpl64(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v78, (4 * *(&v78 + 1)), v40, v41);
        goto LABEL_95;
      }

      v88 = absl::lts_20240722::hash_internal::MixingHashState::LowLevelHashImpl(v78, (4 * *(&v78 + 1)), v39, v40, v41);
    }

    v90 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v88) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v88)));
    goto LABEL_95;
  }

LABEL_117:
  v112 = *(v28 + 90);
  v113 = *(v28 + 91);
  if (v112 == v113)
  {
    return 1;
  }

  if (v142)
  {
    while (1)
    {
      v114 = *v112;
      v115 = v112[1];
      if ((v141 & 1) != 0 || v115 >= 3)
      {
        *(v149 + 71) = 0;
        result = operations_research::sat::SchedulingConstraintHelper::ResetFromSubset(v149 + 1, v144, v114, v115);
        if (!result)
        {
          return result;
        }

        if ((v115 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v117 = *(v142 + 31);
          v116 = *(v142 + 32);
          v118 = 4 * v115;
          v119 = 0x7FFFFFFFFFFFFFFFLL;
          v120 = 0x8000000000000000;
          v121 = v114;
          do
          {
            v123 = *v121++;
            v122 = v123;
            v124 = *(v116 + 8 * v123);
            if (v120 <= -v124)
            {
              v120 = -v124;
            }

            v151 = v120;
            v125 = *(v117 + 8 * v122) - 1;
            if (v125 < v119)
            {
              v119 = v125;
            }

            v150 = v119;
            v118 -= 4;
          }

          while (v118);
          if (v120 > v119)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v119 = 0x7FFFFFFFFFFFFFFFLL;
          v120 = 0x8000000000000000;
        }

        *(v149 + 71) = v142;
        *(v149 + 72) = v114;
        *(v149 + 73) = v115;
        *(v149 + 74) = CanonicalValue;
        if (v141)
        {
          if (-1431655765 * ((*(v149 + 14) - *(v149 + 13)) >> 3) == 2)
          {
            if ((operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::PropagateOnXWhenOnlyTwoBoxes(v149, v127, v128, v129, v130) & 1) == 0)
            {
              return 0;
            }
          }

          else if (!operations_research::sat::DisjunctiveOverloadChecker::Propagate(v149 + 99) || !operations_research::sat::DisjunctiveDetectablePrecedences::Propagate((v149 + 888)) || (operations_research::sat::DisjunctiveDetectablePrecedences::Propagate((v149 + 1040)) & 1) == 0)
          {
            return 0;
          }
        }

        else if (!operations_research::sat::DisjunctiveNotLast::Propagate((v149 + 1192)) || !operations_research::sat::DisjunctiveNotLast::Propagate((v149 + 1296)) || !operations_research::sat::DisjunctiveEdgeFinding::Propagate((v149 + 1584)) || (operations_research::sat::DisjunctiveEdgeFinding::Propagate((v149 + 1400)) & 1) == 0)
        {
          return 0;
        }
      }

      v112 += 2;
      if (v112 == v113)
      {
        return 1;
      }
    }
  }

  v131 = v112[1];
  if ((v141 & 1) == 0 && v131 <= 2)
  {
    v132 = v112 + 2;
    while (v132 != v113)
    {
      v131 = v132[1];
      v132 += 2;
      if (v131 >= 3)
      {
        v112 = v132 - 2;
        goto LABEL_152;
      }
    }

    return 1;
  }

LABEL_152:
  v133 = *v112;
  *(v149 + 71) = 0;
  result = operations_research::sat::SchedulingConstraintHelper::ResetFromSubset(v149 + 1, v144, v133, v131);
  if (result)
  {
    if ((v131 & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_161;
    }

    v134 = 4 * v131;
    v135 = 0x7FFFFFFFFFFFFFFFLL;
    v136 = 0x8000000000000000;
    do
    {
      v138 = *v133++;
      v137 = v138;
      v139 = *(MEMORY[0x100] + 8 * v138);
      if (v136 <= -v139)
      {
        v136 = -v139;
      }

      v151 = v136;
      v140 = *(MEMORY[0xF8] + 8 * v137) - 1;
      if (v140 < v135)
      {
        v135 = v140;
      }

      v150 = v135;
      v134 -= 4;
    }

    while (v134);
    if (v136 <= v135)
    {
LABEL_161:
      operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::FindBoxesThatMustOverlapAHorizontalLineAndPropagate(&v152);
    }

LABEL_164:
    operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::FindBoxesThatMustOverlapAHorizontalLineAndPropagate(&v151, &v150, &v152);
  }

  return result;
}

uint64_t operations_research::sat::anonymous namespace::FindCanonicalValue(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    if (result > 0)
    {
      goto LABEL_3;
    }

    if (a2 > 0)
    {
      return 0;
    }

    if (result < 0)
    {
    }

    else
    {
LABEL_3:
      v2 = a2 & 0xFFFFFFFFFFFFFFFELL;
      if ((a2 & 0xFFFFFFFFFFFFFFFELL) >= result)
      {
        v3 = 0;
        v4 = 62;
        while (--v4)
        {
          v3 = (2 * v3) | 2;
          v5 = v2;
          v2 = (v3 ^ 0xFFFFFFFFFFFFFFFELL) & a2;
          if (v2 < result)
          {
            return v5;
          }
        }

        return v2;
      }

      else
      {
        return a2;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::PropagateOnXWhenOnlyTwoBoxes(operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator *this, uint64_t a2, uint64_t a3, operations_research::sat::SchedulingConstraintHelper *a4, operations_research::sat::SchedulingConstraintHelper *a5)
{
  v6 = *(this + 22);
  v7 = *v6;
  if (v7 != -1 && ((*(*(*(this + 6) + 24) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 1;
  }

  v8 = v6[1];
  if (v8 != -1 && ((*(*(*(this + 6) + 24) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 1;
  }

  v9 = (**(this + 34) <= -*(*(this + 35) + 8)) | (2 * (*(*(this + 34) + 8) <= -**(this + 35)));
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v12 = (this + 24);
      v13 = 1;
      v14 = 0;
    }

    return 1;
  }

  if (v9)
  {
    v12 = (this + 24);
    v13 = 0;
    v14 = 1;
  }

  return operations_research::sat::SchedulingConstraintHelper::ReportConflict((this + 24));
}

uint64_t operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  operations_research::sat::SchedulingConstraintHelper::SetTimeDirection(this[1], 1);
  operations_research::sat::SchedulingConstraintHelper::SetTimeDirection(this[2], 1);
  v2 = *(this[78] + 136);
  v3 = *(this + 158);
  result = operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::FindBoxesThatMustOverlapAHorizontalLineAndPropagate(this, v2 == v3, this[1], this[2]);
  if (result)
  {
    v6 = this[1];
    v5 = this[2];

    return operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator::FindBoxesThatMustOverlapAHorizontalLineAndPropagate(this, v2 == v3, v5, v6);
  }

  return result;
}

void operations_research::sat::anonymous namespace::ClearAndAddMandatoryOverlapReason(operations_research::sat::_anonymous_namespace_ *this, int a2, operations_research::sat::SchedulingConstraintHelper *a3, operations_research::sat::SchedulingConstraintHelper *a4)
{
  v6 = this;
  operations_research::sat::SchedulingConstraintHelper::ClearReason(a3);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, v6);
  v7 = *(*(a3 + 19) + 4 * v6);
  if (v7 != -1)
  {
    v9 = v7 ^ 1;
    std::vector<int>::push_back[abi:ne200100](a3 + 496, &v9);
  }

  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, a2);
  v8 = *(*(a3 + 19) + 4 * a2);
  if (v8 != -1)
  {
    v10 = v8 ^ 1;
    std::vector<int>::push_back[abi:ne200100](a3 + 496, &v10);
  }

  operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(a3, v6, a2);
  operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(a3, a2, v6);
}

uint64_t operations_research::sat::anonymous namespace::LeftBoxBeforeRightBoxOnFirstDimension(operations_research::sat::_anonymous_namespace_ *this, int a2, operations_research::sat::SchedulingConstraintHelper *a3, operations_research::sat::SchedulingConstraintHelper *a4, operations_research::sat::SchedulingConstraintHelper *a5)
{
  v9 = this;
  v10 = *(*(a3 + 31) + 8 * this);
  v11 = a2;
  if (v10 <= *(*(a3 + 30) + 8 * a2))
  {
    goto LABEL_14;
  }

  operations_research::sat::SchedulingConstraintHelper::ClearReason(a3);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, this);
  v12 = *(*(a3 + 19) + 4 * v9);
  if (v12 != -1)
  {
    v34 = v12 ^ 1;
    std::vector<int>::push_back[abi:ne200100](a3 + 496, &v34);
  }

  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, a2);
  v13 = *(*(a3 + 19) + 4 * v11);
  if (v13 != -1)
  {
    v34 = v13 ^ 1;
    std::vector<int>::push_back[abi:ne200100](a3 + 496, &v34);
  }

  operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(a3, this, a2);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, this);
  v14 = *(a3 + 25);
  v15 = *(a3 + 22);
  v16 = *(a3 + 16) + 24 * v9;
  if (*v16 == -1)
  {
    v19 = 0;
    v18 = -1;
  }

  else
  {
    v17 = *(v16 + 8);
    v18 = *v16 ^ (v17 >> 63) ^ 1;
    if (v17 >= 0)
    {
      v19 = *(v16 + 8);
    }

    else
    {
      v19 = -v17;
    }
  }

  v20 = *(v16 + 16);
  v34 = v18;
  v35 = v19;
  v36 = -v20;
  operations_research::sat::SchedulingConstraintHelper::AddGenericReason(a3, (v14 + 24 * v9), -v10, (v15 + 24 * v9), &v34);
  if (a4)
  {
    operations_research::sat::SchedulingConstraintHelper::ImportOtherReasons(a3, a4);
  }

  result = operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(a3, a2, v10);
  if (result)
  {
LABEL_14:
    v23 = -*(*(a3 + 32) + 8 * v11);
    if (v23 >= -*(*(a3 + 33) + 8 * v9))
    {
      return 1;
    }

    operations_research::sat::SchedulingConstraintHelper::ClearReason(a3);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, this);
    v24 = *(*(a3 + 19) + 4 * v9);
    if (v24 != -1)
    {
      v34 = v24 ^ 1;
      std::vector<int>::push_back[abi:ne200100](a3 + 496, &v34);
    }

    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, a2);
    v25 = *(*(a3 + 19) + 4 * v11);
    if (v25 != -1)
    {
      v34 = v25 ^ 1;
      std::vector<int>::push_back[abi:ne200100](a3 + 496, &v34);
    }

    operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(a3, this, a2);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a3, a2);
    v26 = *(a3 + 10);
    v27 = *(a3 + 13);
    v28 = *(a3 + 16) + 24 * v11;
    if (*v28 == -1)
    {
      v31 = 0;
      v30 = -1;
    }

    else
    {
      v29 = *(v28 + 8);
      v30 = *v28 ^ (v29 >> 63) ^ 1;
      v31 = v29 >= 0 ? *(v28 + 8) : -v29;
    }

    v32 = *(v28 + 16);
    v34 = v30;
    v35 = v31;
    v36 = -v32;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(a3, (v26 + 24 * v11), v23, (v27 + 24 * v11), &v34);
    if (a4)
    {
      operations_research::sat::SchedulingConstraintHelper::ImportOtherReasons(a3, a4);
    }

    result = operations_research::sat::SchedulingConstraintHelper::DecreaseEndMax(a3, this, v23);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void operations_research::sat::RectanglePairwisePropagator::~RectanglePairwisePropagator(operations_research::sat::RectanglePairwisePropagator *this)
{
  *this = &unk_284F40BA0;
  if (dword_27E25CD50 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::RectanglePairwisePropagator::~RectanglePairwisePropagator()::$_0::operator() const(void)::site, dword_27E25CD50))
  {
    operator new();
  }

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

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }
}

{
  operations_research::sat::RectanglePairwisePropagator::~RectanglePairwisePropagator(this);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::RectanglePairwisePropagator::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[1], 1);
  if (result)
  {
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[2], 1);
    if (result)
    {
      v4 = (this + 11);
      v3 = this[11];
      this[5] = (this[5] + 1);
      this[12] = v3;
      v105 = (this + 14);
      this[15] = this[14];
      this[18] = this[17];
      v5 = this[8];
      this[9] = v5;
      v6 = this[1];
      if ((-1431655765 * ((*(v6 + 11) - *(v6 + 10)) >> 3)) < 1)
      {
        v64 = v5;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v19 = *(*(v6 + 19) + 4 * v8);
          if (v19 == -1 || ((*(*(*(v6 + 3) + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) != 0)
          {
            v20 = this[2];
            v21 = *(*(v20 + 19) + 4 * v8);
            if (v21 == -1 || ((*(*(*(v20 + 3) + 24) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1) != 0)
            {
              v22 = (*(v6 + 16) + v7);
              v23 = *(v22 + 2);
              if (*v22 != -1)
              {
                v23 -= *(*(*(v6 + 4) + 40) + ((8 * *v22) ^ 8)) * *(v22 + 1);
              }

              v24 = (*(v20 + 16) + v7);
              v25 = *(v24 + 2);
              if (*v24 != -1)
              {
                v25 -= *(*(*(v20 + 4) + 40) + ((8 * *v24) ^ 8)) * *(v24 + 1);
              }

              if (v23)
              {
                if (v25)
                {
                  v26 = this[9];
                  v27 = this[10];
                  if (v26 < v27)
                  {
                    *(v26 + 8) = 0;
                    *(v26 + 2) = 0u;
                    *(v26 + 3) = 0u;
                    v9 = (v26 + 72);
                    *v26 = 0u;
                    *(v26 + 1) = 0u;
                  }

                  else
                  {
                    v28 = this[8];
                    v29 = v26 - v28;
                    v30 = 0x8E38E38E38E38E39 * ((v26 - v28) >> 3);
                    v31 = v30 + 1;
                    if (v30 + 1 > 0x38E38E38E38E38ELL)
                    {
                      goto LABEL_116;
                    }

                    v32 = 0x8E38E38E38E38E39 * ((v27 - v28) >> 3);
                    if (2 * v32 > v31)
                    {
                      v31 = 2 * v32;
                    }

                    if (v32 >= 0x1C71C71C71C71C7)
                    {
                      v33 = 0x38E38E38E38E38ELL;
                    }

                    else
                    {
                      v33 = v31;
                    }

                    if (v33)
                    {
                      if (v33 <= 0x38E38E38E38E38ELL)
                      {
                        operator new();
                      }

                      goto LABEL_117;
                    }

                    v50 = 72 * v30;
                    *(v50 + 64) = 0;
                    *(v50 + 32) = 0u;
                    *(v50 + 48) = 0u;
                    *v50 = 0u;
                    *(v50 + 16) = 0u;
                    v9 = (72 * v30 + 72);
                    v51 = (v50 - v29);
                    memcpy((v50 - v29), v28, v29);
                    this[8] = v51;
                    this[9] = v9;
                    this[10] = 0;
                    if (v28)
                    {
                      operator delete(v28);
                    }
                  }

                  this[9] = v9;
                }

                else
                {
                  v36 = this[12];
                  v37 = this[13];
                  if (v36 >= v37)
                  {
                    v45 = *v4;
                    v46 = v36 - *v4;
                    v47 = 0x8E38E38E38E38E39 * (v46 >> 3) + 1;
                    if (v47 > 0x38E38E38E38E38ELL)
                    {
                      goto LABEL_116;
                    }

                    v48 = 0x8E38E38E38E38E39 * ((v37 - v45) >> 3);
                    if (2 * v48 > v47)
                    {
                      v47 = 2 * v48;
                    }

                    if (v48 >= 0x1C71C71C71C71C7)
                    {
                      v49 = 0x38E38E38E38E38ELL;
                    }

                    else
                    {
                      v49 = v47;
                    }

                    if (v49)
                    {
                      if (v49 <= 0x38E38E38E38E38ELL)
                      {
                        operator new();
                      }

                      goto LABEL_117;
                    }

                    v60 = 8 * (v46 >> 3);
                    *(v60 + 64) = 0;
                    *(v60 + 32) = 0u;
                    *(v60 + 48) = 0u;
                    *v60 = 0u;
                    *(v60 + 16) = 0u;
                    v9 = (v60 + 72);
                    v61 = (v60 - v46);
                    memcpy((v60 - v46), v45, v46);
                    this[11] = v61;
                    this[12] = v9;
                    this[13] = 0;
                    if (v45)
                    {
                      operator delete(v45);
                    }

                    this[12] = v9;
                  }

                  else
                  {
                    *(v36 + 8) = 0;
                    *(v36 + 2) = 0u;
                    *(v36 + 3) = 0u;
                    v9 = (v36 + 72);
                    *v36 = 0u;
                    *(v36 + 1) = 0u;
                    this[12] = (v36 + 72);
                  }
                }
              }

              else if (v25)
              {
                v34 = this[15];
                v35 = this[16];
                if (v34 >= v35)
                {
                  v40 = *v105;
                  v41 = v34 - *v105;
                  v42 = 0x8E38E38E38E38E39 * (v41 >> 3) + 1;
                  if (v42 > 0x38E38E38E38E38ELL)
                  {
                    goto LABEL_116;
                  }

                  v43 = 0x8E38E38E38E38E39 * ((v35 - v40) >> 3);
                  if (2 * v43 > v42)
                  {
                    v42 = 2 * v43;
                  }

                  if (v43 >= 0x1C71C71C71C71C7)
                  {
                    v44 = 0x38E38E38E38E38ELL;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  if (v44)
                  {
                    if (v44 <= 0x38E38E38E38E38ELL)
                    {
                      operator new();
                    }

                    goto LABEL_117;
                  }

                  v58 = 8 * (v41 >> 3);
                  *(v58 + 64) = 0;
                  *(v58 + 32) = 0u;
                  *(v58 + 48) = 0u;
                  *v58 = 0u;
                  *(v58 + 16) = 0u;
                  v9 = (v58 + 72);
                  v59 = (v58 - v41);
                  memcpy((v58 - v41), v40, v41);
                  this[14] = v59;
                  this[15] = v9;
                  this[16] = 0;
                  if (v40)
                  {
                    operator delete(v40);
                  }

                  this[15] = v9;
                }

                else
                {
                  *(v34 + 8) = 0;
                  *(v34 + 2) = 0u;
                  *(v34 + 3) = 0u;
                  v9 = (v34 + 72);
                  *v34 = 0u;
                  *(v34 + 1) = 0u;
                  this[15] = (v34 + 72);
                }
              }

              else
              {
                v38 = this[18];
                v39 = this[19];
                if (v38 >= v39)
                {
                  v52 = this[17];
                  v53 = v38 - v52;
                  v54 = 0x8E38E38E38E38E39 * ((v38 - v52) >> 3);
                  v55 = v54 + 1;
                  if (v54 + 1 > 0x38E38E38E38E38ELL)
                  {
LABEL_116:
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v56 = 0x8E38E38E38E38E39 * ((v39 - v52) >> 3);
                  if (2 * v56 > v55)
                  {
                    v55 = 2 * v56;
                  }

                  if (v56 >= 0x1C71C71C71C71C7)
                  {
                    v57 = 0x38E38E38E38E38ELL;
                  }

                  else
                  {
                    v57 = v55;
                  }

                  if (v57)
                  {
                    if (v57 <= 0x38E38E38E38E38ELL)
                    {
                      operator new();
                    }

LABEL_117:
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v62 = 72 * v54;
                  *(v62 + 64) = 0;
                  *(v62 + 32) = 0u;
                  *(v62 + 48) = 0u;
                  *v62 = 0u;
                  *(v62 + 16) = 0u;
                  v9 = (72 * v54 + 72);
                  v63 = (v62 - v53);
                  memcpy((v62 - v53), v52, v53);
                  this[17] = v63;
                  this[18] = v9;
                  this[19] = 0;
                  if (v52)
                  {
                    operator delete(v52);
                  }

                  this[18] = v9;
                }

                else
                {
                  *(v38 + 8) = 0;
                  *(v38 + 2) = 0u;
                  *(v38 + 3) = 0u;
                  v9 = (v38 + 72);
                  *v38 = 0u;
                  *(v38 + 1) = 0u;
                  this[18] = (v38 + 72);
                }
              }

              v6 = this[1];
              v10 = this[2];
              v11 = *(*(v6 + 30) + 8 * v8);
              v12 = -*(*(v6 + 32) + 8 * v8);
              v13 = *(*(v6 + 31) + 8 * v8);
              v14 = -*(*(v6 + 33) + 8 * v8);
              v15 = *(*(v10 + 30) + 8 * v8);
              v16 = -*(*(v10 + 32) + 8 * v8);
              v17 = *(*(v10 + 31) + 8 * v8);
              v18 = -*(*(v10 + 33) + 8 * v8);
              *(v9 - 18) = v8;
              *(v9 - 8) = v11;
              *(v9 - 7) = v12;
              *(v9 - 6) = v13;
              *(v9 - 5) = v14;
              *(v9 - 4) = v15;
              *(v9 - 3) = v16;
              *(v9 - 2) = v17;
              *(v9 - 1) = v18;
            }
          }

          ++v8;
          v7 += 24;
        }

        while (v8 < (-1431655765 * ((*(v6 + 11) - *(v6 + 10)) >> 3)));
        v5 = this[8];
        v64 = this[9];
      }

      __p = 0;
      v107 = 0;
      v108 = 0;
      v65 = 0x8E38E38E38E38E39 * ((v64 - v5) >> 3);
      if (*(this[4] + 239) >= ((v65 - 1) * v65) >> 1)
      {
        operations_research::sat::AppendPairwiseRestrictions(v5, v65, &__p);
        v88 = __p;
        v87 = v107;
        while (v88 != v87)
        {
          if (!v88[2])
          {
            result = operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(this, v88, v84, v85, v86);
            if (!result)
            {
              goto LABEL_113;
            }
          }

          v88 += 3;
        }
      }

      v66 = this[8];
      v67 = 0x8E38E38E38E38E39 * ((this[9] - v66) >> 3);
      v68 = this[11];
      v69 = 0x8E38E38E38E38E39 * ((this[12] - v68) >> 3);
      if (v69 * v67 <= *(this[4] + 239))
      {
        operations_research::sat::AppendPairwiseRestrictions(v66, v67, v68, v69, &__p);
        v93 = __p;
        v92 = v107;
        while (v93 != v92)
        {
          if (!v93[2])
          {
            result = operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(this, v93, v89, v90, v91);
            if (!result)
            {
              goto LABEL_113;
            }
          }

          v93 += 3;
        }
      }

      v70 = this[8];
      v71 = 0x8E38E38E38E38E39 * ((this[9] - v70) >> 3);
      v72 = this[14];
      v73 = 0x8E38E38E38E38E39 * ((this[15] - v72) >> 3);
      if (v73 * v71 <= *(this[4] + 239))
      {
        operations_research::sat::AppendPairwiseRestrictions(v70, v71, v72, v73, &__p);
        v98 = __p;
        v97 = v107;
        while (v98 != v97)
        {
          if (!v98[2])
          {
            result = operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(this, v98, v94, v95, v96);
            if (!result)
            {
              goto LABEL_113;
            }
          }

          v98 += 3;
        }
      }

      v74 = this[8];
      v75 = 0x8E38E38E38E38E39 * ((this[9] - v74) >> 3);
      v76 = this[17];
      v77 = 0x8E38E38E38E38E39 * ((this[18] - v76) >> 3);
      if (v77 * v75 <= *(this[4] + 239))
      {
        operations_research::sat::AppendPairwiseRestrictions(v74, v75, v76, v77, &__p);
        v103 = __p;
        v102 = v107;
        while (v103 != v102)
        {
          if (!v103[2])
          {
            result = operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(this, v103, v99, v100, v101);
            if (!result)
            {
              goto LABEL_113;
            }
          }

          v103 += 3;
        }
      }

      result = operations_research::sat::RectanglePairwisePropagator::FindRestrictionsAndPropagateConflict(this, v105, this + 11, &__p);
      if (result)
      {
        v81 = __p;
        v82 = v107;
        if (__p == v107)
        {
          result = 1;
        }

        else
        {
          do
          {
            result = operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(this, v81, v78, v79, v80);
            v81 += 3;
            if (v81 == v82)
            {
              v83 = 0;
            }

            else
            {
              v83 = result;
            }
          }

          while ((v83 & 1) != 0);
        }
      }

LABEL_113:
      if (__p)
      {
        v107 = __p;
        v104 = result;
        operator delete(__p);
        return v104;
      }
    }
  }

  return result;
}

void sub_23CB5EE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::RectanglePairwisePropagator::FindRestrictionsAndPropagateConflict(void *a1, uint64_t *a2, uint64_t *a3, unsigned int **a4)
{
  v6 = *(a1[4] + 956);
  v7 = *a2;
  v8 = 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3);
  v9 = *a3;
  v11 = 0x8E38E38E38E38E39 * ((a3[1] - v9) >> 3);
  if (v11 * v8 <= v6)
  {
    operations_research::sat::AppendPairwiseRestrictions(v7, v8, v9, v11, a4);
    v17 = *a4;
    v16 = a4[1];
    while (v17 != v16)
    {
      if (!v17[2])
      {
        result = operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(a1, v17, v13, v14, v15);
        if (!result)
        {
          return result;
        }
      }

      v17 += 3;
    }
  }

  return 1;
}

uint64_t operations_research::sat::RectanglePairwisePropagator::PropagateTwoBoxes(void *a1, unsigned int *a2, uint64_t a3, operations_research::sat::SchedulingConstraintHelper *a4, operations_research::sat::SchedulingConstraintHelper *a5)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      ++a1[7];
      v9 = a1[1];
      v8 = a1[2];
LABEL_10:
      v10 = v6;
      v11 = v5;
    }

    if (v7 != 3)
    {
      if (v7 == 4)
      {
        ++a1[7];
        v8 = a1[1];
        v9 = a1[2];
        goto LABEL_10;
      }

      return 0;
    }

    ++a1[7];
    v8 = a1[1];
    v9 = a1[2];
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      return 0;
    }

    ++a1[7];
    v9 = a1[1];
    v8 = a1[2];
LABEL_14:
    v10 = v5;
    v11 = v6;
  }

  ++a1[6];
  v13 = a1[1];
  v14 = a1[2];
  operations_research::sat::SchedulingConstraintHelper::ImportOtherReasons(v13, v14);

  return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v13);
}

uint64_t std::vector<operations_research::sat::LinearExpression>::__emplace_back_slow_path<operations_research::sat::LinearExpression const&>(uint64_t *a1, const operations_research::sat::LinearExpression *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  __p = 0;
  v14 = 56 * v2;
  v16 = 0;
  operations_research::sat::LinearExpression::LinearExpression((56 * v2), a2);
  v15 = 56 * v2 + 56;
  std::vector<operations_research::sat::LinearExpression>::__swap_out_circular_buffer(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 56);
    v15 -= 56;
    v10 = *(v8 - 32);
    if (v10)
    {
      *(v8 - 24) = v10;
      operator delete(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 48) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_23CB5F1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::LinearExpression>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::DisjunctiveOverloadChecker::DisjunctiveOverloadChecker(operations_research::sat::DisjunctiveOverloadChecker *this, operations_research::sat::SchedulingConstraintHelper *a2)
{
  *this = &unk_284F40E20;
  *(this + 1) = a2;
  operator new[]();
}

void sub_23CB5F318(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = v1[3];
    v1[3] = 0;
    if (!v5)
    {
LABEL_3:
      v6 = v1[2];
      v1[2] = 0;
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = v1[3];
    v1[3] = 0;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  v7 = v1[2];
  v1[2] = 0;
  if (!v7)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  MEMORY[0x23EED9440]();
  _Unwind_Resume(exception_object);
}

operations_research::sat::DisjunctiveDetectablePrecedences *operations_research::sat::DisjunctiveDetectablePrecedences::DisjunctiveDetectablePrecedences(operations_research::sat::DisjunctiveDetectablePrecedences *this, char a2, operations_research::sat::SchedulingConstraintHelper *a3)
{
  *this = &unk_284F40E68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = a2;
  *(this + 14) = a3;
  v4 = *(a3 + 10);
  v3 = *(a3 + 11);
  *(this + 15) = 0;
  v5 = -1431655765 * ((v3 - v4) >> 3);
  *(this + 36) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_23CB5F4A4(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[16] = v5;
    operator delete(v5);
    v6 = v1[10];
    if (!v6)
    {
LABEL_3:
      v7 = v1[7];
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = v1[10];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v1[11] = v6;
  operator delete(v6);
  v7 = v1[7];
  if (!v7)
  {
LABEL_4:
    v8 = v1[4];
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(v7);
  v8 = v1[4];
  if (!v8)
  {
LABEL_5:
    v9 = *v2;
    if (!*v2)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  v1[5] = v8;
  operator delete(v8);
  v9 = *v2;
  if (!*v2)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  v1[2] = v9;
  operator delete(v9);
  _Unwind_Resume(exception_object);
}

operations_research::sat::DisjunctiveNotLast *operations_research::sat::DisjunctiveNotLast::DisjunctiveNotLast(operations_research::sat::DisjunctiveNotLast *this, char a2, operations_research::sat::SchedulingConstraintHelper *a3)
{
  *this = &unk_284F40EB0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = a2;
  *(this + 8) = a3;
  v4 = *(a3 + 10);
  v3 = *(a3 + 11);
  *(this + 9) = 0;
  v5 = -1431655765 * ((v3 - v4) >> 3);
  *(this + 24) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_23CB5F61C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  operations_research::sat::DisjunctiveNotLast::DisjunctiveNotLast((v1 + 32), (v1 + 8), v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::SchedulingConstraintHelper::~SchedulingConstraintHelper(operations_research::sat::SchedulingConstraintHelper *this)
{
  *this = &unk_284F43530;
  *(this + 1) = &unk_284F43568;
  v2 = *(this + 72);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 65);
  if (v3)
  {
    *(this + 66) = v3;
    operator delete(v3);
  }

  v4 = *(this + 62);
  if (v4)
  {
    *(this + 63) = v4;
    operator delete(v4);
  }

  v5 = *(this + 59);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 55);
  if (v6)
  {
    *(this + 56) = v6;
    operator delete(v6);
  }

  v7 = *(this + 52);
  if (v7)
  {
    *(this + 53) = v7;
    operator delete(v7);
  }

  v8 = *(this + 49);
  if (v8)
  {
    *(this + 50) = v8;
    operator delete(v8);
  }

  v9 = *(this + 45);
  if (v9)
  {
    *(this + 46) = v9;
    operator delete(v9);
  }

  v10 = *(this + 42);
  if (v10)
  {
    *(this + 43) = v10;
    operator delete(v10);
  }

  v11 = *(this + 39);
  if (v11)
  {
    *(this + 40) = v11;
    operator delete(v11);
  }

  v12 = *(this + 36);
  if (v12)
  {
    *(this + 37) = v12;
    operator delete(v12);
  }

  v13 = *(this + 35);
  *(this + 35) = 0;
  if (v13)
  {
    MEMORY[0x23EED9440](v13, 0x1000C8000313F17);
  }

  v14 = *(this + 34);
  *(this + 34) = 0;
  if (v14)
  {
    MEMORY[0x23EED9440](v14, 0x1000C8000313F17);
  }

  v15 = *(this + 33);
  *(this + 33) = 0;
  if (v15)
  {
    MEMORY[0x23EED9440](v15, 0x1000C8000313F17);
  }

  v16 = *(this + 32);
  *(this + 32) = 0;
  if (v16)
  {
    MEMORY[0x23EED9440](v16, 0x1000C8000313F17);
  }

  v17 = *(this + 31);
  *(this + 31) = 0;
  if (v17)
  {
    MEMORY[0x23EED9440](v17, 0x1000C8000313F17);
  }

  v18 = *(this + 30);
  *(this + 30) = 0;
  if (v18)
  {
    MEMORY[0x23EED9440](v18, 0x1000C8000313F17);
  }

  v19 = *(this + 29);
  *(this + 29) = 0;
  if (v19)
  {
    MEMORY[0x23EED9440](v19, 0x1000C8000313F17);
  }

  v20 = *(this + 25);
  if (v20)
  {
    *(this + 26) = v20;
    operator delete(v20);
  }

  v21 = *(this + 22);
  if (v21)
  {
    *(this + 23) = v21;
    operator delete(v21);
  }

  v22 = *(this + 19);
  if (v22)
  {
    *(this + 20) = v22;
    operator delete(v22);
  }

  v23 = *(this + 16);
  if (v23)
  {
    *(this + 17) = v23;
    operator delete(v23);
  }

  v24 = *(this + 13);
  if (v24)
  {
    *(this + 14) = v24;
    operator delete(v24);
  }

  v25 = *(this + 10);
  if (v25)
  {
    *(this + 11) = v25;
    operator delete(v25);
  }

  v26 = *(this + 7);
  if (v26)
  {
    *(this + 8) = v26;
    operator delete(v26);
  }
}

int *std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::SplitDisjointBoxes(operations_research::sat::SchedulingConstraintHelper const&,absl::lts_20240722::Span<int>,std::vector<absl::lts_20240722::Span<int>> *)::$_0 &,int *,false>(int *result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v89 = *(a2 - 1);
      v90 = *v10;
      if (*(*(*a3 + 272) + 8 * v89) < *(*(*a3 + 272) + 8 * v90))
      {
        *v10 = v89;
        *(a2 - 1) = v90;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v109 = *a3;
      if (a5)
      {
        if (v10 != a2)
        {
          v110 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v111 = 0;
            v112 = *(v109 + 272);
            v113 = v10;
            do
            {
              v116 = *v113;
              v115 = v113[1];
              v113 = v110;
              v117 = *(v112 + 8 * v115);
              if (v117 < *(v112 + 8 * v116))
              {
                v118 = v111;
                do
                {
                  *(v10 + v118 + 4) = v116;
                  if (!v118)
                  {
                    v114 = v10;
                    goto LABEL_122;
                  }

                  v116 = *(v10 + v118 - 4);
                  v118 -= 4;
                }

                while (v117 < *(v112 + 8 * v116));
                v114 = (v10 + v118 + 4);
LABEL_122:
                *v114 = v115;
              }

              v110 = v113 + 1;
              v111 += 4;
            }

            while (v113 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v155 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v156 = *(v109 + 272);
          do
          {
            v158 = *v9;
            v157 = v9[1];
            v9 = v155;
            v159 = *(v156 + 8 * v157);
            if (v159 < *(v156 + 8 * v158))
            {
              v160 = v9;
              do
              {
                *v160 = v158;
                v158 = *(v160 - 2);
                --v160;
              }

              while (v159 < *(v156 + 8 * v158));
              *v160 = v157;
            }

            v155 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v119 = (v11 - 2) >> 1;
        v120 = *a3;
        v121 = v119;
        do
        {
          v123 = 4 * v121;
          if (v119 >= (4 * v121) >> 2)
          {
            v124 = (v123 >> 1) | 1;
            v125 = &v10[v124];
            v126 = *v125;
            if ((v123 >> 1) + 2 >= v11)
            {
              v127 = *(v120 + 272);
              v128 = &v10[v123 / 4];
              v129 = v10[v121];
              v130 = *(v127 + 8 * v129);
              if (*(v127 + 8 * v126) >= v130)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v127 = *(v120 + 272);
              if (*(v127 + 8 * v126) < *(v127 + 8 * v125[1]))
              {
                v126 = v125[1];
                ++v125;
                v124 = (v123 >> 1) + 2;
              }

              v128 = &v10[v123 / 4];
              v129 = v10[v121];
              v130 = *(v127 + 8 * v129);
              if (*(v127 + 8 * v126) >= v130)
              {
LABEL_145:
                while (1)
                {
                  v131 = v125;
                  *v128 = v126;
                  if (v119 < v124)
                  {
                    break;
                  }

                  v132 = (2 * v124) | 1;
                  v125 = &v10[v132];
                  v124 = 2 * v124 + 2;
                  v126 = *v125;
                  if (v124 < v11)
                  {
                    if (*(v127 + 8 * v126) >= *(v127 + 8 * v125[1]))
                    {
                      v124 = v132;
                    }

                    else
                    {
                      v126 = v125[1];
                      ++v125;
                    }

                    v128 = v131;
                    if (*(v127 + 8 * v126) < v130)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v124 = v132;
                    v128 = v131;
                    if (*(v127 + 8 * v126) < v130)
                    {
                      break;
                    }
                  }
                }

                *v131 = v129;
                v120 = *a3;
              }
            }
          }

          v122 = v121-- <= 0;
        }

        while (!v122);
        do
        {
          v133 = 0;
          v134 = *v10;
          v135 = *a3;
          v136 = (v11 - 2) >> 1;
          v137 = v10;
          do
          {
            while (1)
            {
              v142 = &v137[v133];
              v141 = v142 + 1;
              v140 = v142[1];
              result = (2 * v133);
              v143 = (2 * v133) | 1;
              v133 = 2 * v133 + 2;
              if (v133 < v11)
              {
                break;
              }

              v133 = v143;
              *v137 = v140;
              v137 = v142 + 1;
              if (v143 > v136)
              {
                goto LABEL_158;
              }
            }

            v139 = v142[2];
            v138 = v142 + 2;
            result = v139;
            if (*(*(v135 + 272) + 8 * v140) >= *(*(v135 + 272) + 8 * v139))
            {
              v133 = v143;
            }

            else
            {
              v140 = result;
              v141 = v138;
            }

            *v137 = v140;
            v137 = v141;
          }

          while (v133 <= v136);
LABEL_158:
          if (v141 == --a2)
          {
            *v141 = v134;
          }

          else
          {
            *v141 = *a2;
            *a2 = v134;
            v144 = (v141 - v10 + 4) >> 2;
            v122 = v144 < 2;
            v145 = v144 - 2;
            if (!v122)
            {
              v146 = v145 >> 1;
              v147 = &v10[v146];
              v148 = *v147;
              v149 = *v141;
              v150 = *(*a3 + 272);
              v151 = *(v150 + 8 * v149);
              if (*(v150 + 8 * v148) < v151)
              {
                do
                {
                  v152 = v147;
                  *v141 = v148;
                  if (!v146)
                  {
                    break;
                  }

                  v146 = (v146 - 1) >> 1;
                  v147 = &v10[v146];
                  v148 = *v147;
                  v141 = v152;
                }

                while (*(v150 + 8 * v148) < v151);
                *v152 = v149;
              }
            }
          }

          v122 = v11-- <= 2;
        }

        while (!v122);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(*a3 + 272);
    v15 = *(a2 - 1);
    v16 = *(v14 + 8 * v15);
    if (v11 < 0x81)
    {
      v21 = *v10;
      v22 = *v13;
      v23 = *(v14 + 8 * v21);
      v24 = *(v14 + 8 * v22);
      if (v23 < v24)
      {
        if (v16 < v23)
        {
          *v13 = v15;
          goto LABEL_37;
        }

        *v13 = v21;
        *v10 = v22;
        v40 = *(a2 - 1);
        if (*(v14 + 8 * v40) < v24)
        {
          *v10 = v40;
LABEL_37:
          *(a2 - 1) = v22;
        }

LABEL_38:
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 >= v23)
      {
        goto LABEL_38;
      }

      *v10 = v15;
      *(a2 - 1) = v21;
      v27 = *v10;
      v28 = *v13;
      if (*(v14 + 8 * v27) >= *(v14 + 8 * v28))
      {
        goto LABEL_38;
      }

      *v13 = v27;
      *v10 = v28;
      --a4;
      v29 = v28;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      v61 = *(v14 + 8 * v29);
      if (*(v14 + 8 * *(v10 - 1)) < v61)
      {
        goto LABEL_62;
      }

      if (v61 >= *(v14 + 8 * *(a2 - 1)))
      {
        v80 = (v10 + 1);
        do
        {
          v10 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v80 += 4;
        }

        while (v61 >= *(v14 + 8 * *v10));
      }

      else
      {
        do
        {
          v79 = v10[1];
          ++v10;
        }

        while (v61 >= *(v14 + 8 * v79));
      }

      v81 = a2;
      if (v10 < a2)
      {
        v81 = a2;
        do
        {
          v82 = *--v81;
        }

        while (v61 < *(v14 + 8 * v82));
      }

      if (v10 < v81)
      {
        v83 = *v10;
        v84 = *v81;
        do
        {
          *v10 = v84;
          *v81 = v83;
          do
          {
            v85 = v10[1];
            ++v10;
            v83 = v85;
          }

          while (v61 >= *(v14 + 8 * v85));
          do
          {
            v86 = *--v81;
            v84 = v86;
          }

          while (v61 < *(v14 + 8 * v86));
        }

        while (v10 < v81);
      }

      v87 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v87;
      }

      a5 = 0;
      *v87 = v29;
    }

    else
    {
      v17 = *v12;
      v18 = *v10;
      v19 = *(v14 + 8 * v17);
      v20 = *(v14 + 8 * v18);
      if (v19 >= v20)
      {
        if (v16 < v19)
        {
          *v12 = v15;
          *(a2 - 1) = v17;
          v25 = *v12;
          v26 = *v10;
          if (*(v14 + 8 * v25) < *(v14 + 8 * v26))
          {
            *v10 = v25;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v16 >= v19)
        {
          *v10 = v17;
          *v12 = v18;
          v30 = *(a2 - 1);
          if (*(v14 + 8 * v30) >= v20)
          {
            goto LABEL_29;
          }

          *v12 = v30;
        }

        else
        {
          *v10 = v15;
        }

        *(a2 - 1) = v18;
      }

LABEL_29:
      v31 = v12 - 1;
      v32 = *(v12 - 1);
      v33 = v10[1];
      v34 = *(v14 + 8 * v32);
      v35 = *(v14 + 8 * v33);
      v36 = *(a2 - 2);
      v37 = *(v14 + 8 * v36);
      if (v34 >= v35)
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 2) = v32;
          v38 = *v31;
          v39 = v10[1];
          if (*(v14 + 8 * v38) < *(v14 + 8 * v39))
          {
            v10[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 >= v34)
        {
          v10[1] = v32;
          *v31 = v33;
          v41 = *(a2 - 2);
          if (*(v14 + 8 * v41) >= v35)
          {
            goto LABEL_43;
          }

          *v31 = v41;
        }

        else
        {
          v10[1] = v36;
        }

        *(a2 - 2) = v33;
      }

LABEL_43:
      v44 = v12[1];
      v42 = v12 + 1;
      v43 = v44;
      v45 = v10[2];
      v46 = *(v14 + 8 * v44);
      v47 = *(v14 + 8 * v45);
      v48 = *(a2 - 3);
      v49 = *(v14 + 8 * v48);
      if (v46 >= v47)
      {
        if (v49 < v46)
        {
          *v42 = v48;
          *(a2 - 3) = v43;
          v50 = *v42;
          v51 = v10[2];
          if (*(v14 + 8 * v50) < *(v14 + 8 * v51))
          {
            v10[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 >= v46)
        {
          v10[2] = v43;
          *v42 = v45;
          v52 = *(a2 - 3);
          if (*(v14 + 8 * v52) >= v47)
          {
            goto LABEL_52;
          }

          *v42 = v52;
        }

        else
        {
          v10[2] = v48;
        }

        *(a2 - 3) = v45;
      }

LABEL_52:
      v53 = *v13;
      v54 = *v31;
      v55 = *(v14 + 8 * v53);
      v56 = *(v14 + 8 * v54);
      v57 = *v42;
      v58 = *(v14 + 8 * v57);
      if (v55 >= v56)
      {
        if (v58 >= v55)
        {
          goto LABEL_60;
        }

        *v13 = v57;
        *v42 = v53;
        v42 = v13;
        LODWORD(v53) = v54;
        if (v58 < v56)
        {
LABEL_59:
          *v31 = v57;
          *v42 = v54;
LABEL_60:
          v60 = *v10;
          *v10 = v53;
          *v13 = v60;
          --a4;
          v29 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v78 = *v10;
        *v10 = v57;
        *v13 = v78;
        --a4;
        v29 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v58 < v55)
      {
        goto LABEL_59;
      }

      *v31 = v53;
      *v13 = v54;
      v31 = v13;
      LODWORD(v53) = v57;
      if (v58 < v56)
      {
        goto LABEL_59;
      }

      v59 = *v10;
      *v10 = v54;
      *v13 = v59;
      --a4;
      v29 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v62 = 0;
      v63 = *(*a3 + 272);
      v64 = *(v63 + 8 * v29);
      do
      {
        v65 = v10[++v62];
      }

      while (*(v63 + 8 * v65) < v64);
      v66 = &v10[v62];
      v67 = a2;
      if (v62 == 1)
      {
        v67 = a2;
        do
        {
          if (v66 >= v67)
          {
            break;
          }

          v69 = *--v67;
        }

        while (*(v63 + 8 * v69) >= v64);
      }

      else
      {
        do
        {
          v68 = *--v67;
        }

        while (*(v63 + 8 * v68) >= v64);
      }

      if (v66 >= v67)
      {
        v76 = v66 - 1;
        if (v66 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v76;
        goto LABEL_80;
      }

      v70 = *v67;
      v71 = v65;
      v72 = &v10[v62];
      v73 = v67;
      do
      {
        *v72 = v70;
        *v73 = v71;
        do
        {
          v74 = v72[1];
          ++v72;
          v71 = v74;
        }

        while (*(v63 + 8 * v74) < v64);
        do
        {
          v75 = *--v73;
          v70 = v75;
        }

        while (*(v63 + 8 * v75) >= v64);
      }

      while (v72 < v73);
      v76 = v72 - 1;
      if (v72 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v76 = v29;
      if (v66 < v67)
      {
        goto LABEL_83;
      }

      v10 = v76 + 1;
      if (result)
      {
        a2 = v76;
        if (!v77)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v77)
      {
LABEL_83:
        a5 = 0;
        v10 = v76 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v98 = v10 + 1;
      v99 = v10[1];
      v100 = v10 + 2;
      v101 = v10[2];
      v102 = *(*a3 + 272);
      v103 = *v10;
      result = *(v102 + 8 * v99);
      v104 = *(v102 + 8 * *v10);
      v105 = v101;
      v106 = *(v102 + 8 * v101);
      if (result >= v104)
      {
        if (v106 >= result)
        {
          v99 = v10[2];
        }

        else
        {
          v107 = v99;
          *v98 = v101;
          *v100 = v99;
          result = v10;
          v108 = v10 + 1;
          v105 = v99;
          if (v106 < v104)
          {
            goto LABEL_182;
          }
        }

        v162 = *(a2 - 1);
        if (*(v102 + 8 * v162) >= *(v102 + 8 * v105))
        {
          return result;
        }
      }

      else
      {
        v107 = v103;
        if (v106 >= result)
        {
          *v10 = v99;
          v10[1] = v103;
          result = v10 + 1;
          v108 = v10 + 2;
          v99 = v103;
          if (v106 < v104)
          {
            goto LABEL_182;
          }

          v99 = v101;
          v162 = *(a2 - 1);
          if (*(v102 + 8 * v162) >= *(v102 + 8 * v105))
          {
            return result;
          }
        }

        else
        {
          result = v10;
          v108 = v10 + 2;
          v99 = *v10;
LABEL_182:
          *result = v101;
          *v108 = v103;
          v162 = *(a2 - 1);
          if (*(v102 + 8 * v162) >= *(v102 + 8 * v107))
          {
            return result;
          }
        }
      }

      *v100 = v162;
      *(a2 - 1) = v99;
      v163 = *v100;
      v164 = *v98;
      v165 = *(v102 + 8 * v163);
      if (v165 < *(v102 + 8 * v164))
      {
        v10[1] = v163;
        v10[2] = v164;
        v166 = *v10;
        if (v165 < *(v102 + 8 * v166))
        {
          *v10 = v163;
          v10[1] = v166;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v88 = *(*a3 + 272);
    }

    goto LABEL_10;
  }

  v91 = *(*a3 + 272);
  v92 = *v10;
  v93 = v10[1];
  v94 = *(v91 + 8 * v93);
  v95 = *(v91 + 8 * v92);
  v96 = *(a2 - 1);
  v97 = *(v91 + 8 * v96);
  if (v94 >= v95)
  {
    if (v97 < v94)
    {
      v10[1] = v96;
      *(a2 - 1) = v93;
      v154 = *v10;
      v153 = v10[1];
      if (*(v91 + 8 * v153) < *(v91 + 8 * v154))
      {
        *v10 = v153;
        v10[1] = v154;
      }
    }
  }

  else
  {
    if (v97 >= v94)
    {
      *v10 = v93;
      v10[1] = v92;
      v161 = *(a2 - 1);
      if (*(v91 + 8 * v161) >= v95)
      {
        return result;
      }

      v10[1] = v161;
    }

    else
    {
      *v10 = v96;
    }

    *(a2 - 1) = v92;
  }

  return result;
}