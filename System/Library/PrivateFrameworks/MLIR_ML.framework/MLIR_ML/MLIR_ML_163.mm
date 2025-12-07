BOOL mlir::presburger::PresburgerRelation::isObviouslyUniverse(mlir::presburger::PresburgerRelation *this)
{
  v1 = *(this + 12);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 5);
  v3 = 624 * v1 - 624;
  do
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 48);
    result = v5 + v4 == 0;
    if (v5 + v4)
    {
      v7 = v3 == 0;
    }

    else
    {
      v7 = 1;
    }

    v3 -= 624;
    v2 += 624;
  }

  while (!v7);
  return result;
}

uint64_t mlir::presburger::PresburgerRelation::unionSet@<X0>(mlir::presburger::PresburgerRelation *this@<X0>, const mlir::presburger::PresburgerRelation *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *this;
  *(a3 + 16) = *(this + 16);
  *(a3 + 24) = a3 + 40;
  *(a3 + 32) = 0;
  if (a3 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a3 + 40) = a3 + 56;
  *(a3 + 48) = 0x200000000;
  if (*(this + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(a3 + 40, this + 40);
  }

  return mlir::presburger::PresburgerRelation::unionInPlace(a3, a2);
}

uint64_t mlir::presburger::PresburgerRelation::containsPoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = 624 * v3;
  while (1)
  {
    mlir::presburger::IntegerRelation::containsPointNoLocal(v6, a2, a3);
    if (v18[128] == 1)
    {
      break;
    }

    v6 += 624;
    v7 -= 624;
    if (!v7)
    {
      return 0;
    }
  }

  v9 = v16;
  if (v17)
  {
    v10 = &v16[16 * v17 - 8];
    v11 = -16 * v17;
    v12 = v10;
    do
    {
      v14 = *v12;
      v12 -= 4;
      v13 = v14;
      if (v14)
      {
        if (v13 >= 0x41)
        {
          v15 = *(v10 - 8);
          if (v15)
          {
            MEMORY[0x259C63150](v15, 0x1000C8000313F17);
          }
        }
      }

      v10 = v12;
      v11 += 16;
    }

    while (v11);
    v9 = v16;
  }

  if (v9 != v18)
  {
    free(v9);
  }

  return 1;
}

void mlir::presburger::PresburgerRelation::getUniverse(int32x4_t *this@<X0>, int32x4_t *a2@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  *a2 = *this;
  a2[1].i8[0] = this[1].i8[0];
  a2[1].i64[1] = &a2[2].i64[1];
  a2[2].i64[0] = 0;
  if (a2 != this)
  {
    if (this[2].i32[0])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  a2[2].i64[1] = &a2[3].i64[1];
  a2[3].i64[0] = 0x200000000;
  mlir::presburger::IntegerRelation::IntegerRelation(v2, 0, 0, (vaddvq_s32(*this) + 1), this);
}

double mlir::presburger::PresburgerRelation::getEmpty@<D0>(mlir::presburger::PresburgerRelation *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *this;
  *(a2 + 16) = *(this + 16);
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (a2 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = a2 + 56;
  *&result = 0x200000000;
  *(a2 + 48) = 0x200000000;
  return result;
}

void mlir::presburger::PresburgerRelation::intersect(mlir::presburger::PresburgerRelation *this@<X0>, const mlir::presburger::PresburgerRelation *a2@<X1>, uint64_t a3@<X8>)
{
  v30[78] = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(a2 + 5);
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = 624 * v6;
    while (*(v5 + 48) + *(v5 + 336))
    {
      v5 += 624;
      v7 -= 624;
      if (!v7)
      {
        v8 = *(this + 5);
        v17 = v8 + 624 * v4;
        v9 = 624 * v4;
        for (i = v8; *(i + 48) + *(i + 336); i += 624)
        {
          v9 -= 624;
          if (!v9)
          {
            *a3 = *this;
            *(a3 + 16) = *(this + 16);
            *(a3 + 24) = a3 + 40;
            *(a3 + 32) = 0;
            if (a3 != this && *(this + 8))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(a3 + 40) = a3 + 56;
            *(a3 + 48) = 0x200000000;
            do
            {
              if (*(a2 + 12))
              {
                v13 = *(a2 + 5);
                v14 = *(v13 + 24);
                v19 = *(v13 + 8);
                v20 = v14;
                v18 = &unk_286893110;
                __dst = &v23;
                v22 = 0;
                if (&v18 != v13 && *(v13 + 40))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v15 = *(v13 + 48);
                v24 = *(v13 + 56);
                v23 = v15;
                v25[0] = v26;
                v25[1] = 0x1000000000;
                if (*(v13 + 72))
                {
                  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v25, (v13 + 64));
                }

                v16 = *(v13 + 336);
                v27 = *(v13 + 344);
                v26[32] = v16;
                v28[0] = &v29;
                v28[1] = 0x1000000000;
                if (*(v13 + 360))
                {
                  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v28, (v13 + 352));
                }

                mlir::presburger::IntegerRelation::intersect(v8, &v18, v30);
              }

              v8 += 624;
            }

            while (v8 != v17);
            return;
          }
        }

        goto LABEL_17;
      }
    }

LABEL_12:
    *a3 = *this;
    *(a3 + 16) = *(this + 16);
    *(a3 + 24) = a3 + 40;
    *(a3 + 32) = 0;
    if (a3 != this && *(this + 8))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(a3 + 40) = a3 + 56;
    *(a3 + 48) = 0x200000000;
    if (v4)
    {
      v11 = this + 40;
      v12 = a3 + 40;
LABEL_22:

      llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v12, v11);
      return;
    }

    return;
  }

LABEL_17:
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  *(a3 + 24) = a3 + 40;
  *(a3 + 32) = 0;
  if (a3 != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a3 + 40) = a3 + 56;
  *(a3 + 48) = 0x200000000;
  if (v6)
  {
    v12 = a3 + 40;
    v11 = a2 + 40;
    goto LABEL_22;
  }
}

void mlir::presburger::PresburgerRelation::intersectRange(mlir::presburger::PresburgerRelation *this@<X0>, const mlir::presburger::PresburgerSet *a2@<X1>, uint64_t a3@<X8>)
{
  v19[156] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  __dst = &v17;
  v16 = 0;
  if (&v13 != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v19;
  v18 = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v17, a2 + 40);
    v5 = *this;
    if (v18)
    {
      v6 = v17;
      v7 = 624 * v18;
      v8 = v17;
      do
      {
        (*(*v8 + 24))(v8, 2, 0, v5);
        v8 += 624;
        v6 += 624;
        v7 -= 624;
      }

      while (v7);
    }
  }

  else
  {
    LODWORD(v5) = *this;
  }

  mlir::presburger::PresburgerSpace::insertVar(&v13, 2, 0, v5);
  mlir::presburger::PresburgerRelation::intersect(this, &v13, a3);
  v9 = v17;
  if (v18)
  {
    v10 = -624 * v18;
    v11 = v17 + 624 * v18 - 624;
    v12 = v11;
    do
    {
      (**v12)(v12);
      v12 -= 78;
      v11 -= 624;
      v10 += 624;
    }

    while (v10);
    v9 = v17;
  }

  if (v9 != v19)
  {
    free(v9);
  }

  if (__dst != &v17)
  {
    free(__dst);
  }
}

void mlir::presburger::PresburgerRelation::intersectDomain(mlir::presburger::PresburgerRelation *this@<X0>, const mlir::presburger::PresburgerSet *a2@<X1>, uint64_t a3@<X8>)
{
  v28[156] = *MEMORY[0x277D85DE8];
  v22 = *a2;
  v23 = *(a2 + 16);
  __dst = &v26;
  v25 = 0;
  if (&v22 != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v26 = v28;
  v27 = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v26, a2 + 40);
    v5 = *(this + 1);
    if (v27)
    {
      v6 = v26;
      v7 = 624 * v27;
      v8 = v26;
      do
      {
        (*(*v8 + 24))(v8, 2, 0, v5);
        v8 = (v8 + 624);
        v6 = (v6 + 624);
        v7 -= 624;
      }

      while (v7);
    }
  }

  else
  {
    LODWORD(v5) = *(this + 1);
  }

  mlir::presburger::PresburgerSpace::insertVar(&v22, 2, 0, v5);
  if (v27)
  {
    v9 = v26;
    v10 = 624 * v27;
    do
    {
      mlir::presburger::IntegerRelation::inverse(v9);
      v9 = (v9 + 624);
      v10 -= 624;
    }

    while (v10);
    if (v27)
    {
      v11 = v26;
      v12 = *(v26 + 4);
      *&v18 = *(v26 + 1);
      *(&v18 + 1) = v12;
      v19 = 0;
      v20 = &v22;
      v21 = 0;
      v23 = 0;
      v22 = v18;
      LODWORD(v25) = 0;
      v13 = 624 * v27;
      do
      {
        mlir::presburger::IntegerRelation::setSpaceExceptLocals(v11, &v22);
        v11 = (v11 + 624);
        v13 -= 624;
      }

      while (v13);
      if (v20 != &v22)
      {
        free(v20);
      }
    }
  }

  mlir::presburger::PresburgerRelation::intersect(this, &v22, a3);
  v14 = v26;
  if (v27)
  {
    v15 = -624 * v27;
    v16 = v26 + 624 * v27 - 624;
    v17 = v16;
    do
    {
      (**v17)(v17);
      v17 -= 78;
      v16 -= 624;
      v15 += 624;
    }

    while (v15);
    v14 = v26;
  }

  if (v14 != v28)
  {
    free(v14);
  }

  if (__dst != &v26)
  {
    free(__dst);
  }
}

void mlir::presburger::PresburgerRelation::inverse(mlir::presburger::PresburgerRelation *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    v3 = *(this + 5);
    v4 = 624 * v1;
    do
    {
      mlir::presburger::IntegerRelation::inverse(v3);
      v3 = (v3 + 624);
      v4 -= 624;
    }

    while (v4);
    v5 = *(this + 12);
    if (v5)
    {
      v6 = *(this + 5);
      v7 = *(v6 + 16);
      *&v9 = *(v6 + 8);
      *(&v9 + 1) = v7;
      v10 = 0;
      v11 = &v13;
      v12 = 0;
      *(this + 16) = 0;
      *this = v9;
      if (&v9 != this)
      {
        *(this + 8) = 0;
      }

      v8 = 624 * v5;
      do
      {
        mlir::presburger::IntegerRelation::setSpaceExceptLocals(v6, this);
        v6 += 624;
        v8 -= 624;
      }

      while (v8);
      if (v11 != &v13)
      {
        free(v11);
      }
    }
  }
}

void mlir::presburger::PresburgerRelation::getDomainSet(void ***this@<X0>, uint64_t a2@<X8>)
{
  v12[73] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerSpace::getDomainSpace(&v8, this);
  *a2 = v8;
  *(a2 + 16) = v9;
  v4 = a2 + 40;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (&v8 != a2 && v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = a2 + 56;
  *(a2 + 48) = 0x200000000;
  if (__src != v12)
  {
    free(__src);
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = this[5];
    v7 = 624 * v5;
    do
    {
      mlir::presburger::IntegerRelation::getDomainSet(v6, &v8);
      llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v4, &v8);
      mlir::presburger::IntegerRelation::~IntegerRelation(&v8);
      v6 += 78;
      v7 -= 624;
    }

    while (v7);
  }
}

double mlir::presburger::PresburgerSet::getEmpty@<D0>(mlir::presburger::PresburgerSet *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *this;
  *(a2 + 16) = *(this + 16);
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (a2 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = a2 + 56;
  *&result = 0x200000000;
  *(a2 + 48) = 0x200000000;
  return result;
}

void mlir::presburger::PresburgerRelation::getRangeSet(void ***this@<X0>, uint64_t a2@<X8>)
{
  v12[73] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerSpace::getRangeSpace(this, &v8);
  *a2 = v8;
  *(a2 + 16) = v9;
  v4 = a2 + 40;
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (&v8 != a2 && v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = a2 + 56;
  *(a2 + 48) = 0x200000000;
  if (__src != v12)
  {
    free(__src);
  }

  v5 = *(this + 12);
  if (v5)
  {
    v6 = this[5];
    v7 = 624 * v5;
    do
    {
      mlir::presburger::IntegerRelation::getRangeSet(v6, &v8);
      llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v4, &v8);
      mlir::presburger::IntegerRelation::~IntegerRelation(&v8);
      v6 += 78;
      v7 -= 624;
    }

    while (v7);
  }
}

void mlir::presburger::PresburgerRelation::compose(mlir::presburger::PresburgerRelation *this, const mlir::presburger::PresburgerRelation *a2)
{
  v37[157] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1);
  v3 = *(this + 2);
  *v20 = *this;
  *&v20[4] = v2;
  *&v20[8] = v3;
  v32 = 0;
  v31 = *v20;
  __src = &v35;
  v34 = 0;
  v35 = v37;
  v36 = 0x200000000;
  v4 = *(this + 5);
  v5 = *(this + 12);
  if (v5)
  {
    v19 = v4 + 624 * v5;
    do
    {
      if (*(a2 + 12))
      {
        v6 = *(a2 + 5);
        v7 = *(v4 + 24);
        *&v20[8] = *(v4 + 8);
        v21 = v7;
        *v20 = &unk_286893110;
        __dst = &v24;
        v23 = 0;
        if (v20 != v4 && *(v4 + 40))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = *(v4 + 48);
        v25 = *(v4 + 56);
        v24 = v8;
        v26[0] = v27;
        v26[1] = 0x1000000000;
        if (*(v4 + 72))
        {
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v26, (v4 + 64));
        }

        v9 = *(v4 + 336);
        v28 = *(v4 + 344);
        v27[32] = v9;
        v29[0] = &v30;
        v29[1] = 0x1000000000;
        if (*(v4 + 360))
        {
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v29, (v4 + 352));
        }

        mlir::presburger::IntegerRelation::compose(v20, v6);
      }

      v4 += 624;
    }

    while (v4 != v19);
  }

  v17 = this + 40;
  *this = v31;
  *(this + 16) = v32;
  if (&v31 != this)
  {
    v10 = v34;
    v11 = *(this + 8);
    if (v11 >= v34)
    {
      if (v34)
      {
        memmove(*(this + 3), __src, 24 * v34);
      }

      goto LABEL_22;
    }

    if (*(this + 9) < v34)
    {
      *(this + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v11)
    {
      memmove(*(this + 3), __src, 24 * v11);
      v12 = v34 - v11;
      if (v34 == v11)
      {
LABEL_22:
        *(this + 8) = v10;
        goto LABEL_23;
      }
    }

    else
    {
      v11 = 0;
      v12 = v34;
      if (!v34)
      {
        goto LABEL_22;
      }
    }

    memcpy((*(this + 3) + 24 * v11), __src + 24 * v11, 24 * v12);
    goto LABEL_22;
  }

LABEL_23:
  llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v17, &v35);
  v13 = v35;
  if (v36)
  {
    v14 = -624 * v36;
    v15 = v35 + 624 * v36 - 624;
    v16 = v15;
    do
    {
      (**v16)(v16);
      v16 -= 78;
      v15 -= 624;
      v14 += 624;
    }

    while (v14);
    v13 = v35;
    if (v35 != v37)
    {
      goto LABEL_27;
    }
  }

  else if (v35 != v37)
  {
LABEL_27:
    free(v13);
  }

  if (__src != &v35)
  {
    free(__src);
  }
}

void mlir::presburger::PresburgerRelation::applyDomain(mlir::presburger::PresburgerRelation *this, const mlir::presburger::PresburgerRelation *a2)
{
  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 5);
    v6 = 624 * v4;
    do
    {
      mlir::presburger::IntegerRelation::inverse(v5);
      v5 = (v5 + 624);
      v6 -= 624;
    }

    while (v6);
    v7 = *(this + 12);
    if (v7)
    {
      v8 = *(this + 5);
      v9 = *(v8 + 16);
      *&v18 = *(v8 + 8);
      *(&v18 + 1) = v9;
      v19 = 0;
      v20 = &v22;
      v21 = 0;
      *(this + 16) = 0;
      *this = v18;
      if (&v18 != this)
      {
        *(this + 8) = 0;
      }

      v10 = 624 * v7;
      do
      {
        mlir::presburger::IntegerRelation::setSpaceExceptLocals(v8, this);
        v8 += 624;
        v10 -= 624;
      }

      while (v10);
      if (v20 != &v22)
      {
        free(v20);
      }
    }
  }

  mlir::presburger::PresburgerRelation::compose(this, a2);
  v11 = *(this + 12);
  if (v11)
  {
    v12 = *(this + 5);
    v13 = 624 * v11;
    do
    {
      mlir::presburger::IntegerRelation::inverse(v12);
      v12 = (v12 + 624);
      v13 -= 624;
    }

    while (v13);
    v14 = *(this + 12);
    if (v14)
    {
      v15 = *(this + 5);
      v16 = *(v15 + 16);
      *&v18 = *(v15 + 8);
      *(&v18 + 1) = v16;
      v19 = 0;
      v20 = &v22;
      v21 = 0;
      *(this + 16) = 0;
      *this = v18;
      if (&v18 != this)
      {
        *(this + 8) = 0;
      }

      v17 = 624 * v14;
      do
      {
        mlir::presburger::IntegerRelation::setSpaceExceptLocals(v15, this);
        v15 += 624;
        v17 -= 624;
      }

      while (v17);
      if (v20 != &v22)
      {
        free(v20);
      }
    }
  }
}

void findSymbolicIntegerLexOpt(const mlir::presburger::PresburgerRelation *a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v6 = v2;
  v4 = v3;
  v8 = *MEMORY[0x277D85DE8];
  mlir::presburger::SymbolicLexOpt::SymbolicLexOpt(v1, v3);
  if (*(v4 + 12))
  {
    v5 = *(v4 + 5);
    mlir::presburger::SymbolicLexOpt::SymbolicLexOpt(&v7, v4);
    if (v6)
    {
      mlir::presburger::IntegerRelation::findSymbolicIntegerLexMin(v5);
    }

    mlir::presburger::IntegerRelation::findSymbolicIntegerLexMax(v5);
  }
}

void mlir::presburger::PresburgerRelation::computeReprWithOnlyDivLocals(mlir::presburger::IntegerRelation **this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 12))
  {
    mlir::presburger::IntegerRelation::hasOnlyDivLocals(this[5]);
  }

  *a2 = *this;
  *(a2 + 16) = *(this + 16);
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (a2 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = a2 + 56;
  *(a2 + 48) = 0x200000000;
  if (*(this + 12))
  {

    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(a2 + 40, (this + 5));
  }
}

uint64_t mlir::presburger::PresburgerRelation::hasOnlyDivLocals(mlir::presburger::IntegerRelation **this)
{
  if (*(this + 12))
  {
    mlir::presburger::IntegerRelation::hasOnlyDivLocals(this[5]);
  }

  return 1;
}

void getSetDifference(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  if (!mlir::presburger::IntegerRelation::isEmptyByGCDTest(v4, v4, v2))
  {
    if (*(v3 + 12))
    {
      mlir::presburger::IntegerRelation::hasOnlyDivLocals(*(v3 + 5));
    }

    mlir::presburger::IntegerRelation::removeDuplicateDivs(v5);
  }

  v7 = *(v5 + 4);
  *v6 = *(v5 + 1);
  *(v6 + 8) = v7;
  *(v6 + 12) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = v6 + 56;
  *(v6 + 24) = v6 + 40;
  *(v6 + 32) = 0;
  *(v6 + 48) = 0x200000000;
}

void mlir::presburger::PresburgerRelation::subtract(mlir::presburger::PresburgerRelation *__return_ptr a1@<X8>, mlir::presburger::PresburgerRelation *this@<X0>, const mlir::presburger::PresburgerRelation *a3@<X1>)
{
  v35[156] = *MEMORY[0x277D85DE8];
  *a1 = *this;
  *(a1 + 16) = *(this + 16);
  *(a1 + 3) = a1 + 40;
  *(a1 + 4) = 0;
  if (a1 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 5) = a1 + 56;
  *(a1 + 6) = 0x200000000;
  if (mlir::presburger::PresburgerSpace::isCompatible(this, a3))
  {
    v6 = *(this + 12);
    if (v6 == *(a3 + 12))
    {
      if (!v6)
      {
        return;
      }

      v7 = 0;
      v8 = 624 * v6;
      while (mlir::presburger::IntegerRelation::isObviouslyEqual((*(this + 5) + v7), (*(a3 + 5) + v7)))
      {
        v7 += 624;
        if (v8 == v7)
        {
          return;
        }
      }
    }
  }

  v9 = *(this + 12);
  if (v9)
  {
    v10 = *(this + 5);
    v18 = v10 + 624 * v9;
    do
    {
      v11 = *(v10 + 24);
      v20 = *(v10 + 8);
      v21 = v11;
      v19 = &unk_286893110;
      __dst = &v24;
      v23 = 0;
      if (&v19 != v10 && *(v10 + 40))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = *(v10 + 48);
      v25 = *(v10 + 56);
      v24 = v12;
      v26[0] = v27;
      v26[1] = 0x1000000000;
      if (*(v10 + 72))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v26, (v10 + 64));
      }

      v13 = *(v10 + 336);
      v28 = *(v10 + 344);
      v27[32] = v13;
      v29[0] = &v30;
      v29[1] = 0x1000000000;
      if (*(v10 + 360))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v29, (v10 + 352));
      }

      getSetDifference(v31);
      mlir::presburger::PresburgerRelation::unionInPlace(a1, v31);
      v14 = v33;
      if (v34)
      {
        v15 = -624 * v34;
        v16 = v33 + 624 * v34 - 624;
        v17 = v16;
        do
        {
          (**v17)(v17);
          v17 -= 78;
          v16 -= 624;
          v15 += 624;
        }

        while (v15);
        v14 = v33;
      }

      if (v14 != v35)
      {
        free(v14);
      }

      if (v32 != &v33)
      {
        free(v32);
      }

      mlir::presburger::IntegerRelation::~IntegerRelation(&v19);
      v10 += 624;
    }

    while (v10 != v18);
  }
}

uint64_t mlir::presburger::PresburgerRelation::isSubsetOf(mlir::presburger::PresburgerRelation *this, const mlir::presburger::PresburgerRelation *a2)
{
  v16[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::subtract(&v12, this, a2);
  v2 = v14;
  if (v15)
  {
    v3 = 624 * v15 - 624;
    do
    {
      result = mlir::presburger::IntegerRelation::isIntegerEmpty(v2);
      if (!result)
      {
        break;
      }

      v2 = (v2 + 624);
      v5 = v3;
      v3 -= 624;
    }

    while (v5);
    v2 = v14;
    if (v15)
    {
      v6 = result;
      v7 = -624 * v15;
      v8 = v14 + 624 * v15 - 624;
      v9 = v8;
      do
      {
        (**v9)(v9);
        v9 -= 78;
        v8 -= 624;
        v7 += 624;
      }

      while (v7);
      v2 = v14;
      result = v6;
    }

    if (v2 != v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = 1;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v2);
      result = v10;
    }
  }

  if (v13 != &v14)
  {
    v11 = result;
    free(v13);
    return v11;
  }

  return result;
}

uint64_t mlir::presburger::PresburgerRelation::isIntegerEmpty(mlir::presburger::PresburgerRelation *this)
{
  v1 = *(this + 12);
  if (!v1)
  {
    return 1;
  }

  v2 = *(this + 5);
  v3 = 624 * v1 - 624;
  do
  {
    result = mlir::presburger::IntegerRelation::isIntegerEmpty(v2);
    if (!result)
    {
      break;
    }

    v2 = (v2 + 624);
    v5 = v3;
    v3 -= 624;
  }

  while (v5);
  return result;
}

uint64_t mlir::presburger::PresburgerRelation::isEqual(mlir::presburger::PresburgerRelation *this, const mlir::presburger::PresburgerRelation *a2)
{
  result = mlir::presburger::PresburgerRelation::isSubsetOf(this, a2);
  if (result)
  {

    return mlir::presburger::PresburgerRelation::isSubsetOf(a2, this);
  }

  return result;
}

uint64_t mlir::presburger::PresburgerRelation::findIntegerSample(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = 624 * v2;
  while (1)
  {
    mlir::presburger::IntegerRelation::findIntegerSample(v4);
    if (v17 == 1)
    {
      break;
    }

    v4 = (v4 + 624);
    v5 -= 624;
    if (!v5)
    {
      return 0;
    }
  }

  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a2, &v14);
  if (v17 == 1)
  {
    v7 = v14;
    if (v15)
    {
      v8 = (v14 + 16 * v15 - 8);
      v9 = -16 * v15;
      v10 = v8;
      do
      {
        v12 = *v10;
        v10 -= 4;
        v11 = v12;
        if (v12)
        {
          if (v11 >= 0x41)
          {
            v13 = *(v8 - 1);
            if (v13)
            {
              MEMORY[0x259C63150](v13, 0x1000C8000313F17);
            }
          }
        }

        v8 = v10;
        v9 += 16;
      }

      while (v9);
      v7 = v14;
    }

    if (v7 != &v16)
    {
      free(v7);
    }
  }

  return 1;
}

void mlir::presburger::PresburgerRelation::computeVolume(mlir::presburger::IntegerRelation **this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 12))
  {
    mlir::presburger::IntegerRelation::computeVolume(this[5]);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

mlir::presburger::SetCoalescer *mlir::presburger::SetCoalescer::SetCoalescer(mlir::presburger::SetCoalescer *this, const mlir::presburger::PresburgerRelation *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v4;
  v5 = (this + 40);
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  if (this != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(this + 5) = this + 56;
  *(this + 6) = 0x200000000;
  *(this + 163) = this + 1320;
  *(this + 164) = 0x200000000;
  *(this + 437) = this + 3512;
  *(this + 438) = 0x200000000;
  *(this + 451) = this + 3624;
  *(this + 452) = 0x200000000;
  *(this + 457) = this + 3672;
  *(this + 458) = 0x200000000;
  *(this + 463) = this + 3720;
  *(this + 464) = 0x200000000;
  *(this + 469) = this + 3768;
  *(this + 470) = 0x200000000;
  llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v5, a2 + 40);
  v6 = *(a2 + 12);
  if (*(this + 329) < v6)
  {
    llvm::SmallVectorTemplateBase<mlir::presburger::Simplex,false>::grow(this + 1304, v6);
  }

  if (*(this + 12))
  {
    mlir::presburger::IntegerRelation::removeRedundantConstraints(*v5);
  }

  return this;
}

void mlir::presburger::SetCoalescer::coalesce(mlir::presburger::SetCoalescer *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 12);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = 0;
      while (1)
      {
        v6 = *(this + 876);
        if (v6)
        {
          v7 = *(this + 437);
          v8 = v7 + 48 * v6;
          v9 = v8;
          do
          {
            v11 = *(v9 - 48);
            v9 -= 48;
            v10 = v11;
            v12 = *(v9 + 8);
            if (v12)
            {
              v13 = 16 * v12;
              v14 = v10 + 16 * v12 - 8;
              v15 = -v13;
              v16 = v14;
              do
              {
                v18 = *v16;
                v16 -= 4;
                v17 = v18;
                if (v18)
                {
                  if (v17 >= 0x41)
                  {
                    v19 = *(v14 - 8);
                    if (v19)
                    {
                      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
                    }
                  }
                }

                v14 = v16;
                v15 += 16;
              }

              while (v15);
              v10 = *v9;
            }

            if (v10 != (v8 - 32))
            {
              free(v10);
            }

            v8 = v9;
          }

          while (v9 != v7);
        }

        *(this + 876) = 0;
        *(this + 904) = 0;
        *(this + 928) = 0;
        *(this + 916) = 0;
        *(this + 940) = 0;
        if (v4 != v5 && (mlir::presburger::SetCoalescer::coalescePair(this, v4, v5) & 1) != 0)
        {
          break;
        }

        if (++v5 == v3)
        {
          ++v4;
          break;
        }
      }

      v3 = *(this + 12);
    }

    while (v3 > v4);
  }

  *a2 = *this;
  *(a2 + 16) = *(this + 16);
  *(a2 + 24) = a2 + 40;
  *(a2 + 32) = 0;
  if (a2 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a2 + 40) = a2 + 56;
  *(a2 + 48) = 0x200000000;
  if (v3)
  {
    v20 = *(this + 5);
    v21 = 624 * v3;
    do
    {
      llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(a2 + 40, v20);
      v20 += 624;
      v21 -= 624;
    }

    while (v21);
  }
}

uint64_t mlir::presburger::SetCoalescer::coalescePair(mlir::presburger::SetCoalescer *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 5);
  v4 = (v3 + 624 * a2);
  if (v4[5])
  {
    return 0;
  }

  v5 = (v3 + 624 * a3);
  if (v5[5])
  {
    return 0;
  }

  if (v4[84] >= 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (v4[12] >= 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  llvm::SmallVectorImpl<mlir::PromotableAllocationOpInterface>::swap(this + 902, this + 926);
  llvm::SmallVectorImpl<mlir::PromotableAllocationOpInterface>::swap(this + 914, this + 938);
  if (v5[84] >= 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (v5[12] >= 1)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  if (*(this + 916))
  {
    if (mlir::presburger::SetCoalescer::coalescePairCutCase(this, a2, a3))
    {
      return 1;
    }

    llvm::SmallVectorImpl<mlir::PromotableAllocationOpInterface>::swap(this + 902, this + 926);
    llvm::SmallVectorImpl<mlir::PromotableAllocationOpInterface>::swap(this + 914, this + 938);
    if (*(this + 916))
    {
      return mlir::presburger::SetCoalescer::coalescePairCutCase(this, a3, a2);
    }

    v10 = this;
    v11 = a2;
  }

  else
  {
    v10 = this;
    v11 = a3;
  }

  mlir::presburger::SetCoalescer::eraseDisjunct(v10, v11);
  return 1;
}

uint64_t mlir::presburger::SetCoalescer::isFacetContained(uint64_t a1, uint64_t a2, unint64_t a3, mlir::presburger::SimplexBase *this)
{
  Snapshot = mlir::presburger::SimplexBase::getSnapshot(this);
  mlir::presburger::SimplexBase::addEquality(this, a2, a3);
  v9 = *(a1 + 3760);
  if (v9)
  {
    v10 = *(a1 + 3752);
    v11 = &v10[2 * v9];
    do
    {
      v12 = *v10;
      v13 = v10[1];
      v10 += 2;
      isRedundantInequality = mlir::presburger::Simplex::isRedundantInequality(this, v12, v13);
    }

    while (isRedundantInequality && v10 != v11);
    v16 = isRedundantInequality;
  }

  else
  {
    v16 = 1;
  }

  mlir::presburger::SimplexBase::rollback(this, Snapshot);
  return v16;
}

void mlir::presburger::SetCoalescer::addCoalescedDisjunct(mlir::presburger::SetCoalescer *this, unsigned int a2, unsigned int a3, const mlir::presburger::IntegerRelation *a4)
{
  v6 = *(this + 12);
  v7 = v6 - 1;
  if (v6 - 1 == a3)
  {
    v8 = (v6 - 2);
    v9 = *(this + 5);
    v10 = v9 + 624 * v8;
    v11 = *(v10 + 8);
    v12 = v9 + 624 * a2;
    *(v12 + 24) = *(v10 + 24);
    *(v12 + 8) = v11;
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v13 = *(v10 + 40);
    v14 = *(v12 + 40);
    if (v14 >= v13)
    {
      if (v13)
      {
        memmove(*(v12 + 32), *(v10 + 32), 24 * v13);
      }

      goto LABEL_17;
    }

    if (*(v12 + 44) < v13)
    {
      *(v12 + 40) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v14)
    {
      memmove(*(v12 + 32), *(v10 + 32), 24 * v14);
      v22 = *(v10 + 40) - v14;
      if (!v22)
      {
LABEL_17:
        *(v12 + 40) = v13;
LABEL_18:
        v23 = *(v10 + 48);
        *(v12 + 56) = *(v10 + 56);
        *(v12 + 48) = v23;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v12 + 64), (v10 + 64));
        v24 = *(v10 + 344);
        *(v12 + 336) = *(v10 + 336);
        *(v12 + 344) = v24;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v12 + 352), (v10 + 352));
        v25 = *(this + 12) - 1;
        *(this + 12) = v25;
        (**(*(this + 5) + 624 * v25))();
        v26 = *(this + 5) + 624 * v8;
        v27 = *(a4 + 24);
        *(v26 + 8) = *(a4 + 8);
        *(v26 + 24) = v27;
        if (v26 == a4)
        {
          goto LABEL_28;
        }

        v28 = *(a4 + 10);
        v29 = *(v26 + 40);
        if (v29 >= v28)
        {
          if (v28)
          {
            memmove(*(v26 + 32), *(a4 + 4), 24 * v28);
          }

          goto LABEL_27;
        }

        if (*(v26 + 44) < v28)
        {
          *(v26 + 40) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v29)
        {
          memmove(*(v26 + 32), *(a4 + 4), 24 * v29);
          v30 = *(a4 + 10) - v29;
          if (!v30)
          {
LABEL_27:
            *(v26 + 40) = v28;
LABEL_28:
            v31 = *(a4 + 6);
            *(v26 + 56) = *(a4 + 14);
            *(v26 + 48) = v31;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v26 + 64), a4 + 8);
            v32 = *(a4 + 86);
            *(v26 + 336) = *(a4 + 42);
            *(v26 + 344) = v32;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v26 + 352), a4 + 44);
            mlir::presburger::IntegerRelation::removeRedundantConstraints((*(this + 5) + 624 * v8));
          }
        }

        else
        {
          v29 = 0;
          v30 = *(a4 + 10);
          if (!*(a4 + 10))
          {
            goto LABEL_27;
          }
        }

        memcpy((*(v26 + 32) + 24 * v29), (*(a4 + 4) + 24 * v29), 24 * v30);
        goto LABEL_27;
      }
    }

    else
    {
      v14 = 0;
      v22 = *(v10 + 40);
      if (!*(v10 + 40))
      {
        goto LABEL_17;
      }
    }

    memcpy((*(v12 + 32) + 24 * v14), (*(v10 + 32) + 24 * v14), 24 * v22);
    goto LABEL_17;
  }

  v16 = *(this + 5);
  v17 = v16 + 624 * v7;
  v18 = *(v17 + 8);
  v19 = v16 + 624 * a2;
  *(v19 + 24) = *(v17 + 24);
  *(v19 + 8) = v18;
  if (v7 == a2)
  {
LABEL_39:
    v34 = *(v17 + 48);
    *(v19 + 56) = *(v17 + 56);
    *(v19 + 48) = v34;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v19 + 64), (v17 + 64));
    v35 = *(v17 + 344);
    *(v19 + 336) = *(v17 + 336);
    *(v19 + 344) = v35;
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v19 + 352), (v17 + 352));
    v36 = (v6 - 2);
    v37 = *(this + 5);
    v38 = v37 + 624 * v36;
    v39 = *(v38 + 24);
    v40 = v37 + 624 * a3;
    *(v40 + 8) = *(v38 + 8);
    *(v40 + 24) = v39;
    if (v36 == a3)
    {
      goto LABEL_49;
    }

    v41 = *(v38 + 40);
    v42 = *(v40 + 40);
    if (v42 >= v41)
    {
      if (v41)
      {
        memmove(*(v40 + 32), *(v38 + 32), 24 * v41);
      }

      goto LABEL_48;
    }

    if (*(v40 + 44) < v41)
    {
      *(v40 + 40) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v42)
    {
      memmove(*(v40 + 32), *(v38 + 32), 24 * v42);
      v43 = *(v38 + 40) - v42;
      if (!v43)
      {
LABEL_48:
        *(v40 + 40) = v41;
LABEL_49:
        v44 = *(v38 + 48);
        *(v40 + 56) = *(v38 + 56);
        *(v40 + 48) = v44;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v40 + 64), (v38 + 64));
        v45 = *(v38 + 344);
        *(v40 + 336) = *(v38 + 336);
        *(v40 + 344) = v45;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v40 + 352), (v38 + 352));
        v46 = *(this + 12) - 1;
        *(this + 12) = v46;
        (**(*(this + 5) + 624 * v46))();
        v47 = *(this + 5) + 624 * v36;
        v48 = *(a4 + 24);
        *(v47 + 8) = *(a4 + 8);
        *(v47 + 24) = v48;
        if (v47 == a4)
        {
          goto LABEL_59;
        }

        v49 = *(a4 + 10);
        v50 = *(v47 + 40);
        if (v50 >= v49)
        {
          if (v49)
          {
            memmove(*(v47 + 32), *(a4 + 4), 24 * v49);
          }

          goto LABEL_58;
        }

        if (*(v47 + 44) < v49)
        {
          *(v47 + 40) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v50)
        {
          memmove(*(v47 + 32), *(a4 + 4), 24 * v50);
          v51 = *(a4 + 10) - v50;
          if (!v51)
          {
LABEL_58:
            *(v47 + 40) = v49;
LABEL_59:
            v52 = *(a4 + 6);
            *(v47 + 56) = *(a4 + 14);
            *(v47 + 48) = v52;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v47 + 64), a4 + 8);
            v53 = *(a4 + 86);
            *(v47 + 336) = *(a4 + 42);
            *(v47 + 344) = v53;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v47 + 352), a4 + 44);
            mlir::presburger::IntegerRelation::removeRedundantConstraints((*(this + 5) + 624 * v36));
          }
        }

        else
        {
          v50 = 0;
          v51 = *(a4 + 10);
          if (!*(a4 + 10))
          {
            goto LABEL_58;
          }
        }

        memcpy((*(v47 + 32) + 24 * v50), (*(a4 + 4) + 24 * v50), 24 * v51);
        goto LABEL_58;
      }
    }

    else
    {
      v42 = 0;
      v43 = *(v38 + 40);
      if (!*(v38 + 40))
      {
        goto LABEL_48;
      }
    }

    memcpy((*(v40 + 32) + 24 * v42), (*(v38 + 32) + 24 * v42), 24 * v43);
    goto LABEL_48;
  }

  v20 = *(v17 + 40);
  v21 = *(v19 + 40);
  if (v21 >= v20)
  {
    if (v20)
    {
      memmove(*(v19 + 32), *(v17 + 32), 24 * v20);
    }

    goto LABEL_38;
  }

  if (*(v19 + 44) < v20)
  {
    *(v19 + 40) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v21)
  {
    memmove(*(v19 + 32), *(v17 + 32), 24 * v21);
    v33 = *(v17 + 40) - v21;
    if (!v33)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v21 = 0;
    v33 = *(v17 + 40);
    if (!*(v17 + 40))
    {
LABEL_38:
      *(v19 + 40) = v20;
      goto LABEL_39;
    }
  }

  memcpy((*(v19 + 32) + 24 * v21), (*(v17 + 32) + 24 * v21), 24 * v33);
  goto LABEL_38;
}

uint64_t mlir::presburger::SetCoalescer::coalescePairCutCase(mlir::presburger::SetCoalescer *this, unsigned int a2, unsigned int a3)
{
  v22[78] = *MEMORY[0x277D85DE8];
  v5 = *(this + 5);
  v6 = *(this + 916);
  if (!v6)
  {
LABEL_14:
    mlir::presburger::IntegerRelation::IntegerRelation(v22, 0, 0, (vaddvq_s32(*(v5 + 624 * a2 + 8)) + 1), (v5 + 624 * a2 + 8));
  }

  v7 = (*(this + 163) + 1088 * a2);
  v8 = *(this + 457);
  v9 = &v8[2 * v6];
  while (1)
  {
    v10 = *v8;
    v11 = v8[1];
    Snapshot = mlir::presburger::SimplexBase::getSnapshot(v7);
    mlir::presburger::SimplexBase::addEquality(v7, v10, v11);
    v13 = *(this + 940);
    if (v13)
    {
      break;
    }

    mlir::presburger::SimplexBase::rollback(v7, Snapshot);
LABEL_4:
    v8 += 2;
    if (v8 == v9)
    {
      goto LABEL_14;
    }
  }

  v14 = *(this + 469);
  v15 = &v14[2 * v13];
  do
  {
    v16 = *v14;
    v17 = v14[1];
    v14 += 2;
    isRedundantInequality = mlir::presburger::Simplex::isRedundantInequality(v7, v16, v17);
  }

  while (isRedundantInequality && v14 != v15);
  v20 = isRedundantInequality;
  mlir::presburger::SimplexBase::rollback(v7, Snapshot);
  if (v20)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t mlir::presburger::SetCoalescer::typeInequality(uint64_t a1, uint64_t a2, uint64_t a3, mlir::presburger::SimplexBase *a4)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  IneqType = mlir::presburger::Simplex::findIneqType(a4, a2, a3);
  if (IneqType == 1)
  {
    v8 = *(a1 + 3760);
    if (v8 < *(a1 + 3764))
    {
      *(*(a1 + 3752) + 16 * v8) = v10;
      ++*(a1 + 3760);
      return 1;
    }

    v9 = a1 + 3752;
  }

  else
  {
    if (IneqType)
    {
      return 0;
    }

    v6 = *(a1 + 3712);
    if (v6 < *(a1 + 3716))
    {
      *(*(a1 + 3704) + 16 * v6) = v10;
      ++*(a1 + 3712);
      return 1;
    }

    v9 = a1 + 3704;
  }

  llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v9, &v10);
  return 1;
}

uint64_t mlir::presburger::SetCoalescer::typeEquality(uint64_t a1, void *a2, void *a3, mlir::presburger::SimplexBase *a4)
{
  v29[16] = *MEMORY[0x277D85DE8];
  v28[0] = a2;
  v28[1] = a3;
  IneqType = mlir::presburger::Simplex::findIneqType(a4, a2, a3);
  if (IneqType == 1)
  {
    v10 = *(a1 + 3760);
    if (v10 < *(a1 + 3764))
    {
      *(*(a1 + 3752) + 16 * v10) = *v28;
      ++*(a1 + 3760);
      goto LABEL_7;
    }

    v26 = a1 + 3752;
LABEL_32:
    llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v26, v28);
    goto LABEL_7;
  }

  if (IneqType)
  {
    return 0;
  }

  v9 = *(a1 + 3712);
  if (v9 >= *(a1 + 3716))
  {
    v26 = a1 + 3704;
    goto LABEL_32;
  }

  *(*(a1 + 3704) + 16 * v9) = *v28;
  ++*(a1 + 3712);
LABEL_7:
  mlir::presburger::getNegatedCoeffs(a2, a3, v28);
  v11 = *(a1 + 3504);
  if (v11 >= *(a1 + 3508))
  {
    llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::DynamicAPInt,2u>,false>::growAndEmplaceBack<llvm::SmallVector<llvm::DynamicAPInt,8u>>(a1 + 3496, v28);
  }

  v12 = (*(a1 + 3496) + 48 * v11);
  *v12 = v12 + 2;
  v12[1] = 0x200000000;
  if (LODWORD(v28[1]))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, v28);
  }

  ++*(a1 + 3504);
  v13 = v28[0];
  if (LODWORD(v28[1]))
  {
    v14 = (v28[0] + 16 * LODWORD(v28[1]) - 8);
    v15 = -16 * LODWORD(v28[1]);
    v16 = v14;
    do
    {
      v18 = *v16;
      v16 -= 4;
      v17 = v18;
      if (v18)
      {
        if (v17 >= 0x41)
        {
          v19 = *(v14 - 1);
          if (v19)
          {
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }
        }
      }

      v14 = v16;
      v15 += 16;
    }

    while (v15);
    v13 = v28[0];
  }

  if (v13 != v29)
  {
    free(v13);
  }

  v20 = *(a1 + 3496) + 48 * *(a1 + 3504);
  v21 = *(v20 - 40);
  v28[0] = *(v20 - 48);
  v28[1] = v21;
  v22 = mlir::presburger::Simplex::findIneqType(a4, v28[0], v21);
  if (v22 == 1)
  {
    v25 = *(a1 + 3760);
    if (v25 < *(a1 + 3764))
    {
      *(*(a1 + 3752) + 16 * v25) = *v28;
      ++*(a1 + 3760);
      return 1;
    }

    v27 = a1 + 3752;
LABEL_35:
    llvm::SmallVectorTemplateBase<mlir::PromotableAllocationOpInterface,true>::growAndEmplaceBack<mlir::PromotableAllocationOpInterface&>(v27, v28);
    return 1;
  }

  if (!v22)
  {
    v23 = *(a1 + 3712);
    if (v23 < *(a1 + 3716))
    {
      *(*(a1 + 3704) + 16 * v23) = *v28;
      ++*(a1 + 3712);
      return 1;
    }

    v27 = a1 + 3704;
    goto LABEL_35;
  }

  return 0;
}

uint64_t mlir::presburger::SetCoalescer::eraseDisjunct(mlir::presburger::SetCoalescer *this, unsigned int a2)
{
  v3 = *(this + 5);
  v4 = v3 + 624 * *(this + 12);
  v5 = v3 + 624 * a2;
  v6 = *(v4 - 616);
  *(v5 + 24) = *(v4 - 600);
  *(v5 + 8) = v6;
  if (v5 != v4 - 624)
  {
    v8 = (v4 - 592);
    v9 = (v4 - 584);
    v10 = *(v4 - 584);
    v11 = *(v5 + 40);
    if (v11 >= v10)
    {
      if (v10)
      {
        memmove(*(v5 + 32), *v8, 24 * v10);
      }

      goto LABEL_10;
    }

    if (*(v5 + 44) < v10)
    {
      *(v5 + 40) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v11)
    {
      memmove(*(v5 + 32), *v8, 24 * v11);
      v12 = *v9 - v11;
      if (!v12)
      {
LABEL_10:
        *(v5 + 40) = v10;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v12 = *v9;
      if (!*v9)
      {
        goto LABEL_10;
      }
    }

    memcpy((*(v5 + 32) + 24 * v11), *v8 + 24 * v11, 24 * v12);
    goto LABEL_10;
  }

LABEL_11:
  v13 = *(v4 - 576);
  *(v5 + 56) = *(v4 - 568);
  *(v5 + 48) = v13;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v5 + 64), (v4 - 560));
  v14 = *(v4 - 280);
  *(v5 + 336) = *(v4 - 288);
  *(v5 + 344) = v14;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v5 + 352), (v4 - 272));
  v15 = *(this + 12) - 1;
  *(this + 12) = v15;
  (**(*(this + 5) + 624 * v15))();
  mlir::presburger::SimplexBase::operator=(*(this + 163) + 1088 * a2, *(this + 163) + 1088 * *(this + 328) - 1088);
  v16 = *(this + 328) - 1;
  *(this + 328) = v16;
  v17 = **(*(this + 163) + 1088 * v16);

  return v17();
}

void mlir::presburger::PresburgerRelation::coalesce(mlir::presburger::PresburgerRelation *this@<X0>, uint64_t a2@<X8>)
{
  v3[475] = *MEMORY[0x277D85DE8];
  mlir::presburger::SetCoalescer::SetCoalescer(v3, this);
  mlir::presburger::SetCoalescer::coalesce(v3, a2);
  mlir::presburger::SetCoalescer::~SetCoalescer(v3);
}

void mlir::presburger::PresburgerRelation::simplify(mlir::presburger::PresburgerRelation *__return_ptr a1@<X8>, mlir::presburger::PresburgerRelation *this@<X0>, uint64_t a3@<X1>, const llvm::detail::SlowDynamicAPInt *a4@<X2>)
{
  v20[156] = *MEMORY[0x277D85DE8];
  v14 = *this;
  v15 = *(this + 16);
  __dst = &v18;
  v17 = 0;
  if (&v14 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = v20;
  v19 = 0x200000000;
  if (*(this + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v18, this + 40);
  }

  *a1 = *this;
  *(a1 + 16) = *(this + 16);
  v6 = a1 + 40;
  *(a1 + 3) = a1 + 40;
  *(a1 + 4) = 0;
  if (a1 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 5) = a1 + 56;
  *(a1 + 6) = 0x200000000;
  v7 = v18;
  if (v19)
  {
    v8 = 624 * v19;
    do
    {
      mlir::presburger::IntegerRelation::simplify(v7, a3, a4);
      if (!mlir::presburger::IntegerRelation::isObviouslyEmpty(v7, v9, v10))
      {
        llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v6, v7);
      }

      v7 = (v7 + 624);
      v8 -= 624;
    }

    while (v8);
    v7 = v18;
    if (v19)
    {
      v11 = -624 * v19;
      v12 = v18 + 624 * v19 - 624;
      v13 = v12;
      do
      {
        (**v13)(v13);
        v13 -= 78;
        v12 -= 624;
        v11 += 624;
      }

      while (v11);
      v7 = v18;
    }
  }

  if (v7 != v20)
  {
    free(v7);
  }

  if (__dst != &v18)
  {
    free(__dst);
  }
}

uint64_t mlir::presburger::PresburgerRelation::isFullDim(mlir::presburger::PresburgerRelation *this, uint64_t a2, const llvm::detail::SlowDynamicAPInt *a3)
{
  v25[32] = *MEMORY[0x277D85DE8];
  v3 = *(this + 12);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(this + 5);
  v6 = 624 * v3 - 624;
  do
  {
    v7 = v5 + v4;
    v14 = &unk_286893110;
    v8 = *(v5 + v4 + 8);
    v16 = *(v5 + v4 + 24);
    v15 = v8;
    __dst = &v19;
    v18 = 0;
    if ((v5 + v4) != &v14 && *(v7 + 40))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = *(v7 + 48);
    v20 = *(v7 + 56);
    v19 = v9;
    v21[0] = v22;
    v21[1] = 0x1000000000;
    if (*(v7 + 72))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v21, (v5 + v4 + 64));
    }

    v10 = *(v5 + v4 + 336);
    v23 = *(v5 + v4 + 344);
    v22[32] = v10;
    v24[0] = v25;
    v24[1] = 0x1000000000;
    if (*(v5 + v4 + 360))
    {
      llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v24, (v5 + v4 + 352));
    }

    isFullDim = mlir::presburger::IntegerRelation::isFullDim(&v14, a2, a3);
    mlir::presburger::IntegerRelation::~IntegerRelation(&v14);
    if (isFullDim)
    {
      break;
    }

    v12 = v6 == v4;
    v4 += 624;
  }

  while (!v12);
  return isFullDim;
}

void mlir::presburger::PresburgerRelation::print(mlir::presburger::PresburgerRelation *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x14uLL)
  {
    qmemcpy(v4, "Number of Disjuncts: ", 21);
    *(a2 + 4) += 21;
    v6 = llvm::raw_ostream::operator<<(a2, *(this + 12));
    v7 = *(v6 + 4);
    if (*(v6 + 3) != v7)
    {
LABEL_3:
      *v7 = 10;
      ++*(v6 + 4);
      v8 = *(this + 12);
      if (!v8)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "Number of Disjuncts: ", 0x15uLL);
    v6 = llvm::raw_ostream::operator<<(v5, *(this + 12));
    v7 = *(v6 + 4);
    if (*(v6 + 3) != v7)
    {
      goto LABEL_3;
    }
  }

  llvm::raw_ostream::write(v6, "\n", 1uLL);
  v8 = *(this + 12);
  if (!v8)
  {
    return;
  }

LABEL_7:
  v9 = *(this + 5);
  v10 = 624 * v8;
  do
  {
    while (1)
    {
      mlir::presburger::IntegerRelation::print(v9, a2);
      v11 = *(a2 + 4);
      if (v11 >= *(a2 + 3))
      {
        break;
      }

      *(a2 + 4) = v11 + 1;
      *v11 = 10;
      v9 = (v9 + 624);
      v10 -= 624;
      if (!v10)
      {
        return;
      }
    }

    llvm::raw_ostream::write(a2, 10);
    v9 = (v9 + 624);
    v10 -= 624;
  }

  while (v10);
}

void mlir::presburger::PresburgerRelation::dump(mlir::presburger::PresburgerRelation *this)
{
  v2 = llvm::errs(this);

  mlir::presburger::PresburgerRelation::print(this, v2);
}

void mlir::presburger::PresburgerSet::getUniverse(int32x4_t *__return_ptr a1@<X8>, int32x4_t *this@<X0>)
{
  v2[78] = *MEMORY[0x277D85DE8];
  *a1 = *this;
  a1[1].i8[0] = this[1].i8[0];
  a1[1].i64[1] = &a1[2].i64[1];
  a1[2].i64[0] = 0;
  if (a1 != this)
  {
    if (this[2].i32[0])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  a1[2].i64[1] = &a1[3].i64[1];
  a1[3].i64[0] = 0x200000000;
  mlir::presburger::IntegerRelation::IntegerRelation(v2, 0, 0, (vaddvq_s32(*this) + 1), this);
}

mlir::presburger::PresburgerSet *mlir::presburger::PresburgerSet::PresburgerSet(mlir::presburger::PresburgerSet *this, const mlir::presburger::IntegerPolyhedron *a2)
{
  v3 = *(a2 + 4);
  *this = *(a2 + 1);
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 5) = this + 56;
  v4 = this + 40;
  *(this + 3) = v4;
  *(this + 4) = 0;
  *(this + 6) = 0x200000000;
  llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v4, a2);
  return this;
}

{
  v3 = *(a2 + 4);
  *this = *(a2 + 1);
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 5) = this + 56;
  v4 = this + 40;
  *(this + 3) = v4;
  *(this + 4) = 0;
  *(this + 6) = 0x200000000;
  llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v4, a2);
  return this;
}

mlir::presburger::PresburgerSet *mlir::presburger::PresburgerSet::PresburgerSet(mlir::presburger::PresburgerSet *this, const mlir::presburger::PresburgerRelation *a2)
{
  v3 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v3;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  if (this != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(this + 5) = this + 56;
  *(this + 6) = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(this + 40, a2 + 40);
  }

  return this;
}

{
  v3 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v3;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  if (this != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(this + 5) = this + 56;
  *(this + 6) = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(this + 40, a2 + 40);
  }

  return this;
}

void mlir::presburger::PresburgerSet::unionSet(__int128 *__return_ptr a1@<X8>, mlir::presburger::PresburgerSet *this@<X0>, const mlir::presburger::PresburgerRelation *a3@<X1>)
{
  v15[156] = *MEMORY[0x277D85DE8];
  v9 = *this;
  v10 = *(this + 16);
  __dst = &v13;
  v12 = 0;
  if (&v9 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v15;
  v14 = 0x200000000;
  if (*(this + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v13, this + 40);
  }

  mlir::presburger::PresburgerRelation::unionInPlace(&v9, a3);
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 3) = a1 + 40;
  *(a1 + 4) = 0;
  if (&v9 != a1 && v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 5) = a1 + 56;
  *(a1 + 6) = 0x200000000;
  if (v14)
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(a1 + 40, &v13);
    v5 = v13;
    if (!v14)
    {
      goto LABEL_14;
    }

    v6 = -624 * v14;
    v7 = v13 + 624 * v14 - 624;
    v8 = v7;
    do
    {
      (**v8)(v8);
      v8 -= 78;
      v7 -= 624;
      v6 += 624;
    }

    while (v6);
  }

  v5 = v13;
LABEL_14:
  if (v5 != v15)
  {
    free(v5);
  }

  if (__dst != &v13)
  {
    free(__dst);
  }
}

void mlir::presburger::PresburgerSet::intersect(__int128 *__return_ptr a1@<X8>, mlir::presburger::PresburgerSet *this@<X0>, const mlir::presburger::PresburgerRelation *a3@<X1>)
{
  v14[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::intersect(this, a3, &v8);
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 3) = a1 + 40;
  *(a1 + 4) = 0;
  if (&v8 != a1 && v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 5) = a1 + 56;
  *(a1 + 6) = 0x200000000;
  if (v13)
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(a1 + 40, &v12);
    v4 = v12;
    if (!v13)
    {
      goto LABEL_9;
    }

    v5 = -624 * v13;
    v6 = v12 + 624 * v13 - 624;
    v7 = v6;
    do
    {
      (**v7)(v7);
      v7 -= 78;
      v6 -= 624;
      v5 += 624;
    }

    while (v5);
  }

  v4 = v12;
LABEL_9:
  if (v4 != v14)
  {
    free(v4);
  }

  if (__src != &v12)
  {
    free(__src);
  }
}

void mlir::presburger::PresburgerSet::subtract(__int128 *__return_ptr a1@<X8>, mlir::presburger::PresburgerSet *this@<X0>, const mlir::presburger::PresburgerRelation *a3@<X1>)
{
  v14[156] = *MEMORY[0x277D85DE8];
  mlir::presburger::PresburgerRelation::subtract(&v8, this, a3);
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 3) = a1 + 40;
  *(a1 + 4) = 0;
  if (&v8 != a1 && v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 5) = a1 + 56;
  *(a1 + 6) = 0x200000000;
  if (v13)
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(a1 + 40, &v12);
    v4 = v12;
    if (!v13)
    {
      goto LABEL_9;
    }

    v5 = -624 * v13;
    v6 = v12 + 624 * v13 - 624;
    v7 = v6;
    do
    {
      (**v7)(v7);
      v7 -= 78;
      v6 -= 624;
      v5 += 624;
    }

    while (v5);
  }

  v4 = v12;
LABEL_9:
  if (v4 != v14)
  {
    free(v4);
  }

  if (__src != &v12)
  {
    free(__src);
  }
}

void mlir::presburger::PresburgerSet::coalesce(mlir::presburger::PresburgerSet *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v16 = *MEMORY[0x277D85DE8];
  mlir::presburger::SetCoalescer::SetCoalescer(v15, v1);
  mlir::presburger::SetCoalescer::coalesce(v15, &v8);
  mlir::presburger::SetCoalescer::~SetCoalescer(v15);
  *v3 = v8;
  *(v3 + 16) = v9;
  *(v3 + 24) = v3 + 40;
  *(v3 + 32) = 0;
  if (&v8 != v3 && v11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v3 + 40) = v3 + 56;
  *(v3 + 48) = 0x200000000;
  if (v13)
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v3 + 40, &v12);
    v4 = v12;
    if (!v13)
    {
      goto LABEL_9;
    }

    v5 = -624 * v13;
    v6 = v12 + 624 * v13 - 624;
    v7 = v6;
    do
    {
      (**v7)(v7);
      v7 -= 78;
      v6 -= 624;
      v5 += 624;
    }

    while (v5);
  }

  v4 = v12;
LABEL_9:
  if (v4 != &v14)
  {
    free(v4);
  }

  if (__src != &v12)
  {
    free(__src);
  }
}

mlir::presburger::SymbolicLexOpt *mlir::presburger::SymbolicLexOpt::SymbolicLexOpt(mlir::presburger::SymbolicLexOpt *this, const mlir::presburger::PresburgerSpace *a2)
{
  v3 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v3;
  *(this + 3) = this + 40;
  *(this + 4) = 0;
  if (this != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(this + 5) = this + 56;
  *(this + 6) = 0x400000000;
  mlir::presburger::PresburgerSpace::getDomainSpace(&v5, a2);
  *(this + 8056) = v5;
  *(this + 8072) = v6;
  *(this + 1010) = this + 8096;
  *(this + 1011) = 0;
  if ((this + 8056) != &v5 && v8)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(this + 1012) = this + 8112;
  *(this + 1013) = 0x200000000;
  if (__src != &v9)
  {
    free(__src);
  }

  return this;
}

char ***llvm::SmallVectorImpl<mlir::presburger::PWMAFunction::Piece>::operator=(char ***a1, char ***a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      llvm::SmallVectorImpl<mlir::presburger::PWMAFunction::Piece>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 2);
    v6 = *(a1 + 2);
    if (v6 < v5)
    {
      if (*(a1 + 3) < v5)
      {
        if (v6)
        {
          v7 = *a1;
          v8 = &(*a1)[250 * v6];
          do
          {
            mlir::presburger::MultiAffineFunction::~MultiAffineFunction((v8 - 696));
            v9 = (v8 - 1960);
            v10 = *(v8 - 245);
            v11 = *(v8 - 488);
            if (v11)
            {
              v12 = -624 * v11;
              v13 = &v10[624 * v11 - 624];
              v14 = v13;
              do
              {
                (**v14)(v14);
                v14 -= 78;
                v13 -= 624;
                v12 += 624;
              }

              while (v12);
              v10 = *v9;
            }

            if (v10 != v8 - 1944)
            {
              free(v10);
            }

            v15 = *(v8 - 247);
            if (v15 != v9)
            {
              free(v15);
            }

            v8 -= 2000;
          }

          while (v8 != v7);
        }

        *(a1 + 2) = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v19 = *a1;
      if (v6)
      {
        v20 = 2000 * v6;
        do
        {
          mlir::presburger::PWMAFunction::Piece::operator=(v19, v4);
          v4 += 2000;
          v19 += 250;
          v20 -= 2000;
        }

        while (v20);
        v19 = *a1;
        v21 = *a2;
        v22 = *(a2 + 2);
        if (v6 == v22)
        {
LABEL_54:
          *(a1 + 2) = v5;
          v43 = *(a2 + 2);
          if (v43)
          {
            v44 = &v21[2000 * v43];
            do
            {
              mlir::presburger::MultiAffineFunction::~MultiAffineFunction((v44 - 696));
              v45 = (v44 - 1960);
              v46 = *(v44 - 245);
              v47 = *(v44 - 488);
              if (v47)
              {
                v48 = -624 * v47;
                v49 = &v46[624 * v47 - 624];
                v50 = v49;
                do
                {
                  (**v50)(v50);
                  v50 -= 78;
                  v49 -= 624;
                  v48 += 624;
                }

                while (v48);
                v46 = *v45;
              }

              if (v46 != v44 - 1944)
              {
                free(v46);
              }

              v51 = *(v44 - 247);
              if (v51 != v45)
              {
                free(v51);
              }

              v44 -= 2000;
            }

            while (v44 != v21);
          }

LABEL_65:
          *(a2 + 2) = 0;
          return a1;
        }
      }

      else
      {
        LODWORD(v6) = 0;
        v21 = *a2;
        LODWORD(v22) = *(a2 + 2);
        if (!v22)
        {
          goto LABEL_54;
        }
      }

      v40 = &v19[250 * v6];
      v41 = &v21[2000 * v6];
      v42 = 2000 * v22 - 2000 * v6;
      do
      {
        v40 = mlir::presburger::PWMAFunction::Piece::Piece(v40, v41) + 2000;
        v41 += 125;
        v42 -= 2000;
      }

      while (v42);
      v21 = *a2;
      goto LABEL_54;
    }

    v16 = *a1;
    v53 = *(a2 + 2);
    if (v5)
    {
      v17 = 2000 * v5;
      do
      {
        mlir::presburger::PWMAFunction::Piece::operator=(v16, v4);
        v4 += 2000;
        v16 += 250;
        v17 -= 2000;
      }

      while (v17);
      v18 = &(*a1)[250 * *(a1 + 2)];
      if (v18 == v16)
      {
LABEL_39:
        *(a1 + 2) = v53;
        v30 = *(a2 + 2);
        if (v30)
        {
          v31 = *a2;
          v32 = &(*a2)[250 * v30];
          do
          {
            mlir::presburger::MultiAffineFunction::~MultiAffineFunction((v32 - 696));
            v33 = (v32 - 1960);
            v34 = *(v32 - 245);
            v35 = *(v32 - 488);
            if (v35)
            {
              v36 = -624 * v35;
              v37 = &v34[624 * v35 - 624];
              v38 = v37;
              do
              {
                (**v38)(v38);
                v38 -= 78;
                v37 -= 624;
                v36 += 624;
              }

              while (v36);
              v34 = *v33;
            }

            if (v34 != v32 - 1944)
            {
              free(v34);
            }

            v39 = *(v32 - 247);
            if (v39 != v33)
            {
              free(v39);
            }

            v32 -= 2000;
          }

          while (v32 != v31);
        }

        goto LABEL_65;
      }
    }

    else
    {
      v18 = &v16[250 * v6];
      if (v18 == v16)
      {
        goto LABEL_39;
      }
    }

    do
    {
      mlir::presburger::MultiAffineFunction::~MultiAffineFunction((v18 - 696));
      v23 = (v18 - 1960);
      v24 = *(v18 - 245);
      v25 = *(v18 - 488);
      if (v25)
      {
        v26 = -624 * v25;
        v27 = &v24[624 * v25 - 624];
        v28 = v27;
        do
        {
          (**v28)(v28);
          v28 -= 78;
          v27 -= 624;
          v26 += 624;
        }

        while (v26);
        v24 = *v23;
      }

      if (v24 != v18 - 1944)
      {
        free(v24);
      }

      v29 = *(v18 - 247);
      if (v29 != v23)
      {
        free(v29);
      }

      v18 -= 2000;
    }

    while (v18 != v16);
    goto LABEL_39;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::presburger::PWMAFunction::Piece>::assignRemote(char ***a1, char **a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = &v4[250 * v5];
    do
    {
      mlir::presburger::MultiAffineFunction::~MultiAffineFunction((v6 - 87));
      v7 = (v6 - 245);
      v8 = *(v6 - 245);
      v9 = *(v6 - 488);
      if (v9)
      {
        v10 = -624 * v9;
        v11 = &v8[624 * v9 - 624];
        v12 = v11;
        do
        {
          (**v12)(v12);
          v12 -= 78;
          v11 -= 624;
          v10 += 624;
        }

        while (v10);
        v8 = *v7;
      }

      if (v8 != (v6 - 243))
      {
        free(v8);
      }

      v13 = *(v6 - 247);
      if (v13 != v7)
      {
        free(v13);
      }

      v6 -= 250;
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 2))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 1);
  *(a1 + 1) = result;
  *a2 = (a2 + 2);
  a2[1] = 0;
  return result;
}

uint64_t mlir::presburger::PWMAFunction::Piece::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  if (a1 == a2)
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=((a1 + 40), a2 + 5);
    v9 = *(a2 + 1320);
    *(a1 + 1304) = *(a2 + 1304);
    *(a1 + 1320) = v9;
  }

  else
  {
    v6 = a2 + 2;
    v5 = *(a2 + 8);
    if (v5)
    {
      v7 = *(a1 + 24);
      if (v7 != (a1 + 40))
      {
        free(v7);
        v5 = *v6;
      }

      *(a1 + 24) = *(a2 + 3);
      v8 = *(a2 + 9);
      *(a1 + 32) = v5;
      *(a1 + 36) = v8;
      *(a2 + 3) = a2 + 40;
      *(a2 + 9) = 0;
    }

    else
    {
      v6 = (a1 + 32);
    }

    *v6 = 0;
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=((a1 + 40), a2 + 5);
    v10 = *(a2 + 1304);
    *(a1 + 1320) = *(a2 + 1320);
    *(a1 + 1304) = v10;
    v11 = *(a2 + 334);
    if (v11)
    {
      v12 = a2 + 334;
      v13 = *(a1 + 1328);
      if (v13 != (a1 + 1344))
      {
        free(v13);
        v11 = *v12;
      }

      *(a1 + 1328) = *(a2 + 166);
      *(a1 + 1336) = v11;
      *(a1 + 1340) = *(a2 + 335);
      *(a2 + 166) = a2 + 84;
      *(a2 + 335) = 0;
    }

    else
    {
      v12 = (a1 + 1336);
    }

    *v12 = 0;
  }

  v14 = *(a2 + 168);
  *(a1 + 1352) = *(a2 + 338);
  *(a1 + 1344) = v14;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a1 + 1360, a2 + 170);
  v15 = *(a2 + 410);
  *(a1 + 1632) = *(a2 + 204);
  *(a1 + 1640) = v15;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a1 + 1648, a2 + 206);
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a1 + 1920, a2 + 240);
  return a1;
}

void llvm::SmallVectorTemplateBase<mlir::presburger::PWMAFunction::Piece,false>::moveElementsForGrow(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = *a1;
    v6 = 2000 * v2;
    do
    {
      mlir::presburger::PWMAFunction::Piece::Piece(a2, v5);
      a2 += 2000;
      v5 += 125;
      v6 -= 2000;
    }

    while (v6);
    v7 = *(a1 + 2);
    if (v7)
    {
      v8 = *a1;
      v9 = *a1 + 2000 * v7;
      do
      {
        mlir::presburger::MultiAffineFunction::~MultiAffineFunction((v9 - 696));
        v10 = (v9 - 1960);
        v11 = *(v9 - 1960);
        v12 = *(v9 - 1952);
        if (v12)
        {
          v13 = -624 * v12;
          v14 = v11 + 624 * v12 - 624;
          v15 = v14;
          do
          {
            (**v15)(v15);
            v15 -= 78;
            v14 -= 624;
            v13 += 624;
          }

          while (v13);
          v11 = *v10;
        }

        if (v11 != (v9 - 1944))
        {
          free(v11);
        }

        v16 = *(v9 - 1976);
        if (v16 != v10)
        {
          free(v16);
        }

        v9 -= 2000;
      }

      while (v9 != v8);
    }
  }
}

uint64_t mlir::presburger::PWMAFunction::Piece::Piece(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  v5 = (a1 + 40);
  *(a1 + 24) = a1 + 40;
  v6 = a1 + 24;
  *(a1 + 32) = 0;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(v6, a2 + 3);
  }

  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v5, a2 + 5);
  }

  v7 = *(a2 + 1304);
  *(a1 + 1320) = *(a2 + 1320);
  *(a1 + 1304) = v7;
  *(a1 + 1328) = a1 + 1344;
  *(a1 + 1336) = 0;
  if (*(a2 + 334))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(a1 + 1328, a2 + 166);
  }

  v8 = *(a2 + 168);
  *(a1 + 1352) = *(a2 + 338);
  *(a1 + 1344) = v8;
  *(a1 + 1360) = a1 + 1376;
  *(a1 + 1368) = 0x1000000000;
  if (*(a2 + 342))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a1 + 1360, a2 + 170);
  }

  v9 = *(a2 + 204);
  *(a1 + 1640) = *(a2 + 410);
  *(a1 + 1632) = v9;
  *(a1 + 1648) = a1 + 1664;
  *(a1 + 1656) = 0x1000000000;
  if (*(a2 + 414))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a1 + 1648, a2 + 206);
  }

  *(a1 + 1920) = a1 + 1936;
  *(a1 + 1928) = 0x400000000;
  if (*(a2 + 482))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a1 + 1920, a2 + 240);
  }

  return a1;
}

{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0;
  if (a1 != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x200000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(a1 + 40, a2 + 40);
  }

  v5 = *(a2 + 1304);
  *(a1 + 1320) = *(a2 + 1320);
  *(a1 + 1304) = v5;
  *(a1 + 1328) = a1 + 1344;
  *(a1 + 1336) = 0;
  if (a1 != a2 && *(a2 + 334))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = *(a2 + 168);
  *(a1 + 1352) = *(a2 + 338);
  *(a1 + 1344) = v6;
  *(a1 + 1360) = a1 + 1376;
  *(a1 + 1368) = 0x1000000000;
  if (*(a2 + 342))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 1360), a2 + 170);
  }

  v7 = *(a2 + 204);
  *(a1 + 1640) = *(a2 + 410);
  *(a1 + 1632) = v7;
  *(a1 + 1648) = a1 + 1664;
  *(a1 + 1656) = 0x1000000000;
  if (*(a2 + 414))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 1648), a2 + 206);
  }

  *(a1 + 1920) = a1 + 1936;
  *(a1 + 1928) = 0x400000000;
  if (*(a2 + 482))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 1920), a2 + 240);
  }

  return a1;
}

uint64_t getSetDifference(mlir::presburger::IntegerRelation,mlir::presburger::PresburgerRelation const&)::Frame::Frame(uint64_t a1, int a2, __int128 *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  v12 = *a3;
  v13 = *(a3 + 16);
  *(a1 + 32) = a1 + 48;
  *(a1 + 24) = v13;
  *(a1 + 8) = v12;
  *(a1 + 40) = 0;
  if ((a1 + 8) != a3 && *(a3 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a1 + 48) = *(a3 + 5);
  *(a1 + 56) = &unk_286893110;
  v14 = *(a4 + 8);
  v15 = *(a4 + 24);
  *(a1 + 88) = a1 + 104;
  *(a1 + 80) = v15;
  *(a1 + 64) = v14;
  *(a1 + 96) = 0;
  if (a1 + 56 != a4 && *(a4 + 40))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = *(a4 + 48);
  *(a1 + 112) = *(a4 + 56);
  *(a1 + 104) = v16;
  *(a1 + 120) = a1 + 136;
  *(a1 + 128) = 0x1000000000;
  if (*(a4 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 120), (a4 + 64));
  }

  v17 = *(a4 + 336);
  *(a1 + 400) = *(a4 + 344);
  *(a1 + 392) = v17;
  *(a1 + 408) = a1 + 424;
  *(a1 + 416) = 0x1000000000;
  if (*(a4 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 408), (a4 + 352));
  }

  *(a1 + 680) = a1 + 696;
  *(a1 + 688) = 0x800000000;
  if (((4 * a6) >> 2) >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = 0;
  v19 = 4 * a6;
  if (a6)
  {
    memcpy(*(a1 + 680), a5, v19);
    v18 = *(a1 + 688);
  }

  *(a1 + 688) = v18 + (v19 >> 2);
  *(a1 + 728) = a7;
  return a1;
}

void getIneqCoeffsFromIdx(const mlir::presburger::IntegerRelation *a1, uint64_t a2, uint64_t a3)
{
  if (a3 < *(a2 + 336))
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::getRow();
}

uint64_t getSetDifference(mlir::presburger::IntegerRelation,mlir::presburger::PresburgerRelation const&)::Frame::Frame(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 32) = a1 + 48;
  v6 = a1 + 32;
  *(v6 - 8) = v5;
  *(v6 - 24) = v4;
  *(v6 + 8) = 0;
  if (*(a2 + 40))
  {
    llvm::SmallVectorImpl<mlir::presburger::Identifier>::operator=(v6, (a2 + 32));
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = &unk_286893110;
  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v7;
  *(a1 + 88) = a1 + 104;
  *(a1 + 96) = 0;
  if (a1 != a2 && *(a2 + 96))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v8;
  *(a1 + 120) = a1 + 136;
  *(a1 + 128) = 0x1000000000;
  if (*(a2 + 128))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 120), (a2 + 120));
  }

  v9 = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 392) = v9;
  *(a1 + 408) = a1 + 424;
  *(a1 + 416) = 0x1000000000;
  if (*(a2 + 416))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 408), (a2 + 408));
  }

  *(a1 + 680) = a1 + 696;
  *(a1 + 688) = 0x800000000;
  if (*(a2 + 688))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 680, (a2 + 680));
  }

  *(a1 + 728) = *(a2 + 728);
  return a1;
}

uint64_t mlir::presburger::SimplexBase::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a1 + 40), (a2 + 40));
  *(a1 + 312) = *(a2 + 312);
  if (a1 == a2)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<int,8u>>::operator=((a1 + 368), (a2 + 368));
    return a1;
  }

  v6 = *(a2 + 328);
  v7 = *(a1 + 328);
  if (v7 >= v6)
  {
    if (v6)
    {
      memmove(*(a1 + 320), *(a2 + 320), 4 * v6);
    }
  }

  else
  {
    if (*(a1 + 332) < v6)
    {
      *(a1 + 328) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v7)
    {
      memmove(*(a1 + 320), *(a2 + 320), 4 * v7);
      v9 = *(a2 + 328) - v7;
      if (!v9)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v7 = 0;
    v9 = *(a2 + 328);
    if (*(a2 + 328))
    {
LABEL_10:
      memcpy((*(a1 + 320) + 4 * v7), (*(a2 + 320) + 4 * v7), 4 * v9);
    }
  }

LABEL_11:
  *(a1 + 328) = v6;
  llvm::SmallVectorImpl<llvm::SmallVector<int,8u>>::operator=((a1 + 368), (a2 + 368));
  v10 = (a1 + 768);
  v11 = *(a2 + 776);
  v12 = *(a1 + 776);
  if (v12 >= v11)
  {
    if (v11)
    {
      memmove(*v10, *(a2 + 768), 4 * v11);
    }
  }

  else
  {
    if (*(a1 + 780) < v11)
    {
      *(a1 + 776) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v12)
    {
      memmove(*v10, *(a2 + 768), 4 * v12);
      v13 = *(a2 + 776) - v12;
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v12 = 0;
    v13 = *(a2 + 776);
    if (*(a2 + 776))
    {
LABEL_18:
      memcpy(*v10 + 4 * v12, (*(a2 + 768) + 4 * v12), 4 * v13);
    }
  }

LABEL_19:
  *(a1 + 776) = v11;
  v14 = (a1 + 816);
  v15 = *(a2 + 824);
  v16 = *(a1 + 824);
  if (v16 >= v15)
  {
    if (v15)
    {
      memmove(*v14, *(a2 + 816), 4 * v15);
    }
  }

  else
  {
    if (*(a1 + 828) < v15)
    {
      *(a1 + 824) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v16)
    {
      memmove(*v14, *(a2 + 816), 4 * v16);
      v17 = *(a2 + 824) - v16;
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v16 = 0;
    v17 = *(a2 + 824);
    if (*(a2 + 824))
    {
LABEL_26:
      memcpy(*v14 + 4 * v16, (*(a2 + 816) + 4 * v16), 4 * v17);
    }
  }

LABEL_27:
  *(a1 + 824) = v15;
  v18 = (a1 + 864);
  v19 = *(a2 + 872);
  v20 = *(a1 + 872);
  if (v20 >= v19)
  {
    if (v19)
    {
      memmove(*v18, *(a2 + 864), 12 * v19 - 3);
    }
  }

  else
  {
    if (*(a1 + 876) < v19)
    {
      *(a1 + 872) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v20)
    {
      memmove(*v18, *(a2 + 864), 12 * v20 - 3);
      v21 = *(a2 + 872) - v20;
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v20 = 0;
    v21 = *(a2 + 872);
    if (*(a2 + 872))
    {
LABEL_34:
      memcpy(*v18 + 12 * v20, (*(a2 + 864) + 12 * v20), 12 * v21);
    }
  }

LABEL_35:
  *(a1 + 872) = v19;
  v22 = (a1 + 976);
  v23 = *(a2 + 984);
  v24 = *(a1 + 984);
  if (v24 >= v23)
  {
    if (v23)
    {
      memmove(*v22, *(a2 + 976), 12 * v23 - 3);
    }

    goto LABEL_43;
  }

  if (*(a1 + 988) < v23)
  {
    *(a1 + 984) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v24)
  {
    v24 = 0;
    v25 = *(a2 + 984);
    if (!*(a2 + 984))
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  memmove(*v22, *(a2 + 976), 12 * v24 - 3);
  v25 = *(a2 + 984) - v24;
  if (v25)
  {
LABEL_42:
    memcpy(*v22 + 12 * v24, (*(a2 + 976) + 12 * v24), 12 * v25);
  }

LABEL_43:
  *(a1 + 984) = v23;
  return a1;
}

uint64_t *llvm::SmallVectorImpl<llvm::SmallVector<int,8u>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 == a2)
  {
    return v2;
  }

  v4 = *(a2 + 2);
  v5 = *(a1 + 2);
  v40 = *(a2 + 2);
  if (v5 >= v4)
  {
    if (!v4)
    {
      v17 = *a1;
      v18 = *a1;
LABEL_42:
      v27 = v17 + 48 * v5;
      while (v27 != v18)
      {
        v29 = *(v27 - 48);
        v27 -= 48;
        v28 = v29;
        if ((v27 + 16) != v29)
        {
          free(v28);
        }
      }

      goto LABEL_49;
    }

    v8 = 0;
    v9 = *a2;
    v10 = *a1;
    v11 = 48 * v4;
    while (1)
    {
      if (v9 == v10)
      {
        goto LABEL_12;
      }

      v12 = v10 + v8;
      v13 = v9 + v8;
      v14 = *(v9 + v8 + 8);
      v15 = *(v10 + v8 + 8);
      if (v15 >= v14)
      {
        if (v14)
        {
          memmove(*v12, *v13, 4 * v14);
        }

        goto LABEL_11;
      }

      if (*(v10 + v8 + 12) < v14)
      {
        *(v12 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v15)
      {
        memmove(*v12, *v13, 4 * v15);
        v16 = *(v13 + 8) - v15;
        if (v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v15 = 0;
        v16 = *(v13 + 8);
        if (*(v13 + 8))
        {
LABEL_23:
          memcpy((*v12 + 4 * v15), (*v13 + 4 * v15), 4 * v16);
        }
      }

LABEL_11:
      *(v12 + 8) = v14;
LABEL_12:
      v8 += 48;
      if (v11 == v8)
      {
        v17 = *v2;
        LODWORD(v5) = *(v2 + 2);
        v18 = v10 + v8;
        goto LABEL_42;
      }
    }
  }

  if (*(a1 + 3) < v4)
  {
    if (v5)
    {
      v6 = (*a1 + 48 * v5 - 48);
      v7 = -48 * v5;
      do
      {
        if (v6 + 2 != *v6)
        {
          free(*v6);
        }

        v6 -= 6;
        v7 += 48;
      }

      while (v7);
    }

    *(v2 + 2) = 0;
    llvm::SmallVectorTemplateBase<llvm::SmallVector<int,8u>,false>::grow(v2, v4);
  }

  if (v5)
  {
    v19 = 0;
    v20 = *a2;
    v21 = *a1;
    while (1)
    {
      if (v20 == v21)
      {
        goto LABEL_28;
      }

      v22 = v21 + v19;
      v23 = v20 + v19;
      v24 = *(v20 + v19 + 8);
      v25 = *(v21 + v19 + 8);
      if (v25 >= v24)
      {
        if (v24)
        {
          memmove(*v22, *v23, 4 * v24);
        }

        goto LABEL_27;
      }

      if (*(v21 + v19 + 12) < v24)
      {
        *(v22 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v25)
      {
        memmove(*v22, *v23, 4 * v25);
        v26 = *(v23 + 8) - v25;
        if (v26)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v25 = 0;
        v26 = *(v23 + 8);
        if (*(v23 + 8))
        {
LABEL_39:
          memcpy((*v22 + 4 * v25), (*v23 + 4 * v25), 4 * v26);
        }
      }

LABEL_27:
      *(v22 + 8) = v24;
LABEL_28:
      v19 += 48;
      if (48 * v5 == v19)
      {
        v2 = a1;
        v30 = *(a2 + 2);
        if (v5 != v30)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }
    }
  }

  v5 = 0;
  v30 = *(a2 + 2);
  if (*(a2 + 2))
  {
LABEL_51:
    v32 = *a2;
    v33 = *v2;
    v34 = 48 * v5;
    v35 = 48 * v30;
    do
    {
      v36 = (v33 + v34);
      v37 = (v33 + v34 + 16);
      *v36 = v37;
      v36[1] = 0x800000000;
      if (v32 != v33)
      {
        v38 = *(v32 + v34 + 8);
        if (*(v32 + v34 + 8))
        {
          if (v38 >= 9)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          memcpy(v37, *(v32 + v34), 4 * *(v32 + v34 + 8));
          *(v36 + 2) = v38;
        }
      }

      v33 += 48;
      v35 -= 48;
      v32 += 48;
    }

    while (v34 != v35);
  }

LABEL_49:
  *(v2 + 2) = v40;
  return v2;
}

void mlir::presburger::SetCoalescer::~SetCoalescer(mlir::presburger::SetCoalescer *this)
{
  v2 = *(this + 469);
  if (v2 != this + 3768)
  {
    free(v2);
  }

  v3 = *(this + 463);
  if (v3 != this + 3720)
  {
    free(v3);
  }

  v4 = *(this + 457);
  if (v4 != this + 3672)
  {
    free(v4);
  }

  v5 = *(this + 451);
  if (v5 != this + 3624)
  {
    free(v5);
  }

  v6 = *(this + 437);
  v7 = *(this + 876);
  if (v7)
  {
    v8 = &v6[48 * v7];
    v9 = v8;
    do
    {
      v11 = *(v9 - 6);
      v9 -= 48;
      v10 = v11;
      v12 = *(v9 + 2);
      if (v12)
      {
        v13 = 16 * v12;
        v14 = &v10[16 * v12 - 8];
        v15 = -v13;
        v16 = v14;
        do
        {
          v18 = *v16;
          v16 -= 4;
          v17 = v18;
          if (v18)
          {
            if (v17 >= 0x41)
            {
              v19 = *(v14 - 8);
              if (v19)
              {
                MEMORY[0x259C63150](v19, 0x1000C8000313F17);
              }
            }
          }

          v14 = v16;
          v15 += 16;
        }

        while (v15);
        v10 = *v9;
      }

      if (v10 != v8 - 32)
      {
        free(v10);
      }

      v8 = v9;
    }

    while (v9 != v6);
    v6 = *(this + 437);
  }

  if (v6 != this + 3512)
  {
    free(v6);
  }

  v20 = *(this + 163);
  v21 = *(this + 328);
  if (v21)
  {
    v22 = -1088 * v21;
    v23 = &v20[1088 * v21 - 1088];
    v24 = v23;
    do
    {
      (**v24)(v24);
      v24 -= 136;
      v23 -= 1088;
      v22 += 1088;
    }

    while (v22);
    v20 = *(this + 163);
  }

  if (v20 != this + 1320)
  {
    free(v20);
  }

  v26 = (this + 40);
  v25 = *(this + 5);
  v27 = *(this + 12);
  if (v27)
  {
    v28 = -624 * v27;
    v29 = &v25[624 * v27 - 624];
    v30 = v29;
    do
    {
      (**v30)(v30);
      v30 -= 78;
      v29 -= 624;
      v28 += 624;
    }

    while (v28);
    v25 = *v26;
  }

  if (v25 != this + 56)
  {
    free(v25);
  }

  v31 = *(this + 3);
  if (v31 != v26)
  {
    free(v31);
  }
}

mlir::presburger::SimplexBase *mlir::presburger::SimplexBase::SimplexBase(mlir::presburger::SimplexBase *this, const mlir::presburger::SimplexBase *a2)
{
  *this = &unk_286893250;
  v4 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 1) = v4;
  v5 = *(a2 + 3);
  v6 = *(a2 + 8);
  *(this + 5) = this + 56;
  v7 = this + 40;
  *(v7 - 2) = v6;
  *(v7 - 2) = v5;
  *(v7 + 1) = 0x1000000000;
  if (*(a2 + 12))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v7, a2 + 5);
  }

  *(this + 312) = *(a2 + 312);
  *(this + 40) = this + 336;
  *(this + 41) = 0x800000000;
  if (this != a2)
  {
    v8 = *(a2 + 82);
    if (v8)
    {
      if (v8 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(this + 336, *(a2 + 40), 4 * *(a2 + 82));
      *(this + 82) = v8;
    }
  }

  *(this + 46) = this + 384;
  *(this + 47) = 0x800000000;
  if (*(a2 + 94))
  {
    llvm::SmallVectorImpl<llvm::SmallVector<int,8u>>::operator=(this + 46, a2 + 46);
  }

  *(this + 96) = this + 784;
  *(this + 97) = 0x800000000;
  if (this != a2)
  {
    v9 = *(a2 + 194);
    if (v9)
    {
      if (v9 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(this + 784, *(a2 + 96), 4 * *(a2 + 194));
      *(this + 194) = v9;
    }
  }

  *(this + 102) = this + 832;
  *(this + 103) = 0x800000000;
  if (this != a2)
  {
    v10 = *(a2 + 206);
    if (v10)
    {
      if (v10 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(this + 832, *(a2 + 102), 4 * *(a2 + 206));
      *(this + 206) = v10;
    }
  }

  *(this + 108) = this + 880;
  *(this + 109) = 0x800000000;
  if (this != a2)
  {
    v11 = *(a2 + 218);
    if (v11)
    {
      if (v11 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(this + 880, *(a2 + 108), 12 * *(a2 + 218));
      *(this + 218) = v11;
    }
  }

  *(this + 122) = this + 992;
  *(this + 123) = 0x800000000;
  if (this != a2)
  {
    v12 = *(a2 + 246);
    if (v12)
    {
      if (v12 >= 9)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(this + 992, *(a2 + 122), 12 * *(a2 + 246));
      *(this + 246) = v12;
    }
  }

  return this;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::DynamicAPInt,2u>,false>::moveElementsForGrow(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v5 = *a1;
    v6 = 48 * v2;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x200000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a2, v5);
      }

      a2 += 6;
      v5 += 48;
      v6 -= 48;
    }

    while (v6);
    v7 = *(a1 + 2);
    if (v7)
    {
      v8 = *a1;
      v9 = *a1 + 48 * v7;
      v10 = v9;
      do
      {
        v12 = *(v10 - 48);
        v10 -= 48;
        v11 = v12;
        v13 = *(v10 + 8);
        if (v13)
        {
          v14 = 16 * v13;
          v15 = v11 + 16 * v13 - 8;
          v16 = -v14;
          v17 = v15;
          do
          {
            v19 = *v17;
            v17 -= 4;
            v18 = v19;
            if (v19)
            {
              if (v18 >= 0x41)
              {
                v20 = *(v15 - 8);
                if (v20)
                {
                  MEMORY[0x259C63150](v20, 0x1000C8000313F17);
                }
              }
            }

            v15 = v17;
            v16 += 16;
          }

          while (v16);
          v11 = *v10;
        }

        if (v11 != (v9 - 32))
        {
          free(v11);
        }

        v9 = v10;
      }

      while (v10 != v8);
    }
  }
}

llvm::raw_ostream *mlir::presburger::Identifier::print(mlir::presburger::Identifier *this, llvm::raw_ostream *a2)
{
  v3 = *(a2 + 4);
  if ((*(a2 + 3) - v3) > 2)
  {
    *(v3 + 2) = 60;
    *v3 = 25673;
    *(a2 + 4) += 3;
    result = llvm::raw_ostream::operator<<(a2, *this);
    v6 = *(result + 4);
    if (*(result + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = llvm::raw_ostream::write(a2, "Id<", 3uLL);
    result = llvm::raw_ostream::operator<<(v4, *this);
    v6 = *(result + 4);
    if (*(result + 3) != v6)
    {
LABEL_3:
      *v6 = 62;
      ++*(result + 4);
      return result;
    }
  }

  return llvm::raw_ostream::write(result, ">", 1uLL);
}

llvm::raw_ostream *mlir::presburger::Identifier::dump(mlir::presburger::Identifier *this)
{
  v2 = llvm::errs(this);
  v3 = *(v2 + 4);
  if ((*(v2 + 3) - v3) <= 2)
  {
    v4 = llvm::raw_ostream::write(v2, "Id<", 3uLL);
    v5 = llvm::raw_ostream::operator<<(v4, *this);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = llvm::raw_ostream::write(v5, ">", 1uLL);
    result = llvm::errs(v9);
    v8 = *(result + 4);
    if (*(result + 3) != v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(v3 + 2) = 60;
  *v3 = 25673;
  *(v2 + 4) += 3;
  v5 = llvm::raw_ostream::operator<<(v2, *this);
  v6 = *(v5 + 4);
  if (*(v5 + 3) == v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  *v6 = 62;
  ++*(v5 + 4);
  result = llvm::errs(v5);
  v8 = *(result + 4);
  if (*(result + 3) != v8)
  {
LABEL_4:
    *v8 = 10;
    ++*(result + 4);
    return result;
  }

LABEL_7:

  return llvm::raw_ostream::write(result, "\n", 1uLL);
}

uint64_t *mlir::presburger::PresburgerSpace::getDomainSpace@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this;
  *a1 = *this;
  *(a1 + 16) = *(this + 16);
  a1[3] = (a1 + 5);
  v4 = (a1 + 3);
  a1[4] = 0;
  if (a1 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(a1 + 1) -= v5;
    if (*(a1 + 16) == 1)
    {
      v6 = a1[3];
      v7 = &v6[24 * *a1];
      v8 = &v7[24 * v5];
      v9 = v6 - v8;
      if (v6 != v8)
      {
        this = memmove(&v6[24 * *a1], v8, v6 - v8);
        v6 = *v4;
      }

      *(a1 + 8) = -1431655765 * ((&v7[v9] - v6) >> 3);
    }
  }

  v10 = *v2;
  v11 = *a1;
  if (*(a1 + 16) == 1)
  {
    v12 = (*v4 + 24 * v11);
    v18 = 0uLL;
    v19 = 0;
    this = llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert((a1 + 3), v12, v10, &v18);
    if (v10)
    {
      this = memmove(*v4 + 24 * v11, *v4, 24 * v10);
    }

    v13 = a1[3];
    v14 = *(a1 + 8);
    v15 = 24 * (v14 - v10);
    if (v14 == v10)
    {
      v16 = a1[3];
    }

    else
    {
      this = memmove(a1[3], (v13 + 24 * v10), v15);
      v16 = *v4;
    }

    *(a1 + 8) = -1431655765 * ((v13 + v15 - v16) >> 3);
    v11 = *a1;
  }

  v17 = *(a1 + 1) + v10;
  *a1 = v11 - v10;
  *(a1 + 1) = v17;
  return this;
}

unsigned int *mlir::presburger::PresburgerSpace::removeVarRange(unsigned int *result, int a2, unsigned int a3, unsigned int a4)
{
  v4 = a4 - a3;
  if (a4 > a3)
  {
    if (a2)
    {
      if (a2 == 3)
      {
        result[1] -= v4;
      }

      else if (a2 == 2)
      {
        *result -= v4;
      }

      else
      {
        result[3] -= v4;
        if (a2 == 1)
        {
          return result;
        }
      }
    }

    else
    {
      result[2] -= v4;
    }

    if (result[4])
    {
      v5 = *(result + 3);
      if (a2)
      {
        if (a2 == 2)
        {
          v6 = 0;
          v7 = *(result + 3);
        }

        else
        {
          v6 = *result;
          v7 = v5 + 24 * *result;
        }
      }

      else
      {
        v6 = result[1] + *result;
        v7 = v5 + 24 * v6;
      }

      v8 = v7 + 24 * a3;
      v9 = (v5 + 24 * v6 + 24 * a4);
      v10 = (v5 + 24 * result[8]);
      v11 = v10 - v9;
      if (v10 != v9)
      {
        v12 = result;
        memmove((v7 + 24 * a3), v9, v10 - v9);
        result = v12;
        v5 = *(v12 + 3);
      }

      result[8] = -1431655765 * ((v8 + v11 - v5) >> 3);
    }
  }

  return result;
}

unsigned __int8 *mlir::presburger::PresburgerSpace::convertVarKind(unsigned __int8 *result, int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  v9 = result;
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = a3;
      if (!a5)
      {
LABEL_16:
        v11 = *(result + 1) + *result + a6;
        v12 = result[16];
        if (a2 != 1)
        {
LABEL_17:
          if (v12)
          {
            v13 = result + 24;
            v14 = (*(result + 3) + 24 * v11);
            v29 = 0uLL;
            v30 = 0;
            result = llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert((result + 24), v14, a4, &v29);
            if (v11 >= v10)
            {
              v16 = 0;
            }

            else
            {
              v16 = a4;
            }

            v17 = v16 + v10;
            if (a4)
            {
              result = memmove((*v13 + 24 * v11), (*v13 + 24 * v17), 24 * a4);
            }

            v18 = *(v9 + 3);
            v19 = (v18 + 24 * v17);
            v20 = &v19[24 * a4];
            v21 = (v18 + 24 * *(v9 + 8));
            v22 = v21 - v20;
            if (v21 != v20)
            {
              result = memmove(v19, v20, v21 - v20);
              v18 = *v13;
            }

            v23 = &v19[v22];
LABEL_33:
            *(v9 + 8) = -1431655765 * (&v23[-v18] >> 3);
            goto LABEL_34;
          }
        }

LABEL_26:
        if (v12)
        {
          v24 = (*(result + 3) + 24 * v11);
          v29 = 0uLL;
          v30 = 0;
          result = llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert((result + 24), v24, a4, &v29);
        }

        goto LABEL_34;
      }
    }

    else if (a2 == 3)
    {
      v10 = *result + a3;
      if (!a5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v10 = *(result + 1) + *result + *(result + 2) + a3;
      if (!a5)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = *(result + 1) + *result + a3;
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (a5 == 2)
  {
    v11 = a6;
    v12 = result[16];
    if (a2 != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (a5 == 3)
  {
    v11 = *result + a6;
    v12 = result[16];
    if (a2 != 1)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (a2 != 1 && (result[16] & 1) != 0)
  {
    v18 = *(result + 3);
    v25 = v18 + 24 * v10;
    v26 = (v25 + 24 * a4);
    v27 = (v18 + 24 * *(result + 8));
    v28 = v27 - v26;
    if (v27 != v26)
    {
      result = memmove((v18 + 24 * v10), v26, v27 - v26);
      v18 = *(v9 + 3);
    }

    v23 = (v25 + v28);
    goto LABEL_33;
  }

LABEL_34:
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      *(v9 + 1) -= a4;
      if (a5 <= 1)
      {
LABEL_45:
        if (a5)
        {
          *(v9 + 3) += a4;
        }

        else
        {
          *(v9 + 2) += a4;
        }

        return result;
      }
    }

    else
    {
      *v9 -= a4;
      if (a5 <= 1)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    *(v9 + 3) -= a4;
    if (a5 <= 1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    *(v9 + 2) -= a4;
    if (a5 <= 1)
    {
      goto LABEL_45;
    }
  }

  if (a5 == 3)
  {
    *(v9 + 1) += a4;
  }

  else
  {
    *v9 += a4;
  }

  return result;
}

const void **mlir::presburger::PresburgerSpace::getRangeSpace@<X0>(const void **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *this;
  *(a2 + 16) = *(this + 16);
  *(a2 + 24) = a2 + 40;
  v3 = (a2 + 24);
  *(a2 + 32) = 0;
  if (a2 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = *this;
  if (v4)
  {
    *a2 -= v4;
    if (*(a2 + 16) == 1)
    {
      v5 = *v3;
      v6 = -24 * v4;
      this = memmove(*v3, &v5[24 * v4], v6);
      *(a2 + 32) = -1431655765 * ((&v5[v6] - *v3) >> 3);
    }
  }

  return this;
}

const void **mlir::presburger::PresburgerSpace::getSpaceWithoutLocals@<X0>(const void **this@<X0>, const void **a2@<X8>)
{
  *a2 = *this;
  *(a2 + 16) = *(this + 16);
  a2[3] = a2 + 5;
  a2[4] = 0;
  if (a2 != this && *(this + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(a2 + 3) -= v3;
  }

  return this;
}

uint64_t mlir::presburger::PresburgerSpace::getNumVarKind(unsigned int *a1, int a2)
{
  v2 = a1 + 2;
  v3 = a1 + 3;
  if (a2 == 3)
  {
    v3 = a1 + 1;
  }

  if (a2 == 2)
  {
    v3 = a1;
  }

  if (a2)
  {
    v2 = v3;
  }

  return *v2;
}

uint64_t mlir::presburger::PresburgerSpace::getVarKindOffset(unsigned int *a1, int a2)
{
  switch(a2)
  {
    case 0:
      return a1[1] + *a1;
    case 2:
      return 0;
    case 3:
      return *a1;
  }

  return a1[1] + *a1 + a1[2];
}

uint64_t mlir::presburger::PresburgerSpace::getVarKindEnd(unsigned int *a1, int a2)
{
  switch(a2)
  {
    case 0:
      return a1[2] + a1[1] + *a1;
    case 2:
      return *a1;
    case 3:
      return a1[1] + *a1;
  }

  return a1[3] + a1[1] + *a1 + a1[2];
}

uint64_t mlir::presburger::PresburgerSpace::getVarKindOverlap(unsigned int *a1, int a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v4 = 0;
    }

    else if (a2 == 3)
    {
      v5 = *a1++;
      v4 = v5;
    }

    else
    {
      v4 = a1[1] + *a1 + a1[2];
      a1 += 3;
    }
  }

  else
  {
    v6 = *a1;
    v7 = a1[1];
    a1 += 2;
    v4 = v7 + v6;
  }

  v8 = *a1 + v4;
  if (v4 <= a3)
  {
    v4 = a3;
  }

  if (v8 >= a4)
  {
    v8 = a4;
  }

  v9 = v8 >= v4;
  v10 = v8 - v4;
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::presburger::PresburgerSpace::getVarKindAt(mlir::presburger::PresburgerSpace *this, unsigned int a2)
{
  if (*this > a2)
  {
    return 2;
  }

  v3 = *(this + 1) + *this;
  if (v3 <= a2)
  {
    return *(this + 2) + v3 <= a2;
  }

  else
  {
    return 3;
  }
}

uint64_t mlir::presburger::PresburgerSpace::insertVar(uint64_t a1, int a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  switch(a2)
  {
    case 0:
      v4 = (*a1 + a3 + *(a1 + 4));
      *(a1 + 8) += a4;
      if (*(a1 + 16) != 1)
      {
        return v4;
      }

      goto LABEL_9;
    case 3:
      v4 = (*a1 + a3);
      *(a1 + 4) += a4;
      if (*(a1 + 16) != 1)
      {
        return v4;
      }

LABEL_9:
      v6 = *(a1 + 24);
      v8 = 0uLL;
      v9 = 0;
      llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert(a1 + 24, (v6 + 24 * v4), a4, &v8);
      return v4;
    case 2:
      *a1 += a4;
      if (*(a1 + 16) == 1)
      {
        goto LABEL_9;
      }

      return v4;
  }

  v7 = (*a1 + a3 + *(a1 + 4) + *(a1 + 8));
  *(a1 + 12) += a4;
  return v7;
}

char *llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert(uint64_t a1, __int128 *a2, unint64_t a3, __int128 *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = *a1;
  v8 = a2 - *a1;
  v10 = *(a1 + 8);
  v9 = *(a1 + 12);
  v11 = *a1 + 24 * v10;
  v12 = v10 + a3;
  if (v11 == a2)
  {
    if (v12 > v9)
    {
      if (v7 > a4 || a2 <= a4)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = *(a1 + 8);
    if (v5)
    {
      v21 = v7 + 24 * v20;
      v22 = v5;
      do
      {
        v23 = *a4;
        *(v21 + 16) = *(a4 + 2);
        *v21 = v23;
        v21 += 24;
        --v22;
      }

      while (v22);
      v20 = *(a1 + 8);
      v7 = *a1;
    }

    *(a1 + 8) = v20 + v5;
    return (v7 + v8);
  }

  else
  {
    if (v12 > v9)
    {
      if (v7 > a4 || v11 <= a4)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v7 + v8);
    v14 = *(a1 + 8);
    v15 = 24 * v14;
    v16 = v7 + 24 * v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((24 * v14 - v8) >> 3);
    v18 = v17 - v5;
    if (v17 < v5)
    {
      v19 = v14 + v5;
      *(a1 + 8) = v19;
      if (v15 == v8)
      {
        if (v13 > a4)
        {
          goto LABEL_6;
        }
      }

      else
      {
        memcpy((v7 + 24 * v19 - 8 * ((v15 - v8) >> 3)), v13, v15 - v8);
        if (v13 > v4)
        {
LABEL_6:
          if (v15 == v8)
          {
            goto LABEL_38;
          }

          goto LABEL_36;
        }
      }

      if (v4 >= *a1 + 24 * *(a1 + 8))
      {
        v30 = 0;
      }

      else
      {
        v30 = v5;
      }

      v4 += 24 * v30;
      if (v15 == v8)
      {
        goto LABEL_38;
      }

LABEL_36:
      v31 = v13;
      v32 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 3);
      do
      {
        v33 = *v4;
        *(v31 + 2) = *(v4 + 16);
        *v31 = v33;
        v31 += 24;
        --v32;
      }

      while (v32);
LABEL_38:
      if (v5 != v17)
      {
        do
        {
          v34 = *v4;
          *(v16 + 16) = *(v4 + 16);
          *v16 = v34;
          v16 += 24;
        }

        while (!__CFADD__(v18++, 1));
      }

      return v13;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((24 * v5) >> 3) + v14 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = -24 * v5;
    if (-24 * v5)
    {
      v25 = *a1 + 24 * v14;
      do
      {
        v26 = *(v16 + v24);
        *(v25 + 16) = *(v16 + v24 + 16);
        *v25 = v26;
        v25 += 24;
        v24 += 24;
      }

      while (v24);
      LODWORD(v14) = *(a1 + 8);
    }

    *(a1 + 8) = v14 - 1431655765 * ((24 * v5) >> 3);
    if ((v16 - 24 * v5) != v13)
    {
      memmove(&v13[24 * v5], v13, v16 - 24 * v5 - v13);
    }

    if (v13 <= v4)
    {
      if (v4 >= *a1 + 24 * *(a1 + 8))
      {
        v27 = 0;
      }

      else
      {
        v27 = v5;
      }

      v4 += 24 * v27;
    }

    if (v5)
    {
      v28 = v13;
      do
      {
        v29 = *v4;
        *(v28 + 2) = *(v4 + 16);
        *v28 = v29;
        v28 += 24;
        --v5;
      }

      while (v5);
    }
  }

  return v13;
}

__n128 mlir::presburger::PresburgerSpace::swapVar(uint64_t a1, int a2, int a3, unsigned int a4, int a5)
{
  if (*(a1 + 16) != 1 || a2 == 1 && a3 == 1)
  {
    return result;
  }

  if (a2 == 1)
  {
    if (a3)
    {
      if (a3 == 2)
      {
        v5 = 0;
      }

      else if (a3 == 3)
      {
        v5 = *a1;
      }

      else
      {
        v5 = *(a1 + 4) + *a1 + *(a1 + 8);
      }
    }

    else
    {
      v5 = *(a1 + 4) + *a1;
    }

    v6 = v5 + a5;
    goto LABEL_21;
  }

  if (a3 == 1)
  {
    if (a2)
    {
      if (a2 == 2)
      {
        v6 = a4;
      }

      else
      {
        v6 = *a1 + a4;
      }
    }

    else
    {
      v6 = *(a1 + 4) + *a1 + a4;
    }

LABEL_21:
    v8 = (*(a1 + 24) + 24 * v6);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
    return result;
  }

  if (a2)
  {
    if (a2 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *a1;
    }
  }

  else
  {
    v7 = *(a1 + 4) + *a1;
  }

  v9 = *(a1 + 24);
  v10 = (v9 + 24 * (v7 + a4));
  if (a3)
  {
    if (a3 == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *a1;
    }
  }

  else
  {
    v11 = *(a1 + 4) + *a1;
  }

  v12 = (v9 + 24 * (v11 + a5));
  v13 = v10[1].n128_u64[0];
  result = *v10;
  v15 = v12[1].n128_u64[0];
  *v10 = *v12;
  v10[1].n128_u64[0] = v15;
  *v12 = result;
  v12[1].n128_u64[0] = v13;
  return result;
}

BOOL mlir::presburger::PresburgerSpace::isAligned(mlir::presburger::PresburgerSpace *this, const mlir::presburger::PresburgerSpace *a2)
{
  if (*(this + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *a2;
  if (!*(this + 16))
  {
    if (*this == v2 && *(this + 1) == *(a2 + 1))
    {
      return *(this + 2) == *(a2 + 2);
    }

    return 0;
  }

  v3 = *this;
  if (v3 != v2)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *(a2 + 3);
  if (v3)
  {
    v6 = 24 * v3;
    v7 = *(a2 + 3);
    v8 = *(this + 3);
    do
    {
      v9 = *v8 && *v8 == *v7;
      if (!v9)
      {
        return 0;
      }

      v8 += 3;
      v7 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  v10 = *(this + 1);
  if (v10 != *(a2 + 1))
  {
    return 0;
  }

  if (v10)
  {
    v11 = (v4 + 24 * v3);
    v12 = (v5 + 24 * v3);
    v13 = 24 * v10;
    while (*v11 && *v11 == *v12)
    {
      v11 += 3;
      v12 += 3;
      v13 -= 24;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = *(this + 2);
  if (v15 != *(a2 + 2))
  {
    return 0;
  }

  if (!v15)
  {
    return 1;
  }

  v16 = v10 + v3;
  v17 = (v4 + 24 * v16);
  v18 = (v5 + 24 * v16);
  v19 = 24 * v15 - 24;
  do
  {
    v21 = *v17;
    v17 += 3;
    v20 = v21;
    v9 = v21 == 0;
    v23 = *v18;
    v18 += 3;
    v22 = v23;
    result = !v9 && v20 == v22;
    v26 = !result || v19 == 0;
    v19 -= 24;
  }

  while (!v26);
  return result;
}

BOOL mlir::presburger::PresburgerSpace::isAligned(unsigned int *a1, unsigned int *a2, int a3)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    v5 = a1 + 2;
    v6 = a2 + 2;
    v7 = a1 + 3;
    v8 = a2 + 3;
    if (a3 == 3)
    {
      v7 = a1 + 1;
      v8 = a2 + 1;
    }

    if (a3 == 2)
    {
      v7 = a1;
      v8 = a2;
    }

    if (a3)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = *v5;
    v10 = *v6;
    return v9 == v10;
  }

  if (a3)
  {
    v3 = a1;
    v4 = a2;
    if (a3 == 2)
    {
      goto LABEL_7;
    }

    if (a3 == 3)
    {
      v3 = a1 + 1;
      v4 = a2 + 1;
LABEL_7:
      if (*v3 == *v4)
      {
        goto LABEL_21;
      }

      return 0;
    }

    v9 = a1[3];
    v10 = a2[3];
    return v9 == v10;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

LABEL_21:
  v12 = *(a1 + 3);
  if (a3)
  {
    if (a3 == 3)
    {
      v13 = *a1++;
      v12 += 3 * v13;
      v14 = *(a2 + 3);
      v15 = *a2++;
      v16 = (v14 + 24 * v15);
    }

    else
    {
      v16 = *(a2 + 3);
    }
  }

  else
  {
    v17 = *a1;
    v18 = a1[1];
    a1 += 2;
    v12 += 3 * v18 + 3 * v17;
    v19 = *(a2 + 3);
    v20 = *a2;
    v21 = a2[1];
    a2 += 2;
    v16 = (v19 + 24 * (v21 + v20));
  }

  v22 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (!v22)
  {
    return 1;
  }

  v23 = 24 * v22 - 24;
  do
  {
    v25 = *v12;
    v12 += 3;
    v24 = v25;
    v28 = v25 == 0;
    v27 = *v16;
    v16 += 3;
    v26 = v27;
    v28 = !v28 && v24 == v26;
    result = v28;
    v29 = !result || v23 == 0;
    v23 -= 24;
  }

  while (!v29);
  return result;
}

uint64_t mlir::presburger::PresburgerSpace::setVarSymbolSeparation(uint64_t this, int a2)
{
  *(this + 4) = *(this + 4) - a2 + *(this + 8);
  *(this + 8) = a2;
  return this;
}

double mlir::presburger::PresburgerSpace::mergeAndAlignSymbols(mlir::presburger::PresburgerSpace *this, mlir::presburger::PresburgerSpace *a2, __n128 a3)
{
  v5 = (this + 24);
  v6 = *(this + 2);
  if (!v6)
  {
    LODWORD(v8) = 0;
    v26 = *(a2 + 2);
    if (!v26)
    {
      return a3.n128_f64[0];
    }

    while (1)
    {
LABEL_31:
      v30 = *this;
      v31 = *(this + 1);
      ++*(this + 2);
      if (*(this + 16) == 1)
      {
        v32 = (*v5 + 24 * (v8 + v31 + v30));
        v39 = 0uLL;
        v40 = 0;
        llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert(v5, v32, 1uLL, &v39);
      }

      if (*(a2 + 16))
      {
        v33 = *(a2 + 3) + 24 * (v8 + *(a2 + 1) + *a2);
        v39 = *v33;
        v40 = *(v33 + 16);
        v27 = *this;
        v28 = *(this + 1);
        if ((*(this + 16) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v39 = 0uLL;
        v40 = 0;
        v27 = *this;
        v28 = *(this + 1);
        if ((*(this + 16) & 1) == 0)
        {
LABEL_37:
          *(this + 8) = 0;
          v34 = v28 + v27;
          v35 = *(this + 2);
          v36 = v28 + v27 + v35;
          if (v36)
          {
            if (*(this + 9) < v36)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v34 + v35)
            {
              bzero(*v5, 24 * ((24 * (v34 + v35) - 24) / 0x18) + 24);
            }

            *(this + 8) = v36;
            v27 = *this;
            v28 = *(this + 1);
          }

          *(this + 16) = 1;
        }
      }

      v29 = *v5 + 24 * (v8 + v27 + v28);
      a3.n128_u64[0] = v39.n128_u64[0];
      *v29 = v39;
      *(v29 + 16) = v40;
      LODWORD(v8) = v8 + 1;
      if (v26 == v8)
      {
        return a3.n128_f64[0];
      }
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = *(this + 3) + 24 * (*(this + 1) + *this);
  v10 = v9 + 24 * v6;
  do
  {
    while (1)
    {
      v11 = *v9;
      a3 = *(v9 + 8);
      v38 = a3;
      v12 = *(a2 + 3);
      v13 = *a2;
      v14 = *(a2 + 1);
      v15 = v14 + *a2;
      v16 = v12 + 24 * v15;
      v17 = *(a2 + 2);
      v18 = (v16 + 24 * v8);
      if (v8 != v17)
      {
        v19 = v7 + 24 * v17;
        while (!*v18 || *v18 != v11)
        {
          v18 += 3;
          v19 -= 24;
          if (!v19)
          {
            goto LABEL_12;
          }
        }
      }

      if (v18 == (v16 + 24 * v17))
      {
        break;
      }

      ++v8;
      v9 += 24;
      v7 -= 24;
      if (v9 == v10)
      {
        goto LABEL_24;
      }
    }

LABEL_12:
    *(a2 + 2) = v17 + 1;
    if (*(a2 + 16) == 1)
    {
      v39 = 0uLL;
      v40 = 0;
      llvm::SmallVectorImpl<mlir::presburger::Identifier>::insert(a2 + 24, (v12 + 24 * (v15 + v8)), 1uLL, &v39);
      v21 = *(a2 + 16);
      v13 = *a2;
      v14 = *(a2 + 1);
      v39 = v38;
      if (v21)
      {
        goto LABEL_23;
      }

      *(a2 + 8) = 0;
      v22 = *(a2 + 2);
      v23 = (v14 + v13 + v22);
      if (v14 + v13 + v22)
      {
LABEL_17:
        if (*(a2 + 9) < v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v23)
        {
          bzero(*(a2 + 3), 24 * ((24 * v23 - 24) / 0x18uLL) + 24);
        }

        *(a2 + 8) = v23;
        v13 = *a2;
        v14 = *(a2 + 1);
      }
    }

    else
    {
      v39 = a3;
      *(a2 + 8) = 0;
      v24 = *(a2 + 2);
      v23 = (v14 + v13 + v24);
      if (v14 + v13 + v24)
      {
        goto LABEL_17;
      }
    }

    *(a2 + 16) = 1;
LABEL_23:
    v25 = *(a2 + 3) + 24 * (v13 + v8 + v14);
    *v25 = v11;
    a3.n128_u64[0] = v39.n128_u64[0];
    *(v25 + 8) = v39;
    ++v8;
    v9 += 24;
    v7 -= 24;
  }

  while (v9 != v10);
LABEL_24:
  v26 = *(a2 + 2);
  if (v8 < v26)
  {
    goto LABEL_31;
  }

  return a3.n128_f64[0];
}

llvm::raw_ostream *mlir::presburger::PresburgerSpace::print(mlir::presburger::PresburgerSpace *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 7uLL)
  {
    *v4 = 0x203A6E69616D6F44;
    *(a2 + 4) += 8;
    v6 = llvm::raw_ostream::operator<<(a2, *this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
LABEL_3:
      *v7 = 8236;
      v8 = *(v6 + 3);
      v9 = (*(v6 + 4) + 2);
      *(v6 + 4) = v9;
      if ((v8 - v9) > 6)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "Domain: ", 8uLL);
    v6 = llvm::raw_ostream::operator<<(v5, *this);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 1uLL)
    {
      goto LABEL_3;
    }
  }

  v6 = llvm::raw_ostream::write(v6, ", ", 2uLL);
  v9 = *(v6 + 4);
  if (*(v6 + 3) - v9 > 6uLL)
  {
LABEL_4:
    *(v9 + 3) = 540697959;
    *v9 = 1735287122;
    *(v6 + 4) += 7;
    v10 = llvm::raw_ostream::operator<<(v6, *(this + 1));
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v20 = llvm::raw_ostream::write(v6, "Range: ", 7uLL);
  v10 = llvm::raw_ostream::operator<<(v20, *(this + 1));
  v11 = *(v10 + 4);
  if (*(v10 + 3) - v11 > 1uLL)
  {
LABEL_5:
    *v11 = 8236;
    v12 = *(v10 + 3);
    v13 = *(v10 + 4) + 2;
    *(v10 + 4) = v13;
    if ((v12 - v13) > 8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = llvm::raw_ostream::write(v10, ", ", 2uLL);
  v13 = *(v10 + 4);
  if ((*(v10 + 3) - v13) > 8)
  {
LABEL_6:
    *(v13 + 8) = 32;
    *v13 = *"Symbols: ";
    *(v10 + 4) += 9;
    v14 = llvm::raw_ostream::operator<<(v10, *(this + 2));
    v15 = *(v14 + 4);
    if (*(v14 + 3) - v15 > 1uLL)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v21 = llvm::raw_ostream::write(v10, "Symbols: ", 9uLL);
  v14 = llvm::raw_ostream::operator<<(v21, *(this + 2));
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
LABEL_7:
    *v15 = 8236;
    v16 = *(v14 + 3);
    v17 = (*(v14 + 4) + 2);
    *(v14 + 4) = v17;
    if ((v16 - v17) > 7)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v14 = llvm::raw_ostream::write(v14, ", ", 2uLL);
  v17 = *(v14 + 4);
  if (*(v14 + 3) - v17 > 7uLL)
  {
LABEL_8:
    *v17 = 0x203A736C61636F4CLL;
    *(v14 + 4) += 8;
    result = llvm::raw_ostream::operator<<(v14, *(this + 3));
    v19 = *(result + 4);
    if (*(result + 3) != v19)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v22 = llvm::raw_ostream::write(v14, "Locals: ", 8uLL);
  result = llvm::raw_ostream::operator<<(v22, *(this + 3));
  v19 = *(result + 4);
  if (*(result + 3) != v19)
  {
LABEL_9:
    *v19 = 10;
    ++*(result + 4);
    if (*(this + 16) != 1)
    {
      return result;
    }

LABEL_19:
    v27[0] = a2;
    v27[1] = this;
    v23 = *(a2 + 4);
    if (*(a2 + 3) == v23)
    {
      llvm::raw_ostream::write(a2, "(", 1uLL);
    }

    else
    {
      *v23 = 40;
      ++*(a2 + 4);
    }

    mlir::presburger::PresburgerSpace::print(llvm::raw_ostream &)const::$_0::operator()(v27, 2);
    v24 = *(a2 + 4);
    if ((*(a2 + 3) - v24) > 5)
    {
      *(v24 + 4) = 10272;
      *v24 = 1043144745;
      *(a2 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(a2, ") -> (", 6uLL);
    }

    mlir::presburger::PresburgerSpace::print(llvm::raw_ostream &)const::$_0::operator()(v27, 3);
    v25 = *(a2 + 4);
    if ((*(a2 + 3) - v25) > 4)
    {
      *(v25 + 4) = 91;
      *v25 = 540680233;
      *(a2 + 4) += 5;
      result = mlir::presburger::PresburgerSpace::print(llvm::raw_ostream &)const::$_0::operator()(v27, 0);
      v26 = *(a2 + 4);
      if (*(a2 + 3) != v26)
      {
        goto LABEL_27;
      }
    }

    else
    {
      llvm::raw_ostream::write(a2, ") : [", 5uLL);
      result = mlir::presburger::PresburgerSpace::print(llvm::raw_ostream &)const::$_0::operator()(v27, 0);
      v26 = *(a2 + 4);
      if (*(a2 + 3) != v26)
      {
LABEL_27:
        *v26 = 93;
        ++*(a2 + 4);
        return result;
      }
    }

    return llvm::raw_ostream::write(a2, "]", 1uLL);
  }

LABEL_18:
  result = llvm::raw_ostream::write(result, "\n", 1uLL);
  if (*(this + 16) == 1)
  {
    goto LABEL_19;
  }

  return result;
}

llvm::raw_ostream *mlir::presburger::PresburgerSpace::print(llvm::raw_ostream &)const::$_0::operator()(llvm::raw_ostream **a1, int a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = *(result + 4);
  if (*(result + 3) != v7)
  {
    *v7 = 32;
    ++*(result + 4);
    v8 = *(v5 + 3);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = *v5;
    v11 = *(v5 + 1);
    v5 = (v5 + 8);
    v8 += 3 * (v11 + v10);
LABEL_9:
    v9 = *v5;
    if (!v9)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = llvm::raw_ostream::write(result, " ", 1uLL);
  v8 = *(v5 + 3);
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a2 == 2)
  {
    goto LABEL_9;
  }

  if (a2 != 3)
  {
    v8 += 3 * (*(v5 + 1) + *v5 + *(v5 + 2));
    v9 = *(v5 + 3);
    if (!*(v5 + 3))
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 += 3 * *v5;
  v9 = *(v5 + 1);
  if (v9)
  {
LABEL_10:
    for (i = 24 * v9; i; i -= 24)
    {
      while (1)
      {
        v13 = *v8;
        v14 = *a1;
        v15 = *(*a1 + 4);
        v16 = *(*a1 + 3) - v15;
        if (!*v8)
        {
          break;
        }

        if (v16 > 2)
        {
          *(v15 + 2) = 60;
          *v15 = 25673;
          *(v14 + 4) += 3;
          v14 = llvm::raw_ostream::operator<<(v14, v13);
          v18 = *(v14 + 4);
          if (*(v14 + 3) != v18)
          {
LABEL_15:
            *v18 = 62;
            v19 = *(v14 + 4) + 1;
            goto LABEL_23;
          }
        }

        else
        {
          v17 = llvm::raw_ostream::write(v14, "Id<", 3uLL);
          v14 = llvm::raw_ostream::operator<<(v17, v13);
          v18 = *(v14 + 4);
          if (*(v14 + 3) != v18)
          {
            goto LABEL_15;
          }
        }

        llvm::raw_ostream::write(v14, ">", 1uLL);
        result = *a1;
        v20 = *(*a1 + 4);
        if (*(*a1 + 3) == v20)
        {
          goto LABEL_24;
        }

LABEL_11:
        *v20 = 32;
        ++*(result + 4);
        v8 += 3;
        i -= 24;
        if (!i)
        {
          return result;
        }
      }

      if (v16 <= 3)
      {
        llvm::raw_ostream::write(v14, "None", 4uLL);
        result = *a1;
        v20 = *(*a1 + 4);
        if (*(*a1 + 3) == v20)
        {
          goto LABEL_24;
        }

        goto LABEL_11;
      }

      *v15 = 1701736270;
      v19 = *(v14 + 4) + 4;
LABEL_23:
      *(v14 + 4) = v19;
      result = *a1;
      v20 = *(*a1 + 4);
      if (*(*a1 + 3) != v20)
      {
        goto LABEL_11;
      }

LABEL_24:
      result = llvm::raw_ostream::write(result, " ", 1uLL);
      v8 += 3;
    }
  }

  return result;
}

llvm::raw_ostream *mlir::presburger::PresburgerSpace::dump(mlir::presburger::PresburgerSpace *this)
{
  v2 = llvm::errs(this);
  v3 = mlir::presburger::PresburgerSpace::print(this, v2);
  result = llvm::errs(v3);
  v5 = *(result + 4);
  if (*(result + 3) == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++*(result + 4);
  }

  return result;
}

void mlir::presburger::PWMAFunction::getDomain(mlir::presburger::PresburgerRelation *__return_ptr a1@<X8>, mlir::presburger::PWMAFunction *this@<X0>)
{
  mlir::presburger::PresburgerSpace::getDomainSpace(v7, this);
  mlir::presburger::PresburgerSet::getEmpty(v7, a1);
  if (v8 != &v9)
  {
    free(v8);
  }

  v4 = *(this + 12);
  if (v4)
  {
    v5 = *(this + 5);
    v6 = 2000 * v4;
    do
    {
      mlir::presburger::PresburgerRelation::unionInPlace(a1, v5);
      v5 = (v5 + 2000);
      v6 -= 2000;
    }

    while (v6);
  }
}

void mlir::presburger::MultiAffineFunction::print(llvm::DynamicAPInt **this, llvm::raw_ostream *a2)
{
  mlir::presburger::PresburgerSpace::print(this, a2);
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x18uLL)
  {
    qmemcpy(v4, "Division Representation:\n", 25);
    *(a2 + 4) += 25;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Division Representation:\n", 0x19uLL);
  }

  mlir::presburger::DivisionRepr::print(this + 41, a2);
}

void mlir::presburger::MultiAffineFunction::valueAt(uint64_t a1, const llvm::APInt *a2, unint64_t a3)
{
  v35[16] = *MEMORY[0x277D85DE8];
  v30 = v32;
  v31 = 0x300000000;
  if (a3 >= 4)
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow(&v30, a3);
  }

  if (a3)
  {
    v5 = 16 * a3;
    v7 = v32;
    do
    {
      *v7 = *a2;
      *(v7 + 2) = 0;
      v8 = *(a2 + 2);
      if (v8)
      {
        *(v7 + 2) = v8;
        if (v8 > 0x40)
        {
          llvm::APInt::initSlowCase(v7, a2);
        }

        *v7 = *a2;
      }

      a2 = (a2 + 16);
      v7 = (v7 + 16);
      v5 -= 16;
    }

    while (v5);
    v9 = v31;
  }

  else
  {
    v9 = 0;
  }

  v33 = v35;
  v34 = 0x800000000;
  LODWORD(v31) = v9 + a3;
  if (v9 + a3)
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v33, &v30);
    v10 = v30;
    if (!v31)
    {
      goto LABEL_21;
    }

    v11 = (v30 + 16 * v31 - 8);
    v12 = -16 * v31;
    v13 = v11;
    do
    {
      v15 = *v13;
      v13 -= 4;
      v14 = v15;
      if (v15)
      {
        if (v14 >= 0x41)
        {
          v16 = *(v11 - 1);
          if (v16)
          {
            MEMORY[0x259C63150](v16, 0x1000C8000313F17);
          }
        }
      }

      v11 = v13;
      v12 += 16;
    }

    while (v12);
  }

  v10 = v30;
LABEL_21:
  if (v10 != v32)
  {
    free(v10);
  }

  mlir::presburger::DivisionRepr::divValuesAt((a1 + 328), &v27);
  v30 = v32;
  v31 = 0x800000000;
  if (v28)
  {
    llvm::SmallVectorImpl<std::optional<llvm::DynamicAPInt>>::operator=(&v30, &v27);
    v17 = v27;
    if (!v28)
    {
      goto LABEL_32;
    }

    v18 = v27 + 24 * v28 - 8;
    v19 = -24 * v28;
    do
    {
      if (*v18 == 1 && *(v18 - 2) > 0x40u)
      {
        v20 = *(v18 - 2);
        if (v20)
        {
          MEMORY[0x259C63150](v20, 0x1000C8000313F17);
        }
      }

      v18 -= 24;
      v19 += 24;
    }

    while (v19);
  }

  v17 = v27;
LABEL_32:
  if (v17 != &v29)
  {
    free(v17);
  }

  v21 = v31 + v34;
  if (v21 > HIDWORD(v34))
  {
    llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow(&v33, v21);
  }

  if (v31)
  {
    v22 = v30;
    v23 = 24 * v31;
    do
    {
      if (v34 >= HIDWORD(v34))
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<llvm::DynamicAPInt>(&v33, v22);
      }

      v24 = &v33[2 * v34];
      *v24 = *v22;
      *(v24 + 2) = 0;
      v25 = *(v22 + 2);
      if (v25)
      {
        *(v24 + 2) = v25;
        if (v25 > 0x40)
        {
          llvm::APInt::initSlowCase(v24, v22);
        }

        *v24 = *v22;
      }

      LODWORD(v34) = v34 + 1;
      v22 = (v22 + 24);
      v23 -= 24;
    }

    while (v23);
  }

  LODWORD(v27) = 1;
  if (v34 < HIDWORD(v34))
  {
    v26 = &v33[2 * v34];
    *v26 = 1;
    *(v26 + 2) = 0;
    LODWORD(v34) = v34 + 1;
    mlir::presburger::Matrix<llvm::DynamicAPInt>::postMultiplyWithColumn();
  }

  llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::growAndEmplaceBack<int>(&v33, &v27);
}

void mlir::presburger::MultiAffineFunction::getAsRelation(uint64_t *__return_ptr a1@<X8>, mlir::presburger::MultiAffineFunction *this@<X0>)
{
  v8[13] = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4[0] = *this;
  v4[1] = __PAIR64__(v3, v2);
  v5 = 0;
  v6 = v8;
  v7 = 0;
  *a1 = &unk_286893110;
  *(a1 + 24) = 0;
  *(a1 + 1) = *v4;
  a1[4] = (a1 + 6);
  a1[5] = 0;
  mlir::presburger::Matrix<llvm::DynamicAPInt>::Matrix();
}

uint64_t mlir::presburger::MultiAffineFunction::isEqual(mlir::presburger::MultiAffineFunction *this, const mlir::presburger::MultiAffineFunction *a2, const mlir::presburger::PresburgerSet *a3)
{
  v8[78] = *MEMORY[0x277D85DE8];
  AllDisjuncts = mlir::presburger::PresburgerRelation::getAllDisjuncts(a3);
  if (v5)
  {
    mlir::presburger::IntegerPolyhedron::IntegerPolyhedron(v7, AllDisjuncts);
    mlir::presburger::MultiAffineFunction::getAsRelation(v8, this);
  }

  return 1;
}

unsigned int *mlir::presburger::MultiAffineFunction::removeOutputs(unsigned int *this, unsigned int a2, unsigned int a3)
{
  if (a3 > a2)
  {
    mlir::presburger::PresburgerSpace::removeVarRange(this, 3, a2, a3);

    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
  }

  return this;
}

void mlir::presburger::MultiAffineFunction::getLexSet(__int128 *a1, int a2, __int128 *a3)
{
  v31[13] = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v20 = *(a1 + 16);
  __dst = &v23;
  v22 = 0;
  if (&v19 != a1 && *(a1 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v23 = *(a1 + 5);
  v24 = *(a1 + 12);
  v25[0] = v26;
  v25[1] = 0x1000000000;
  if (*(a1 + 16))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v25, a1 + 7);
  }

  v26[32] = *(a1 + 41);
  v27 = *(a1 + 84);
  v28[0] = &v29;
  v28[1] = 0x1000000000;
  if (*(a1 + 88))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v28, a1 + 43);
  }

  v30[0] = v31;
  v30[1] = 0x400000000;
  if (*(a1 + 156))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v30, a1 + 77);
  }

  v6 = *a3;
  v7 = *(a3 + 16);
  v8 = &v10;
  v9 = 0;
  if (&v6 != a3 && *(a3 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = *(a3 + 5);
  v11 = *(a3 + 12);
  v12[0] = v13;
  v12[1] = 0x1000000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v12, a3 + 7);
  }

  v13[32] = *(a3 + 41);
  v14 = *(a3 + 84);
  v15[0] = &v16;
  v15[1] = 0x1000000000;
  if (*(a3 + 88))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v15, a3 + 43);
  }

  v17[0] = &v18;
  v17[1] = 0x400000000;
  if (*(a3 + 156))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v17, a3 + 77);
  }

  mlir::presburger::MultiAffineFunction::mergeDivs(&v19, &v6);
}

BOOL mlir::presburger::PWMAFunction::isEqual(const mlir::presburger::PresburgerRelation **this, const mlir::presburger::PresburgerRelation **a2)
{
  v62 = *MEMORY[0x277D85DE8];
  result = mlir::presburger::PresburgerSpace::isCompatible(this, a2);
  if (result)
  {
    mlir::presburger::PresburgerSpace::getDomainSpace(v37, this);
    mlir::presburger::PresburgerSet::getEmpty(v37, &v42);
    if (v38 != &v39)
    {
      free(v38);
    }

    v5 = *(this + 12);
    if (v5)
    {
      v6 = this[5];
      v7 = 2000 * v5;
      do
      {
        mlir::presburger::PresburgerRelation::unionInPlace(&v42, v6);
        v6 = (v6 + 2000);
        v7 -= 2000;
      }

      while (v7);
    }

    mlir::presburger::PresburgerSpace::getDomainSpace(v59, a2);
    mlir::presburger::PresburgerSet::getEmpty(v59, v37);
    if (v60 != &v61)
    {
      free(v60);
    }

    v8 = *(a2 + 12);
    if (v8)
    {
      v9 = a2[5];
      v10 = 2000 * v8;
      do
      {
        mlir::presburger::PresburgerRelation::unionInPlace(v37, v9);
        v9 = (v9 + 2000);
        v10 -= 2000;
      }

      while (v10);
    }

    isEqual = mlir::presburger::PresburgerRelation::isEqual(&v42, v37);
    v12 = v39;
    if (v40)
    {
      v13 = -624 * v40;
      v14 = v39 + 624 * v40 - 624;
      v15 = v14;
      do
      {
        (**v15)(v15);
        v15 -= 78;
        v14 -= 624;
        v13 += 624;
      }

      while (v13);
      v12 = v39;
    }

    if (v12 != &v41)
    {
      free(v12);
    }

    if (v38 != &v39)
    {
      free(v38);
    }

    v16 = v44;
    if (v45)
    {
      v17 = -624 * v45;
      v18 = v44 + 624 * v45 - 624;
      v19 = v18;
      do
      {
        (**v19)(v19);
        v19 -= 78;
        v18 -= 624;
        v17 += 624;
      }

      while (v17);
      v16 = v44;
    }

    if (v16 != v46)
    {
      free(v16);
    }

    if (v43 != &v44)
    {
      free(v43);
    }

    if (isEqual)
    {
      v20 = *(this + 12);
      if (v20)
      {
        v21 = *(a2 + 12);
        if (v21)
        {
          v35 = this[5];
          v33 = (v35 + 2000 * v20);
LABEL_32:
          v22 = a2[5];
          v34 = v22 + 2000 * v21;
          do
          {
            v36 = v22;
            mlir::presburger::PresburgerSet::intersect(&v42, v35, v22);
            AllDisjuncts = mlir::presburger::PresburgerRelation::getAllDisjuncts(&v42);
            if (v24)
            {
              v25 = AllDisjuncts;
              v26 = *(AllDisjuncts + 24);
              v48 = *(AllDisjuncts + 8);
              v49 = v26;
              v47 = &unk_286893110;
              __dst = &v52;
              v51 = 0;
              if (&v47 != AllDisjuncts && *(AllDisjuncts + 40))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v27 = *(AllDisjuncts + 48);
              v53 = *(AllDisjuncts + 56);
              v52 = v27;
              v54[0] = v55;
              v54[1] = 0x1000000000;
              if (*(AllDisjuncts + 72))
              {
                llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v54, (AllDisjuncts + 64));
              }

              v28 = *(v25 + 336);
              v56 = *(v25 + 344);
              v55[32] = v28;
              v57[0] = &v58;
              v57[1] = 0x1000000000;
              if (*(v25 + 360))
              {
                llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v57, (v25 + 352));
              }

              v47 = &unk_286893188;
              mlir::presburger::MultiAffineFunction::getAsRelation(v37, (v35 + 1304));
            }

            v29 = v44;
            if (v45)
            {
              v30 = -624 * v45;
              v31 = v44 + 624 * v45 - 624;
              v32 = v31;
              do
              {
                (**v32)(v32);
                v32 -= 78;
                v31 -= 624;
                v30 += 624;
              }

              while (v30);
              v29 = v44;
            }

            if (v29 != v46)
            {
              free(v29);
            }

            if (v43 != &v44)
            {
              free(v43);
            }

            v22 = (v36 + 2000);
          }

          while (v36 + 2000 != v34);
          while (1)
          {
            v35 = (v35 + 2000);
            if (v35 == v33)
            {
              break;
            }

            v21 = *(a2 + 12);
            if (*(a2 + 12))
            {
              goto LABEL_32;
            }
          }
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::presburger::PWMAFunction::addPiece(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 48);
  if (v3 >= *(a1 + 52))
  {
    v5 = a1 + 40;

    llvm::SmallVectorTemplateBase<mlir::presburger::PWMAFunction::Piece,false>::growAndEmplaceBack<mlir::presburger::PWMAFunction::Piece const&>(v5, a2);
  }

  result = mlir::presburger::PWMAFunction::Piece::Piece(*(a1 + 40) + 2000 * v3, a2);
  ++*(a1 + 48);
  return result;
}

llvm::raw_ostream *mlir::presburger::PWMAFunction::print(llvm::DynamicAPInt ***this, llvm::raw_ostream *a2)
{
  mlir::presburger::PresburgerSpace::print(this, a2);
  result = llvm::raw_ostream::operator<<(a2, *(this + 12));
  v5 = *(result + 4);
  if ((*(result + 3) - v5) > 8)
  {
    *(v5 + 8) = 10;
    *v5 = *" pieces:\n";
    *(result + 4) += 9;
    if (!*(this + 12))
    {
      return result;
    }

LABEL_5:
    v6 = this[5];
    v7 = *(a2 + 4);
    if ((*(a2 + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 10;
      *v7 = *"Domain of piece:\n";
      *(a2 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(a2, "Domain of piece:\n", 0x11uLL);
    }

    mlir::presburger::PresburgerRelation::print(v6, a2);
    v8 = *(a2 + 4);
    if (*(a2 + 3) - v8 > 0xFuLL)
    {
      *v8 = *"Output of piece\n";
      *(a2 + 4) += 16;
      mlir::presburger::MultiAffineFunction::print(v6 + 163, a2);
    }

    llvm::raw_ostream::write(a2, "Output of piece\n", 0x10uLL);
    mlir::presburger::MultiAffineFunction::print(v6 + 163, a2);
  }

  result = llvm::raw_ostream::write(result, " pieces:\n", 9uLL);
  if (*(this + 12))
  {
    goto LABEL_5;
  }

  return result;
}

llvm::raw_ostream *mlir::presburger::PWMAFunction::dump(mlir::presburger::PWMAFunction *this)
{
  v2 = llvm::errs(this);

  return mlir::presburger::PWMAFunction::print(this, v2);
}

void mlir::presburger::PWMAFunction::unionFunction(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v223 = v3;
  v224 = v4;
  v216 = v5;
  v6 = v2;
  v361[9] = *MEMORY[0x277D85DE8];
  *v2 = *v1;
  *(v2 + 16) = *(v1 + 16);
  v225 = (v2 + 40);
  *(v2 + 24) = v2 + 40;
  *(v2 + 32) = 0;
  if (v2 != v1 && *(v1 + 32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v213 = v2 + 56;
  *(v2 + 40) = v2 + 56;
  *(v2 + 48) = 0x400000000;
  v214 = v1;
  v7 = *(v1 + 48);
  v248 = v6;
  if (v7)
  {
    v8 = *(v214 + 5);
    v215 = v8 + 2000 * v7;
    v231 = &v314;
    v222 = &v313;
    v217 = &v316;
    v9 = &v285;
    v246 = &v288;
    v247 = &v287;
    v244 = &v296;
    v245 = &v295;
    v242 = &v302;
    v243 = &v299;
    v240 = &v266;
    v241 = &v265;
    v238 = &v274;
    v239 = &v273;
    v236 = &v280;
    v237 = &v277;
    v230 = &v307;
    v221 = &v309;
    v258 = v344;
    v250 = &v354;
    v251 = &v345;
    v255 = v358;
    v256 = v353;
    v254 = v361;
    v249 = &v321;
    v220 = &v324;
    v252 = &v327;
    v253 = &v285;
    v234 = &v330;
    v235 = v323;
    v232 = &v337;
    v233 = &v334;
    v218 = &v341;
    v219 = &v331;
    v257 = &v263;
    do
    {
      v10 = *v8;
      v311 = *(v8 + 16);
      v310 = v10;
      __dst = v231;
      v313 = 0;
      if (&v310 != v8 && *(v8 + 32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v314 = v217;
      v315 = 0x200000000;
      if (*(v8 + 48))
      {
        llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v231, v8 + 40);
      }

      v11 = *(v216 + 48);
      if (v11)
      {
        v12 = *(v216 + 40);
        v228 = (v8 + 1304);
        v229 = v12 + 2000 * v11;
        v226 = (v8 + 1632);
        v227 = (v8 + 1344);
        do
        {
          v13 = *v12;
          v282 = *(v12 + 16);
          v281 = v13;
          __src = v9;
          v284 = 0;
          if (&v281 != v12 && *(v12 + 32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v285 = v247;
          v286 = 0x200000000;
          if (*(v12 + 48))
          {
            llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v9, v12 + 40);
          }

          v14 = *(v12 + 1304);
          v15 = v246;
          *(v246 + 16) = *(v12 + 1320);
          *v15 = v14;
          v289 = &v291;
          v290 = 0;
          if (&v281 != v12 && *(v12 + 1336))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = *(v12 + 1344);
          v292 = *(v12 + 1352);
          v291 = v16;
          v293 = v245;
          v294 = 0x1000000000;
          if (*(v12 + 1368))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v293, (v12 + 1360));
          }

          v17 = *(v12 + 1632);
          v18 = v244;
          *(v244 + 2) = *(v12 + 1640);
          *v18 = v17;
          v297 = v243;
          v298 = 0x1000000000;
          if (*(v12 + 1656))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v297, (v12 + 1648));
          }

          v300 = v242;
          v301 = 0x400000000;
          if (*(v12 + 1928))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v300, (v12 + 1920));
          }

          v19 = *v8;
          v260 = *(v8 + 16);
          v259 = v19;
          v261 = v257;
          v262 = 0;
          if (&v259 != v8 && *(v8 + 32))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v263 = v241;
          v264 = 0x200000000;
          if (*(v8 + 48))
          {
            llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v257, v8 + 40);
          }

          v20 = *v228;
          v21 = v240;
          *(v240 + 16) = *(v228 + 16);
          *v21 = v20;
          v267 = &v269;
          v268 = 0;
          if (&v259 != v8 && *(v8 + 1336))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v22 = *v227;
          v270 = *(v227 + 2);
          v269 = v22;
          v271 = v239;
          v272 = 0x1000000000;
          if (*(v8 + 1368))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v271, (v8 + 1360));
          }

          v23 = *v226;
          v24 = v238;
          *(v238 + 2) = *(v226 + 2);
          *v24 = v23;
          v275 = v237;
          v276 = 0x1000000000;
          if (*(v8 + 1656))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v275, (v8 + 1648));
          }

          v278 = v236;
          v279 = 0x400000000;
          if (*(v8 + 1928))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v278, (v8 + 1920));
          }

          v338 = v281;
          v339 = v282;
          v340 = &v342;
          v341 = 0;
          if (v284)
          {
            if (__src == v9)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v340 = __src;
            v341 = v284;
            __src = v9;
            v284 = 0;
          }

          v342 = v258;
          v343 = 0x200000000;
          if (v286)
          {
            llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v342, v9);
          }

          v25 = v246;
          v26 = v251;
          *v251 = *v246;
          *(v26 + 16) = *(v25 + 16);
          v347 = &v349;
          v348 = 0;
          if (v290)
          {
            if (v289 == &v291)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v347 = v289;
            v348 = v290;
            v289 = &v291;
            v290 = 0;
          }

          v349 = v291;
          v350 = v292;
          v351 = v256;
          v352 = 0x1000000000;
          if (v294)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v351, &v293);
          }

          v27 = v244;
          v28 = v250;
          *v250 = *v244;
          *(v28 + 2) = *(v27 + 2);
          v356 = v255;
          v357 = 0x1000000000;
          if (v298)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v356, &v297);
          }

          v359 = v254;
          v360 = 0x400000000;
          if (v301)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v359, &v300);
          }

          v317 = v259;
          v318 = v260;
          v319 = v249;
          v320 = 0;
          if (v262)
          {
            if (v261 == v257)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v319 = v261;
            v320 = v262;
            v261 = v257;
            v262 = 0;
          }

          v321 = v235;
          v322 = 0x200000000;
          if (v264)
          {
            llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v249, v257);
          }

          v29 = v240;
          v30 = v220;
          *v220 = *v240;
          *(v30 + 16) = *(v29 + 16);
          v325 = v252;
          v326 = 0;
          if (v268)
          {
            if (v267 == &v269)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v325 = v267;
            v326 = v268;
            v267 = &v269;
            v268 = 0;
          }

          v31 = v252;
          *v252 = v269;
          *(v31 + 2) = v270;
          v328 = v234;
          v329 = 0x1000000000;
          if (v272)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v328, &v271);
          }

          v32 = v238;
          v33 = v219;
          *v219 = *v238;
          *(v33 + 2) = *(v32 + 2);
          v332 = v233;
          v333 = 0x1000000000;
          if (v276)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v332, &v275);
          }

          v335 = v232;
          v336 = 0x400000000;
          if (v279)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v335, &v278);
          }

          v223(&v303, v224, &v338, &v317);
          v34 = v335;
          if (v336)
          {
            v35 = (v335 + 16 * v336 - 8);
            v36 = -16 * v336;
            v37 = v35;
            do
            {
              v39 = *v37;
              v37 -= 4;
              v38 = v39;
              if (v39)
              {
                if (v38 >= 0x41)
                {
                  v40 = *(v35 - 1);
                  if (v40)
                  {
                    MEMORY[0x259C63150](v40, 0x1000C8000313F17);
                  }
                }
              }

              v35 = v37;
              v36 += 16;
            }

            while (v36);
            v34 = v335;
          }

          if (v34 != v232)
          {
            free(v34);
          }

          v41 = v332;
          if (v333)
          {
            v42 = (v332 + 16 * v333 - 8);
            v43 = -16 * v333;
            v44 = v42;
            do
            {
              v46 = *v44;
              v44 -= 4;
              v45 = v46;
              if (v46)
              {
                if (v45 >= 0x41)
                {
                  v47 = *(v42 - 1);
                  if (v47)
                  {
                    MEMORY[0x259C63150](v47, 0x1000C8000313F17);
                  }
                }
              }

              v42 = v44;
              v43 += 16;
            }

            while (v43);
            v41 = v332;
          }

          if (v41 != v233)
          {
            free(v41);
          }

          v48 = v328;
          if (v329)
          {
            v49 = (v328 + 16 * v329 - 8);
            v50 = -16 * v329;
            v51 = v49;
            do
            {
              v53 = *v51;
              v51 -= 4;
              v52 = v53;
              if (v53)
              {
                if (v52 >= 0x41)
                {
                  v54 = *(v49 - 1);
                  if (v54)
                  {
                    MEMORY[0x259C63150](v54, 0x1000C8000313F17);
                  }
                }
              }

              v49 = v51;
              v50 += 16;
            }

            while (v50);
            v48 = v328;
          }

          if (v48 != v234)
          {
            free(v48);
          }

          if (v325 != v252)
          {
            free(v325);
          }

          v55 = v321;
          if (v322)
          {
            v56 = -624 * v322;
            v57 = v321 + 624 * v322 - 624;
            v58 = v57;
            do
            {
              (**v58)(v58);
              v58 -= 78;
              v57 -= 624;
              v56 += 624;
            }

            while (v56);
            v55 = v321;
            v9 = v253;
          }

          if (v55 != v235)
          {
            free(v55);
          }

          if (v319 != v249)
          {
            free(v319);
          }

          v59 = v359;
          if (v360)
          {
            v60 = (v359 + 16 * v360 - 8);
            v61 = -16 * v360;
            v62 = v60;
            do
            {
              v64 = *v62;
              v62 -= 4;
              v63 = v64;
              if (v64)
              {
                if (v63 >= 0x41)
                {
                  v65 = *(v60 - 1);
                  if (v65)
                  {
                    MEMORY[0x259C63150](v65, 0x1000C8000313F17);
                  }
                }
              }

              v60 = v62;
              v61 += 16;
            }

            while (v61);
            v59 = v359;
          }

          if (v59 != v254)
          {
            free(v59);
          }

          v66 = v356;
          if (v357)
          {
            v67 = (v356 + 16 * v357 - 8);
            v68 = -16 * v357;
            v69 = v67;
            do
            {
              v71 = *v69;
              v69 -= 4;
              v70 = v71;
              if (v71)
              {
                if (v70 >= 0x41)
                {
                  v72 = *(v67 - 1);
                  if (v72)
                  {
                    MEMORY[0x259C63150](v72, 0x1000C8000313F17);
                  }
                }
              }

              v67 = v69;
              v68 += 16;
            }

            while (v68);
            v66 = v356;
          }

          if (v66 != v255)
          {
            free(v66);
          }

          v73 = v351;
          if (v352)
          {
            v74 = (v351 + 16 * v352 - 8);
            v75 = -16 * v352;
            v76 = v74;
            do
            {
              v78 = *v76;
              v76 -= 4;
              v77 = v78;
              if (v78)
              {
                if (v77 >= 0x41)
                {
                  v79 = *(v74 - 1);
                  if (v79)
                  {
                    MEMORY[0x259C63150](v79, 0x1000C8000313F17);
                  }
                }
              }

              v74 = v76;
              v75 += 16;
            }

            while (v75);
            v73 = v351;
          }

          if (v73 != v256)
          {
            free(v73);
          }

          if (v347 != &v349)
          {
            free(v347);
          }

          v80 = v342;
          if (v343)
          {
            v81 = -624 * v343;
            v82 = v342 + 624 * v343 - 624;
            v83 = v82;
            do
            {
              (**v83)(v83);
              v83 -= 78;
              v82 -= 624;
              v81 += 624;
            }

            while (v81);
            v80 = v342;
            v9 = v253;
          }

          if (v80 != v258)
          {
            free(v80);
          }

          if (v340 != &v342)
          {
            free(v340);
          }

          v84 = v278;
          if (v279)
          {
            v85 = (v278 + 16 * v279 - 8);
            v86 = -16 * v279;
            v87 = v85;
            do
            {
              v89 = *v87;
              v87 -= 4;
              v88 = v89;
              if (v89)
              {
                if (v88 >= 0x41)
                {
                  v90 = *(v85 - 1);
                  if (v90)
                  {
                    MEMORY[0x259C63150](v90, 0x1000C8000313F17);
                  }
                }
              }

              v85 = v87;
              v86 += 16;
            }

            while (v86);
            v84 = v278;
          }

          if (v84 != v236)
          {
            free(v84);
          }

          v91 = v275;
          if (v276)
          {
            v92 = (v275 + 16 * v276 - 8);
            v93 = -16 * v276;
            v94 = v92;
            do
            {
              v96 = *v94;
              v94 -= 4;
              v95 = v96;
              if (v96)
              {
                if (v95 >= 0x41)
                {
                  v97 = *(v92 - 1);
                  if (v97)
                  {
                    MEMORY[0x259C63150](v97, 0x1000C8000313F17);
                  }
                }
              }

              v92 = v94;
              v93 += 16;
            }

            while (v93);
            v91 = v275;
          }

          if (v91 != v237)
          {
            free(v91);
          }

          v98 = v271;
          if (v272)
          {
            v99 = (v271 + 16 * v272 - 8);
            v100 = -16 * v272;
            v101 = v99;
            do
            {
              v103 = *v101;
              v101 -= 4;
              v102 = v103;
              if (v103)
              {
                if (v102 >= 0x41)
                {
                  v104 = *(v99 - 1);
                  if (v104)
                  {
                    MEMORY[0x259C63150](v104, 0x1000C8000313F17);
                  }
                }
              }

              v99 = v101;
              v100 += 16;
            }

            while (v100);
            v98 = v271;
          }

          if (v98 != v239)
          {
            free(v98);
          }

          if (v267 != &v269)
          {
            free(v267);
          }

          v105 = v263;
          if (v264)
          {
            v106 = -624 * v264;
            v107 = v263 + 624 * v264 - 624;
            v108 = v107;
            do
            {
              (**v108)(v108);
              v108 -= 78;
              v107 -= 624;
              v106 += 624;
            }

            while (v106);
            v105 = v263;
            v9 = v253;
          }

          if (v105 != v241)
          {
            free(v105);
          }

          if (v261 != v257)
          {
            free(v261);
          }

          v109 = v300;
          if (v301)
          {
            v110 = (v300 + 16 * v301 - 8);
            v111 = -16 * v301;
            v112 = v110;
            do
            {
              v114 = *v112;
              v112 -= 4;
              v113 = v114;
              if (v114)
              {
                if (v113 >= 0x41)
                {
                  v115 = *(v110 - 1);
                  if (v115)
                  {
                    MEMORY[0x259C63150](v115, 0x1000C8000313F17);
                  }
                }
              }

              v110 = v112;
              v111 += 16;
            }

            while (v111);
            v109 = v300;
          }

          if (v109 != v242)
          {
            free(v109);
          }

          v116 = v297;
          if (v298)
          {
            v117 = (v297 + 16 * v298 - 8);
            v118 = -16 * v298;
            v119 = v117;
            do
            {
              v121 = *v119;
              v119 -= 4;
              v120 = v121;
              if (v121)
              {
                if (v120 >= 0x41)
                {
                  v122 = *(v117 - 1);
                  if (v122)
                  {
                    MEMORY[0x259C63150](v122, 0x1000C8000313F17);
                  }
                }
              }

              v117 = v119;
              v118 += 16;
            }

            while (v118);
            v116 = v297;
          }

          if (v116 != v243)
          {
            free(v116);
          }

          v123 = v293;
          if (v294)
          {
            v124 = (v293 + 16 * v294 - 8);
            v125 = -16 * v294;
            v126 = v124;
            do
            {
              v128 = *v126;
              v126 -= 4;
              v127 = v128;
              if (v128)
              {
                if (v127 >= 0x41)
                {
                  v129 = *(v124 - 1);
                  if (v129)
                  {
                    MEMORY[0x259C63150](v129, 0x1000C8000313F17);
                  }
                }
              }

              v124 = v126;
              v125 += 16;
            }

            while (v125);
            v123 = v293;
          }

          if (v123 != v245)
          {
            free(v123);
          }

          if (v289 != &v291)
          {
            free(v289);
          }

          v130 = v285;
          if (v286)
          {
            v131 = -624 * v286;
            v132 = v285 + 624 * v286 - 624;
            v133 = v132;
            do
            {
              (**v133)(v133);
              v133 -= 78;
              v132 -= 624;
              v131 += 624;
            }

            while (v131);
            v130 = v285;
            v9 = v253;
          }

          if (v130 != v247)
          {
            free(v130);
          }

          if (__src != v9)
          {
            free(__src);
          }

          v338 = v303;
          v339 = v304;
          v340 = &v342;
          v341 = 0;
          if (v306)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v342 = v258;
          v343 = 0x200000000;
          if (v308)
          {
            llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v342, v230);
          }

          v134 = *(v12 + 1304);
          v135 = v251;
          *(v251 + 16) = *(v12 + 1320);
          *v135 = v134;
          v347 = &v349;
          v348 = 0;
          v136 = v248;
          if (&v338 != v12 && *(v12 + 1336))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v137 = *(v12 + 1344);
          v350 = *(v12 + 1352);
          v349 = v137;
          v351 = v256;
          v352 = 0x1000000000;
          if (*(v12 + 1368))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v351, (v12 + 1360));
          }

          v138 = *(v12 + 1632);
          v139 = v250;
          *(v250 + 2) = *(v12 + 1640);
          *v139 = v138;
          v356 = v255;
          v357 = 0x1000000000;
          if (*(v12 + 1656))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v356, (v12 + 1648));
          }

          v359 = v254;
          v360 = 0x400000000;
          if (*(v12 + 1928))
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v359, (v12 + 1920));
          }

          v140 = *(v136 + 48);
          if (v140 >= *(v136 + 52))
          {
            *&v317 = 0;
            llvm::SmallVectorBase<unsigned int>::mallocForGrow();
          }

          v141 = *v225 + 2000 * v140;
          v142 = v338;
          *(v141 + 16) = v339;
          *v141 = v142;
          *(v141 + 24) = v141 + 40;
          *(v141 + 32) = 0;
          if (v141 != &v338 && v341)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v141 + 40) = v141 + 56;
          *(v141 + 48) = 0x200000000;
          if (v343)
          {
            llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v141 + 40, &v342);
          }

          v143 = *v251;
          *(v141 + 1320) = *(v251 + 16);
          *(v141 + 1304) = v143;
          *(v141 + 1328) = v141 + 1344;
          *(v141 + 1336) = 0;
          if (v141 != &v338 && v348)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v144 = v349;
          *(v141 + 1352) = v350;
          *(v141 + 1344) = v144;
          *(v141 + 1360) = v141 + 1376;
          *(v141 + 1368) = 0x1000000000;
          if (v352)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v141 + 1360), &v351);
          }

          v145 = *v250;
          *(v141 + 1640) = *(v250 + 2);
          *(v141 + 1632) = v145;
          *(v141 + 1648) = v141 + 1664;
          *(v141 + 1656) = 0x1000000000;
          if (v357)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v141 + 1648), &v356);
          }

          *(v141 + 1920) = v141 + 1936;
          *(v141 + 1928) = 0x400000000;
          if (v360)
          {
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v141 + 1920), &v359);
          }

          v6 = v248;
          ++*(v248 + 48);
          v146 = v359;
          if (v360)
          {
            v147 = (v359 + 16 * v360 - 8);
            v148 = -16 * v360;
            v149 = v147;
            do
            {
              v151 = *v149;
              v149 -= 4;
              v150 = v151;
              if (v151)
              {
                if (v150 >= 0x41)
                {
                  v152 = *(v147 - 1);
                  if (v152)
                  {
                    MEMORY[0x259C63150](v152, 0x1000C8000313F17);
                  }
                }
              }

              v147 = v149;
              v148 += 16;
            }

            while (v148);
            v146 = v359;
          }

          if (v146 != v254)
          {
            free(v146);
          }

          v153 = v356;
          if (v357)
          {
            v154 = (v356 + 16 * v357 - 8);
            v155 = -16 * v357;
            v156 = v154;
            do
            {
              v158 = *v156;
              v156 -= 4;
              v157 = v158;
              if (v158)
              {
                if (v157 >= 0x41)
                {
                  v159 = *(v154 - 1);
                  if (v159)
                  {
                    MEMORY[0x259C63150](v159, 0x1000C8000313F17);
                  }
                }
              }

              v154 = v156;
              v155 += 16;
            }

            while (v155);
            v153 = v356;
          }

          if (v153 != v255)
          {
            free(v153);
          }

          v160 = v351;
          if (v352)
          {
            v161 = (v351 + 16 * v352 - 8);
            v162 = -16 * v352;
            v163 = v161;
            do
            {
              v165 = *v163;
              v163 -= 4;
              v164 = v165;
              if (v165)
              {
                if (v164 >= 0x41)
                {
                  v166 = *(v161 - 1);
                  if (v166)
                  {
                    MEMORY[0x259C63150](v166, 0x1000C8000313F17);
                  }
                }
              }

              v161 = v163;
              v162 += 16;
            }

            while (v162);
            v160 = v351;
          }

          if (v160 != v256)
          {
            free(v160);
          }

          if (v347 != &v349)
          {
            free(v347);
          }

          v167 = v342;
          if (v343)
          {
            v168 = -624 * v343;
            v169 = v342 + 624 * v343 - 624;
            v170 = v169;
            do
            {
              (**v170)(v170);
              v170 -= 78;
              v169 -= 624;
              v168 += 624;
            }

            while (v168);
            v167 = v342;
          }

          if (v167 != v258)
          {
            free(v167);
          }

          if (v340 != &v342)
          {
            free(v340);
          }

          mlir::presburger::PresburgerSet::subtract(&v338, &v310, &v303);
          v310 = v338;
          v311 = v339;
          v171 = v341;
          v172 = v222;
          if (v341)
          {
            if (__dst != v231)
            {
              free(__dst);
              v171 = v341;
            }

            __dst = v340;
            v313 = __PAIR64__(HIDWORD(v341), v171);
            v340 = &v342;
            HIDWORD(v341) = 0;
            v172 = v218;
          }

          *v172 = 0;
          llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v231, &v342);
          v173 = v342;
          if (v343)
          {
            v174 = -624 * v343;
            v175 = v342 + 624 * v343 - 624;
            v176 = v175;
            do
            {
              (**v176)(v176);
              v176 -= 78;
              v175 -= 624;
              v174 += 624;
            }

            while (v174);
            v173 = v342;
          }

          if (v173 != v258)
          {
            free(v173);
          }

          if (v340 != &v342)
          {
            free(v340);
          }

          v177 = v307;
          if (v308)
          {
            v178 = -624 * v308;
            v179 = v307 + 624 * v308 - 624;
            v180 = v179;
            do
            {
              (**v180)(v180);
              v180 -= 78;
              v179 -= 624;
              v178 += 624;
            }

            while (v178);
            v177 = v307;
          }

          v9 = v253;
          if (v177 != v221)
          {
            free(v177);
          }

          if (v305 != v230)
          {
            free(v305);
          }

          v12 += 2000;
        }

        while (v12 != v229);
      }

      v338 = v310;
      v339 = v311;
      v340 = &v342;
      v341 = 0;
      if (v313)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v342 = v258;
      v343 = 0x200000000;
      if (v315)
      {
        llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(&v342, v231);
      }

      v181 = *(v8 + 1304);
      v182 = v251;
      *(v251 + 16) = *(v8 + 1320);
      *v182 = v181;
      v347 = &v349;
      v348 = 0;
      if (&v338 != v8 && *(v8 + 1336))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v183 = *(v8 + 1344);
      v350 = *(v8 + 1352);
      v349 = v183;
      v351 = v256;
      v352 = 0x1000000000;
      if (*(v8 + 1368))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v351, (v8 + 1360));
      }

      v184 = *(v8 + 1632);
      v185 = v250;
      *(v250 + 2) = *(v8 + 1640);
      *v185 = v184;
      v356 = v255;
      v357 = 0x1000000000;
      if (*(v8 + 1656))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v356, (v8 + 1648));
      }

      v359 = v254;
      v360 = 0x400000000;
      if (*(v8 + 1928))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v359, (v8 + 1920));
      }

      v186 = *(v6 + 48);
      if (v186 >= *(v6 + 52))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::PWMAFunction::Piece,false>::growAndEmplaceBack<mlir::presburger::PWMAFunction::Piece const&>(v225, &v338);
      }

      mlir::presburger::PWMAFunction::Piece::Piece(*(v6 + 40) + 2000 * v186, &v338);
      ++*(v6 + 48);
      mlir::presburger::MultiAffineFunction::~MultiAffineFunction(v251);
      v187 = v342;
      if (v343)
      {
        v188 = -624 * v343;
        v189 = v342 + 624 * v343 - 624;
        v190 = v189;
        do
        {
          (**v190)(v190);
          v190 -= 78;
          v189 -= 624;
          v188 += 624;
        }

        while (v188);
        v187 = v342;
      }

      if (v187 != v258)
      {
        free(v187);
      }

      if (v340 != &v342)
      {
        free(v340);
      }

      v191 = v314;
      if (v315)
      {
        v192 = -624 * v315;
        v193 = v314 + 624 * v315 - 624;
        v194 = v193;
        do
        {
          (**v194)(v194);
          v194 -= 78;
          v193 -= 624;
          v192 += 624;
        }

        while (v192);
        v191 = v314;
      }

      if (v191 != v217)
      {
        free(v191);
      }

      if (__dst != v231)
      {
        free(__dst);
      }

      v8 += 2000;
    }

    while (v8 != v215);
  }

  v195 = v214;
  mlir::presburger::PresburgerSpace::getDomainSpace(&v338, v214);
  mlir::presburger::PresburgerSet::getEmpty(&v338, &v317);
  if (v340 != &v342)
  {
    free(v340);
  }

  v196 = *(v195 + 12);
  if (v196)
  {
    v197 = *(v195 + 5);
    v198 = 2000 * v196;
    do
    {
      mlir::presburger::PresburgerRelation::unionInPlace(&v317, v197);
      v197 = (v197 + 2000);
      v198 -= 2000;
    }

    while (v198);
  }

  v199 = *(v216 + 48);
  if (v199)
  {
    v200 = *(v216 + 40);
    v257 = v353;
    v258 = (v200 + 2000 * v199);
    v255 = v361;
    v256 = v358;
    do
    {
      mlir::presburger::PresburgerSet::subtract(&v338, v200, &v317);
      v201 = *(v200 + 1304);
      v346 = *(v200 + 1320);
      v345 = v201;
      v347 = &v349;
      v348 = 0;
      if (&v338 != v200 && *(v200 + 1336))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v202 = *(v200 + 1344);
      v350 = *(v200 + 1352);
      v349 = v202;
      v351 = v257;
      v352 = 0x1000000000;
      if (*(v200 + 1368))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v351, (v200 + 1360));
      }

      v203 = *(v200 + 1632);
      v355 = *(v200 + 1640);
      v354 = v203;
      v356 = v256;
      v357 = 0x1000000000;
      if (*(v200 + 1656))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v356, (v200 + 1648));
      }

      v359 = v255;
      v360 = 0x400000000;
      if (*(v200 + 1928))
      {
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v359, (v200 + 1920));
      }

      v204 = *(v6 + 48);
      if (v204 >= *(v6 + 52))
      {
        llvm::SmallVectorTemplateBase<mlir::presburger::PWMAFunction::Piece,false>::growAndEmplaceBack<mlir::presburger::PWMAFunction::Piece const&>(v225, &v338);
      }

      mlir::presburger::PWMAFunction::Piece::Piece(*(v6 + 40) + 2000 * v204, &v338);
      ++*(v6 + 48);
      mlir::presburger::MultiAffineFunction::~MultiAffineFunction(&v345);
      v205 = v342;
      if (v343)
      {
        v206 = -624 * v343;
        v207 = v342 + 624 * v343 - 624;
        v208 = v207;
        do
        {
          (**v208)(v208);
          v208 -= 78;
          v207 -= 624;
          v206 += 624;
        }

        while (v206);
        v205 = v342;
        v6 = v248;
      }

      if (v205 != v344)
      {
        free(v205);
      }

      if (v340 != &v342)
      {
        free(v340);
      }

      v200 += 2000;
    }

    while (v200 != v258);
  }

  v209 = v321;
  if (v322)
  {
    v210 = -624 * v322;
    v211 = v321 + 624 * v322 - 624;
    v212 = v211;
    do
    {
      (**v212)(v212);
      v212 -= 78;
      v211 -= 624;
      v210 += 624;
    }

    while (v210);
    v209 = v321;
  }

  if (v209 != v323)
  {
    free(v209);
  }

  if (v319 != &v321)
  {
    free(v319);
  }
}

void mlir::presburger::MultiAffineFunction::subtract(mlir::presburger::MultiAffineFunction *this, const mlir::presburger::MultiAffineFunction *a2)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a2 + 16);
  __dst = &v8;
  v7 = 0;
  if (&v4 != a2 && *(a2 + 8))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = *(a2 + 5);
  v9 = *(a2 + 12);
  v10[0] = v11;
  v10[1] = 0x1000000000;
  if (*(a2 + 16))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v10, a2 + 7);
  }

  v11[32] = *(a2 + 41);
  v12 = *(a2 + 84);
  v13[0] = &v14;
  v13[1] = 0x1000000000;
  if (*(a2 + 88))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v13, a2 + 43);
  }

  v15[0] = v16;
  v15[1] = 0x400000000;
  if (*(a2 + 156))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(v15, a2 + 77);
  }

  mlir::presburger::MultiAffineFunction::mergeDivs(this, &v4);
}

unsigned int *mlir::presburger::PWMAFunction::removeOutputs(mlir::presburger::PWMAFunction *this, unsigned int a2, unsigned int a3)
{
  result = mlir::presburger::PresburgerSpace::removeVarRange(this, 3, a2, a3);
  if (*(this + 12))
  {
    if (a3 > a2)
    {
      mlir::presburger::PresburgerSpace::removeVarRange((*(this + 5) + 1304), 3, a2, a3);
      mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
    }
  }

  return result;
}

void mlir::presburger::PWMAFunction::valueAt(uint64_t a1@<X0>, const llvm::APInt *a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  if (v5)
  {
    v8 = *(a1 + 40);
    v9 = 2000 * v5;
    do
    {
      if (mlir::presburger::PresburgerRelation::containsPoint(v8, a2, a3))
      {
        mlir::presburger::MultiAffineFunction::valueAt(v8 + 1304, a2, a3);
      }

      v8 += 2000;
      v9 -= 2000;
    }

    while (v9);
  }

  *a4 = 0;
  a4[144] = 0;
}

char **llvm::SmallVectorImpl<std::optional<llvm::DynamicAPInt>>::operator=(char **result, char **a2)
{
  if (result != a2)
  {
    v3 = (a2 + 2);
    v4 = *a2;
    if (*a2 != (a2 + 2))
    {
      v5 = *result;
      v6 = *(result + 2);
      if (v6)
      {
        v7 = &v5[3 * v6 - 1];
        v8 = -24 * v6;
        do
        {
          if (*v7 == 1 && *(v7 - 2) > 0x40u && *(v7 - 2))
          {
            v9 = result;
            MEMORY[0x259C63150](*(v7 - 2), 0x1000C8000313F17);
            result = v9;
          }

          v7 -= 3;
          v8 += 24;
        }

        while (v8);
        v5 = *result;
      }

      if (v5 != result + 2)
      {
        v10 = result;
        free(v5);
        result = v10;
      }

      *result = *a2;
      v11 = a2 + 1;
      result[1] = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_14;
    }

    v11 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(result + 2);
    if (v13 < v12)
    {
      if (*(result + 3) < v12)
      {
        if (v13)
        {
          v14 = &(*result)[24 * v13 - 8];
          v15 = -24 * v13;
          do
          {
            if (*v14 == 1 && *(v14 - 2) > 0x40u && *(v14 - 2))
            {
              v16 = result;
              MEMORY[0x259C63150](*(v14 - 2), 0x1000C8000313F17);
              result = v16;
            }

            v14 -= 24;
            v15 += 24;
          }

          while (v15);
        }

        *(result + 2) = 0;
        llvm::SmallVectorTemplateBase<std::optional<llvm::DynamicAPInt>,false>::grow(result, v12);
      }

      if (v13)
      {
        v21 = result;
        v22 = *result;
        v23 = 24 * v13;
        do
        {
          std::__optional_storage_base<llvm::DynamicAPInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::DynamicAPInt,false>>(v22, v4);
          v4 += 24;
          v22 += 6;
          v23 -= 24;
        }

        while (v23);
        v24 = *a2;
        v25 = *(a2 + 2);
        if (v13 == v25)
        {
LABEL_36:
          result = v21;
          *(v21 + 2) = v12;
          v26 = *v11;
          if (!v26)
          {
LABEL_14:
            *v11 = 0;
            return result;
          }

LABEL_62:
          v39 = &v24[24 * v26 - 8];
          v40 = -24 * v26;
          do
          {
            if (*v39 == 1 && *(v39 - 2) > 0x40u && *(v39 - 2))
            {
              v41 = result;
              MEMORY[0x259C63150](*(v39 - 2), 0x1000C8000313F17);
              result = v41;
            }

            v39 -= 24;
            v40 += 24;
          }

          while (v40);
          goto LABEL_14;
        }
      }

      else
      {
        v21 = result;
        v13 = 0;
        v24 = *a2;
        v25 = *(a2 + 2);
        if (!*(a2 + 2))
        {
          goto LABEL_36;
        }
      }

      result = v21;
      v33 = *v21;
      v34 = 24 * v13;
      v35 = 24 * v25;
      do
      {
        v36 = &v33[v34];
        v37 = &v24[v34];
        *v36 = 0;
        v36[16] = 0;
        if (v24[v34 + 16] == 1)
        {
          *v36 = *v37;
          *(v36 + 2) = 0;
          v38 = *(v37 + 2);
          if (v38)
          {
            *(v36 + 2) = v38;
            if (v38 > 0x40)
            {
              llvm::APInt::initSlowCase(&v33[v34], v37);
            }

            *v36 = *v37;
          }

          v36[16] = 1;
        }

        v33 += 24;
        v24 += 24;
        v35 -= 24;
      }

      while (v34 != v35);
      v24 = *a2;
      *(result + 2) = v12;
      v26 = *v11;
      if (!v26)
      {
        goto LABEL_14;
      }

      goto LABEL_62;
    }

    v17 = *result;
    if (v12)
    {
      v18 = result;
      v19 = 24 * v12;
      do
      {
        std::__optional_storage_base<llvm::DynamicAPInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::DynamicAPInt,false>>(v17, v4);
        v4 += 24;
        v17 += 6;
        v19 -= 24;
      }

      while (v19);
      result = v18;
      v20 = &(*v18)[24 * *(v18 + 2)];
      if (v20 == v17)
      {
LABEL_45:
        *(result + 2) = v12;
        v29 = *(a2 + 2);
        if (v29)
        {
          v30 = &(*a2)[24 * v29 - 8];
          v31 = -24 * v29;
          do
          {
            if (*v30 == 1 && *(v30 - 2) > 0x40u && *(v30 - 2))
            {
              v32 = result;
              MEMORY[0x259C63150](*(v30 - 2), 0x1000C8000313F17);
              result = v32;
            }

            v30 -= 24;
            v31 += 24;
          }

          while (v31);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v20 = &v17[6 * v13];
      if (v20 == v17)
      {
        goto LABEL_45;
      }
    }

    do
    {
      v27 = v20;
      v20 -= 6;
      if (*(v27 - 8) == 1 && *(v27 - 4) > 0x40 && *v20)
      {
        v28 = result;
        MEMORY[0x259C63150](*v20, 0x1000C8000313F17);
        result = v28;
      }
    }

    while (v20 != v17);
    goto LABEL_45;
  }

  return result;
}

unsigned int *std::__optional_storage_base<llvm::DynamicAPInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::DynamicAPInt,false>>(unsigned int *result, llvm::APInt *a2)
{
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      v3 = *(a2 + 2);
      if (v3)
      {
        return llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(result, v3, a2);
      }

      else
      {
        v4 = *a2;
        if (result[2] > 0x40)
        {
          if (*result)
          {
            v6 = *a2;
            v8 = result;
            MEMORY[0x259C63150](*result, 0x1000C8000313F17);
            v4 = v6;
            result = v8;
          }
        }

        *result = v4;
        result[2] = 0;
      }
    }
  }

  else if (*(result + 16))
  {
    if (result[2] > 0x40 && *result)
    {
      v7 = result;
      MEMORY[0x259C63150](*result, 0x1000C8000313F17, a2);
      result = v7;
      *(v7 + 16) = 0;
    }

    else
    {
      *(result + 16) = 0;
    }
  }

  else
  {
    *result = *a2;
    result[2] = 0;
    v5 = *(a2 + 2);
    if (v5)
    {
      result[2] = v5;
      if (v5 > 0x40)
      {
        llvm::APInt::initSlowCase(result, a2);
      }

      *result = *a2;
      *(result + 16) = 1;
    }

    else
    {
      *(result + 16) = 1;
    }
  }

  return result;
}

uint64_t llvm::function_ref<BOOL ()(unsigned int,unsigned int)>::callback_fn<mlir::presburger::MultiAffineFunction::mergeDivs(mlir::presburger::MultiAffineFunction&)::$_0>(unsigned int **a1, unsigned int a2, unsigned int a3)
{
  if (a2 < a3 && **a1 <= a3)
  {
    mlir::presburger::PresburgerSpace::removeVarRange(a1[1], 1, a3, a3 + 1);
    mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn();
  }

  return 0;
}

uint64_t mlir::presburger::QuasiPolynomial::QuasiPolynomial(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6)
{
  *a1 = a2;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = a1 + 56;
  v9 = a1 + 40;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(v9, a3, a3 + 32 * a4);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>((a1 + 88), a5, &a5[3 * a6], a6);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = a1 + 56;
  v9 = a1 + 40;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(v9, a3, a3 + 32 * a4);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>((a1 + 88), a5, &a5[3 * a6], a6);
  return a1;
}

void mlir::presburger::QuasiPolynomial::QuasiPolynomial(uint64_t a1, int a2, llvm::APInt *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 4) = 1;
  v4 = a1 + 40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  v9 = *a3;
  LODWORD(v10) = 0;
  v5 = *(a3 + 2);
  if (v5)
  {
    LODWORD(v10) = *(a3 + 2);
    if (v5 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v9, a3);
    }
  }

  v7 = *(a3 + 2);
  v6 = a3 + 16;
  v11 = v7;
  v12 = 0;
  v8 = *(v6 + 2);
  if (v8)
  {
    v12 = *(v6 + 2);
    if (v8 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v11, v6);
    }
  }

  *(a1 + 40) = a1 + 56;
  *(a1 + 48) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(v4, &v9, &v13);
  if (v12 > 0x40 && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (v10 > 0x40)
  {
    if (v9)
    {
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  operator new();
}

void mlir::presburger::QuasiPolynomial::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x100000000;
  if (*(a1 + 48))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(&v24, (a1 + 40));
  }

  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(&v24, *(a2 + 40), *(a2 + 40) + 32 * *(a2 + 48));
  __p = 0;
  v21 = 0;
  v22 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&__p, *(a1 + 88), *(a1 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3));
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>> const*>,std::__wrap_iter<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>> const*>>(&__p, v21, *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  v6 = *(a1 + 8) + *a1;
  v7 = v24;
  v8 = v25;
  v9 = __p;
  v10 = v21;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3);
  *a3 = v6;
  *(a3 + 4) = 1;
  *(a3 + 8) = 0;
  *(a3 + 40) = a3 + 56;
  *(a3 + 16) = 0;
  *(a3 + 24) = a3 + 40;
  *(a3 + 32) = 0;
  *(a3 + 48) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(a3 + 40, v7, v7 + 32 * v8);
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v12 = a3 + 88;
  *(v12 + 16) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(v12, v9, v10, v11);
  v13 = __p;
  if (__p)
  {
    v14 = v21;
    v15 = __p;
    if (v21 != __p)
    {
      do
      {
        v14 -= 3;
        v23 = v14;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v23);
      }

      while (v14 != v13);
      v15 = __p;
    }

    v21 = v13;
    operator delete(v15);
  }

  v16 = v24;
  if (v25)
  {
    v17 = v24 + 32 * v25 - 16;
    v18 = -32 * v25;
    do
    {
      if (*(v17 + 2) > 0x40u && *v17)
      {
        MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
      }

      if (*(v17 - 2) > 0x40u)
      {
        v19 = *(v17 - 2);
        if (v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
        }
      }

      v17 -= 32;
      v18 += 32;
    }

    while (v18);
    v16 = v24;
  }

  if (v16 != v26)
  {
    free(v16);
  }
}

void mlir::presburger::QuasiPolynomial::operator-(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  v15[0] = a1[2] + *a1;
  v15[1] = 1;
  v16 = 0;
  v17 = 0;
  v18 = &v20;
  v19 = 0;
  v20 = &v22;
  v21 = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(&v20, v5, v5 + 32 * v6);
  memset(v23, 0, 24);
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(v23, v7, v8, 0xAAAAAAAAAAAAAAABLL * (v8 - v7));
  if (v21)
  {
    v9 = v20;
    v10 = 32 * v21;
    do
    {
      mlir::presburger::operator-(v9, &v11);
      mlir::presburger::Fraction::operator=(v9, &v11);
      if (v14 > 0x40 && v13)
      {
        MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }

      if (v12 > 0x40 && v11)
      {
        MEMORY[0x259C63150](v11, 0x1000C8000313F17);
      }

      v9 += 4;
      v10 -= 32;
    }

    while (v10);
  }

  mlir::presburger::QuasiPolynomial::operator+(a1, v15, a3);
  mlir::presburger::QuasiPolynomial::~QuasiPolynomial(v15);
}

void mlir::presburger::QuasiPolynomial::operator*(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v51 = v53;
  v52 = 0x100000000;
  v4 = *(a1 + 48);
  if (*(a2 + 48) * v4 >= 2)
  {
    v47 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = &v5[4 * v4];
    do
    {
      v7 = *(a2 + 48);
      if (v7)
      {
        v8 = *(a2 + 40);
        v9 = 32 * v7;
        do
        {
          mlir::presburger::operator*(v5, v8, &v47);
          if (v52 >= HIDWORD(v52))
          {
            llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<mlir::presburger::Fraction>(&v51, &v47);
          }

          v10 = v51 + 32 * v52;
          *v10 = v47;
          *(v10 + 2) = 0;
          v11 = v48;
          if (v48)
          {
            *(v10 + 2) = v48;
            if (v11 > 0x40)
            {
              llvm::APInt::initSlowCase(v10, &v47);
            }

            *v10 = v47;
          }

          *(v10 + 2) = v49;
          v12 = (v10 + 16);
          *(v10 + 6) = 0;
          v13 = v50;
          if (v50)
          {
            *(v10 + 6) = v50;
            if (v13 > 0x40)
            {
              llvm::APInt::initSlowCase(v12, &v49);
            }

            *v12 = v49;
            LODWORD(v52) = v52 + 1;
            if (v50 > 0x40 && v49)
            {
              MEMORY[0x259C63150](v49, 0x1000C8000313F17);
            }
          }

          else
          {
            LODWORD(v52) = v52 + 1;
          }

          if (v48 > 0x40 && v47)
          {
            MEMORY[0x259C63150](v47, 0x1000C8000313F17);
          }

          v8 = (v8 + 32);
          v9 -= 32;
        }

        while (v9);
      }

      v5 += 4;
    }

    while (v5 != v6);
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3) * 0xAAAAAAAAAAAAAAABLL * (v14 - v15);
  if (v16)
  {
    if (v16 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    goto LABEL_87;
  }

  v33 = 0;
  v40 = a3;
  if (v15 == v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    if (*(a2 + 88) != *(a2 + 96))
    {
      v42 = *(a1 + 96);
      while (1)
      {
        v18 = *(a2 + 88);
        v44 = *(a2 + 96);
        v45 = v15;
        if (v18 != v44)
        {
          break;
        }

LABEL_32:
        v15 += 3;
        if (v15 == v42)
        {
          goto LABEL_67;
        }
      }

      while (1)
      {
        v20 = v47;
        v19 = v48;
        if (v48 != v47)
        {
          v21 = v48;
          do
          {
            v23 = *(v21 - 6);
            v21 -= 48;
            v22 = v23;
            v24 = *(v21 + 2);
            if (v24)
            {
              v25 = 32 * v24;
              v26 = &v22[v25 - 16];
              v27 = -v25;
              do
              {
                if (*(v26 + 8) > 0x40u && *v26)
                {
                  MEMORY[0x259C63150](*v26, 0x1000C8000313F17);
                }

                if (*(v26 - 8) > 0x40u)
                {
                  v28 = *(v26 - 16);
                  if (v28)
                  {
                    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
                  }
                }

                v26 -= 32;
                v27 += 32;
              }

              while (v27);
              v22 = *v21;
            }

            if (v22 != v19 - 32)
            {
              free(v22);
            }

            v19 = v21;
          }

          while (v21 != v20);
        }

        v48 = v20;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::SmallVector<mlir::presburger::Fraction,1u> const*>,std::__wrap_iter<llvm::SmallVector<mlir::presburger::Fraction,1u> const*>>(&v47, v20, *v15, v15[1], 0xAAAAAAAAAAAAAAABLL * ((v15[1] - *v15) >> 4));
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<llvm::SmallVector<mlir::presburger::Fraction,1u> const*>,std::__wrap_iter<llvm::SmallVector<mlir::presburger::Fraction,1u> const*>>(&v47, v48, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 4));
        v29 = v17 - v33;
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v33) >> 3) + 1;
        if (v30 > 0xAAAAAAAAAAAAAAALL)
        {
          break;
        }

        if (0x5555555555555556 * (-v33 >> 3) > v30)
        {
          v30 = 0x5555555555555556 * (-v33 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 3) >= 0x555555555555555)
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

          std::string::__throw_length_error[abi:nn200100]();
        }

        v32 = (8 * ((v17 - v33) >> 3));
        *v32 = 0;
        v32[1] = 0;
        v32[2] = 0;
        if (v48 != v47)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 4) <= 0x555555555555555)
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v17 = v32 + 3;
        memcpy(v32 - v29, v33, v29);
        if (v33)
        {
          operator delete(v33);
        }

        v33 = v32 - v29;
        v15 = v45;
        v18 += 3;
        if (v18 == v44)
        {
          goto LABEL_32;
        }
      }

LABEL_87:
      std::string::__throw_length_error[abi:nn200100]();
    }
  }

LABEL_67:
  v34 = v51;
  v35 = v52;
  *v40 = *(a1 + 8) + *a1;
  *(v40 + 4) = 1;
  *(v40 + 8) = 0;
  *(v40 + 40) = v40 + 56;
  *(v40 + 16) = 0;
  *(v40 + 24) = v40 + 40;
  *(v40 + 32) = 0;
  *(v40 + 48) = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(v40 + 40, v34, v34 + 32 * v35);
  *(v40 + 88) = 0;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>((v40 + 88), v33, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v33) >> 3));
  if (v33)
  {
    while (v17 != v33)
    {
      v17 -= 3;
      v46 = v17;
      std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v46);
    }

    operator delete(v33);
  }

  v46 = &v47;
  std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&v46);
  v36 = v51;
  if (v52)
  {
    v37 = v51 + 32 * v52 - 16;
    v38 = -32 * v52;
    do
    {
      if (*(v37 + 2) > 0x40u && *v37)
      {
        MEMORY[0x259C63150](*v37, 0x1000C8000313F17);
      }

      if (*(v37 - 2) > 0x40u)
      {
        v39 = *(v37 - 2);
        if (v39)
        {
          MEMORY[0x259C63150](v39, 0x1000C8000313F17);
        }
      }

      v37 -= 32;
      v38 += 32;
    }

    while (v38);
    v36 = v51;
    if (v51 != v53)
    {
      goto LABEL_82;
    }
  }

  else if (v51 != v53)
  {
LABEL_82:
    free(v36);
  }
}

void mlir::presburger::QuasiPolynomial::operator/(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 24) = a3 + 40;
  *(a3 + 32) = 0;
  if (a3 != a1 && *(a1 + 32))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(a3 + 40) = a3 + 56;
  *(a3 + 48) = 0x100000000;
  if (*(a1 + 48))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((a3 + 40), (a1 + 40));
  }

  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v6 = a3 + 88;
  *(v6 + 16) = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(v6, *(a1 + 88), *(a1 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 3));
  v7 = *(v6 - 40);
  if (v7)
  {
    v8 = *(v6 - 48);
    v9 = 32 * v7;
    do
    {
      mlir::presburger::operator/(v8, a2, &v10);
      mlir::presburger::Fraction::operator=(v8, &v10);
      if (v13 > 0x40 && v12)
      {
        MEMORY[0x259C63150](v12, 0x1000C8000313F17);
      }

      if (v11 > 0x40)
      {
        if (v10)
        {
          MEMORY[0x259C63150](v10, 0x1000C8000313F17);
        }
      }

      v8 += 4;
      v9 -= 32;
    }

    while (v9);
  }
}

void mlir::presburger::QuasiPolynomial::simplify(uint64_t *__return_ptr a1@<X8>, mlir::presburger::QuasiPolynomial *this@<X0>)
{
  v129 = *MEMORY[0x277D85DE8];
  p_p = 1;
  v126 = 0;
  v114 = 0;
  LODWORD(v115) = 0;
  mlir::presburger::Fraction::Fraction(&v117, &v114, &p_p);
  if (v115 > 0x40 && v114)
  {
    MEMORY[0x259C63150](v114, 0x1000C8000313F17);
  }

  if (v126 > 0x40 && p_p)
  {
    MEMORY[0x259C63150](p_p, 0x1000C8000313F17);
  }

  v114 = v116;
  v115 = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>(&v114, 0, 0);
  __p = 0;
  v112 = 0;
  v113 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(&v108, 0, 0, 0);
  v101 = *(this + 12);
  if (v101)
  {
    v3 = 0;
    v4 = (*(this + 2) + *this);
    v107 = 32 * v4;
    v103 = v4;
    v104 = this;
    do
    {
      v5 = *(this + 5);
      v123 = 0;
      v124 = 0;
      v121 = 1;
      v122 = 0;
      mlir::presburger::Fraction::Fraction(&p_p, &v123, &v121);
      if (v122 > 0x40 && v121)
      {
        MEMORY[0x259C63150](v121, 0x1000C8000313F17);
      }

      if (v124 > 0x40 && v123)
      {
        MEMORY[0x259C63150](v123, 0x1000C8000313F17);
      }

      v6 = mlir::presburger::compare((v5 + 32 * v3), &p_p);
      if (v128 > 0x40 && v127)
      {
        v86 = v6;
        MEMORY[0x259C63150](v127, 0x1000C8000313F17);
        v6 = v86;
      }

      if (v126 > 0x40 && p_p)
      {
        v87 = v6;
        MEMORY[0x259C63150](p_p, 0x1000C8000313F17);
        v6 = v87;
      }

      if (v6)
      {
        v7 = (*(this + 11) + 24 * v3);
        v8 = *v7;
        v9 = v7[1];
        if (*v7 != v9)
        {
          do
          {
            v10 = *(v8 + 8);
            if (!v10)
            {
              goto LABEL_6;
            }

            v11 = *v8;
            v12 = 32 * v10;
            while (1)
            {
              v121 = 1;
              v122 = 0;
              v123 = 0;
              v124 = 0;
              mlir::presburger::Fraction::Fraction(&p_p, &v123, &v121);
              if (v124 > 0x40 && v123)
              {
                MEMORY[0x259C63150](v123, 0x1000C8000313F17);
              }

              v13 = mlir::presburger::compare(v11, &p_p);
              if (v128 > 0x40 && v127)
              {
                v14 = v13;
                MEMORY[0x259C63150](v127, 0x1000C8000313F17);
                v13 = v14;
              }

              if (v126 > 0x40 && p_p)
              {
                v15 = v13;
                MEMORY[0x259C63150](p_p, 0x1000C8000313F17);
                v13 = v15;
              }

              if (v122 > 0x40 && v121)
              {
                v16 = v13;
                MEMORY[0x259C63150](v121, 0x1000C8000313F17);
                v13 = v16;
              }

              if (v13)
              {
                break;
              }

              v11 = (v11 + 32);
              v12 -= 32;
              if (!v12)
              {
                goto LABEL_6;
              }
            }

            v8 += 48;
          }

          while (v8 != v9);
        }

        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__assign_with_size[abi:nn200100]<llvm::SmallVector<mlir::presburger::Fraction,1u>*,llvm::SmallVector<mlir::presburger::Fraction,1u>*>(&__p, 0, 0, 0);
        mlir::presburger::Fraction::operator=(&v117, (*(this + 5) + 32 * v3));
        v17 = (*(this + 11) + 24 * v3);
        v18 = *v17;
        v19 = v17[1];
        v105 = v3;
        v106 = v19;
        if (*v17 != v19)
        {
LABEL_42:
          v25 = *v18;
          if (!v4)
          {
LABEL_59:
            mlir::presburger::operator*(&v117, (v25 + 32 * v4), &p_p);
            if (v126)
            {
              valueAt(&v118, v126, &p_p, &v117);
              v37 = v128;
              if (v128)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v36 = p_p;
              if (v118 > 0x40 && v117)
              {
                MEMORY[0x259C63150](v117, 0x1000C8000313F17);
                v117 = v36;
                v118 = 0;
                v37 = v128;
                if (v128)
                {
LABEL_134:
                  valueAt(&v120, v37, &v127, &v119);
                  v85 = v128;
                  if (v128)
                  {
LABEL_141:
                    if (v85 >= 0x41 && v127)
                    {
                      MEMORY[0x259C63150](v127, 0x1000C8000313F17);
                    }
                  }

                  goto LABEL_64;
                }
              }

              else
              {
                v117 = p_p;
                v118 = 0;
                v37 = v128;
                if (v128)
                {
                  goto LABEL_134;
                }
              }
            }

            v38 = v127;
            if (v120 > 0x40 && v119)
            {
              MEMORY[0x259C63150](v119, 0x1000C8000313F17);
              v119 = v38;
              v120 = 0;
              v85 = v128;
              if (v128)
              {
                goto LABEL_141;
              }
            }

            else
            {
              v119 = v127;
              v120 = 0;
            }

LABEL_64:
            if (v126 > 0x40 && p_p)
            {
              MEMORY[0x259C63150](p_p, 0x1000C8000313F17);
            }

            goto LABEL_41;
          }

          v26 = *(v18 + 8);
          v27 = v107;
          v28 = *v18;
          while (1)
          {
            v121 = 1;
            v122 = 0;
            v123 = 0;
            v124 = 0;
            mlir::presburger::Fraction::Fraction(&p_p, &v123, &v121);
            if (v124 > 0x40 && v123)
            {
              MEMORY[0x259C63150](v123, 0x1000C8000313F17);
            }

            v29 = mlir::presburger::compare(v28, &p_p);
            if (v128 > 0x40 && v127)
            {
              v30 = v26;
              v31 = v29;
              MEMORY[0x259C63150](v127, 0x1000C8000313F17);
              v29 = v31;
              v26 = v30;
              this = v104;
            }

            if (v126 > 0x40 && p_p)
            {
              v32 = v26;
              v33 = v29;
              MEMORY[0x259C63150](p_p, 0x1000C8000313F17);
              v29 = v33;
              v26 = v32;
              this = v104;
            }

            if (v122 > 0x40 && v121)
            {
              v34 = v26;
              v35 = v29;
              MEMORY[0x259C63150](v121, 0x1000C8000313F17);
              v29 = v35;
              v26 = v34;
              this = v104;
            }

            if (v29)
            {
              break;
            }

            v28 = (v28 + 32);
            v27 -= 32;
            if (!v27)
            {
              goto LABEL_59;
            }
          }

          v39 = v112;
          if (v112 < v113)
          {
            v40 = v112 + 16;
            *v112 = v112 + 16;
            *(v39 + 1) = 0x100000000;
            if (v26 >= 2)
            {
              p_p = 0;
              llvm::SmallVectorBase<unsigned int>::mallocForGrow();
            }

            if (!v26)
            {
              v56 = 0;
LABEL_94:
              *(v39 + 2) = v56 + v26;
              v57 = v39 + 48;
              goto LABEL_40;
            }

            v44 = 0;
            v45 = v26;
            v46 = 32 * v26;
            v47 = v40;
            while (1)
            {
              v48 = (v25 + v44);
              v49 = &v47[v44 / 8];
              *v49 = *(v25 + v44);
              *(v49 + 2) = 0;
              v50 = *(v25 + v44 + 8);
              if (v50)
              {
                *(v49 + 2) = v50;
                if (v50 > 0x40)
                {
                  llvm::APInt::initSlowCase(&v47[v44 / 8], (v25 + v44));
                }

                *v49 = *v48;
                v55 = v48[2];
                v51 = v48 + 2;
                v49[2] = v55;
                v53 = (v49 + 2);
                *(v49 + 6) = 0;
                v54 = *(v51 + 2);
                if (!v54)
                {
LABEL_83:
                  v44 += 32;
                  if (v46 == v44)
                  {
                    goto LABEL_93;
                  }

                  continue;
                }
              }

              else
              {
                v52 = v48[2];
                v51 = v48 + 2;
                v49[2] = v52;
                v53 = (v49 + 2);
                *(v49 + 6) = 0;
                v54 = *(v51 + 2);
                if (!v54)
                {
                  goto LABEL_83;
                }
              }

              *(v49 + 6) = v54;
              if (v54 > 0x40)
              {
                llvm::APInt::initSlowCase(v53, v51);
              }

              *v53 = *v51;
              v44 += 32;
              if (v46 == v44)
              {
LABEL_93:
                v56 = *(v39 + 2);
                v4 = v103;
                LODWORD(v26) = v45;
                this = v104;
                v3 = v105;
                goto LABEL_94;
              }
            }
          }

          v41 = 0xAAAAAAAAAAAAAAABLL * ((v112 - __p) >> 4);
          v42 = v41 + 1;
          if (v41 + 1 > 0x555555555555555)
          {
            goto LABEL_188;
          }

          if (0x5555555555555556 * ((v113 - __p) >> 4) > v42)
          {
            v42 = 0x5555555555555556 * ((v113 - __p) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v113 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v43 = 0x555555555555555;
          }

          else
          {
            v43 = v42;
          }

          if (v43)
          {
            if (v43 <= 0x555555555555555)
            {
              operator new();
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v58 = (16 * ((v112 - __p) >> 4));
          *v58 = v58 + 2;
          v58[1] = 0x100000000;
          if (v26 >= 2)
          {
            p_p = 0;
            llvm::SmallVectorBase<unsigned int>::mallocForGrow();
          }

          if (!v26)
          {
            v71 = __p;
            v70 = v112;
            v72 = v112 - __p;
            *(48 * v41 + 8) = 0;
            v73 = v70 - v71;
            if (v70 != v71)
            {
              goto LABEL_112;
            }

            goto LABEL_131;
          }

          v59 = 0;
          v102 = v26;
          v60 = 32 * v26;
          v61 = 48 * v41 + 16;
          while (1)
          {
            v62 = (v25 + v59);
            v63 = v61 + v59;
            *v63 = *(v25 + v59);
            *(v63 + 8) = 0;
            v64 = *(v25 + v59 + 8);
            if (v64)
            {
              *(v63 + 8) = v64;
              if (v64 > 0x40)
              {
                llvm::APInt::initSlowCase((v61 + v59), (v25 + v59));
              }

              *v63 = *v62;
              v69 = v62[2];
              v65 = v62 + 2;
              *(v63 + 16) = v69;
              v67 = (v63 + 16);
              *(v63 + 24) = 0;
              v68 = *(v65 + 2);
              if (!v68)
              {
LABEL_101:
                v59 += 32;
                if (v60 == v59)
                {
                  goto LABEL_111;
                }

                continue;
              }
            }

            else
            {
              v66 = v62[2];
              v65 = v62 + 2;
              *(v63 + 16) = v66;
              v67 = (v63 + 16);
              *(v63 + 24) = 0;
              v68 = *(v65 + 2);
              if (!v68)
              {
                goto LABEL_101;
              }
            }

            *(v63 + 24) = v68;
            if (v68 > 0x40)
            {
              llvm::APInt::initSlowCase(v67, v65);
            }

            *v67 = *v65;
            v59 += 32;
            if (v60 == v59)
            {
LABEL_111:
              v43 = 0;
              v71 = __p;
              v70 = v112;
              v72 = v112 - __p;
              *(48 * v41 + 8) += v102;
              v73 = v70 - v71;
              if (v70 != v71)
              {
LABEL_112:
                v74 = 0;
                v75 = -16 * (v73 >> 4) + 48 * v41;
                do
                {
                  v76 = (v75 + v74);
                  *v76 = v75 + v74 + 16;
                  v76[1] = 0x100000000;
                  if (*&v71[v74 + 8])
                  {
                    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(v76, &v71[v74]);
                  }

                  v74 += 48;
                }

                while (&v71[v74] != v70);
                do
                {
                  v77 = *v71;
                  v78 = *(v71 + 2);
                  if (v78)
                  {
                    v79 = 4 * v78;
                    v80 = &v77[v79 - 2];
                    v81 = -(v79 * 8);
                    do
                    {
                      if (*(v80 + 8) > 0x40u && *v80)
                      {
                        MEMORY[0x259C63150](*v80, 0x1000C8000313F17);
                      }

                      if (*(v80 - 8) > 0x40u)
                      {
                        v82 = *(v80 - 16);
                        if (v82)
                        {
                          MEMORY[0x259C63150](v82, 0x1000C8000313F17);
                        }
                      }

                      v80 -= 32;
                      v81 += 32;
                    }

                    while (v81);
                    v77 = *v71;
                  }

                  if (v77 != (v71 + 16))
                  {
                    free(v77);
                  }

                  v71 += 48;
                }

                while (v71 != v70);
              }

LABEL_131:
              v83 = v58 - v72;
              v84 = __p;
              v57 = (v58 + 6);
              __p = v83;
              v112 = (v58 + 6);
              v113 = 48 * v43;
              if (v84)
              {
                operator delete(v84);
              }

              this = v104;
              v3 = v105;
              v4 = v103;
LABEL_40:
              v19 = v106;
              v112 = v57;
LABEL_41:
              v18 += 48;
              if (v18 == v19)
              {
                break;
              }

              goto LABEL_42;
            }
          }
        }

        if (v115 >= HIDWORD(v115))
        {
          llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndEmplaceBack<mlir::presburger::Fraction>(&v114, &v117);
        }

        v20 = v114 + 32 * v115;
        *v20 = v117;
        *(v20 + 2) = 0;
        v21 = v118;
        if (v118)
        {
          *(v20 + 2) = v118;
          if (v21 > 0x40)
          {
            llvm::APInt::initSlowCase(v20, &v117);
          }

          *v20 = v117;
        }

        *(v20 + 2) = v119;
        v22 = (v20 + 16);
        *(v20 + 6) = 0;
        v23 = v120;
        if (v120)
        {
          *(v20 + 6) = v120;
          if (v23 > 0x40)
          {
            llvm::APInt::initSlowCase(v22, &v119);
          }

          *v22 = v119;
        }

        LODWORD(v115) = v115 + 1;
        v24 = v109;
        if (v109 >= v110)
        {
          v109 = std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__emplace_back_slow_path<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>&>(&v108, &__p);
        }

        else
        {
          *v109 = 0;
          v24[1] = 0;
          v24[2] = 0;
          if (v112 != __p)
          {
            if (0xAAAAAAAAAAAAAAABLL * ((v112 - __p) >> 4) <= 0x555555555555555)
            {
              operator new();
            }

LABEL_188:
            std::string::__throw_length_error[abi:nn200100]();
          }

          v109 = v24 + 3;
        }
      }

LABEL_6:
      ++v3;
    }

    while (v3 != v101);
  }

  v88 = v114;
  v89 = v115;
  v90 = v108;
  v91 = v109;
  v92 = 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3);
  *a1 = *(this + 2) + *this;
  *(a1 + 1) = 1;
  a1[1] = 0;
  a1[5] = (a1 + 7);
  *(a1 + 16) = 0;
  a1[3] = (a1 + 5);
  a1[4] = 0;
  a1[6] = 0x100000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::append<mlir::presburger::Fraction const*,void>((a1 + 5), v88, v88 + 32 * v89);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  std::vector<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>>::__init_with_size[abi:nn200100]<std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*,std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>*>(a1 + 22, v90, v91, v92);
  v93 = v108;
  if (v108)
  {
    v94 = v109;
    v95 = v108;
    if (v109 != v108)
    {
      do
      {
        v94 -= 3;
        p_p = v94;
        std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&p_p);
      }

      while (v94 != v93);
      v95 = v108;
    }

    v109 = v93;
    operator delete(v95);
  }

  p_p = &__p;
  std::vector<llvm::SmallVector<mlir::presburger::Fraction,1u>>::__destroy_vector::operator()[abi:nn200100](&p_p);
  v96 = v114;
  if (v115)
  {
    v97 = v114 + 32 * v115 - 16;
    v98 = -32 * v115;
    do
    {
      if (*(v97 + 2) > 0x40u && *v97)
      {
        MEMORY[0x259C63150](*v97, 0x1000C8000313F17);
      }

      if (*(v97 - 2) > 0x40u)
      {
        v99 = *(v97 - 2);
        if (v99)
        {
          MEMORY[0x259C63150](v99, 0x1000C8000313F17);
        }
      }

      v97 -= 32;
      v98 += 32;
    }

    while (v98);
    v96 = v114;
  }

  if (v96 != v116)
  {
    free(v96);
  }

  if (v120 > 0x40 && v119)
  {
    MEMORY[0x259C63150](v119, 0x1000C8000313F17);
  }

  if (v118 > 0x40)
  {
    if (v117)
    {
      MEMORY[0x259C63150](v117, 0x1000C8000313F17);
    }
  }
}