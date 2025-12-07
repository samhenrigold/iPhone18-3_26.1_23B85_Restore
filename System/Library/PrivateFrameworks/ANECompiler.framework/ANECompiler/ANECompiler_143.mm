uint64_t mlir::AffineMap::compose(uint64_t *a1, unsigned int *a2, mlir::MLIRContext *a3)
{
  v39[8] = *MEMORY[0x1E69E9840];
  v30 = a2;
  v5 = *(*a1 + 4);
  v6 = *a2;
  v7 = a2[1];
  v37 = v39;
  v38 = 0x800000000;
  if (v6)
  {
    if (v6 < 9)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v6, 8);
      v8 = v38;
      v9 = v6 - v38;
      if (v6 == v38)
      {
LABEL_7:
        v10 = 0;
        LODWORD(v38) = v6;
        do
        {
          AffineDimExpr = mlir::getAffineDimExpr(v10, *(*a1 + 16), a3);
          *(v37 + v10) = AffineDimExpr;
          v10 = (v10 + 1);
        }

        while (v6 != v10);
        goto LABEL_9;
      }
    }

    bzero(v37 + 8 * v8, 8 * v9);
    goto LABEL_7;
  }

LABEL_9:
  v12 = (v7 + v5);
  v34 = v36;
  v35 = 0x800000000;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v7 < 9)
  {
    v13 = 0;
    v14 = v7;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v7, 8);
    v13 = v35;
    v14 = v7 - v35;
    if (v7 == v35)
    {
      goto LABEL_15;
    }
  }

  bzero(v34 + 8 * v13, 8 * v14);
LABEL_15:
  LODWORD(v35) = v7;
LABEL_16:
  if (v5 >= v12)
  {
    v17 = v34;
  }

  else
  {
    v15 = 0;
    do
    {
      AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, *(*a1 + 16), a3);
      v17 = v34;
      *(v34 + v15) = AffineSymbolExpr;
      v15 += 8;
      v5 = (v5 + 1);
      LODWORD(v7) = v7 - 1;
    }

    while (v7);
    LODWORD(v7) = v35;
  }

  v18 = mlir::AffineMap::replaceDimsAndSymbols(&v30, v37, v38, v17, v7, v6, v12);
  v31 = v33;
  v32 = 0x800000000;
  v19 = *a1;
  v20 = *(*a1 + 8);
  if (v20 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v20, 8);
    v19 = *a1;
    LODWORD(v20) = *(*a1 + 8);
  }

  if (v20)
  {
    v21 = 8 * v20;
    v22 = (v19 + 24);
    do
    {
      v29 = *v22;
      v23 = mlir::AffineExpr::compose(&v29, v18);
      v24 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v26 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        v23 = v26;
        v24 = v32;
      }

      *(v31 + v24) = v23;
      v25 = v32 + 1;
      LODWORD(v32) = v32 + 1;
      ++v22;
      v21 -= 8;
    }

    while (v21);
  }

  else
  {
    v25 = v32;
  }

  v27 = mlir::AffineMap::get(v6, v12, v31, v25, *(a2 + 2));
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  return v27;
}

uint64_t mlir::AffineMap::isProjectedPermutation(mlir::AffineMap *this, int a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*(*this + 4))
  {
    return 0;
  }

  v3 = v2[2];
  v4 = *v2;
  if (v3 > v4)
  {
    return 0;
  }

  v19 = v22;
  v21 = 8;
  if (v4 < 9)
  {
    if (v4)
    {
      bzero(v22, v4);
    }
  }

  else
  {
    v20 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v19, v22, v4, 1);
    bzero(v19, v4);
    v2 = *this;
    v3 = v2[2];
  }

  v20 = v4;
  v5 = 1;
  if (!v3)
  {
LABEL_24:
    v15 = v19;
    if (v19 != v22)
    {
      goto LABEL_27;
    }

    return v5;
  }

  v9 = 8 * v3;
  v10 = (v2 + 6);
  do
  {
    v11 = *v10;
    v18 = *v10;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 6)
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, v11);
      v17 = v18;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, 0);
      v17 = v18;
      if (v18)
      {
LABEL_14:
        Position = mlir::AffineDimExpr::getPosition(&v17);
        if (*(v19 + Position))
        {
          goto LABEL_23;
        }

        v13 = mlir::AffineDimExpr::getPosition(&v17);
        *(v19 + v13) = 1;
        goto LABEL_11;
      }
    }

    v18 = v11;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 5)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v18, v14);
    v16 = v18;
    if (!a2 || !v18 || mlir::AffineBinaryOpExpr::getLHS(&v16))
    {
LABEL_23:
      v5 = 0;
      goto LABEL_24;
    }

LABEL_11:
    ++v10;
    v9 -= 8;
  }

  while (v9);
  v5 = 1;
  v15 = v19;
  if (v19 != v22)
  {
LABEL_27:
    free(v15);
  }

  return v5;
}

uint64_t mlir::AffineMap::isPermutation(mlir::AffineMap *this)
{
  if (**this == *(*this + 8))
  {
    return mlir::AffineMap::isProjectedPermutation(this, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::foldAttributesIntoMap(mlir::MLIRContext **a1, unsigned int *a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  v46[6] = *MEMORY[0x1E69E9840];
  v44 = v46;
  v45 = 0x600000000;
  v40 = a2;
  v41 = v43;
  v42 = 0x600000000;
  if (*a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = *(a3 + v10);
        if ((v11 & 4) != 0)
        {
          break;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFF8;
        if (!v12)
        {
          break;
        }

        v39 = v12;
        Int = mlir::IntegerAttr::getInt(&v39);
        AffineConstantExpr = mlir::Builder::getAffineConstantExpr(a1, Int, v14);
        v16 = v45;
        if (v45 >= HIDWORD(v45))
        {
          v22 = AffineConstantExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 8);
          AffineConstantExpr = v22;
          v16 = v45;
        }

        *(v44 + v16) = AffineConstantExpr;
        LODWORD(v45) = v45 + 1;
        if (++v10 >= *a2)
        {
          goto LABEL_15;
        }
      }

      AffineDimExpr = mlir::Builder::getAffineDimExpr(a1, v9, a3);
      v18 = v45;
      if (v45 >= HIDWORD(v45))
      {
        v21 = AffineDimExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 8);
        AffineDimExpr = v21;
        v18 = v45;
      }

      *(v44 + v18) = AffineDimExpr;
      LODWORD(v45) = v45 + 1;
      v19 = *(a3 + v10);
      v20 = *(a5 + 8);
      if (v20 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v20 + 1, 8);
        v20 = *(a5 + 8);
      }

      v9 = (v9 + 1);
      *(*a5 + 8 * v20) = v19 & 0xFFFFFFFFFFFFFFF8;
      ++*(a5 + 8);
      ++v10;
    }

    while (v10 < *a2);
  }

  else
  {
    v9 = 0;
  }

LABEL_15:
  if (a2[1])
  {
    v23 = 0;
    v24 = 0;
    do
    {
      while (1)
      {
        v25 = *(a3 + *a2 + v24);
        if ((v25 & 4) != 0)
        {
          break;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFF8;
        if (!v26)
        {
          break;
        }

        v39 = v26;
        v27 = mlir::IntegerAttr::getInt(&v39);
        v29 = mlir::Builder::getAffineConstantExpr(a1, v27, v28);
        v30 = v42;
        if (v42 >= HIDWORD(v42))
        {
          v36 = v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v42 + 1, 8);
          v29 = v36;
          v30 = v42;
        }

        *(v41 + v30) = v29;
        LODWORD(v42) = v42 + 1;
        if (++v24 >= a2[1])
        {
          goto LABEL_29;
        }
      }

      AffineSymbolExpr = mlir::Builder::getAffineSymbolExpr(a1, v23, a3);
      v32 = v42;
      if (v42 >= HIDWORD(v42))
      {
        v35 = AffineSymbolExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v42 + 1, 8);
        AffineSymbolExpr = v35;
        v32 = v42;
      }

      *(v41 + v32) = AffineSymbolExpr;
      LODWORD(v42) = v42 + 1;
      v33 = *(a3 + *a2 + v24);
      v34 = *(a5 + 8);
      if (v34 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v34 + 1, 8);
        v34 = *(a5 + 8);
      }

      v23 = (v23 + 1);
      *(*a5 + 8 * v34) = v33 & 0xFFFFFFFFFFFFFFF8;
      ++*(a5 + 8);
      ++v24;
    }

    while (v24 < a2[1]);
  }

  else
  {
    v23 = 0;
  }

LABEL_29:
  v37 = mlir::AffineMap::replaceDimsAndSymbols(&v40, v44, v45, v41, v42, v9, v23);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v37;
}

uint64_t mlir::simplifyAffineMap(mlir::MLIRContext ***a1)
{
  v2[8] = *MEMORY[0x1E69E9840];
  if (*(a1 + 2))
  {
    mlir::simplifyAffineExpr(a1[3], *a1, *(a1 + 1));
  }

  return mlir::AffineMap::get(*a1, *(a1 + 1), v2, 0, a1[2]);
}

uint64_t mlir::removeDuplicateExprs(unsigned int *a1)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  v18 = v20;
  v19 = 0x400000000;
  if (v2 < 5)
  {
    if (!v2)
    {
      v5 = v20;
      LODWORD(v19) = 0;
      v8 = v20;
      goto LABEL_15;
    }

    v3 = 0;
    v4 = v20;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v2, 8);
    v3 = v19;
    v4 = v18;
  }

  memcpy(&v4[v3], a1 + 6, 8 * v2);
  v5 = v18;
  v7 = (v19 + v2);
  v6 = v19 + v2 == 0;
  LODWORD(v19) = v7;
  v8 = v18 + 8 * v7;
  if (!v6)
  {
    v9 = 8 * v7 - 16;
    v10 = v18;
    while (1)
    {
      v11 = v10;
      v10 += 8;
      if (v10 == v8)
      {
        break;
      }

      v12 = v9;
      v13 = v11[1];
      v9 -= 8;
      if (*v11 == v13)
      {
        if (v11 + 2 != v8)
        {
          v14 = 8;
          do
          {
            v15 = v13;
            v13 = *&v10[v14];
            if (v15 != v13)
            {
              v11[1] = v13;
              ++v11;
            }

            v14 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        v8 = (v11 + 1);
        break;
      }
    }
  }

LABEL_15:
  LODWORD(v19) = (v8 - v5) >> 3;
  result = mlir::AffineMap::get(*a1, a1[1], v5, v19, *(a1 + 2));
  if (v18 != v20)
  {
    v17 = result;
    free(v18);
    return v17;
  }

  return result;
}

void *mlir::MutableAffineMap::MutableAffineMap(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = a1 + 2;
  *a1 = a1 + 2;
  a1[1] = 0x800000000;
  if (v4 < 9)
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v5, v4, 8);
    v6 = *(a1 + 2);
    v5 = *a1;
  }

  memcpy(&v5[v6], (a2 + 24), 8 * v4);
  v7 = *(a1 + 2);
LABEL_6:
  *(a1 + 2) = v7 + v4;
  a1[10] = *a2;
  a1[11] = *(a2 + 16);
  return a1;
}

void *mlir::MutableAffineMap::reset(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 16);
  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a1, *a1, (a2 + 24), (a2 + 24 + 8 * *(a2 + 8)));
}

unint64_t anonymous namespace::AffineExprConstantFolder::constantFoldImpl(int *a1, uint64_t a2)
{
  v14 = a2;
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v14);
  if (Value <= 3)
  {
    if (Value > 1)
    {
      v4 = v14;
      v13 = a1;
      if (Value == 2)
      {
      }

      else
      {
      }
    }

    else
    {
      v4 = v14;
      if (Value)
      {
      }

      else
      {
      }
    }

    goto LABEL_16;
  }

  if (Value > 5)
  {
    if (Value == 6)
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v12, v14);
      v6 = *(*(a1 + 1) + 8 * mlir::AffineDimExpr::getPosition(&v12));
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = *a1;
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v12, v14);
      v6 = *(*(a1 + 1) + 8 * (mlir::AffineDimExpr::getPosition(&v12) + v9));
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v10 = *(*v6 + 136);
    if (v10 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = 0;
    }

    v13 = v6;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      Int = mlir::IntegerAttr::getInt(&v13);
      goto LABEL_23;
    }

LABEL_21:
    LOBYTE(Int) = 0;
    v8 = 0;
    return v8 | Int;
  }

  if (Value != 4)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v13, v14);
    Int = mlir::AffineBinaryOpExpr::getLHS(&v13);
LABEL_23:
    v8 = Int & 0xFFFFFFFFFFFFFF00;
    return v8 | Int;
  }

  v4 = v14;
  v13 = a1;
LABEL_16:
  v8 = Int & 0xFFFFFFFFFFFFFF00;
  return v8 | Int;
}

uint64_t anonymous namespace::AffineExprConstantFolder::constantFoldBinExpr(int *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v15, a2);
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v15);
  {
    return a3(a4, v10, v12);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#3}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 0)
  {
    return (a3 & ((a2 % a3) >> 63)) + a2 % a3;
  }

  result = 0;
  *(*a1 + 24) = 1;
  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#4}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return (((a3 >> 63) | 1) + a2) / a3 - 1;
      }

      else
      {
        return a2 / a3;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#5}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return a2 / a3;
      }

      else
      {
        v3 = a2 - 1;
        if (a3 < 0)
        {
          v3 = a2 + 1;
        }

        return v3 / a3 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>(uint64_t **a1, uint64_t a2)
{
  v9 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v9) == 6)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v9, a2);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v9, 0);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v4 = *a1;
  Position = mlir::AffineDimExpr::getPosition(&v9);
  if (*v4 > Position)
  {
    Position = *v4;
  }

  **a1 = Position;
LABEL_8:
  v9 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v9) == 7)
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v9, a2);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v9, 0);
    if (!v9)
    {
      return result;
    }
  }

  v7 = a1[1];
  result = mlir::AffineDimExpr::getPosition(&v9);
  v8 = result;
  if (*v7 > result)
  {
    v8 = *v7;
  }

  *a1[1] = v8;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 8);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 8 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 8 * v4 - 8;
}

void *mlir::OperationName::print(mlir::OperationName *this, llvm::raw_ostream *a2)
{
  v7 = *(*this + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v7);
  v5 = v3;
  result = *(a2 + 4);
  if (v3 > *(a2 + 3) - result)
  {
    return llvm::raw_ostream::write(a2, AttrData, v3);
  }

  if (v3)
  {
    result = memcpy(result, AttrData, v3);
    *(a2 + 4) += v5;
  }

  return result;
}

uint64_t mlir::AsmParser::parseTypeList(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, char *__s)
{
  if (!__s)
  {
    return a1;
  }

  v4 = strlen(__s);
  v5 = *(a1 + 4);
  if (v4 <= *(a1 + 3) - v5)
  {
    if (v4)
    {
      memcpy(v5, __s, v4);
      *(a1 + 4) += v4;
    }

    return a1;
  }

  return llvm::raw_ostream::write(a1, __s, v4);
}

mlir::OpPrintingFlags *mlir::OpPrintingFlags::OpPrintingFlags(mlir::OpPrintingFlags *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 4) = 100;
  *(this + 40) = 0;
  if (!atomic_load(clOptions))
  {
    return this;
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 208))
  {
    if (atomic_load_explicit(clOptions, memory_order_acquire))
    {
      v3 = *(clOptions[0] + 328);
      if (*(this + 8))
      {
LABEL_8:
        *this = v3;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(clOptions[0] + 328);
      if (*(this + 8))
      {
        goto LABEL_8;
      }
    }

    *(this + 8) = 1;
    goto LABEL_8;
  }

LABEL_9:
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 8))
  {
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    *(this + 4) = *(clOptions[0] + 128);
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (!*(clOptions[0] + 400))
  {
    goto LABEL_22;
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
    v4 = *(clOptions[0] + 520);
    if (*(this + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = *(clOptions[0] + 520);
  if ((*(this + 24) & 1) == 0)
  {
LABEL_20:
    *(this + 24) = 1;
  }

LABEL_21:
  *(this + 2) = v4;
LABEL_22:
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  *(this + 40) = *(this + 40) & 0xFE | *(clOptions[0] + 712);
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 904))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFD | v5;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1096))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFB | v6;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1288))
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(this + 40) = *(this + 40) & 0xEF | v7;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1480))
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(this + 40) = *(this + 40) & 0xDF | v8;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1672))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(this + 40) = *(this + 40) & 0xF7 | v9;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1864))
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(this + 40) = *(this + 40) & 0xBF | v10;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 2056))
  {
    v11 = 0x80;
  }

  else
  {
    v11 = 0;
  }

  *(this + 40) = v11 & 0x80 | *(this + 40) & 0x7F;
  return this;
}

uint64_t mlir::OpPrintingFlags::printGenericOpForm(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFB | v2;
  return this;
}

uint64_t mlir::OpPrintingFlags::shouldElideElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v9[3] = v3;
  v9[4] = v4;
  v6 = *a1;
  if (v6 >= mlir::ElementsAttr::getNumElements(a2, a3))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::classof(a2))
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v9[0] = v7;
  if (v7)
  {
    return mlir::DenseElementsAttr::isSplat(v9) ^ 1;
  }

  else
  {
    return 1;
  }
}

void mlir::AsmResourcePrinter::~AsmResourcePrinter(void **this)
{
  *this = &unk_1F19FC250;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t mlir::FallbackAsmResourceMap::getParserFor(uint64_t a1, const void *a2, size_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v9) = a3;
    if (a3)
    {
      memmove(__dst, a2, a3);
    }

    *(__dst + a3) = 0;
    v6 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, __dst, a3, a4);
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
LABEL_11:
      result = *v6;
      if (*v6)
      {
        return result;
      }

LABEL_14:
      operator new();
    }
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v9 = 0;
    v6 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, __dst, a3, a4);
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  operator delete(__dst[0]);
  result = *v6;
  if (!*v6)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](uint64_t a1, uint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v24 = __p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v24;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  v25 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __p.__r_.__value_.__r.__words[0] = v6;
  __p.__r_.__value_.__l.__size_ = size;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  v8 = llvm::StringMapImpl::hash(v6, size, a3, a4);
  v9 = *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(a1, v6, size, v8, &__p.__r_.__value_.__r.__words[2]);
  if (v10)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      v23 = 0;
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      p_p = &__p;
      if (v11 < *(a1 + 36))
      {
        goto LABEL_17;
      }
    }

    else
    {
      __p = *a2;
      v23 = 0;
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      p_p = &__p;
      if (v11 < *(a1 + 36))
      {
        goto LABEL_17;
      }
    }

    if (v12 <= &__p && v12 + 32 * v11 > &__p)
    {
      v21 = &__p - v12;
      llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(a1 + 24, v11 + 1);
      v12 = *(a1 + 24);
      p_p = &v21[v12];
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(a1 + 24, v11 + 1);
      v12 = *(a1 + 24);
      p_p = &__p;
    }

LABEL_17:
    v16 = v12 + 32 * *(a1 + 32);
    v17 = *&p_p->__r_.__value_.__l.__data_;
    *(v16 + 16) = *(&p_p->__r_.__value_.__l + 2);
    *v16 = v17;
    p_p->__r_.__value_.__r.__words[0] = 0;
    p_p->__r_.__value_.__l.__size_ = 0;
    data = p_p[1].__r_.__value_.__l.__data_;
    p_p->__r_.__value_.__r.__words[2] = 0;
    p_p[1].__r_.__value_.__r.__words[0] = 0;
    *(v16 + 24) = data;
    ++*(a1 + 32);
    v19 = v23;
    v23 = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = *(a1 + 32) - 1;
    *(v9 + 8) = v14;
    v15 = *(a1 + 24);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }

    return v15 + 32 * v14 + 24;
  }

  v14 = *(v9 + 8);
  v15 = *(a1 + 24);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_22:
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v15 + 32 * v14 + 24;
}

void mlir::FallbackAsmResourceMap::getPrinters(mlir::FallbackAsmResourceMap *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 8))
  {
    operator new();
  }
}

BOOL mlir::FallbackAsmResourceMap::ResourceCollection::parseResource(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2);
  switch(v4)
  {
    case 2:
      (*(*a2 + 48))(&__p, a2);
      v10 = LOBYTE(v18[0]);
      v11 = v18[0];
      if (LOBYTE(v18[0]) == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v12;
        llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,std::string>(a1 + 32, &v14, &__p);
        v11 = v18[0];
      }

      if ((v11 & 1) != 0 && SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }

      return v10 != 0;
    case 1:
      LOWORD(v14) = (*(*a2 + 40))(a2);
      if ((v14 & 0x100) == 0)
      {
        return 0;
      }

      *&__p = (*(*a2 + 16))(a2);
      *(&__p + 1) = v9;
      llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,BOOL &>(a1 + 32, &__p, &v14);
      break;
    case 0:
      (*(*a2 + 56))(&__p, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v14);
      if (v20 == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v5;
        llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,mlir::AsmResourceBlob>(a1 + 32, &v14, &__p);
        if ((v20 & 1) != 0 && v19 >= 8)
        {
          v6 = (v19 & 2) != 0 ? v18 : v18[0];
          (*(v19 & 0xFFFFFFFFFFFFFFF8))(v6, __p, *(&__p + 1), v17);
          v7 = v19;
          if (v19 >= 8)
          {
            if ((v19 & 4) != 0)
            {
              if ((v19 & 2) != 0)
              {
                v8 = v18;
              }

              else
              {
                v8 = v18[0];
              }

              (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
            }

            if ((v7 & 2) == 0)
            {
              llvm::deallocate_buffer(v18[0], v18[1]);
            }
          }
        }

        return 1;
      }

      return 0;
  }

  return 1;
}

char *llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,mlir::AsmResourceBlob>(uint64_t a1, const void **a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = (*a1 + 96 * v4);
    v7 = *a2;
    v6 = a2[1];
    v17 = *a3;
    v8 = *(a3 + 6);
    v18 = *(a3 + 2);
    v21 = v8;
    if (v8 >= 8)
    {
      if ((v8 & 2) != 0 && (v8 & 4) != 0)
      {
        v9 = a3;
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(&v19, a3 + 24);
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 16))(v9 + 24);
        a3 = v9;
      }

      else
      {
        v19 = *(a3 + 24);
        v20 = *(a3 + 5);
      }

      *(a3 + 6) = 0;
    }

    v22 = *(a3 + 56);
    v23 = 0;
    if (v7)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      *(v5 + 23) = v6;
      if (v6)
      {
        memmove(v5, v7, v6);
      }

      *(v5 + v6) = 0;
      v10 = v23;
      *(v5 + 22) = -1;
      v13 = v5 + 11;
      *(v13 - 64) = 0;
      v11 = v13 - 16;
      if (v10 == -1)
      {
        goto LABEL_20;
      }

      v12 = v13;
    }

    else
    {
      v10 = 0;
      *(v5 + 24) = 0;
      v11 = v5 + 3;
      *(v5 + 22) = -1;
      v12 = v5 + 11;
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v16 = v11;
    (off_1F19FC808[v10])(&v16, &v17);
    *v12 = v10;
    if (v23 != -1)
    {
      (off_1F19FC7A0[v23])(&v16, &v17);
    }

LABEL_20:
    v14 = *(a1 + 8) + 1;
    *(a1 + 8) = v14;
    return (*a1 + 96 * v14 - 96);
  }

  return llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>(a1, a2, a3);
}

char *llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,BOOL &>(uint64_t a1, const void **a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = (*a1 + 96 * v4);
    v7 = *a2;
    v6 = a2[1];
    v15[0] = *a3;
    v16 = 1;
    if (v7)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      *(v5 + 23) = v6;
      if (v6)
      {
        memmove(v5, v7, v6);
      }

      *(v5 + v6) = 0;
      v10 = v16;
      *(v5 + 22) = -1;
      v11 = v5 + 11;
      *(v11 - 64) = 0;
      v8 = v11 - 16;
      if (v10 == -1)
      {
        goto LABEL_14;
      }

      v9 = v11;
    }

    else
    {
      *(v5 + 24) = 0;
      v8 = v5 + 3;
      *(v5 + 22) = -1;
      v9 = (v5 + 11);
      *v5 = 0;
      v5[1] = 0;
      v10 = 1;
      v5[2] = 0;
    }

    v14 = v8;
    (off_1F19FC808[v10])(&v14, v15);
    *v9 = v10;
    if (v16 != -1)
    {
      (off_1F19FC7A0[v16])(&v14, v15);
    }

LABEL_14:
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    return (*a1 + 96 * v12 - 96);
  }

  return llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>(a1, a2, a3);
}

char *llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,std::string>(uint64_t a1, const void **a2, __int128 *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = (*a1 + 96 * v4);
    v7 = *a2;
    v6 = a2[1];
    v15 = *a3;
    v16 = *(a3 + 2);
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    v17 = 2;
    if (v7)
    {
      if (v6 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (v6 >= 0x17)
      {
        operator new();
      }

      *(v5 + 23) = v6;
      if (v6)
      {
        memmove(v5, v7, v6);
      }

      *(v5 + v6) = 0;
      v10 = v17;
      *(v5 + 22) = -1;
      v11 = v5 + 11;
      *(v11 - 64) = 0;
      v8 = v11 - 16;
      if (v10 == -1)
      {
        goto LABEL_14;
      }

      v9 = v11;
    }

    else
    {
      *(v5 + 24) = 0;
      v8 = v5 + 3;
      *(v5 + 22) = -1;
      v9 = (v5 + 11);
      *v5 = 0;
      v5[1] = 0;
      v10 = 2;
      v5[2] = 0;
    }

    v14 = v8;
    (off_1F19FC808[v10])(&v14, &v15);
    *v9 = v10;
    if (v17 != -1)
    {
      (off_1F19FC7A0[v17])(&v14, &v15);
    }

LABEL_14:
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    return (*a1 + 96 * v12 - 96);
  }

  return llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>(a1, a2, a3);
}

uint64_t mlir::FallbackAsmResourceMap::ResourceCollection::buildResources(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    v5 = 0;
    v6 = *(result + 32);
    v7 = 96 * v3;
    do
    {
      v11 = (v6 + v5);
      v12 = (v6 + v5 + 24);
      v13 = *(v6 + v5 + 88);
      if (v13 == 1)
      {
        v8 = *(v11 + 23);
        if (v8 >= 0)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = *v11;
        }

        if (v8 >= 0)
        {
          v10 = *(v11 + 23);
        }

        else
        {
          v10 = v11[1];
        }

        result = (*(*a3 + 16))(a3, v9, v10, *v12);
      }

      else if (v13)
      {
        v17 = v6 + v5;
        v18 = *(v6 + v5 + 23);
        if (v18 >= 0)
        {
          v19 = v6 + v5;
        }

        else
        {
          v19 = *(v6 + v5);
        }

        if (v18 >= 0)
        {
          v20 = *(v6 + v5 + 23);
        }

        else
        {
          v20 = *(v6 + v5 + 8);
        }

        v21 = *(v17 + 47);
        if (v21 >= 0)
        {
          v22 = v6 + v5 + 24;
        }

        else
        {
          v22 = *v12;
        }

        if (v21 >= 0)
        {
          v23 = *(v17 + 47);
        }

        else
        {
          v23 = *(v17 + 32);
        }

        result = (*(*a3 + 24))(a3, v19, v20, v22, v23);
      }

      else
      {
        v14 = *(v6 + v5 + 23);
        if (v14 >= 0)
        {
          v15 = v6 + v5;
        }

        else
        {
          v15 = *(v6 + v5);
        }

        if (v14 >= 0)
        {
          v16 = *(v6 + v5 + 23);
        }

        else
        {
          v16 = *(v6 + v5 + 8);
        }

        result = (*(*a3 + 32))(a3, v15, v16, *v12, *(v6 + v5 + 32), *(v6 + v5 + 40));
      }

      v5 += 96;
    }

    while (v7 != v5);
  }

  return result;
}

void mlir::AsmState::AsmState(llvm *a1, uint64_t a2, __int128 *a3, uint64_t a4, mlir::FallbackAsmResourceMap *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = *a3;
  v16 = a3[1];
  v17 = *(a3 + 4);
  v6 = *(a3 + 40);
  *v14 = *(a3 + 41);
  *&v14[3] = *(a3 + 11);
  if ((v6 & 0x14) != 0)
  {
    v7 = a3[1];
    v21 = *a3;
    *v22 = v7;
    v23 = *(a3 + 4);
    v24 = v6;
    v25[0] = *(a3 + 41);
    *(v25 + 3) = *(a3 + 11);
  }

  else
  {
    threadid = llvm::get_threadid(a1);
    Context = mlir::Attribute::getContext((a2 + 24));
    DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
    *&v21 = &threadid;
    v22[1] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,void>::Callbacks + 2;
    v18 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v21);
    v10 = v22[1];
    if (v22[1] >= 8)
    {
      if ((v22[1] & 4) != 0)
      {
        if ((v22[1] & 2) != 0)
        {
          v11 = &v21;
        }

        else
        {
          v11 = v21;
        }

        (*((v22[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v9);
      }

      if ((v10 & 2) == 0)
      {
        llvm::deallocate_buffer(v21, *(&v21 + 1));
      }
    }

    v12 = mlir::verify(a2, 1);
    v13 = v6 | 4;
    if (v12)
    {
      v13 = v6;
    }

    v21 = v15;
    *v22 = v16;
    v23 = v17;
    v24 = v13;
    v25[0] = *v14;
    *(v25 + 3) = *&v14[3];
    mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v18);
  }

  operator new();
}

void mlir::AsmState::attachFallbackResourcePrinter(mlir::AsmState *this, mlir::FallbackAsmResourceMap *a2)
{
  mlir::FallbackAsmResourceMap::getPrinters(a2, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 == v15)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    return;
  }

  v5 = v14;
  do
  {
    v6 = *v5;
    *v5 = 0;
    v13 = v6;
    v7 = *this;
    v8 = *(*this + 64);
    if (v8 < *(*this + 68))
    {
      v9 = *(v7 + 56);
      v13 = 0;
      *(v9 + 8 * v8) = v6;
      *(v7 + 64) = v8 + 1;
      v10 = v13;
      v13 = 0;
      if (!v10)
      {
        goto LABEL_3;
      }

LABEL_6:
      (*(*v10 + 8))(v10);
      goto LABEL_3;
    }

    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(v7 + 56, &v13);
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v4);
  if (v3)
  {
    while (v4 != v3)
    {
      v12 = *--v4;
      v11 = v12;
      *v4 = 0;
      if (v12)
      {
        (*(*v11 + 8))(v11);
      }
    }

LABEL_16:
    operator delete(v3);
  }
}

void mlir::AsmState::~AsmState(mlir::detail::AsmStateImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(v2);
  }
}

char *mlir::AsmState::attachResourcePrinter(char *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 64);
  if (v3 >= *(*result + 68))
  {
    return llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(v2 + 56, a2);
  }

  v4 = *(v2 + 56);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8 * v3) = v5;
  *(v2 + 64) = v3 + 1;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocation(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 56) & 2) == 0)
  {
    v4 = *a1;
    v5 = *(*a1 + 32);
    if (*(*a1 + 24) - v5 > 3uLL)
    {
      *v5 = 677605228;
      v4[4] += 4;
      if (!a3)
      {
LABEL_10:
        mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 0, 1);
LABEL_11:
        result = *a1;
        v11 = *(*a1 + 32);
        if (v11 >= *(*a1 + 24))
        {

          return llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v11 + 1;
          *v11 = 41;
        }

        return result;
      }
    }

    else
    {
      v6 = a2;
      llvm::raw_ostream::write(v4, "loc(", 4uLL);
      a2 = v6;
      if (!a3)
      {
        goto LABEL_10;
      }
    }

    v9 = a2;
    a2 = v9;
    if (Alias)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return mlir::AsmPrinter::Impl::printLocationInternal(a1, a2, 1, 1);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocationInternal(llvm::raw_ostream *result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  if ((a4 & 1) == 0)
  {
    if (result)
    {
      return result;
    }
  }

  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id && a2 != 0)
  {
    v87 = a2;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v87);
    v15 = v6;
    return mlir::AsmPrinter::Impl::printLocationInternal(v15, RHS, a3, 0);
  }

  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id && a2 != 0)
      {
        v87 = a2;
        Value = mlir::AffineMapAttr::getValue(&v87);
        AttrData = mlir::OpaqueAttr::getAttrData(&Value);
        v30 = *v6;
        v31 = *(*v6 + 4);
        if (*(*v6 + 3) == v31)
        {
          v44 = AttrData;
          v45 = v29;
          llvm::raw_ostream::write(*v6, "", 1uLL);
          llvm::printEscapedString(v44, v45, *v6);
          v32 = *v6;
          v33 = *(*v6 + 4);
          if (*(*v6 + 3) != v33)
          {
LABEL_37:
            *v33 = 34;
            ++*(v32 + 4);
            result = mlir::AffineBinaryOpExpr::getLHS(&v87);
            if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
            {
              return result;
            }

            goto LABEL_54;
          }
        }

        else
        {
          *v31 = 34;
          ++*(v30 + 4);
          llvm::printEscapedString(AttrData, v29, *v6);
          v32 = *v6;
          v33 = *(*v6 + 4);
          if (*(*v6 + 3) != v33)
          {
            goto LABEL_37;
          }
        }

        llvm::raw_ostream::write(v32, "", 1uLL);
        result = mlir::AffineBinaryOpExpr::getLHS(&v87);
        if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          return result;
        }

LABEL_54:
        v46 = result;
        v47 = *v6;
        v48 = *(*v6 + 4);
        if (v48 >= *(*v6 + 3))
        {
          llvm::raw_ostream::write(v47, 40);
        }

        else
        {
          *(v47 + 4) = v48 + 1;
          *v48 = 40;
        }

        mlir::AsmPrinter::Impl::printLocationInternal(v6, v46, a3, 0);
        result = *v6;
        v49 = *(*v6 + 4);
        if (v49 < *(*v6 + 3))
        {
          *(result + 4) = v49 + 1;
          v50 = 41;
LABEL_107:
          *v49 = v50;
          return result;
        }

        v51 = 41;
        return llvm::raw_ostream::write(result, v51);
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id && a2 != 0)
      {
        v87 = a2;
        LHS = mlir::AffineBinaryOpExpr::getLHS(&v87);
        v40 = mlir::AffineMapAttr::getValue(&v87);
        v41 = v40;
        if (a3)
        {
          mlir::AsmPrinter::Impl::printLocationInternal(v6, v40, a3, 0);
          if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
          {
            v42 = *v6;
            if (*(*LHS + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v42 = *v6;
          }

          ++*(v6 + 16);
          v66 = *(v42 + 4);
          if (v66 >= *(v42 + 3))
          {
            v42 = llvm::raw_ostream::write(v42, 10);
          }

          else
          {
            *(v42 + 4) = v66 + 1;
            *v66 = 10;
          }

LABEL_85:
          v67 = *(v42 + 4);
          if (*(v42 + 3) - v67 > 3uLL)
          {
            *v67 = 544497952;
            *(v42 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v42, " at ", 4uLL);
          }

          v15 = v6;
          RHS = LHS;
          return mlir::AsmPrinter::Impl::printLocationInternal(v15, RHS, a3, 0);
        }

        v52 = *v6;
        v53 = *(*v6 + 4);
        if ((*(*v6 + 3) - v53) > 8)
        {
          *(v53 + 8) = 40;
          *v53 = *"callsite(";
          *(v52 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v52, "callsite(", 9uLL);
        }

        mlir::AsmPrinter::Impl::printLocationInternal(v6, v41, a3, 0);
        v63 = *v6;
        v64 = *(*v6 + 4);
        if (*(*v6 + 3) - v64 > 3uLL)
        {
          *v64 = 544497952;
          *(v63 + 4) += 4;
        }

        else
        {
          llvm::raw_ostream::write(v63, " at ", 4uLL);
        }

        mlir::AsmPrinter::Impl::printLocationInternal(v6, LHS, a3, 0);
        result = *v6;
        v65 = *(*v6 + 4);
        if (*(*v6 + 3) == v65)
        {
          return llvm::raw_ostream::write(result, ")", 1uLL);
        }

        *v65 = 41;
        v43 = *(result + 4) + 1;
LABEL_80:
        *(result + 4) = v43;
        return result;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id && a2 != 0)
      {
        v87 = a2;
        if ((a3 & 1) == 0)
        {
          v12 = *v6;
          v13 = *(*v6 + 4);
          if ((*(*v6 + 3) - v13) > 4)
          {
            *(v13 + 4) = 100;
            *v13 = 1702065510;
            *(v12 + 4) += 5;
          }

          else
          {
            llvm::raw_ostream::write(v12, "fused", 5uLL);
          }
        }

        v68 = mlir::AffineBinaryOpExpr::getRHS(&v87);
        if (v68)
        {
          v69 = v68;
          v70 = *v6;
          v71 = *(*v6 + 4);
          if (v71 >= *(*v6 + 3))
          {
            llvm::raw_ostream::write(v70, 60);
          }

          else
          {
            *(v70 + 4) = v71 + 1;
            *v71 = 60;
          }

          {
            mlir::AsmPrinter::Impl::printAttributeImpl(v6, v69, 0);
          }

          v72 = *v6;
          v73 = *(*v6 + 4);
          if (v73 >= *(*v6 + 3))
          {
            llvm::raw_ostream::write(v72, 62);
          }

          else
          {
            *(v72 + 4) = v73 + 1;
            *v73 = 62;
          }
        }

        v74 = *v6;
        v75 = *(*v6 + 4);
        if (v75 >= *(*v6 + 3))
        {
          llvm::raw_ostream::write(v74, 91);
        }

        else
        {
          *(v74 + 4) = v75 + 1;
          *v75 = 91;
        }

        v76 = mlir::ArrayAttr::getValue(&v87);
        if (v77)
        {
          v78 = v76;
          v79 = v77;
          mlir::AsmPrinter::Impl::printLocationInternal(v6, *v76, a3, 0);
          if (v79 != 1)
          {
            v80 = 8 * v79;
            v81 = v78 + 1;
            v82 = v80 - 8;
            do
            {
              v84 = *v6;
              v85 = *(*v6 + 4);
              if (*(*v6 + 3) - v85 > 1uLL)
              {
                *v85 = 8236;
                *(v84 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v84, ", ", 2uLL);
              }

              v83 = *v81++;
              mlir::AsmPrinter::Impl::printLocationInternal(v6, v83, a3, 0);
              v82 -= 8;
            }

            while (v82);
          }
        }

        result = *v6;
        v49 = *(*v6 + 4);
        if (v49 < *(*v6 + 3))
        {
          *(result + 4) = v49 + 1;
          v50 = 93;
          goto LABEL_107;
        }

        v51 = 93;
        return llvm::raw_ostream::write(result, v51);
      }

      return result;
    }

    v87 = a2;
    if (a3)
    {
      v20 = *v6;
      Value = mlir::AffineMapAttr::getValue(&v87);
      v22 = mlir::OpaqueAttr::getAttrData(&Value);
      v23 = v21;
      v24 = *(v20 + 4);
      if (v21 <= *(v20 + 3) - v24)
      {
        if (v21)
        {
          memcpy(v24, v22, v21);
          *(v20 + 4) += v23;
        }

        goto LABEL_67;
      }

      v25 = v20;
      v26 = v22;
      v27 = v23;
      goto LABEL_66;
    }

    Value = mlir::AffineMapAttr::getValue(&v87);
    v34 = mlir::OpaqueAttr::getAttrData(&Value);
    v36 = *v6;
    v37 = *(*v6 + 4);
    if (*(*v6 + 3) == v37)
    {
      v54 = v34;
      v55 = v35;
      llvm::raw_ostream::write(*v6, "", 1uLL);
      llvm::printEscapedString(v54, v55, *v6);
      v25 = *v6;
      v38 = *(*v6 + 4);
      if (*(*v6 + 3) != v38)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v37 = 34;
      ++*(v36 + 4);
      llvm::printEscapedString(v34, v35, *v6);
      v25 = *v6;
      v38 = *(*v6 + 4);
      if (*(*v6 + 3) != v38)
      {
LABEL_46:
        *v38 = 34;
        ++*(v25 + 4);
LABEL_67:
        v56 = *v6;
        v57 = *(v56 + 4);
        if (v57 >= *(v56 + 3))
        {
          v56 = llvm::raw_ostream::write(v56, 58);
        }

        else
        {
          *(v56 + 4) = v57 + 1;
          *v57 = 58;
        }

        Position = mlir::AffineDimExpr::getPosition(&v87);
        v59 = llvm::raw_ostream::operator<<(v56, Position);
        v60 = *(v59 + 4);
        if (v60 >= *(v59 + 3))
        {
          v61 = llvm::raw_ostream::write(v59, 58);
        }

        else
        {
          v61 = v59;
          *(v59 + 4) = v60 + 1;
          *v60 = 58;
        }

        Column = mlir::FileLineColLoc::getColumn(&v87);
        return llvm::raw_ostream::operator<<(v61, Column);
      }
    }

    v26 = "";
    v27 = 1;
LABEL_66:
    llvm::raw_ostream::write(v25, v26, v27);
    goto LABEL_67;
  }

  result = *v6;
  v16 = *(*v6 + 4);
  v17 = *(*v6 + 3) - v16;
  if (a3)
  {
    if (v17 > 8)
    {
      *(v16 + 8) = 93;
      *v16 = *"[unknown]";
      v43 = *(result + 4) + 9;
      goto LABEL_80;
    }

    v18 = "[unknown]";
    v19 = 9;
  }

  else
  {
    if (v17 > 6)
    {
      *(v16 + 3) = 1853321070;
      *v16 = 1852534389;
      v43 = *(result + 4) + 7;
      goto LABEL_80;
    }

    v18 = "unknown";
    v19 = 7;
  }

  return llvm::raw_ostream::write(result, v18, v19);
}

uint64_t anonymous namespace::AliasState::getAlias(uint64_t *a1, uint64_t a2, llvm::raw_ostream *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(*a1 + 16 * v6);
  if (v7 != a2)
  {
    v20 = 1;
    while (v7 != -4096)
    {
      v21 = v6 + v20++;
      v6 = v21 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v6 == v4)
  {
    return 0;
  }

  v9 = *(v5 + 16 * v6 + 8);
  if (v9 == *(a1 + 8))
  {
    return 0;
  }

  v10 = a1[3] + 32 * v9;
  if ((*(v10 + 27) & 0x40) != 0)
  {
    v11 = "!";
  }

  else
  {
    v11 = "#";
  }

  v12 = *(a3 + 4);
  if (*(a3 + 3) == v12)
  {
    v14 = llvm::raw_ostream::write(a3, v11, 1uLL);
    v13 = *(v14 + 4);
    v15 = *(v10 + 8);
    v16 = *(v10 + 16);
    if (v16 > *(v14 + 3) - v13)
    {
      goto LABEL_11;
    }

LABEL_13:
    if (v16)
    {
      v17 = v14;
      v18 = v16;
      memcpy(v13, v15, v16);
      *(v17 + 4) += v18;
    }

    goto LABEL_15;
  }

  *v12 = *v11;
  v13 = (*(a3 + 4) + 1);
  *(a3 + 4) = v13;
  v14 = a3;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  if (v16 <= *(a3 + 3) - v13)
  {
    goto LABEL_13;
  }

LABEL_11:
  llvm::raw_ostream::write(v14, v15, v16);
LABEL_15:
  v19 = *(v10 + 24);
  if ((v19 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(a3, v19 & 0x3FFFFFFF);
  }

  return 1;
}

__n128 mlir::AsmPrinter::Impl::printResourceHandle(uint64_t a1, __n128 *a2)
{
  v2 = a2;
  v4 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2[1].n128_i64[0]);
  v5 = *a1;
  (*(*v4 + 40))(__p);
  if ((v20 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = __p[1];
  }

  llvm::raw_ostream::write(v5, v6, v7);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 8);
  v17 = v2[1].n128_u64[0];
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::operator[](v8 + 120, &v17);
  llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>(v9, v2, __p);
  if (v19 == 1)
  {
    v11 = (v9 + 3);
    v12 = v9[3];
    v13 = *(v9 + 8);
    if (v13 >= *(v9 + 9))
    {
      if (v12 <= v2 && v12 + 24 * v13 > v2)
      {
        v16 = v2 - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v9 + 5, v13 + 1, 24);
        v12 = v9[3];
        v2 = &v16[v12];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v9 + 5, v13 + 1, 24);
        v12 = v9[3];
      }
    }

    v14 = (v12 + 24 * *(v9 + 8));
    result = *v2;
    v14[1].n128_u64[0] = v2[1].n128_u64[0];
    *v14 = result;
    ++*(v9 + 8);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 48 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 48 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v5 + 6;
  v5[5] = 0;
  return v5 + 1;
}

uint64_t mlir::AsmPrinter::Impl::printAlias(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 160);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 144);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v20 = 1;
    while (v6 != -4096)
    {
      v21 = v5 + v20++;
      v5 = v21 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == v3)
  {
    return 0;
  }

  v7 = *(v4 + 16 * v5 + 8);
  if (v7 == *(v2 + 176))
  {
    return 0;
  }

  v8 = *(v2 + 168) + 32 * v7;
  if (*(v8 + 28) != 1)
  {
    return 0;
  }

  v9 = *a1;
  if ((*(v8 + 27) & 0x40) != 0)
  {
    v10 = "!";
  }

  else
  {
    v10 = "#";
  }

  v11 = v9[4];
  if (v9[3] == v11)
  {
    v13 = llvm::raw_ostream::write(*a1, v10, 1uLL);
    v12 = v13[4];
    v14 = *(v8 + 8);
    v15 = *(v8 + 16);
    if (v15 > v13[3] - v12)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (v15)
    {
      v17 = v13;
      v18 = v15;
      memcpy(v12, v14, v15);
      v17[4] += v18;
    }

    goto LABEL_17;
  }

  *v11 = *v10;
  v12 = (v9[4] + 1);
  v9[4] = v12;
  v13 = v9;
  v14 = *(v8 + 8);
  v15 = *(v8 + 16);
  if (v15 <= v9[3] - v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  llvm::raw_ostream::write(v13, v14, v15);
LABEL_17:
  v19 = *(v8 + 24);
  if ((v19 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(v9, v19 & 0x3FFFFFFF);
  }

  return 1;
}

void mlir::AsmPrinter::Impl::printAttributeImpl(llvm::raw_ostream **a1, uint64_t **a2, int a3)
{
  v123 = *MEMORY[0x1E69E9840];
  if (*(**a2 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
  {
    mlir::AsmPrinter::Impl::printDialectAttribute(a1, a2);
    goto LABEL_8;
  }

  v6 = (*a2)[17];
  if (v6 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v119 = v7;
  if (v7)
  {
    v8 = *a1;
    v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v119);
    AttrData = mlir::OpaqueAttr::getAttrData(&v121);
    v11 = v10;
    v12 = mlir::OpaqueAttr::getAttrData(&v119);
    printDialectSymbol(v8, "#", 1uLL, AttrData, v11, v12, v13);
    goto LABEL_8;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v22 = *a1;
    v23 = *(*a1 + 4);
    if (*(*a1 + 3) - v23 > 3uLL)
    {
      *v23 = 1953066613;
      *(v22 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v22, "unit", 4uLL);
    }

    return;
  }

  {
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v118 = v19;
    if (v19)
    {
LABEL_20:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if ((*(*a1 + 3) - v21) > 8)
      {
        *(v21 + 8) = 91;
        *v21 = *"distinct[";
        *(v20 + 4) += 9;
      }

      else
      {
        v20 = llvm::raw_ostream::write(*a1, "distinct[", 9uLL);
      }

      v24 = a1[1];
      v25 = (v24 + 592);
      v120 = v19;
      llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>((v24 + 600), &v120, (v24 + 592), &v121);
      if (v122 == 1)
      {
        ++*v25;
      }

      v26 = llvm::raw_ostream::operator<<(v20, *(v121.n128_u64[0] + 8));
      v27 = *(v26 + 4);
      if (*(v26 + 3) - v27 > 1uLL)
      {
        *v27 = 15453;
        *(v26 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, "]<", 2uLL);
      }

      if (*(*mlir::AffineMapAttr::getValue(&v118) + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        Value = mlir::AffineMapAttr::getValue(&v118);
        if (Value)
        {
          v29 = Value;
          {
            mlir::AsmPrinter::Impl::printAttributeImpl(a1, v29, 0);
          }
        }

        else
        {
          v30 = *a1;
          v31 = *(*a1 + 4);
          if ((*(*a1 + 3) - v31) > 0x11)
          {
            *(v31 + 16) = 15934;
            *v31 = *"<<NULL ATTRIBUTE>>";
            *(v30 + 4) += 18;
          }

          else
          {
            llvm::raw_ostream::write(v30, "<<NULL ATTRIBUTE>>", 0x12uLL);
          }
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    mlir::AsmPrinter::Impl::printAttributeImpl();
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v118 = v19;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v34 = (*a2)[17];
  if (v34 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v35 = a2;
  }

  else
  {
    v35 = 0;
  }

  v120 = v35;
  if (v35)
  {
    v36 = *a1;
    v37 = *(*a1 + 4);
    if (v37 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v36, 123);
    }

    else
    {
      *(v36 + 4) = v37 + 1;
      *v37 = 123;
    }

    v42 = mlir::ArrayAttr::getValue(&v120);
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v46 = *a1;
      mlir::AsmPrinter::Impl::printNamedAttribute(a1, *v42, *(v42 + 8));
      if (v45 != 1)
      {
        v47 = (v44 + 16 * v45);
        v48 = (v44 + 16);
        do
        {
          while (1)
          {
            v51 = *(v46 + 4);
            if (*(v46 + 3) - v51 <= 1uLL)
            {
              break;
            }

            *v51 = 8236;
            *(v46 + 4) += 2;
            v49 = *v48;
            v50 = v48[1];
            v48 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(a1, v49, v50);
            if (v48 == v47)
            {
              goto LABEL_68;
            }
          }

          llvm::raw_ostream::write(v46, ", ", 2uLL);
          v52 = *v48;
          v53 = v48[1];
          v48 += 2;
          mlir::AsmPrinter::Impl::printNamedAttribute(a1, v52, v53);
        }

        while (v48 != v47);
      }
    }

LABEL_68:
    v54 = *a1;
    v55 = *(*a1 + 4);
    if (v55 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v54, 125);
      goto LABEL_8;
    }

    *(v54 + 4) = v55 + 1;
    v56 = 125;
    goto LABEL_70;
  }

  if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  v117 = v38;
  if (!v38)
  {
    if (v34 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v116 = v57;
    if (v57)
    {
      v115[0] = 0;
      mlir::FloatAttr::getValue(&v121, &v116);
      printFloatValue(&v121, *a1, v115);
      llvm::APFloat::~APFloat(&v121);
      if (a3 == 1)
      {
        v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v116);
        if (mlir::Type::isF64(&v121) && !v115[0])
        {
          return;
        }
      }

      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v61 = a2;
    }

    else
    {
      v61 = 0;
    }

    *v115 = v61;
    if (v61)
    {
      v62 = mlir::OpaqueAttr::getAttrData(v115);
      mlir::AsmPrinter::Impl::printEscapedString(a1, v62, v63);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v64 = a2;
    }

    else
    {
      v64 = 0;
    }

    v114 = v64;
    if (v64)
    {
      v65 = *a1;
      v66 = *(*a1 + 4);
      if (v66 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v65, 91);
      }

      else
      {
        *(v65 + 4) = v66 + 1;
        *v66 = 91;
      }

      v121.n128_u64[0] = mlir::ArrayAttr::getValue(&v114);
      v121.n128_u64[1] = v68;
      llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(&v121, *a1, a1);
      v69 = *a1;
      v55 = *(*a1 + 4);
      if (v55 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v69, 93);
        goto LABEL_8;
      }

      *(v69 + 4) = v55 + 1;
      v56 = 93;
      goto LABEL_70;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v67 = a2;
    }

    else
    {
      v67 = 0;
    }

    v113 = v67;
    if (v67)
    {
      llvm::raw_ostream::operator<<(*a1, "affine_map<");
      v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v113);
      mlir::AffineMap::print(&v121, *a1);
LABEL_40:
      v32 = *a1;
      v33 = *(*a1 + 4);
      if (v33 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v32, 62);
      }

      else
      {
        *(v32 + 4) = v33 + 1;
        *v33 = 62;
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v70 = a2;
    }

    else
    {
      v70 = 0;
    }

    v112 = v70;
    if (v70)
    {
      llvm::raw_ostream::operator<<(*a1, "affine_set<");
      v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v112);
      mlir::IntegerSet::print(&v121, *a1);
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v71 = a2;
    }

    else
    {
      v71 = 0;
    }

    v111 = v71;
    if (v71)
    {
      v72 = mlir::AffineMapAttr::getValue(&v111);
      mlir::AsmPrinter::Impl::printType(a1, v72);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v73 = a2;
    }

    else
    {
      v73 = 0;
    }

    v110 = v73;
    if (v73)
    {
      v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v110);
      v74 = mlir::OpaqueAttr::getAttrData(&v121);
      printSymbolReference(v74, v75, *a1);
      v76 = mlir::OpaqueAttr::getAttrData(&v110);
      if (v77)
      {
        v78 = v76;
        v79 = 8 * v77;
        do
        {
          v80 = *v78++;
          v121.n128_u64[0] = v80;
          llvm::raw_ostream::operator<<(*a1, "::");
          v81 = mlir::FlatSymbolRefAttr::getValue(&v121);
          printSymbolReference(v81, v82, *a1);
          v79 -= 8;
        }

        while (v79);
      }

LABEL_8:
      if (a3 != 2)
      {
        v121.n128_u64[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
        v121.n128_u64[1] = v14;
        if (v121.n128_u64[0])
        {
          FunctionType = mlir::FunctionOpInterface::getFunctionType(&v121);
          if (*(*FunctionType + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
          {
            v16 = FunctionType;
            v17 = *a1;
            v18 = *(*a1 + 4);
            if ((*(*a1 + 3) - v18) <= 2)
            {
              llvm::raw_ostream::write(v17, " : ", 3uLL);
              if (mlir::AsmPrinter::Impl::printAlias(a1, v16))
              {
                return;
              }

LABEL_23:
              mlir::AsmPrinter::Impl::printTypeImpl(a1, v16);
              return;
            }

            *(v18 + 2) = 32;
            *v18 = 14880;
            *(v17 + 4) += 3;
            if ((mlir::AsmPrinter::Impl::printAlias(a1, v16) & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v83 = a2;
    }

    else
    {
      v83 = 0;
    }

    v109 = v83;
    if (v83)
    {
      v84 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v109);
      shouldElideElementsAttr = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v84, v85);
      v87 = *a1;
      if (!shouldElideElementsAttr)
      {
        llvm::raw_ostream::operator<<(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v109, 1);
LABEL_157:
        v97 = *a1;
        v55 = *(*a1 + 4);
        if (v55 >= *(*a1 + 3))
        {
          llvm::raw_ostream::write(v97, 62);
          goto LABEL_8;
        }

        *(v97 + 4) = v55 + 1;
        v56 = 62;
LABEL_70:
        *v55 = v56;
        goto LABEL_8;
      }
    }

    else
    {
      if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
      {
        v88 = a2;
      }

      else
      {
        v88 = 0;
      }

      v108 = v88;
      if (!v88)
      {
        if (v34 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
        {
          v92 = a2;
        }

        else
        {
          v92 = 0;
        }

        v107 = v92;
        if (!v92)
        {
          if (v34 == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
          {
            v98 = a2;
          }

          else
          {
            v98 = 0;
          }

          Values = v98;
          if (v98)
          {
            mlir::StridedLayoutAttr::print(&Values, *a1);
          }

          else
          {
            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
            {
              v100 = a2;
            }

            else
            {
              v100 = 0;
            }

            v105 = v100;
            if (v100)
            {
              llvm::raw_ostream::operator<<(*a1, "array<");
              v101 = mlir::AffineMapAttr::getValue(&v105);
              mlir::AsmPrinter::Impl::printType(a1, v101);
              if (mlir::AffineBinaryOpExpr::getLHS(&v105))
              {
                llvm::raw_ostream::operator<<(*a1, ": ");
                mlir::AsmPrinter::Impl::printDenseArrayAttr(a1, v105);
              }

              llvm::raw_ostream::operator<<(*a1, ">");
              return;
            }

            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
            {
              v102 = a2;
            }

            else
            {
              v102 = 0;
            }

            v104 = v102;
            if (v102)
            {
              llvm::raw_ostream::operator<<(*a1, "dense_resource<");
              mlir::DenseResourceElementsAttr::getRawHandle(&v121, &v104);
              mlir::AsmPrinter::Impl::printResourceHandle(a1, &v121);
              llvm::raw_ostream::operator<<(*a1, ">");
            }

            else
            {
              if (!mlir::LocationAttr::classof(a2) || !a2)
              {
                llvm::report_fatal_error("Unknown builtin attribute", 1, v103);
              }

              mlir::AsmPrinter::Impl::printLocation(a1, a2, 0);
            }
          }

          goto LABEL_8;
        }

        v121.n128_u64[0] = mlir::AffineBinaryOpExpr::getRHS(&v107);
        v93 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v121);
        if (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v93, v94) & 1) != 0 || (Values = mlir::SparseElementsAttr::getValues(&v107), v95 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Values), (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v95, v96)))
        {
          printElidedElementsAttr(*a1);
          goto LABEL_8;
        }

        llvm::raw_ostream::operator<<(*a1, "sparse<");
        v121.n128_u64[0] = mlir::AffineBinaryOpExpr::getRHS(&v107);
        if (mlir::DenseElementsAttr::getNumElements(&v121))
        {
          mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v121.n128_u64[0], 0);
          llvm::raw_ostream::operator<<(*a1, ", ");
          v99 = mlir::SparseElementsAttr::getValues(&v107);
          mlir::AsmPrinter::Impl::printDenseElementsAttr(a1, v99, 1);
        }

        goto LABEL_157;
      }

      v89 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v108);
      v91 = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v89, v90);
      v87 = *a1;
      if (!v91)
      {
        llvm::raw_ostream::operator<<(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseStringElementsAttr(a1, v108);
        goto LABEL_157;
      }
    }

    printElidedElementsAttr(v87);
    goto LABEL_8;
  }

  v116 = mlir::AffineMapAttr::getValue(&v117);
  if (mlir::Type::isSignlessInteger(&v116, 1))
  {
    v39 = *a1;
    mlir::IntegerAttr::getValue(&v117, &v121);
    v40 = v121.n128_u32[2];
    if (v121.n128_u32[2] > 0x40)
    {
      v41 = llvm::APInt::countLeadingZerosSlowCase(&v121) == v40;
    }

    else
    {
      v41 = v121.n128_u64[0] == 0;
    }

    if (v41)
    {
      v60 = "false";
    }

    else
    {
      v60 = "true";
    }

    llvm::raw_ostream::operator<<(v39, v60);
    if (v121.n128_u32[2] >= 0x41 && v121.n128_u64[0])
    {
      MEMORY[0x1AC55A040](v121.n128_u64[0], 0x1000C8000313F17);
    }

    return;
  }

  v58 = !mlir::Type::isUnsignedInteger(&v116) && !mlir::Type::isSignlessInteger(&v116, 1);
  mlir::IntegerAttr::getValue(&v117, &v121);
  llvm::APInt::print(&v121, *a1, v58);
  if (v121.n128_u32[2] >= 0x41 && v121.n128_u64[0])
  {
    MEMORY[0x1AC55A040](v121.n128_u64[0], 0x1000C8000313F17);
  }

  if (a3 != 1 || !mlir::Type::isSignlessInteger(&v116, 64))
  {
    goto LABEL_8;
  }
}

void mlir::AsmPrinter::Impl::printDialectAttribute(llvm::raw_ostream **a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_1F1A362A8;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = a1[1];
  v10[0] = &v15;
  v10[1] = v5;
  v6 = *(v5 + 40);
  v11 = *(v5 + 39);
  v12 = v6;
  v13 = *(v5 + 41);
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_1F19FC358;
  (*(*v4 + 40))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "#", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

llvm::raw_ostream *printDialectSymbol(llvm::raw_ostream *a1, const char *a2, size_t a3, const char *a4, size_t a5, char *a6, size_t a7)
{
  v11 = a1;
  v13 = *(a1 + 3);
  v12 = *(a1 + 4);
  if (a3 > v13 - v12)
  {
    v14 = llvm::raw_ostream::write(v11, a2, a3);
    v12 = v14[4];
    if (a5 <= v14[3] - v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    llvm::raw_ostream::write(v14, a4, a5);
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    memcpy(v12, a2, a3);
    v12 = (*(v11 + 4) + a3);
    *(v11 + 4) = v12;
  }

  v14 = v11;
  if (a5 > *(v11 + 3) - v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a5)
  {
    memcpy(v12, a4, a5);
    v14[4] += a5;
  }

  if (!a7)
  {
    goto LABEL_36;
  }

LABEL_11:
  v16 = *a6;
  if ((v16 & 0x80000000) != 0)
  {
    if (!__maskrune(v16, 0x100uLL))
    {
      goto LABEL_36;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x100) == 0)
  {
    goto LABEL_36;
  }

  v17 = 0;
  while (1)
  {
    v18 = a6[v17];
    if (v18 != 95)
    {
      v19 = v18 != 46 && (v18 - 48) >= 0xA;
      if (v19 && (v18 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }
    }

    if (a7 == ++v17)
    {
      goto LABEL_27;
    }
  }

  if (a7 >= v17 && (a6[v17] != 60 || a6[a7 - 1] != 62))
  {
LABEL_36:
    v24 = *(v11 + 4);
    if (v24 >= *(v11 + 3))
    {
      v11 = llvm::raw_ostream::write(v11, 60);
      result = *(v11 + 4);
      if (a7 <= *(v11 + 3) - result)
      {
LABEL_38:
        if (a7)
        {
          memcpy(result, a6, a7);
          result = (*(v11 + 4) + a7);
          *(v11 + 4) = result;
        }

        if (result < *(v11 + 3))
        {
          goto LABEL_41;
        }

LABEL_44:

        return llvm::raw_ostream::write(v11, 62);
      }
    }

    else
    {
      *(v11 + 4) = v24 + 1;
      *v24 = 60;
      result = *(v11 + 4);
      if (a7 <= *(v11 + 3) - result)
      {
        goto LABEL_38;
      }
    }

    v11 = llvm::raw_ostream::write(v11, a6, a7);
    result = *(v11 + 4);
    if (result < *(v11 + 3))
    {
LABEL_41:
      *(v11 + 4) = result + 1;
      *result = 62;
      return result;
    }

    goto LABEL_44;
  }

LABEL_27:
  v21 = *(v11 + 4);
  if (v21 >= *(v11 + 3))
  {
    v11 = llvm::raw_ostream::write(v11, 46);
    v22 = *(v11 + 4);
    if (a7 <= *(v11 + 3) - v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v11 + 4) = v21 + 1;
    *v21 = 46;
    v22 = *(v11 + 4);
    if (a7 <= *(v11 + 3) - v22)
    {
LABEL_29:
      result = memcpy(v22, a6, a7);
      *(v11 + 4) += a7;
      return result;
    }
  }

  return llvm::raw_ostream::write(v11, a6, a7);
}

void printFloatValue(const llvm::APFloat *a1, llvm::raw_ostream *a2, BOOL *a3)
{
  v20[16] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 8);
  v7 = *(a1 + 1);
  v9 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v10 = *(a1 + 2);
  if (v9 != v7)
  {
    v10 = a1;
  }

  if ((*(v10 + 28) & 6) == 0)
  {
LABEL_27:
    if (a3)
    {
      *a3 = 1;
    }

    v18 = v20;
    v19 = xmmword_1A75DA800;
    if (v9 == *v6)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(&v16, v6, v8);
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(&v16, v6);
    }

    llvm::APInt::toString(&v16, &v18, 16, 0, 1, 1, 0);
    llvm::raw_ostream::write(a2, v18, v19);
    if (LODWORD(v17[0]) >= 0x41)
    {
      if (v16)
      {
        MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
      }
    }

    v12 = v18;
    if (v18 != v20)
    {
      goto LABEL_36;
    }

    return;
  }

  v18 = v20;
  v19 = xmmword_1A75DA7F0;
  if (v9 == v7)
  {
    llvm::detail::DoubleAPFloat::toString(v6, &v18, 6, 0, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v6, &v18, 6u, 0, 0);
  }

  llvm::APFloat::APFloat(&v16, *v6, v18, v19);
  if (v17[0] == *v6)
  {
    if (v9 == v17[0])
    {
      IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(v17, v6);
      if (v9 == v17[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(v17, v6);
      if (v9 == v17[0])
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
    if (IsEqual)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  IsEqual = 0;
  if (v9 != v17[0])
  {
    goto LABEL_9;
  }

LABEL_16:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  if (IsEqual)
  {
LABEL_10:
    llvm::raw_ostream::write(a2, v18, v19);
    v12 = v18;
    if (v18 == v20)
    {
      return;
    }

LABEL_36:
    free(v12);
    return;
  }

LABEL_17:
  *&v19 = 0;
  if (v9 == *v6)
  {
    llvm::detail::DoubleAPFloat::toString(v6, &v18, 0, 3, 1);
    v13 = v18;
    v14 = v19;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v6, &v18, 0, 3u, 1);
    v13 = v18;
    v14 = v19;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  v15 = memchr(v13, 46, v14);
  if (!v15 || v15 - v13 == -1)
  {
LABEL_25:
    if (v13 != v20)
    {
      free(v13);
    }

    goto LABEL_27;
  }

  llvm::raw_ostream::write(a2, v13, v14);
  v12 = v18;
  if (v18 != v20)
  {
    goto LABEL_36;
  }
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printEscapedString(llvm::raw_ostream **a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(a2, a3, *a1);
  result = *a1;
  v9 = *(*a1 + 4);
  if (*(*a1 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

double mlir::AffineMap::print(mlir::AffineMap *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::AffineBinaryOpExpr::getLHS(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v4);
    operator new();
  }

  v2 = *(a2 + 4);
  if ((*(a2 + 3) - v2) > 0x12)
  {
    *(v2 + 15) = 1044271169;
    result = *"<<NULL AFFINE MAP>>";
    *v2 = *"<<NULL AFFINE MAP>>";
    *(a2 + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL AFFINE MAP>>", 0x13uLL);
  }

  return result;
}

void mlir::IntegerSet::print(mlir::IntegerSet *this, llvm::raw_ostream *a2)
{
  mlir::IntegerSet::getContext(this);
  mlir::OpPrintingFlags::OpPrintingFlags(&v2);
  operator new();
}

void mlir::AsmPrinter::Impl::printType(uint64_t *a1, uint64_t **a2)
{
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(a1, a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(a1, a2);
    }
  }

  else
  {
    v4 = *a1;
    v5 = v4[4];
    if (v4[3] - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      v4[4] += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double printSymbolReference(char *a1, size_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = *(a3 + 4);
    if (v4 >= *(a3 + 3))
    {
      v7 = a1;
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(a3, 64);
      a1 = v7;
      a2 = v8;
      a3 = v9;
    }

    else
    {
      *(a3 + 4) = v4 + 1;
      *v4 = 64;
    }

    printKeywordOrString(a1, a2, a3);
  }

  else
  {
    v6 = *(a3 + 4);
    if (*(a3 + 3) - v6 > 0x18uLL)
    {
      qmemcpy(v6, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(a3 + 4) += 25;
    }

    else
    {

      llvm::raw_ostream::write(a3, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

double printElidedElementsAttr(llvm::raw_ostream *a1)
{
  v1 = *(a1 + 4);
  if (*(a1 + 3) - v1 > 0x19uLL)
  {
    qmemcpy(v1, "dense_resource<__elided__>", 26);
    result = *"urce<__elided__>";
    *(a1 + 4) += 26;
  }

  else
  {
    llvm::raw_ostream::write(a1, "dense_resource<__elided__>", 0x1AuLL);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(llvm::raw_ostream **a1, void *a2, int a3)
{
  v29 = a2;
  Value = mlir::ArrayAttr::getValue(&v29);
  v28 = v5;
  isSplat = mlir::ElementsAttr::isSplat(&Value);
  v26 = isSplat;
  if (!a3 || (v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v29), v9 = a1[6], v9 == -1) || (v10 = v7, v9 >= mlir::ElementsAttr::getNumElements(v7, v8)) || (!mlir::DenseElementsAttr::classof(v10) ? (v11 = 0) : (v11 = v10), (*&v36 = v11) != 0 && (mlir::DenseElementsAttr::isSplat(&v36) & 1) != 0))
  {
    v12 = *(*isSplat + 136);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = isSplat;
    }

    else
    {
      v14 = 0;
    }

    v25 = v14;
    if (v13)
    {
      v24 = mlir::AffineMapAttr::getValue(&v25);
      if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::DenseElementsAttr::tryGetComplexIntValues(&v36, &v29);
        v31 = v37;
        v15 = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Value;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        *&v31 = &v24;
        v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>;
      }

      else
      {
        mlir::DenseElementsAttr::tryGetComplexFloatValues(&v36, &v29);
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v35 = v41;
        v15 = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Value;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>;
      }
    }

    else
    {
      if (mlir::Type::isIntOrIndex(&v26))
      {
        mlir::DenseElementsAttr::getValues<llvm::APInt>(&v29, &v36);
        v30 = v36;
        v31 = v37;
        v15 = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Value;
        v17 = v28;
        v18 = *a1;
        *&v36 = &v30;
        *(&v36 + 1) = a1;
        *&v37 = &v26;
        v19 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>;
        v20 = &v36;
LABEL_20:
        printDenseElementsAttrImpl(v15, v16, v17, v18, v19, v20);
        return;
      }

      mlir::DenseElementsAttr::tryGetFloatValues(&v36, &v29);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v15 = mlir::DenseElementsAttr::isSplat(&v29);
      v16 = Value;
      v17 = v28;
      v18 = *a1;
      *&v30 = &v36;
      *(&v30 + 1) = a1;
      v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>;
    }

    v19 = v21;
    v20 = &v30;
    goto LABEL_20;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v29);
  mlir::AsmPrinter::Impl::printHexString(a1, RawStringData, v23);
}

void mlir::AsmPrinter::Impl::printDenseStringElementsAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v9 = a2;
  v8[0] = mlir::DenseElementsAttr::getRawStringData(&v9);
  v8[1] = v3;
  v7[0] = a1;
  v7[1] = v8;
  isSplat = mlir::DenseElementsAttr::isSplat(&v9);
  Value = mlir::ArrayAttr::getValue(&v9);
  printDenseElementsAttrImpl(isSplat, Value, v6, *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v7);
}

void mlir::AsmPrinter::Impl::printDenseElementsAttr(llvm::raw_ostream **a1, void *a2, int a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v12[3] = v3;
    v12[4] = v4;
    v12[0] = a2;
    v11[0] = mlir::DenseElementsAttr::getRawStringData(v12);
    v11[1] = v6;
    v10[0] = a1;
    v10[1] = v11;
    isSplat = mlir::DenseElementsAttr::isSplat(v12);
    Value = mlir::ArrayAttr::getValue(v12);
    printDenseElementsAttrImpl(isSplat, Value, v9, *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v10);
  }

  else
  {

    mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, a2, a3);
  }
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v20 = a2;
  Value = mlir::AffineMapAttr::getValue(&v20);
  if (mlir::Type::isInteger(&Value, 1))
  {
    IntOrFloatBitWidth = 8;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&Value);
  }

  v17 = IntOrFloatBitWidth >> 3;
  v18 = IntOrFloatBitWidth;
  v16[0] = mlir::DenseArrayAttr::getRawData(&v20);
  v16[1] = v4;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v20);
  v8 = *a1;
  v21[0] = &v18;
  v21[1] = v16;
  v21[2] = &v17;
  v21[3] = &Value;
  v21[4] = a1;
  v9 = LHS;
  if (LHS)
  {
    mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v21, 0, v6, v7);
    if (v9 != 1)
    {
      for (i = 1; i != v9; ++i)
      {
        while (1)
        {
          v15 = v8[4];
          if (v8[3] - v15 > 1uLL)
          {
            break;
          }

          llvm::raw_ostream::write(v8, ", ", 2uLL);
          mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v21, i++, v13, v14);
          if (v9 == i)
          {
            return;
          }
        }

        *v15 = 8236;
        v8[4] += 2;
        mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v21, i, v10, v11);
      }
    }
  }
}

void printDenseElementsAttrImpl(int a1, uint64_t a2, uint64_t a3, llvm::raw_ostream *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v31[0] = a2;
  v31[1] = a3;
  if (a1)
  {

    a5(a6, 0);
    return;
  }

  Shape = mlir::ShapedType::getShape(v31);
  NumElements = mlir::ShapedType::getNumElements(Shape, v8);
  if (!NumElements)
  {
    return;
  }

  v10 = NumElements;
  mlir::ShapedType::getShape(v31);
  v12 = v11;
  v32 = v34;
  v33 = 0x400000000;
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v11, 4);
    v13 = v32;
    v14 = 4 * v12;
LABEL_10:
    bzero(v13, v14);
    goto LABEL_11;
  }

  if (v11)
  {
    v14 = 4 * v11;
    v13 = v34;
    goto LABEL_10;
  }

LABEL_11:
  LODWORD(v33) = v12;
  v15 = mlir::ShapedType::getShape(v31);
  if (!v10)
  {
    goto LABEL_38;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  do
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v19 = *(a4 + 4);
    if (*(a4 + 3) - v19 <= 1uLL)
    {
      llvm::raw_ostream::write(a4, ", ", 2uLL);
LABEL_18:
      if (v12 <= v18)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    *v19 = 8236;
    *(a4 + 4) += 2;
    if (v12 <= v18)
    {
      goto LABEL_26;
    }

LABEL_21:
    v20 = v18 + 1;
    do
    {
      while (1)
      {
        v22 = *(a4 + 4);
        if (v22 >= *(a4 + 3))
        {
          break;
        }

        *(a4 + 4) = v22 + 1;
        *v22 = 91;
        v21 = v12 > v20++;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      llvm::raw_ostream::write(a4, 91);
      v21 = v12 > v20++;
    }

    while (v21);
LABEL_26:
    a5(a6, v17);
    ++*(v32 + v12 - 1);
    if (v12 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12;
      v23 = (v12 - 1);
      LODWORD(v24) = v12;
      do
      {
        v25 = v24;
        v24 = v23;
        v26 = v32;
        if (*(v16 + 8 * v24) <= *(v32 + v24))
        {
          *(v32 + v24) = 0;
          ++v26[v25 - 2];
          --v18;
          v27 = *(a4 + 4);
          if (v27 < *(a4 + 3))
          {
            *(a4 + 4) = v27 + 1;
            *v27 = 93;
          }

          else
          {
            llvm::raw_ostream::write(a4, 93);
          }
        }

        v23 = v24 - 1;
      }

      while (v24 != 1);
    }

    v17 = (v17 + 1);
  }

  while (v17 != v10);
  for (; v18; --v18)
  {
    while (1)
    {
      v28 = *(a4 + 4);
      if (v28 >= *(a4 + 3))
      {
        break;
      }

      *(a4 + 4) = v28 + 1;
      *v28 = 93;
      if (!--v18)
      {
        goto LABEL_38;
      }
    }

    llvm::raw_ostream::write(a4, 93);
  }

LABEL_38:
  if (v32 != v34)
  {
    free(v32);
  }
}

void mlir::AsmPrinter::Impl::printTypeImpl(uint64_t *a1, uint64_t **a2)
{
  v2 = (*a2)[17];
  if (v2 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v6 = *a1;
    v163 = a2;
    Value = mlir::AffineMapAttr::getValue(&v163);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    v9 = v8;
    v10 = mlir::OpaqueAttr::getAttrData(&v163);
    printDialectSymbol(v6, "!", 1uLL, AttrData, v9, v10, v11);
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v12 = *a1;
    v13 = v12[4];
    if ((v12[3] - v13) <= 4)
    {
      v14 = "index";
      v15 = 5;
      goto LABEL_37;
    }

    *(v13 + 4) = 120;
    *v13 = 1701080681;
    v17 = v12[4] + 5;
LABEL_45:
    v12[4] = v17;
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    v12 = *a1;
    v16 = v12[4];
    if (v12[3] - v16 > 7uLL)
    {
      v18 = 0x314D32453466;
      goto LABEL_44;
    }

    v14 = "f4E2M1FN";
LABEL_36:
    v15 = 8;
    goto LABEL_37;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = v12[4];
    if (v12[3] - v16 > 7uLL)
    {
      v18 = 0x334D32453666;
      goto LABEL_44;
    }

    v14 = "f6E2M3FN";
    goto LABEL_36;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    v12 = *a1;
    v16 = v12[4];
    if (v12[3] - v16 > 7uLL)
    {
      v18 = 0x324D33453666;
      goto LABEL_44;
    }

    v14 = "f6E3M2FN";
    goto LABEL_36;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    v12 = *a1;
    v19 = v12[4];
    if ((v12[3] - v19) <= 5)
    {
      v14 = "f8E5M2";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 12877;
    v20 = 893728870;
    goto LABEL_53;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    v12 = *a1;
    v19 = v12[4];
    if ((v12[3] - v19) <= 5)
    {
      v14 = "f8E4M3";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 13133;
    v20 = 876951654;
    goto LABEL_53;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = v12[4];
    if (v12[3] - v16 <= 7uLL)
    {
      v14 = "f8E4M3FN";
      goto LABEL_36;
    }

    v18 = 0x334D34453866;
LABEL_44:
    *v16 = v18 & 0xFFFFFFFFFFFFLL | 0x4E46000000000000;
    v17 = v12[4] + 8;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = v12[4];
    if ((v12[3] - v21) <= 9)
    {
      v14 = "f8E5M2FNUZ";
      v15 = 10;
      goto LABEL_37;
    }

    v22 = "f8E5M2FNUZ";
    goto LABEL_63;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = v12[4];
    if ((v12[3] - v21) <= 9)
    {
      v14 = "f8E4M3FNUZ";
      v15 = 10;
      goto LABEL_37;
    }

    v22 = "f8E4M3FNUZ";
LABEL_63:
    *(v21 + 8) = 23125;
    *v21 = *v22;
    v17 = v12[4] + 10;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    v12 = *a1;
    v23 = v12[4];
    if (v12[3] - v23 <= 0xCuLL)
    {
      v14 = "f8E4M3B11FNUZ";
      v15 = 13;
      goto LABEL_37;
    }

    qmemcpy(v23, "f8E4M3B11FNUZ", 13);
    v17 = v12[4] + 13;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
  {
    v12 = *a1;
    v19 = v12[4];
    if ((v12[3] - v19) <= 5)
    {
      v14 = "f8E3M4";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 13389;
    v20 = 860174438;
LABEL_53:
    *v19 = v20;
    v17 = v12[4] + 6;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    v12 = *a1;
    v24 = v12[4];
    if (v12[3] - v24 > 3uLL)
    {
      v26 = 909207138;
      goto LABEL_79;
    }

    v14 = "bf16";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    v12 = *a1;
    v25 = v12[4];
    if ((v12[3] - v25) > 2)
    {
      *(v25 + 2) = 54;
      v27 = 12646;
      goto LABEL_89;
    }

    v14 = "f16";
    v15 = 3;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    v12 = *a1;
    v24 = v12[4];
    if (v12[3] - v24 > 3uLL)
    {
      v26 = 842229364;
      goto LABEL_79;
    }

    v14 = "tf32";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    v12 = *a1;
    v25 = v12[4];
    if ((v12[3] - v25) > 2)
    {
      *(v25 + 2) = 50;
      v27 = 13158;
      goto LABEL_89;
    }

    v14 = "f32";
    v15 = 3;
  }

  else
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      if (v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
      {
        if (v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
            {
              v163 = a2;
              v4 = *a1;
              v5 = *(v4 + 4);
              if (v5 >= *(v4 + 3))
              {
                llvm::raw_ostream::write(v4, 40);
              }

              else
              {
                *(v4 + 4) = v5 + 1;
                *v5 = 40;
              }

              Inputs = mlir::FunctionType::getInputs(&v163);
              if (v39)
              {
                v40 = Inputs;
                v41 = v39;
                v42 = *a1;
                v43 = *Inputs;
                if (*Inputs)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v43) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v43);
                  }
                }

                else
                {
                  v58 = v42[4];
                  if (v42[3] - v58 > 0xCuLL)
                  {
                    qmemcpy(v58, "<<NULL TYPE>>", 13);
                    v42[4] += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v41 != 1)
                {
                  v87 = (v40 + 1);
                  v88 = 8 * v41 - 8;
                  do
                  {
                    v89 = v42[4];
                    if (v42[3] - v89 > 1uLL)
                    {
                      *v89 = 8236;
                      v42[4] += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v42, ", ", 2uLL);
                    }

                    v90 = *v87;
                    if (*v87)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v87) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v90);
                      }
                    }

                    else
                    {
                      v91 = *a1;
                      v92 = *(*a1 + 32);
                      if (*(*a1 + 24) - v92 > 0xCuLL)
                      {
                        qmemcpy(v92, "<<NULL TYPE>>", 13);
                        v91[4] += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v91, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v87;
                    v88 -= 8;
                  }

                  while (v88);
                }
              }

              v76 = *a1;
              v77 = *(*a1 + 32);
              if ((*(*a1 + 24) - v77) > 4)
              {
                *(v77 + 4) = 32;
                *v77 = 1043144745;
                v76[4] += 5;
              }

              else
              {
                llvm::raw_ostream::write(v76, ") -> ", 5uLL);
              }

              Results = mlir::FunctionType::getResults(&v163);
              v79 = Results;
              v81 = v80;
              if (v80 != 1 || (v82 = *Results, *(**Results + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
              {
                v83 = *a1;
                v84 = *(*a1 + 32);
                if (v84 >= *(*a1 + 24))
                {
                  llvm::raw_ostream::write(v83, 40);
                }

                else
                {
                  *(v83 + 4) = v84 + 1;
                  *v84 = 40;
                }

                if (v81)
                {
                  v85 = *a1;
                  v86 = *v79;
                  if (*v79)
                  {
                    if ((mlir::AsmPrinter::Impl::printAlias(a1, *v79) & 1) == 0)
                    {
                      mlir::AsmPrinter::Impl::printTypeImpl(a1, v86);
                    }
                  }

                  else
                  {
                    v93 = v85[4];
                    if (v85[3] - v93 > 0xCuLL)
                    {
                      qmemcpy(v93, "<<NULL TYPE>>", 13);
                      v85[4] += 13;
                    }

                    else
                    {
                      llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                    }
                  }

                  if (v81 != 1)
                  {
                    v96 = v79 + 1;
                    v97 = 8 * v81 - 8;
                    do
                    {
                      v98 = v85[4];
                      if (v85[3] - v98 > 1uLL)
                      {
                        *v98 = 8236;
                        v85[4] += 2;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v85, ", ", 2uLL);
                      }

                      v99 = *v96;
                      if (*v96)
                      {
                        if ((mlir::AsmPrinter::Impl::printAlias(a1, *v96) & 1) == 0)
                        {
                          mlir::AsmPrinter::Impl::printTypeImpl(a1, v99);
                        }
                      }

                      else
                      {
                        v100 = *a1;
                        v101 = *(*a1 + 32);
                        if (*(*a1 + 24) - v101 > 0xCuLL)
                        {
                          qmemcpy(v101, "<<NULL TYPE>>", 13);
                          v100[4] += 13;
                        }

                        else
                        {
                          llvm::raw_ostream::write(v100, "<<NULL TYPE>>", 0xDuLL);
                        }
                      }

                      ++v96;
                      v97 -= 8;
                    }

                    while (v97);
                  }
                }

                v94 = *a1;
                v95 = *(*a1 + 32);
                if (v95 >= *(*a1 + 24))
                {
                  llvm::raw_ostream::write(v94, 41);
                }

                else
                {
                  *(v94 + 4) = v95 + 1;
                  *v95 = 41;
                }
              }

              else if ((mlir::AsmPrinter::Impl::printAlias(a1, *Results) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v82);
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
            {
              v163 = a2;
              RawStringData = mlir::DenseElementsAttr::getRawStringData(&v163);
              v33 = v32;
              v34 = *a1;
              v35 = *(*a1 + 32);
              if (*(*a1 + 24) - v35 > 6uLL)
              {
                *(v35 + 3) = 1014132596;
                *v35 = 1952671094;
                v34[4] += 7;
              }

              else
              {
                llvm::raw_ostream::write(v34, "vector<", 7uLL);
              }

              v47 = mlir::ArrayAttr::getValue(&v163);
              v49 = v48;
              if (v48)
              {
                v50 = v47;
                if (v33)
                {
                  v51 = a1;
                  do
                  {
                    while (1)
                    {
                      if (*RawStringData == 1)
                      {
                        v52 = *v51;
                        v53 = *(*v51 + 4);
                        if (v53 >= *(*v51 + 3))
                        {
                          llvm::raw_ostream::write(v52, 91);
                          v51 = a1;
                        }

                        else
                        {
                          *(v52 + 4) = v53 + 1;
                          *v53 = 91;
                        }
                      }

                      llvm::raw_ostream::operator<<(*v51, *v50);
                      v51 = a1;
                      if (*RawStringData == 1)
                      {
                        v54 = *a1;
                        v55 = *(*a1 + 32);
                        if (v55 >= *(*a1 + 24))
                        {
                          llvm::raw_ostream::write(v54, 93);
                          v51 = a1;
                        }

                        else
                        {
                          *(v54 + 4) = v55 + 1;
                          *v55 = 93;
                        }
                      }

                      v56 = *v51;
                      v57 = *(*v51 + 4);
                      if (v57 >= *(*v51 + 3))
                      {
                        break;
                      }

                      *(v56 + 4) = v57 + 1;
                      *v57 = 120;
                      ++RawStringData;
                      ++v50;
                      if (!--v49)
                      {
                        goto LABEL_152;
                      }
                    }

                    llvm::raw_ostream::write(v56, 120);
                    v51 = a1;
                    ++RawStringData;
                    ++v50;
                    --v49;
                  }

                  while (v49);
                }

                else
                {
                  v70 = a1;
                  do
                  {
                    while (1)
                    {
                      v71 = *v50++;
                      llvm::raw_ostream::operator<<(*v70, v71);
                      v72 = *a1;
                      v73 = *(*a1 + 32);
                      if (v73 >= *(*a1 + 24))
                      {
                        break;
                      }

                      v70 = a1;
                      *(v72 + 4) = v73 + 1;
                      *v73 = 120;
                      if (!--v49)
                      {
                        goto LABEL_152;
                      }
                    }

                    llvm::raw_ostream::write(v72, 120);
                    v70 = a1;
                    --v49;
                  }

                  while (v49);
                }
              }

LABEL_152:
              RHS = mlir::AffineBinaryOpExpr::getRHS(&v163);
              if (RHS)
              {
                goto LABEL_153;
              }

              goto LABEL_212;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              Value = a2;
              v36 = *a1;
              v37 = *(*a1 + 32);
              if (*(*a1 + 24) - v37 > 6uLL)
              {
                *(v37 + 3) = 1014132595;
                *v37 = 1936614772;
                v36[4] += 7;
              }

              else
              {
                llvm::raw_ostream::write(v36, "tensor<", 7uLL);
              }

              v64 = mlir::ArrayAttr::getValue(&Value);
              v65 = *a1;
              v163 = "x";
              v164 = 1;
              llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(v64, &v64[v66], v65, v65, &v163);
              mlir::ArrayAttr::getValue(&Value);
              if (v67)
              {
                v68 = *a1;
                v69 = *(*a1 + 32);
                if (v69 >= *(*a1 + 24))
                {
                  llvm::raw_ostream::write(v68, 120);
                }

                else
                {
                  *(v68 + 4) = v69 + 1;
                  *v69 = 120;
                }
              }

              v102 = mlir::AffineBinaryOpExpr::getRHS(&Value);
              if (v102)
              {
                v103 = v102;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v102) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v103);
                }
              }

              else
              {
                v104 = *a1;
                v105 = *(*a1 + 32);
                if (*(*a1 + 24) - v105 > 0xCuLL)
                {
                  qmemcpy(v105, "<<NULL TYPE>>", 13);
                  v104[4] += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v104, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::SparseElementsAttr::getValues(&Value))
              {
                goto LABEL_283;
              }

              v111 = *a1;
              v112 = *(*a1 + 32);
              if (*(*a1 + 24) - v112 > 1uLL)
              {
                *v112 = 8236;
                v111[4] += 2;
              }

              else
              {
                llvm::raw_ostream::write(v111, ", ", 2uLL);
              }

              Values = mlir::SparseElementsAttr::getValues(&Value);
              if (Values)
              {
                v114 = Values;
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v114, 0);
                }

                goto LABEL_283;
              }

              goto LABEL_279;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              v163 = a2;
              v45 = *a1;
              v46 = *(*a1 + 32);
              if ((*(*a1 + 24) - v46) > 8)
              {
                *(v46 + 8) = 120;
                *v46 = *"tensor<*x";
                v45[4] += 9;
              }

              else
              {
                llvm::raw_ostream::write(v45, "tensor<*x", 9uLL);
              }

              RHS = mlir::AffineMapAttr::getValue(&v163);
              if (!RHS)
              {
LABEL_212:
                v108 = *a1;
                v109 = *(*a1 + 32);
                if (*(*a1 + 24) - v109 <= 0xCuLL)
                {
                  llvm::raw_ostream::write(v108, "<<NULL TYPE>>", 0xDuLL);
                  goto LABEL_283;
                }

                qmemcpy(v109, "<<NULL TYPE>>", 13);
                v110 = v108[4] + 13;
                goto LABEL_282;
              }

LABEL_153:
              v75 = RHS;
              if ((mlir::AsmPrinter::Impl::printAlias(a1, RHS) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v75);
              }

              goto LABEL_283;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
            {
              Value = a2;
              v62 = *a1;
              v63 = *(*a1 + 32);
              if (*(*a1 + 24) - v63 > 6uLL)
              {
                *(v63 + 3) = 1013343602;
                *v63 = 1919772013;
                v62[4] += 7;
              }

              else
              {
                llvm::raw_ostream::write(v62, "memref<", 7uLL);
              }

              v117 = mlir::ArrayAttr::getValue(&Value);
              v118 = *a1;
              v163 = "x";
              v164 = 1;
              llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(v117, &v117[v119], v118, v118, &v163);
              mlir::ArrayAttr::getValue(&Value);
              if (v120)
              {
                v121 = *a1;
                v122 = *(*a1 + 32);
                if (v122 >= *(*a1 + 24))
                {
                  llvm::raw_ostream::write(v121, 120);
                }

                else
                {
                  *(v121 + 4) = v122 + 1;
                  *v122 = 120;
                }
              }

              v123 = mlir::AffineBinaryOpExpr::getRHS(&Value);
              if (v123)
              {
                v124 = v123;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v123) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v124);
                }
              }

              else
              {
                v125 = *a1;
                v126 = *(*a1 + 32);
                if (*(*a1 + 24) - v126 > 0xCuLL)
                {
                  qmemcpy(v126, "<<NULL TYPE>>", 13);
                  v125[4] += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v125, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              v163 = mlir::DenseElementsAttr::getRawStringData(&Value);
              v164 = v133;
              if (*(*v163 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::ElementsAttr::isSplat(&v163) & 1) == 0)
              {
                v134 = *a1;
                v135 = *(*a1 + 32);
                if (*(*a1 + 24) - v135 > 1uLL)
                {
                  *v135 = 8236;
                  v134[4] += 2;
                }

                else
                {
                  llvm::raw_ostream::write(v134, ", ", 2uLL);
                }

                v136 = mlir::DenseElementsAttr::getRawStringData(&Value);
                if (v136)
                {
                  v137 = v136;
                  {
                    mlir::AsmPrinter::Impl::printAttributeImpl(a1, v137, 1);
                  }
                }

                else
                {
                  v138 = *a1;
                  v139 = *(*a1 + 32);
                  if ((*(*a1 + 24) - v139) > 0x11)
                  {
                    *(v139 + 16) = 15934;
                    *v139 = *"<<NULL ATTRIBUTE>>";
                    v138[4] += 18;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v138, "<<NULL ATTRIBUTE>>", 0x12uLL);
                  }
                }
              }

              if (!mlir::MemRefType::getMemorySpace(&Value))
              {
                goto LABEL_283;
              }

              v140 = *a1;
              v141 = *(*a1 + 32);
              if (*(*a1 + 24) - v141 > 1uLL)
              {
                *v141 = 8236;
                v140[4] += 2;
              }

              else
              {
                llvm::raw_ostream::write(v140, ", ", 2uLL);
              }

              MemorySpace = mlir::MemRefType::getMemorySpace(&Value);
              if (MemorySpace)
              {
                goto LABEL_264;
              }

              goto LABEL_279;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
            {
              v163 = a2;
              v106 = *a1;
              v107 = *(*a1 + 32);
              if ((*(*a1 + 24) - v107) > 8)
              {
                *(v107 + 8) = 120;
                *v107 = *"memref<*x";
                v106[4] += 9;
              }

              else
              {
                llvm::raw_ostream::write(v106, "memref<*x", 9uLL);
              }

              v129 = mlir::AffineMapAttr::getValue(&v163);
              if (v129)
              {
                v130 = v129;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v129) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v130);
                }
              }

              else
              {
                v131 = *a1;
                v132 = *(*a1 + 32);
                if (*(*a1 + 24) - v132 > 0xCuLL)
                {
                  qmemcpy(v132, "<<NULL TYPE>>", 13);
                  v131[4] += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v131, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::AffineBinaryOpExpr::getLHS(&v163))
              {
                goto LABEL_283;
              }

              v144 = *a1;
              v145 = *(*a1 + 32);
              if (*(*a1 + 24) - v145 > 1uLL)
              {
                *v145 = 8236;
                v144[4] += 2;
              }

              else
              {
                llvm::raw_ostream::write(v144, ", ", 2uLL);
              }

              MemorySpace = mlir::AffineBinaryOpExpr::getLHS(&v163);
              if (MemorySpace)
              {
LABEL_264:
                v143 = MemorySpace;
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v143, 1);
                }

                goto LABEL_283;
              }

LABEL_279:
              v108 = *a1;
              v146 = *(*a1 + 32);
              if ((*(*a1 + 24) - v146) <= 0x11)
              {
                llvm::raw_ostream::write(v108, "<<NULL ATTRIBUTE>>", 0x12uLL);
                goto LABEL_283;
              }

              *(v146 + 16) = 15934;
              *v146 = *"<<NULL ATTRIBUTE>>";
              v110 = v108[4] + 18;
LABEL_282:
              v108[4] = v110;
LABEL_283:
              v147 = *a1;
              v148 = *(*a1 + 32);
              if (v148 >= *(*a1 + 24))
              {
                llvm::raw_ostream::write(v147, 62);
              }

              else
              {
                *(v147 + 4) = v148 + 1;
                *v148 = 62;
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
            {
              v163 = a2;
              v115 = *a1;
              v116 = *(*a1 + 32);
              if (*(*a1 + 24) - v116 > 7uLL)
              {
                *v116 = 0x3C78656C706D6F63;
                v115[4] += 8;
              }

              else
              {
                llvm::raw_ostream::write(v115, "complex<", 8uLL);
              }

              RHS = mlir::AffineMapAttr::getValue(&v163);
              if (!RHS)
              {
                goto LABEL_212;
              }

              goto LABEL_153;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
            {
              v163 = a2;
              v127 = *a1;
              v128 = *(*a1 + 32);
              if ((*(*a1 + 24) - v128) > 5)
              {
                *(v128 + 4) = 15461;
                *v128 = 1819309428;
                v127[4] += 6;
              }

              else
              {
                llvm::raw_ostream::write(v127, "tuple<", 6uLL);
              }

              Types = mlir::TupleType::getTypes(&v163);
              if (v150)
              {
                v151 = Types;
                v152 = v150;
                v153 = *a1;
                v154 = *Types;
                if (*Types)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v154) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v154);
                  }
                }

                else
                {
                  v155 = v153[4];
                  if (v153[3] - v155 > 0xCuLL)
                  {
                    qmemcpy(v155, "<<NULL TYPE>>", 13);
                    v153[4] += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v152 != 1)
                {
                  v156 = (v151 + 1);
                  v157 = 8 * v152 - 8;
                  do
                  {
                    v158 = v153[4];
                    if (v153[3] - v158 > 1uLL)
                    {
                      *v158 = 8236;
                      v153[4] += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v153, ", ", 2uLL);
                    }

                    v159 = *v156;
                    if (*v156)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v156) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v159);
                      }
                    }

                    else
                    {
                      v160 = *a1;
                      v161 = *(*a1 + 32);
                      if (*(*a1 + 24) - v161 > 0xCuLL)
                      {
                        qmemcpy(v161, "<<NULL TYPE>>", 13);
                        v160[4] += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v160, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v156;
                    v157 -= 8;
                  }

                  while (v157);
                }
              }

              goto LABEL_283;
            }

            if (v2 != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {

              mlir::AsmPrinter::Impl::printDialectType(a1, a2);
              return;
            }

            v12 = *a1;
            v24 = *(*a1 + 32);
            if (*(*a1 + 24) - v24 <= 3uLL)
            {
              v14 = "none";
              v15 = 4;
              goto LABEL_37;
            }

            v26 = 1701736302;
            goto LABEL_79;
          }

          v163 = a2;
          if (mlir::IntegerType::getSignedness(&v163) == 1)
          {
            v28 = *a1;
            v29 = *(*a1 + 32);
            if (v29 < *(*a1 + 24))
            {
              *(v28 + 4) = v29 + 1;
              v30 = 115;
LABEL_101:
              *v29 = v30;
              goto LABEL_136;
            }

            v44 = 115;
          }

          else
          {
            if (mlir::IntegerType::getSignedness(&v163) != 2)
            {
LABEL_136:
              v59 = *a1;
              v60 = *(v59 + 4);
              if (v60 >= *(v59 + 3))
              {
                v59 = llvm::raw_ostream::write(v59, 105);
              }

              else
              {
                *(v59 + 4) = v60 + 1;
                *v60 = 105;
              }

              Width = mlir::IntegerType::getWidth(&v163);
              llvm::raw_ostream::operator<<(v59, Width);
              return;
            }

            v28 = *a1;
            v29 = *(*a1 + 32);
            if (v29 < *(*a1 + 24))
            {
              *(v28 + 4) = v29 + 1;
              v30 = 117;
              goto LABEL_101;
            }

            v44 = 117;
          }

          llvm::raw_ostream::write(v28, v44);
          goto LABEL_136;
        }

        v12 = *a1;
        v24 = v12[4];
        if (v12[3] - v24 <= 3uLL)
        {
          v14 = "f128";
          v15 = 4;
          goto LABEL_37;
        }

        v26 = 942813542;
LABEL_79:
        *v24 = v26;
        v17 = v12[4] + 4;
        goto LABEL_45;
      }

      v12 = *a1;
      v25 = v12[4];
      if ((v12[3] - v25) <= 2)
      {
        v14 = "f80";
        v15 = 3;
        goto LABEL_37;
      }

      *(v25 + 2) = 48;
      v27 = 14438;
LABEL_89:
      *v25 = v27;
      v17 = v12[4] + 3;
      goto LABEL_45;
    }

    v12 = *a1;
    v25 = v12[4];
    if ((v12[3] - v25) > 2)
    {
      *(v25 + 2) = 52;
      v27 = 13926;
      goto LABEL_89;
    }

    v14 = "f64";
    v15 = 3;
  }

LABEL_37:

  llvm::raw_ostream::write(v12, v14, v15);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::raw_ostream *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v70[0] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return result;
  }

  v8 = result;
  if (!a5)
  {
    if (a6)
    {
      v14 = *result;
      v15 = *(*v8 + 4);
      if ((*(*v8 + 3) - v15) > 0xA)
      {
        *(v15 + 7) = 1936028789;
        *v15 = *" attributes";
        *(v14 + 4) += 11;
        v16 = *v8;
        v17 = *(*v8 + 4);
        if (*(*v8 + 3) - v17 <= 1uLL)
        {
LABEL_17:
          llvm::raw_ostream::write(v16, " {", 2uLL);
          v18 = *v8;
          mlir::AsmPrinter::Impl::printNamedAttribute(v8, *a2, a2[1]);
          if (a3 == 1)
          {
LABEL_31:
            result = *v8;
            v30 = *(*v8 + 4);
            if (v30 >= *(*v8 + 3))
            {

              return llvm::raw_ostream::write(result, 125);
            }

            else
            {
              *(result + 4) = v30 + 1;
              *v30 = 125;
            }

            return result;
          }

LABEL_27:
          v23 = &a2[2 * a3];
          v24 = a2 + 2;
          do
          {
            while (1)
            {
              v27 = *(v18 + 4);
              if (*(v18 + 3) - v27 <= 1uLL)
              {
                break;
              }

              *v27 = 8236;
              *(v18 + 4) += 2;
              v25 = *v24;
              v26 = v24[1];
              v24 += 2;
              mlir::AsmPrinter::Impl::printNamedAttribute(v8, v25, v26);
              if (v24 == v23)
              {
                goto LABEL_31;
              }
            }

            llvm::raw_ostream::write(v18, ", ", 2uLL);
            v28 = *v24;
            v29 = v24[1];
            v24 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(v8, v28, v29);
          }

          while (v24 != v23);
          goto LABEL_31;
        }

LABEL_26:
        *v17 = 31520;
        *(v16 + 4) += 2;
        v18 = *v8;
        mlir::AsmPrinter::Impl::printNamedAttribute(v8, *a2, a2[1]);
        if (a3 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      llvm::raw_ostream::write(v14, " attributes", 0xBuLL);
    }

    v16 = *v8;
    v17 = *(*v8 + 4);
    if (*(*v8 + 3) - v17 <= 1uLL)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  *&v66 = a4;
  AttrData = (a4 + 16 * a5);
  llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v67, &v66, &AttrData);
  v10 = 0;
  v11 = 16 * a3;
  v12 = &a2[2 * a3];
  while (1)
  {
    v66 = *&a2[v10 / 8];
    CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v66);
    AttrData = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
    v65 = v13;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v67, &AttrData);
    if (!result)
    {
      break;
    }

    if (v67)
    {
      if (result == v70)
      {
        goto LABEL_19;
      }
    }

    else if (result == (v68 + 16 * v69))
    {
      goto LABEL_19;
    }

    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_51;
    }
  }

  if ((v67 & 1) == 0)
  {
    result = (v68 + 16 * v69);
  }

LABEL_19:
  if (v11 == v10)
  {
LABEL_51:
    if ((v67 & 1) == 0)
    {
      goto LABEL_52;
    }

    return result;
  }

  if (a6)
  {
    v19 = *v8;
    v20 = *(*v8 + 4);
    if ((*(*v8 + 3) - v20) > 0xA)
    {
      *(v20 + 7) = 1936028789;
      *v20 = *" attributes";
      *(v19 + 4) += 11;
      v21 = *v8;
      v22 = *(*v8 + 4);
      if (*(*v8 + 3) - v22 <= 1uLL)
      {
        goto LABEL_24;
      }

LABEL_37:
      *v22 = 31520;
      *(v21 + 4) += 2;
      goto LABEL_38;
    }

    llvm::raw_ostream::write(v19, " attributes", 0xBuLL);
  }

  v21 = *v8;
  v22 = *(*v8 + 4);
  if (*(*v8 + 3) - v22 > 1uLL)
  {
    goto LABEL_37;
  }

LABEL_24:
  llvm::raw_ostream::write(v21, " {", 2uLL);
LABEL_38:
  v31 = *v8;
  v32 = v8;
  v33 = &a2[v10 / 8 + 2];
  v61 = v31;
  v62 = v32;
  mlir::AsmPrinter::Impl::printNamedAttribute(v32, a2[v10 / 8], a2[v10 / 8 + 1]);
  if (v11 - 16 != v10)
  {
    v34 = v11 - v10 - 16;
    while (1)
    {
      v66 = *v33;
      CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v66);
      AttrData = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
      v65 = v35;
      v36 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v67, &AttrData);
      if (!v36)
      {
        break;
      }

      if (v67)
      {
        if (v36 == v70)
        {
          break;
        }
      }

      else if (v36 == (v68 + 16 * v69))
      {
        break;
      }

      v33 += 2;
      v34 -= 16;
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    if (v34)
    {
LABEL_55:
      v38 = *(v61 + 4);
      if (*(v61 + 3) - v38 > 1uLL)
      {
        *v38 = 8236;
        *(v61 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v61, ", ", 2uLL);
      }

      mlir::AsmPrinter::Impl::printNamedAttribute(v62, *v33, v33[1]);
      while (1)
      {
        v33 += 2;
        if (v33 == v12)
        {
LABEL_54:
          if (v33 == v12)
          {
            break;
          }

          goto LABEL_55;
        }

        v66 = *v33;
        AttrData = ZinCompressedFootprintInfo::GetCompressedBytes(&v66);
        v39 = mlir::OpaqueAttr::getAttrData(&AttrData);
        v41 = v39;
        v42 = v40;
        if (v67)
        {
          v44 = &v68;
          HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v39, v40);
          v46 = 3;
          v47 = (v41 + 2) == 0;
          if (!v42)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v43 = v69;
          if (!v69)
          {
            goto LABEL_54;
          }

          v44 = v68;
          HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v39, v40);
          v46 = v43 - 1;
          v47 = (v41 + 2) == 0;
          if (!v42)
          {
LABEL_64:
            v48 = 1;
            if (v47)
            {
              v49 = HashValue & v46;
              v50 = &v44[16 * (HashValue & v46)];
              v51 = *v50;
              if (*v50 != -2)
              {
                while (v51 != -1)
                {
                  if (*(v50 + 1))
                  {
                    v52 = v48 + v49;
                    ++v48;
                    v49 = v52 & v46;
                    v50 = &v44[16 * (v52 & v46)];
                    v51 = *v50;
                    if (*v50 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_92;
                }

                goto LABEL_91;
              }
            }

            else
            {
              while (1)
              {
                v50 = &v44[16 * (HashValue & v46)];
                if (*v50 != -2)
                {
                  if (*v50 == -1)
                  {
                    goto LABEL_91;
                  }

                  if (!*(v50 + 1))
                  {
                    break;
                  }
                }

                HashValue = v48 + (HashValue & v46);
                ++v48;
              }
            }

            goto LABEL_92;
          }
        }

        if (!v47)
        {
          v57 = 1;
          v58 = HashValue & v46;
          v50 = &v44[16 * (HashValue & v46)];
          v59 = *v50;
          if (*v50 == -2)
          {
            goto LABEL_84;
          }

          while (1)
          {
            if (v59 == -1)
            {
              goto LABEL_91;
            }

            if (v42 == *(v50 + 1) && !memcmp(v41, v59, v42))
            {
              goto LABEL_92;
            }

            do
            {
LABEL_84:
              v60 = v57 + v58;
              ++v57;
              v58 = v60 & v46;
              v50 = &v44[16 * (v60 & v46)];
              v59 = *v50;
            }

            while (*v50 == -2);
          }
        }

        v53 = 1;
        v54 = HashValue & v46;
        v50 = &v44[16 * (HashValue & v46)];
        v55 = *v50;
        if (*v50 != -2)
        {
          while (v55 != -1)
          {
            if (v42 != *(v50 + 1) || memcmp(v41, v55, v42))
            {
              v56 = v53 + v54;
              ++v53;
              v54 = v56 & v46;
              v50 = &v44[16 * (v56 & v46)];
              v55 = *v50;
              if (*v50 != -2)
              {
                continue;
              }
            }

            goto LABEL_92;
          }

LABEL_91:
          if (v41 != -1)
          {
            goto LABEL_54;
          }
        }

LABEL_92:
        if (v67)
        {
          if (v50 == v70)
          {
            goto LABEL_54;
          }
        }

        else if (v50 == v68 + 16 * v69)
        {
          goto LABEL_54;
        }
      }
    }
  }

LABEL_49:
  result = *v62;
  v37 = *(*v62 + 4);
  if (v37 < *(*v62 + 3))
  {
    *(result + 4) = v37 + 1;
    *v37 = 125;
    goto LABEL_51;
  }

  result = llvm::raw_ostream::write(result, 125);
  if ((v67 & 1) == 0)
  {
LABEL_52:
    llvm::deallocate_buffer(v68, (16 * v69));
  }

  return result;
}

double mlir::AsmPrinter::Impl::printNamedAttribute(llvm::raw_ostream **a1, uint64_t a2, void *a3)
{
  v13 = a2;
  v14 = a3;
  CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(&v13);
  AttrData = mlir::OpaqueAttr::getAttrData(&CompressedBytes);
  printKeywordOrString(AttrData, v5, *a1);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = *a1;
    v8 = *(*a1 + 4);
    if ((*(*a1 + 3) - v8) > 2)
    {
      *(v8 + 2) = 32;
      *v8 = 15648;
      *(v7 + 4) += 3;
      v9 = v14;
      if (v14)
      {
LABEL_4:
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a1, v9, 0);
        }

        return result;
      }
    }

    else
    {
      llvm::raw_ostream::write(v7, " = ", 3uLL);
      v9 = v14;
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v10 = *a1;
    v11 = *(*a1 + 4);
    if ((*(*a1 + 3) - v11) > 0x11)
    {
      *(v11 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v11 = *"<<NULL ATTRIBUTE>>";
      *(v10 + 4) += 18;
    }

    else
    {
      llvm::raw_ostream::write(v10, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

llvm::raw_ostream *printKeywordOrString(char *a1, size_t a2, llvm::raw_ostream *a3)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  v6 = *a1;
  v7 = MEMORY[0x1E69E9830];
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x100uLL))
    {
      goto LABEL_6;
    }

LABEL_7:
    if (a2 == 1)
    {
      v9 = (a3 + 32);
      v8 = *(a3 + 4);
      if (*(a3 + 3) == v8)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v11 = 1;
    while (1)
    {
      v12 = a1[v11];
      if (v12 < 0)
      {
        if (!__maskrune(a1[v11], 0x500uLL))
        {
LABEL_16:
          if (v12 - 36 > 0x3B || ((1 << (v12 - 36)) & 0x800000000000401) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else if ((*(v7 + 4 * v12 + 60) & 0x500) == 0)
      {
        goto LABEL_16;
      }

      if (a2 == ++v11)
      {
        v9 = (a3 + 32);
        v8 = *(a3 + 4);
        if (a2 > *(a3 + 3) - v8)
        {
LABEL_24:

          return llvm::raw_ostream::write(a3, a1, a2);
        }

LABEL_9:
        result = memcpy(v8, a1, a2);
        *v9 += a2;
        return result;
      }
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x100) != 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (*a1 == 95)
  {
    goto LABEL_7;
  }

LABEL_21:
  v14 = *(a3 + 4);
  if (*(a3 + 3) == v14)
  {
    llvm::raw_ostream::write(a3, "", 1uLL);
  }

  else
  {
    *v14 = 34;
    ++*(a3 + 4);
  }

  result = llvm::printEscapedString(a1, a2, a3);
  v15 = *(a3 + 4);
  if (v15 >= *(a3 + 3))
  {

    return llvm::raw_ostream::write(a3, 34);
  }

  else
  {
    *(a3 + 4) = v15 + 1;
    *v15 = 34;
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDialectType(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_1F1A362A8;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_1F19FC358;
  (*(*v4 + 56))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "!", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

void mlir::AsmPrinter::Impl::printHexString(llvm::raw_ostream **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(*a1 + 4);
  if ((*(*a1 + 3) - v6) > 2)
  {
    *(v6 + 2) = 120;
    *v6 = 12322;
    v5[4] += 3;
  }

  else
  {
    v5 = llvm::raw_ostream::write(*a1, "0x", 3uLL);
  }

  llvm::toHex(a2, a3, 0, __p);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = v9[4];
  if (v9[3] != v10)
  {
    *v10 = 34;
    ++v9[4];
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(__p[0]);
    return;
  }

  llvm::raw_ostream::write(v9, "", 1uLL);
  if (v12 < 0)
  {
    goto LABEL_14;
  }
}

void mlir::AsmPrinter::printType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(v2, a2);
    }
  }

  else
  {
    v4 = *v2;
    v5 = *(*v2 + 32);
    if (*(*v2 + 24) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      v4[4] += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double mlir::AsmPrinter::printAttribute(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 0);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 32);
    if ((*(*v2 + 24) - v6) > 0x11)
    {
      *(v6 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v6 = *"<<NULL ATTRIBUTE>>";
      *(v5 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v5, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

uint64_t mlir::AsmPrinter::printAlias(uint64_t a1, uint64_t a2)
{
}

{
  return mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2);
}

double mlir::AsmPrinter::printAttributeWithoutType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 2);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 32);
    if ((*(*v2 + 24) - v6) > 0x11)
    {
      *(v6 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v6 = *"<<NULL ATTRIBUTE>>";
      *(v5 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v5, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printString(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 34);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 34;
  }

  v8 = (*(*a1 + 16))(a1);
  llvm::printEscapedString(a2, a3, v8);
  result = (*(*a1 + 16))(a1);
  v10 = *(result + 4);
  if (v10 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 34);
  }

  else
  {
    *(result + 4) = v10 + 1;
    *v10 = 34;
  }

  return result;
}

double mlir::AsmPrinter::printSymbolName(uint64_t a1, char *a2, size_t a3)
{
  v3 = **(a1 + 8);
  if (a3)
  {
    v4 = *(v3 + 4);
    if (v4 >= *(v3 + 3))
    {
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(**(a1 + 8), 64);
      a2 = v8;
      a3 = v9;
    }

    else
    {
      *(v3 + 4) = v4 + 1;
      *v4 = 64;
    }

    printKeywordOrString(a2, a3, v3);
  }

  else
  {
    v5 = *(v3 + 4);
    if (*(v3 + 3) - v5 > 0x18uLL)
    {
      qmemcpy(v5, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(v3 + 4) += 25;
    }

    else
    {
      v6 = **(a1 + 8);

      llvm::raw_ostream::write(v6, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

uint64_t mlir::AsmPrinter::pushCyclicPrinting(mlir::AsmPrinter *this, const void *a2)
{
  v2 = *(*(this + 1) + 8);
  v7 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>((v2 + 680), &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 712);
    if (v5 >= *(v2 + 716))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 704, (v2 + 720), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 712);
    }

    *(*(v2 + 704) + 8 * v5) = v4;
    ++*(v2 + 712);
  }

  return result;
}

uint64_t mlir::AsmPrinter::popCyclicPrinting(uint64_t this)
{
  v1 = *(*(this + 8) + 8);
  v2 = v1[87].i32[0];
  if (v2)
  {
    v3 = v1[85];
    v4 = v1[89].u32[0];
    v5 = *(*&v1[88] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[86] = vadd_s32(v1[86], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[89].i32[0] = v4 - 1;
  }

  else
  {
    --v1[89].i32[0];
  }

  return this;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineExprInternal(llvm::raw_ostream **a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v47 = a2;
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v47);
  v10 = 0;
  v11 = 1;
  if (Value <= 3)
  {
    if (Value > 1)
    {
      v11 = 0;
      if (Value == 2)
      {
        v10 = " mod ";
      }

      else
      {
        v10 = " floordiv ";
      }
    }

    else if (Value)
    {
      if (Value == 1)
      {
        v11 = 0;
        v10 = " * ";
      }
    }

    else
    {
      v11 = 0;
      v10 = " + ";
    }

    goto LABEL_18;
  }

  if (Value > 5)
  {
    if (Value == 6)
    {
      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, v47);
      Position = mlir::AffineDimExpr::getPosition(&v48);
      if (a4)
      {
        return a4(a5, Position, 0);
      }

      v30 = *a1;
      v31 = *(*a1 + 4);
      if (v31 < *(*a1 + 3))
      {
        *(v30 + 4) = v31 + 1;
        v32 = 100;
LABEL_57:
        *v31 = v32;
        return llvm::raw_ostream::operator<<(v30, Position);
      }

      v40 = 100;
    }

    else
    {
      if (Value != 7)
      {
        goto LABEL_18;
      }

      ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, v47);
      Position = mlir::AffineDimExpr::getPosition(&v48);
      if (a4)
      {
        return a4(a5, Position, 1);
      }

      v30 = *a1;
      v31 = *(*a1 + 4);
      if (v31 < *(*a1 + 3))
      {
        *(v30 + 4) = v31 + 1;
        v32 = 115;
        goto LABEL_57;
      }

      v40 = 115;
    }

    v30 = llvm::raw_ostream::write(v30, v40);
    return llvm::raw_ostream::operator<<(v30, Position);
  }

  if (Value != 4)
  {
    v12 = *a1;
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, v47);
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v48);
    return llvm::raw_ostream::operator<<(v12, LHS);
  }

  v11 = 0;
  v10 = " ceildiv ";
LABEL_18:
  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, v47);
  v46 = v48;
  v16 = mlir::AffineBinaryOpExpr::getLHS(&v46);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v46);
  if (mlir::arith::FastMathFlagsAttr::getValue(&v46))
  {
    if (a3 == 1)
    {
      v18 = *a1;
      v19 = *(*a1 + 4);
      if (v19 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v18, 40);
        v48 = RHS;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v48) == 5)
        {
LABEL_23:
          ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, RHS);
          if (!v48)
          {
            goto LABEL_37;
          }

LABEL_35:
          if (mlir::arith::FastMathFlagsAttr::getValue(&v46) == 1 && mlir::AffineBinaryOpExpr::getLHS(&v48) == -1)
          {
            v28 = *a1;
            v29 = *(*a1 + 4);
            if (*(*a1 + 3) == v29)
            {
              llvm::raw_ostream::write(v28, "-", 1uLL);
            }

            else
            {
              *v29 = 45;
              ++*(v28 + 4);
            }

            v25 = a1;
            v26 = v16;
            goto LABEL_43;
          }

LABEL_37:
          mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 1, a4, a5);
          if ((v11 & 1) == 0)
          {
            v22 = *a1;
            v23 = strlen(v10);
            v24 = *(*a1 + 4);
            if (v23 <= *(*a1 + 3) - v24)
            {
              if (v23)
              {
                memcpy(v24, v10, v23);
                *(v22 + 4) += v23;
              }
            }

            else
            {
              llvm::raw_ostream::write(v22, v10, v23);
            }
          }

          v25 = a1;
          v26 = RHS;
LABEL_43:
          result = mlir::AsmPrinter::Impl::printAffineExprInternal(v25, v26, 1, a4, a5);
          if (a3 != 1)
          {
            return result;
          }

          goto LABEL_85;
        }

LABEL_34:
        ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, 0);
        if (!v48)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      *(v18 + 4) = v19 + 1;
      *v19 = 40;
    }

    v48 = RHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v48) == 5)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (a3 != 1)
  {
LABEL_28:
    v48 = RHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v48) < 5)
    {
      goto LABEL_29;
    }

LABEL_46:
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, 0);
    v45 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  v20 = *a1;
  v21 = *(*a1 + 4);
  if (v21 < *(*a1 + 3))
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 40;
    goto LABEL_28;
  }

  llvm::raw_ostream::write(v20, 40);
  v48 = RHS;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v48) >= 5)
  {
    goto LABEL_46;
  }

LABEL_29:
  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, RHS);
  v45 = v48;
  if (!v48)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (mlir::arith::FastMathFlagsAttr::getValue(&v45) != 1)
  {
    goto LABEL_62;
  }

  v27 = mlir::AffineBinaryOpExpr::getRHS(&v45);
  v48 = v27;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v48) == 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, v27);
    v44 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }
  }

  else
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, 0);
    v44 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }
  }

  if (mlir::AffineBinaryOpExpr::getLHS(&v44) == -1)
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
    llvm::raw_ostream::operator<<(*a1, " - ");
    v48 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    v41 = mlir::arith::FastMathFlagsAttr::getValue(&v48) == 0;
    v42 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    result = mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v42, v41, a4, a5);
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_85;
  }

  if (mlir::AffineBinaryOpExpr::getLHS(&v44) <= -2)
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
    llvm::raw_ostream::operator<<(*a1, " - ");
    v33 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v33, 1, a4, a5);
    v34 = llvm::raw_ostream::operator<<(*a1, " * ");
    v35 = &v44;
    goto LABEL_76;
  }

LABEL_62:
  v48 = RHS;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v48) != 5)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, 0);
    v45 = v48;
    if (!v48)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v48, RHS);
  v45 = v48;
  if (v48)
  {
LABEL_66:
    if ((mlir::AffineBinaryOpExpr::getLHS(&v45) & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
    v34 = *a1;
    v38 = *(*a1 + 4);
    if ((*(*a1 + 3) - v38) > 2)
    {
      *(v38 + 2) = 32;
      *v38 = 11552;
      *(v34 + 4) += 3;
    }

    else
    {
      v34 = llvm::raw_ostream::write(*a1, " - ", 3uLL);
    }

    v35 = &v45;
LABEL_76:
    v39 = mlir::AffineBinaryOpExpr::getLHS(v35);
    result = llvm::raw_ostream::operator<<(v34, -v39);
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_85;
  }

LABEL_67:
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
  v36 = *a1;
  v37 = *(*a1 + 4);
  if ((*(*a1 + 3) - v37) > 2)
  {
    *(v37 + 2) = 32;
    *v37 = 11040;
    *(v36 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v36, " + ", 3uLL);
  }

  result = mlir::AsmPrinter::Impl::printAffineExprInternal(a1, RHS, 0, a4, a5);
  if (a3 == 1)
  {
LABEL_85:
    result = *a1;
    v43 = *(*a1 + 4);
    if (v43 >= *(*a1 + 3))
    {
      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v43 + 1;
      *v43 = 41;
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineMap(llvm::raw_ostream **a1, uint64_t a2)
{
  v45 = a2;
  v3 = *a1;
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, 40);
    if (mlir::AffineMap::getNumDims(&v45) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  *(v3 + 4) = v4 + 1;
  *v4 = 40;
  if (mlir::AffineMap::getNumDims(&v45) >= 2)
  {
LABEL_5:
    v5 = 0;
    while (1)
    {
      v6 = *a1;
      v7 = *(*a1 + 4);
      if (v7 >= *(*a1 + 3))
      {
        v10 = llvm::raw_ostream::write(v6, 100);
        v8 = llvm::raw_ostream::operator<<(v10, v5);
        v9 = *(v8 + 4);
        if (*(v8 + 3) - v9 > 1uLL)
        {
          goto LABEL_6;
        }

LABEL_11:
        llvm::raw_ostream::write(v8, ", ", 2uLL);
        if (++v5 >= (mlir::AffineMap::getNumDims(&v45) - 1))
        {
          break;
        }
      }

      else
      {
        *(v6 + 4) = v7 + 1;
        *v7 = 100;
        v8 = llvm::raw_ostream::operator<<(v6, v5);
        v9 = *(v8 + 4);
        if (*(v8 + 3) - v9 <= 1uLL)
        {
          goto LABEL_11;
        }

LABEL_6:
        *v9 = 8236;
        *(v8 + 4) += 2;
        if (++v5 >= (mlir::AffineMap::getNumDims(&v45) - 1))
        {
          break;
        }
      }
    }
  }

LABEL_12:
  if (mlir::AffineMap::getNumDims(&v45))
  {
    v11 = *a1;
    v12 = *(*a1 + 4);
    if (v12 >= *(*a1 + 3))
    {
      v11 = llvm::raw_ostream::write(*a1, 100);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 100;
    }

    NumDims = mlir::AffineMap::getNumDims(&v45);
    llvm::raw_ostream::operator<<(v11, (NumDims - 1));
  }

  v14 = *a1;
  v15 = *(*a1 + 4);
  if (v15 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v14, 41);
    if (!mlir::AffineMap::getNumSymbols(&v45))
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 41;
    if (!mlir::AffineMap::getNumSymbols(&v45))
    {
LABEL_39:
      v29 = *a1;
      v30 = *(*a1 + 4);
      if ((*(*a1 + 3) - v30) <= 4)
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  v16 = *a1;
  v17 = *(*a1 + 4);
  if (v17 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v16, 91);
    if (mlir::AffineMap::getNumSymbols(&v45) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  *(v16 + 4) = v17 + 1;
  *v17 = 91;
  if (mlir::AffineMap::getNumSymbols(&v45) != 1)
  {
LABEL_25:
    v18 = 0;
    while (1)
    {
      v19 = *a1;
      v20 = *(*a1 + 4);
      if (v20 >= *(*a1 + 3))
      {
        v23 = llvm::raw_ostream::write(v19, 115);
        v21 = llvm::raw_ostream::operator<<(v23, v18);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 > 1uLL)
        {
          goto LABEL_26;
        }

LABEL_31:
        llvm::raw_ostream::write(v21, ", ", 2uLL);
        if (++v18 >= mlir::AffineMap::getNumSymbols(&v45) - 1)
        {
          break;
        }
      }

      else
      {
        *(v19 + 4) = v20 + 1;
        *v20 = 115;
        v21 = llvm::raw_ostream::operator<<(v19, v18);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 <= 1uLL)
        {
          goto LABEL_31;
        }

LABEL_26:
        *v22 = 8236;
        *(v21 + 4) += 2;
        if (++v18 >= mlir::AffineMap::getNumSymbols(&v45) - 1)
        {
          break;
        }
      }
    }
  }

LABEL_32:
  if (mlir::AffineMap::getNumSymbols(&v45))
  {
    v24 = *a1;
    v25 = *(*a1 + 4);
    if (v25 >= *(*a1 + 3))
    {
      v24 = llvm::raw_ostream::write(*a1, 115);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 115;
    }

    NumSymbols = mlir::AffineMap::getNumSymbols(&v45);
    llvm::raw_ostream::operator<<(v24, (NumSymbols - 1));
  }

  v27 = *a1;
  v28 = *(*a1 + 4);
  if (v28 < *(*a1 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 93;
    goto LABEL_39;
  }

  llvm::raw_ostream::write(v27, 93);
  v29 = *a1;
  v30 = *(*a1 + 4);
  if ((*(*a1 + 3) - v30) <= 4)
  {
LABEL_40:
    llvm::raw_ostream::write(v29, " -> (", 5uLL);
    Results = mlir::AffineMap::getResults(&v45);
    if (!v32)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v30 + 4) = 40;
  *v30 = 540945696;
  *(v29 + 4) += 5;
  Results = mlir::AffineMap::getResults(&v45);
  if (!v32)
  {
    goto LABEL_45;
  }

LABEL_44:
  v34 = Results;
  v35 = v32;
  v36 = *a1;
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, *Results, 0, 0, v33);
  if (v35 != 1)
  {
    v40 = 8 * v35;
    v41 = v34 + 1;
    v42 = v40 - 8;
    do
    {
      v44 = *(v36 + 4);
      if (*(v36 + 3) - v44 > 1uLL)
      {
        *v44 = 8236;
        *(v36 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v36, ", ", 2uLL);
      }

      v43 = *v41++;
      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v43, 0, 0, v37);
      v42 -= 8;
    }

    while (v42);
  }

LABEL_45:
  result = *a1;
  v39 = *(*a1 + 4);
  if (v39 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 41);
  }

  *(result + 4) = v39 + 1;
  *v39 = 41;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printIntegerSet(llvm::raw_ostream **a1, uint64_t a2)
{
  v60 = a2;
  v3 = *a1;
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, 40);
    if (mlir::AffineMap::getNumDims(&v60) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  *(v3 + 4) = v4 + 1;
  *v4 = 40;
  if (mlir::AffineMap::getNumDims(&v60) >= 2)
  {
LABEL_5:
    v5 = 0;
    while (1)
    {
      v8 = *a1;
      v9 = *(*a1 + 4);
      if (v9 >= *(*a1 + 3))
      {
        v12 = llvm::raw_ostream::write(v8, 100);
        v10 = llvm::raw_ostream::operator<<(v12, v5);
        v11 = *(v10 + 4);
        if (*(v10 + 3) - v11 > 1uLL)
        {
          goto LABEL_6;
        }

LABEL_11:
        llvm::raw_ostream::write(v10, ", ", 2uLL);
        NumDims = mlir::AffineMap::getNumDims(&v60);
        v14 = v5 + 2;
        ++v5;
        if (v14 >= NumDims)
        {
          break;
        }
      }

      else
      {
        *(v8 + 4) = v9 + 1;
        *v9 = 100;
        v10 = llvm::raw_ostream::operator<<(v8, v5);
        v11 = *(v10 + 4);
        if (*(v10 + 3) - v11 <= 1uLL)
        {
          goto LABEL_11;
        }

LABEL_6:
        *v11 = 8236;
        *(v10 + 4) += 2;
        v6 = mlir::AffineMap::getNumDims(&v60);
        v7 = v5 + 2;
        ++v5;
        if (v7 >= v6)
        {
          break;
        }
      }
    }
  }

LABEL_12:
  if (mlir::AffineMap::getNumDims(&v60))
  {
    v15 = *a1;
    v16 = *(*a1 + 4);
    if (v16 >= *(*a1 + 3))
    {
      v15 = llvm::raw_ostream::write(*a1, 100);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 100;
    }

    v17 = mlir::AffineMap::getNumDims(&v60);
    llvm::raw_ostream::operator<<(v15, (v17 - 1));
  }

  v18 = *a1;
  v19 = *(*a1 + 4);
  if (v19 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v18, 41);
    if (!mlir::AffineMap::getNumSymbols(&v60))
    {
LABEL_19:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if (*(*a1 + 3) - v21 <= 3uLL)
      {
        goto LABEL_20;
      }

LABEL_43:
      *v21 = 673200672;
      *(v20 + 4) += 4;
      Position = mlir::AffineDimExpr::getPosition(&v60);
      v23 = Position - 1;
      if (Position <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 41;
    if (!mlir::AffineMap::getNumSymbols(&v60))
    {
      goto LABEL_19;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 4);
  if (v25 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v24, 91);
    if (mlir::AffineMap::getNumSymbols(&v60) == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  *(v24 + 4) = v25 + 1;
  *v25 = 91;
  if (mlir::AffineMap::getNumSymbols(&v60) != 1)
  {
LABEL_27:
    v26 = 0;
    while (1)
    {
      v27 = *a1;
      v28 = *(*a1 + 4);
      if (v28 >= *(*a1 + 3))
      {
        v31 = llvm::raw_ostream::write(v27, 115);
        v29 = llvm::raw_ostream::operator<<(v31, v26);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 > 1uLL)
        {
          goto LABEL_28;
        }

LABEL_33:
        llvm::raw_ostream::write(v29, ", ", 2uLL);
        if (++v26 >= mlir::AffineMap::getNumSymbols(&v60) - 1)
        {
          break;
        }
      }

      else
      {
        *(v27 + 4) = v28 + 1;
        *v28 = 115;
        v29 = llvm::raw_ostream::operator<<(v27, v26);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 <= 1uLL)
        {
          goto LABEL_33;
        }

LABEL_28:
        *v30 = 8236;
        *(v29 + 4) += 2;
        if (++v26 >= mlir::AffineMap::getNumSymbols(&v60) - 1)
        {
          break;
        }
      }
    }
  }

LABEL_34:
  if (mlir::AffineMap::getNumSymbols(&v60))
  {
    v32 = *a1;
    v33 = *(*a1 + 4);
    if (v33 >= *(*a1 + 3))
    {
      v32 = llvm::raw_ostream::write(*a1, 115);
    }

    else
    {
      *(v32 + 4) = v33 + 1;
      *v33 = 115;
    }

    NumSymbols = mlir::AffineMap::getNumSymbols(&v60);
    llvm::raw_ostream::operator<<(v32, (NumSymbols - 1));
  }

  v35 = *a1;
  v36 = *(*a1 + 4);
  if (v36 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v35, 93);
    v20 = *a1;
    v21 = *(*a1 + 4);
    if (*(*a1 + 3) - v21 > 3uLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 93;
    v20 = *a1;
    v21 = *(*a1 + 4);
    if (*(*a1 + 3) - v21 > 3uLL)
    {
      goto LABEL_43;
    }
  }

LABEL_20:
  llvm::raw_ostream::write(v20, " : (", 4uLL);
  Position = mlir::AffineDimExpr::getPosition(&v60);
  v23 = Position - 1;
  if (Position > 1)
  {
LABEL_44:
    for (i = 0; v23 != i; ++i)
    {
      while (1)
      {
        Constraint = mlir::IntegerSet::getConstraint(&v60, i);
        isEq = mlir::IntegerSet::isEq(&v60, i);
        mlir::AsmPrinter::Impl::printAffineExprInternal(a1, Constraint, 0, 0, v40);
        v41 = *a1;
        v42 = *(*a1 + 4);
        v43 = *(*a1 + 3) - v42;
        if (!isEq)
        {
          break;
        }

        if (v43 <= 4)
        {
          v44 = " == 0";
          goto LABEL_51;
        }

        *(v42 + 4) = 48;
        v47 = 15648;
LABEL_55:
        *v42 = v47 | 0x203D0000;
        *(v41 + 4) += 5;
        v45 = *a1;
        v46 = *(*a1 + 4);
        if (*(*a1 + 3) - v46 > 1uLL)
        {
          goto LABEL_45;
        }

LABEL_56:
        llvm::raw_ostream::write(v45, ", ", 2uLL);
        if (v23 == ++i)
        {
          goto LABEL_57;
        }
      }

      if (v43 > 4)
      {
        *(v42 + 4) = 48;
        v47 = 15904;
        goto LABEL_55;
      }

      v44 = " >= 0";
LABEL_51:
      llvm::raw_ostream::write(v41, v44, 5uLL);
      v45 = *a1;
      v46 = *(*a1 + 4);
      if (*(*a1 + 3) - v46 <= 1uLL)
      {
        goto LABEL_56;
      }

LABEL_45:
      *v46 = 8236;
      *(v45 + 4) += 2;
    }
  }

LABEL_57:
  v48 = __OFSUB__(Position, 1);
  v49 = Position - 1;
  if (v49 < 0 != v48)
  {
    goto LABEL_64;
  }

  v50 = mlir::IntegerSet::getConstraint(&v60, v49);
  v51 = mlir::IntegerSet::isEq(&v60, v49);
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v50, 0, 0, v52);
  v53 = *a1;
  v54 = *(*a1 + 4);
  v55 = *(*a1 + 3) - v54;
  if (!v51)
  {
    if (v55 <= 4)
    {
      v56 = " >= 0";
      goto LABEL_63;
    }

    *(v54 + 4) = 48;
    v59 = 15904;
LABEL_68:
    *v54 = v59 | 0x203D0000;
    *(v53 + 4) += 5;
    result = *a1;
    v58 = *(*a1 + 4);
    if (v58 < *(*a1 + 3))
    {
      goto LABEL_65;
    }

    return llvm::raw_ostream::write(result, 41);
  }

  if (v55 > 4)
  {
    *(v54 + 4) = 48;
    v59 = 15648;
    goto LABEL_68;
  }

  v56 = " == 0";
LABEL_63:
  llvm::raw_ostream::write(v53, v56, 5uLL);
LABEL_64:
  result = *a1;
  v58 = *(*a1 + 4);
  if (v58 < *(*a1 + 3))
  {
LABEL_65:
    *(result + 4) = v58 + 1;
    *v58 = 41;
    return result;
  }

  return llvm::raw_ostream::write(result, 41);
}

double mlir::Attribute::print(mlir::Attribute *this, llvm::raw_ostream *a2, int a3)
{
  if (*this)
  {
    mlir::Attribute::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v5);
    operator new();
  }

  v3 = *(a2 + 4);
  if ((*(a2 + 3) - v3) > 0x11)
  {
    *(v3 + 16) = 15934;
    result = *"<<NULL ATTRIBUTE>>";
    *v3 = *"<<NULL ATTRIBUTE>>";
    *(a2 + 4) += 18;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
  }

  return result;
}

mlir::Attribute *mlir::Type::print(mlir::Attribute *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    mlir::Attribute::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v3);
    operator new();
  }

  v2 = *(a2 + 4);
  if (*(a2 + 3) - v2 > 0xCuLL)
  {
    qmemcpy(v2, "<<NULL TYPE>>", 13);
    *(a2 + 4) += 13;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
  }

  return this;
}

llvm::raw_ostream *mlir::Type::dump(mlir::Type *this)
{
  v2 = llvm::errs(this);
  v3 = mlir::Type::print(this, v2);
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

mlir::Value *mlir::Value::print(mlir::Value *this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = a2;
  if (*this)
  {
    v5 = this;
    DefiningOp = mlir::Value::getDefiningOp(this);
    if (DefiningOp)
    {
      Parent = findParent(DefiningOp, (*(a3 + 40) & 0x20) != 0);
      mlir::AsmState::AsmState(&v12, Parent, a3, 0, 0);
    }

    v9 = *v5;
    v10 = *(v3 + 4);
    if (*(v3 + 3) - v10 > 0x19uLL)
    {
      qmemcpy(v10, "<block argument> of type '", 26);
      *(v3 + 4) += 26;
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, "<block argument> of type '", 0x1AuLL);
    }

    v12 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    mlir::Type::print(&v12, v3);
    v11 = *(v3 + 4);
    if ((*(v3 + 3) - v11) > 0xB)
    {
      *(v11 + 8) = 540702821;
      *v11 = *"' at index: ";
      *(v3 + 4) += 12;
    }

    else
    {
      v3 = llvm::raw_ostream::write(v3, "' at index: ", 0xCuLL);
    }

    return llvm::raw_ostream::operator<<(v3, *(v9 + 24));
  }

  else
  {
    v8 = *(a2 + 4);
    if (*(a2 + 3) - v8 > 0xDuLL)
    {
      qmemcpy(v8, "<<NULL VALUE>>", 14);
      *(a2 + 4) += 14;
    }

    else
    {

      return llvm::raw_ostream::write(a2, "<<NULL VALUE>>", 0xEuLL);
    }
  }

  return this;
}

void mlir::Operation::print(mlir::Operation *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v7[0] = a2;
  v7[1] = v4;
  v5 = *(v4 + 640);
  v8 = *(v4 + 624);
  v9 = v5;
  v10 = *(v4 + 656);
  v11 = 1;
  v6[0] = &unk_1F19FC430;
  v6[1] = v7;
  v14[0] = "builtin";
  v14[1] = 7;
  v12 = v14;
  v13 = 0x300000001;
  v15 = 0;
  if (!*(this + 2) && (*(v4 + 664) & 0x20) == 0)
  {
    mlir::detail::AsmStateImpl::initializeAliases(v4, this);
  }

  v6[0] = &unk_1F19FC430;
  if (v12 != v14)
  {
    free(v12);
  }
}

llvm::raw_ostream *anonymous namespace::SSANameState::printValueID(llvm::raw_ostream *result, unint64_t a2, int a3, llvm::raw_ostream *a4)
{
  v4 = a4;
  if (!a2)
  {
    v11 = *(a4 + 4);
    if (*(a4 + 3) - v11 <= 0xDuLL)
    {
      v12 = "<<NULL VALUE>>";
      v13 = a4;
      v14 = 14;
LABEL_25:

      return llvm::raw_ostream::write(v13, v12, v14);
    }

    qmemcpy(v11, "<<NULL VALUE>>", 14);
    v17 = *(a4 + 4) + 14;
LABEL_29:
    *(v4 + 4) = v17;
    return result;
  }

  v6 = result;
  v7 = *(a2 + 8) & 7;
  if (v7 == 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (v7 != 7)
  {
    v15 = a2;
    result = mlir::detail::OpResultImpl::getOwner(v8);
    v16 = *(result + 9);
    if (v16 == 1)
    {
      v9 = 0;
      v10 = 0;
      a2 = v15;
      goto LABEL_20;
    }

    v18 = *(v8 + 8);
    if ((v18 & 7) == 6)
    {
      v9 = *(v8 + 16) + 6;
      v19 = *(v6 + 22);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = v18 & 7;
      v19 = *(v6 + 22);
      if (!v19)
      {
LABEL_19:
        a2 = result - 16;
        v10 = 1;
        goto LABEL_20;
      }
    }

    v20 = *(v6 + 9);
    v21 = (v19 - 1) & ((result >> 4) ^ (result >> 9));
    v22 = *(v20 + 32 * v21);
    if (v22 == result)
    {
LABEL_18:
      if (v21 != v19)
      {
        v41 = v20 + 32 * v21;
        v42 = *(v41 + 8);
        v43 = *(v41 + 16);
        if (v43)
        {
          v44 = v43;
          v45 = v42;
          do
          {
            v46 = v44 >> 1;
            v47 = &v45[v44 >> 1];
            v49 = *v47;
            v48 = v47 + 1;
            v44 += ~(v44 >> 1);
            if (v9 < v49)
            {
              v44 = v46;
            }

            else
            {
              v45 = v48;
            }
          }

          while (v44);
        }

        else
        {
          v45 = v42;
        }

        v54 = &v42[v43];
        v55 = *(v45 - 1);
        if (v45 != v54)
        {
          v16 = *v45;
        }

        v56 = v16 - v55;
        v10 = v56 != 1;
        if (v56 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 -= v55;
        }

        if (v55 > 5)
        {
          a2 = result - 24 * (v55 - 5) - 96;
        }

        else
        {
          a2 = result - 16 * v55 - 16;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & (v19 - 1);
        v22 = *(v20 + 32 * v21);
        if (v22 == result)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
LABEL_20:
  v23 = *(v6 + 4);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = *v6;
  v25 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v26 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v25 >> 47) ^ v25);
  v27 = -348639895 * ((v26 >> 47) ^ v26);
  v28 = v27 & (v23 - 1);
  v29 = *(*v6 + 16 * v28);
  if (a2 != v29)
  {
    v57 = 1;
    while (v29 != -4096)
    {
      v58 = v28 + v57++;
      v28 = v58 & (v23 - 1);
      v29 = *(v24 + 16 * v28);
      if (a2 == v29)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  if (v28 == v23)
  {
LABEL_23:
    v30 = *(v4 + 4);
    if (*(v4 + 3) - v30 <= 0x14uLL)
    {
      v12 = "<<UNKNOWN SSA VALUE>>";
      v13 = v4;
      v14 = 21;
      goto LABEL_25;
    }

    qmemcpy(v30, "<<UNKNOWN SSA VALUE>>", 21);
    v17 = *(v4 + 4) + 21;
    goto LABEL_29;
  }

  v31 = *(v4 + 4);
  if (v31 >= *(v4 + 3))
  {
    v33 = a2;
    llvm::raw_ostream::write(v4, 37);
    a2 = v33;
    v32 = *(v24 + 16 * v28 + 8);
    if (v32 != -1)
    {
      goto LABEL_33;
    }

LABEL_35:
    v34 = *(v6 + 3);
    v35 = *(v6 + 10);
    if (v35)
    {
      v36 = (v35 - 1) & v27;
      v37 = (v34 + 24 * v36);
      v38 = *v37;
      if (a2 == *v37)
      {
        goto LABEL_49;
      }

      v39 = 1;
      while (v38 != -4096)
      {
        v40 = v36 + v39++;
        v36 = v40 & (v35 - 1);
        v37 = (v34 + 24 * v36);
        v38 = *v37;
        if (a2 == *v37)
        {
          goto LABEL_49;
        }
      }
    }

    v37 = (v34 + 24 * v35);
LABEL_49:
    v50 = v37[1];
    v51 = v37[2];
    result = *(v4 + 4);
    if (v51 <= *(v4 + 3) - result)
    {
      if (v51)
      {
        v52 = v37[2];
        result = memcpy(result, v50, v51);
        *(v4 + 4) += v52;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(v4, v50, v51);
    }

    goto LABEL_53;
  }

  *(v4 + 4) = v31 + 1;
  *v31 = 37;
  v32 = *(v24 + 16 * v28 + 8);
  if (v32 == -1)
  {
    goto LABEL_35;
  }

LABEL_33:
  result = llvm::raw_ostream::operator<<(v4, v32);
LABEL_53:
  if ((v10 & a3) == 1)
  {
    v53 = *(v4 + 4);
    if (v53 >= *(v4 + 3))
    {
      v4 = llvm::raw_ostream::write(v4, 35);
    }

    else
    {
      *(v4 + 4) = v53 + 1;
      *v53 = 35;
    }

    return llvm::raw_ostream::operator<<(v4, v9);
  }

  return result;
}

mlir::Block **findParent(mlir::Block **ParentOp, char a2)
{
  if (a2)
  {
    do
    {
      v2 = ParentOp;
      {
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
      }

      if ((*(*v2[6] + 32))(v2[6], mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v3 = v2[2];
      if (!v3)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v3);
    }

    while (ParentOp);
  }

  else
  {
    do
    {
      v2 = ParentOp;
      v4 = ParentOp[2];
      if (!v4)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v4);
    }

    while (ParentOp);
  }

  return v2;
}

void mlir::detail::AsmStateImpl::initializeAliases(mlir::detail::AsmStateImpl *this, mlir::Operation *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = this + 624;
  v96[0] = this;
  v96[1] = this + 184;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = &v102;
  v101 = 0;
  v102 = v104;
  v103 = xmmword_1A75A2980;
  v106 = 2;
  v110 = 0;
  v111 = 1;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v105 = &unk_1F1A36338;
  v112 = &v102;
  llvm::raw_ostream::SetBufferAndMode(&v105, 0, 0, 0);
  v74[0] = &unk_1F19FC588;
  v74[1] = 0;
  v75 = v4;
  v76 = v96;
  v78 = 0;
  v82 = 0;
  v83 = 1;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v77 = &unk_1F1A363F8;
  v5 = *(this + 664);
  if (v5)
  {
    v5 = v75[40];
  }

  if ((v5 & 4) != 0)
  {
    (*(v74[0] + 216))(v74, a2, 1);
    v6 = v98;
    if (!v98)
    {
      goto LABEL_33;
    }
  }

  else
  {
    (*(**(a2 + 6) + 56))(*(a2 + 6), a2, v74, "", 0);
    v6 = v98;
    if (!v98)
    {
      goto LABEL_33;
    }
  }

  v7 = v99;
  if (v99 > 4 * v6 && v99 >= 0x41)
  {
    if (!v6 || ((v8 = 1 << (33 - __clz(v6 - 1)), v8 <= 64) ? (v9 = 64) : (v9 = v8), v9 != v99))
    {
      llvm::deallocate_buffer(v97, (16 * v99));
    }

    v98 = 0;
    v10 = v97;
    v11 = (v99 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = v11 + 1;
      v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v14 = (v97 + 16 * v13);
      v15 = (v97 + 16);
      v16 = v13;
      do
      {
        *(v15 - 2) = -4096;
        *v15 = -4096;
        v15 += 4;
        v16 -= 2;
      }

      while (v16);
      if (v12 == v13)
      {
LABEL_33:
        v90 = &v92;
        v91 = 0;
        v26 = v101;
        if (v101)
        {
          v27 = v100;
          if (v100 != &v102)
          {
            v90 = v100;
            v91 = v101;
            v100 = &v102;
            HIDWORD(v101) = 0;
LABEL_36:
            LODWORD(v101) = 0;
            v28 = &v27[13 * v26];
LABEL_37:
            v29 = MEMORY[0x1E69E5398];
            v30 = v26;
            while (1)
            {
              v31 = operator new(104 * v30, v29);
              if (v31)
              {
                break;
              }

              v32 = v30 >> 1;
              v33 = v30 > 1;
              v30 >>= 1;
              if (!v33)
              {
                goto LABEL_42;
              }
            }

            v37 = v31;
            operator delete(v37);
            v87 = 0;
            v88 = 0;
            v89 = 0x1000000000;
            v36 = v91;
            if (!v91)
            {
LABEL_61:
              free(v87);
              v52 = v90;
              if (v91)
              {
                v53 = (v90 + 104 * v91 - 64);
                v54 = -104 * v91;
                do
                {
                  if (v53 + 2 != *v53)
                  {
                    free(*v53);
                  }

                  v53 -= 13;
                  v54 += 104;
                }

                while (v54);
                v52 = v90;
              }

              if (v52 != &v92)
              {
                free(v52);
              }

              v74[0] = &unk_1F19FC588;
              llvm::raw_null_ostream::~raw_null_ostream(&v77);
              llvm::raw_ostream::~raw_ostream(&v105);
              if (v102 != v104)
              {
                free(v102);
              }

              v55 = v100;
              if (v101)
              {
                v56 = (v100 + 104 * v101 - 64);
                v57 = -104 * v101;
                do
                {
                  if (v56 + 2 != *v56)
                  {
                    free(*v56);
                  }

                  v56 -= 13;
                  v57 += 104;
                }

                while (v57);
                v55 = v100;
              }

              if (v55 != &v102)
              {
                free(v55);
              }

              llvm::deallocate_buffer(v97, (16 * v99));
            }

LABEL_45:
            v38 = v90 + 16;
            v39 = 104 * v36;
            do
            {
              if (v38[8] == 1)
              {
                v41 = *(v38 - 1);
                v42 = *v38;
                v43 = llvm::StringMapImpl::hash(v41, *v38, v34, v35);
                v44 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>(&v87, v41, v42, v43);
                v45 = *(*v44 + 8);
                *(*v44 + 8) = v45 + 1;
                v46 = *(v38 + 4) & 0xC0000000 | v45 & 0x3FFFFFFF;
                v47 = *(v38 - 2);
                v84 = v47;
                *&v85 = v41;
                *(&v85 + 1) = v42;
                LODWORD(v86) = v46;
                BYTE4(v86) = 0;
                v92 = v47;
                v93 = 0;
                llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>,void const*,unsigned int,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned int>>::try_emplace<unsigned int>(this + 18, &v92, &v93, &v94);
                if (v95 == 1)
                {
                  v48 = *(this + 44);
                  *(v94 + 8) = v48;
                  if (v48 < *(this + 45))
                  {
                    v40 = *(this + 21) + 32 * v48;
                    *v40 = v47;
                    *(v40 + 8) = v85;
                    *(v40 + 24) = v86;
                    ++*(this + 44);
                  }

                  else
                  {
                  }
                }
              }

              v38 += 104;
              v39 -= 104;
            }

            while (v39);
            if (HIDWORD(v88) && v88)
            {
              v49 = 0;
              do
              {
                v50 = *(v87 + v49);
                if (v50 != -8 && v50 != 0)
                {
                  llvm::deallocate_buffer(v50, (*v50 + 17));
                }

                v49 += 8;
              }

              while (8 * v88 != v49);
            }

            goto LABEL_61;
          }

          v84 = 0;
          v27 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v90, &v92, v101, 104, &v84);
          v58 = v90;
          if (v91)
          {
            v59 = v90 + 104 * v91;
            v60 = v27 + 5;
            v61 = v90 + 40;
            do
            {
              v62 = v61 - 40;
              *(v60 - 5) = *(v61 - 5);
              v63 = *(v61 - 2);
              *(v60 - 20) = *(v61 - 20);
              *(v60 - 2) = v63;
              *v60 = v60 + 2;
              v60[1] = 0x600000000;
              if (*(v61 + 2))
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v60, v61);
              }

              v60 += 13;
              v61 += 104;
            }

            while (v62 + 104 != v59);
            v58 = v90;
            if (v91)
            {
              v64 = (v90 + 104 * v91 - 64);
              v65 = -104 * v91;
              do
              {
                if (v64 + 2 != *v64)
                {
                  free(*v64);
                }

                v64 -= 13;
                v65 += 104;
              }

              while (v65);
              v58 = v90;
            }
          }

          v66 = v84;
          if (v58 != &v92)
          {
            free(v58);
          }

          v90 = v27;
          HIDWORD(v91) = v66;
          if (!v101)
          {
            LODWORD(v91) = v26;
            goto LABEL_36;
          }

          v67 = v100 + 104 * v101;
          v68 = v27 + 5;
          v69 = v100 + 40;
          do
          {
            v70 = v69 - 40;
            *(v68 - 5) = *(v69 - 5);
            v71 = *(v69 - 2);
            *(v68 - 20) = *(v69 - 20);
            *(v68 - 2) = v71;
            *v68 = v68 + 2;
            v68[1] = 0x600000000;
            if (*(v69 + 2))
            {
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v68, v69);
            }

            v68 += 13;
            v69 += 104;
          }

          while (v70 + 104 != v67);
          LODWORD(v91) = v26;
          if (!v101)
          {
            v27 = v90;
            goto LABEL_36;
          }

          v72 = (v100 + 104 * v101 - 64);
          v73 = -104 * v101;
          do
          {
            if (v72 + 2 != *v72)
            {
              free(*v72);
            }

            v72 -= 13;
            v73 += 104;
          }

          while (v73);
          v26 = v91;
          LODWORD(v101) = 0;
          v27 = v90;
          v28 = (v90 + 104 * v91);
          if (v91)
          {
            goto LABEL_37;
          }

          v26 = 0;
          v32 = 0;
        }

        else
        {
          v26 = 0;
          v32 = 0;
          v28 = &v92;
          v27 = &v92;
        }

LABEL_42:
        v87 = 0;
        v88 = 0;
        v89 = 0x1000000000;
        v36 = v91;
        if (!v91)
        {
          goto LABEL_61;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v14 = v97;
    }

    v25 = (v10 + 16 * v7);
    do
    {
      *v14 = -4096;
      v14 = (v14 + 16);
    }

    while (v14 != v25);
    goto LABEL_33;
  }

  if (v99)
  {
    v17 = v97;
    v18 = (v99 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v18)
    {
      v19 = v18 + 1;
      v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v21 = (v97 + 16 * v20);
      v22 = (v97 + 16);
      v23 = v20;
      do
      {
        *(v22 - 2) = -4096;
        *v22 = -4096;
        v22 += 4;
        v23 -= 2;
      }

      while (v23);
      if (v19 == v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = v97;
    }

    v24 = (v17 + 16 * v7);
    do
    {
      *v21 = -4096;
      v21 = (v21 + 16);
    }

    while (v21 != v24);
  }

LABEL_29:
  v98 = 0;
  goto LABEL_33;
}

void anonymous namespace::OperationPrinter::~OperationPrinter(_anonymous_namespace_::OperationPrinter *this)
{
  *this = &unk_1F19FC430;
  v1 = *(this + 11);
  if (v1 != this + 104)
  {
    free(v1);
  }
}

{
  *this = &unk_1F19FC430;
  v2 = *(this + 11);
  if (v2 != this + 104)
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::Operation::dump(mlir::Operation *this)
{
  llvm::errs(this);
  mlir::OpPrintingFlags::OpPrintingFlags(v3);
  v4 |= 0x20u;
  Parent = findParent(this, 1);
  mlir::AsmState::AsmState(&v5, Parent, v3, 0, 0);
}

ZinIrHalH13g *anonymous namespace::OperationPrinter::print(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2, int a3, char a4)
{
  v122[12] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
LABEL_96:
    *(this + 38) += 2;
    if ((*(this + 72) & 0x40) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_97;
  }

  llvm::raw_ostream::indent(*(this + 2), *(this + 38));
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(v7 + 392);
  if (v8)
  {
    v9 = *(v7 + 376);
    v10 = (v8 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v11 = *(v9 + 32 * v10);
    if (v11 == a2)
    {
LABEL_4:
      if (v10 != v8)
      {
        v16 = v9 + 32 * v10;
        v14 = *(v16 + 16);
        v15 = *(v16 + 24);
        v13 = v6 + 4;
        v12 = v6[4];
        if (v15 <= v6[3] - v12)
        {
          if (!v15)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_8:
        llvm::raw_ostream::write(v6, v14, v15);
        goto LABEL_11;
      }
    }

    else
    {
      v108 = 1;
      while (v11 != -4096)
      {
        v109 = v10 + v108++;
        v10 = v109 & (v8 - 1);
        v11 = *(v9 + 32 * v10);
        if (v11 == a2)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v13 = v6 + 4;
  v12 = v6[4];
  v14 = "INVALIDBLOCK";
  v15 = 12;
  if (v6[3] - v12 <= 0xBuLL)
  {
    goto LABEL_8;
  }

LABEL_10:
  memcpy(v12, v14, v15);
  *v13 += v15;
LABEL_11:
  if (*(a2 + 6) == *(a2 + 7))
  {
    goto LABEL_23;
  }

  v17 = *(this + 2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 40);
    v20 = *(a2 + 6);
    v19 = *(a2 + 7);
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 40;
    v20 = *(a2 + 6);
    v19 = *(a2 + 7);
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  v22 = *(this + 2);
  if (v21 != 8)
  {
    v23 = v20 + 1;
    do
    {
      while (1)
      {
        v25 = v22[4];
        if (v22[3] - v25 <= 1uLL)
        {
          break;
        }

        *v25 = 8236;
        v22[4] += 2;
        v24 = *v23++;
        if (v23 == v19)
        {
          goto LABEL_21;
        }
      }

      llvm::raw_ostream::write(v22, ", ", 2uLL);
      v26 = *v23++;
    }

    while (v23 != v19);
  }

LABEL_21:
  v27 = *(this + 2);
  v28 = *(v27 + 4);
  if (v28 < *(v27 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 41;
LABEL_23:
    v29 = *(this + 2);
    v30 = *(v29 + 4);
    if (v30 < *(v29 + 3))
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  llvm::raw_ostream::write(v27, 41);
  v29 = *(this + 2);
  v30 = *(v29 + 4);
  if (v30 < *(v29 + 3))
  {
LABEL_24:
    *(v29 + 4) = v30 + 1;
    *v30 = 58;
    if (mlir::Block::getParent(a2))
    {
      goto LABEL_25;
    }

LABEL_32:
    v39 = *(this + 2);
    v40 = v39[4];
    if (v39[3] - v40 <= 0x1DuLL)
    {
      llvm::raw_ostream::write(v39, "  // block is not in a region!", 0x1EuLL);
      goto LABEL_94;
    }

    qmemcpy(v40, "  // block is not in a region!", 30);
    v42 = v39[4] + 30;
LABEL_67:
    v39[4] = v42;
    goto LABEL_94;
  }

LABEL_31:
  llvm::raw_ostream::write(v29, 58);
  if (!mlir::Block::getParent(a2))
  {
    goto LABEL_32;
  }

LABEL_25:
  if (!*a2)
  {
    if (mlir::Block::isEntryBlock(a2))
    {
      goto LABEL_94;
    }

    v39 = *(this + 2);
    v41 = v39[4];
    if ((v39[3] - v41) <= 0x13)
    {
      llvm::raw_ostream::write(v39, "  // no predecessors", 0x14uLL);
      goto LABEL_94;
    }

    *(v41 + 16) = 1936879475;
    *v41 = *"  // no predecessors";
    v42 = v39[4] + 20;
    goto LABEL_67;
  }

  SinglePredecessor = mlir::Block::getSinglePredecessor(a2);
  if (SinglePredecessor)
  {
    v33 = SinglePredecessor;
    v34 = *(this + 2);
    v35 = v34[4];
    if ((v34[3] - v35) > 0xA)
    {
      *(v35 + 7) = 540697701;
      *v35 = *"  // pred: ";
      v34[4] += 11;
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    else
    {
      llvm::raw_ostream::write(v34, "  // pred: ", 0xBuLL);
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    v60 = *(v37 + 376);
    v61 = (v38 - 1) & ((v33 >> 4) ^ (v33 >> 9));
    v62 = *(v60 + 32 * v61);
    if (v62 == v33)
    {
LABEL_59:
      if (v61 != v38)
      {
        v70 = v60 + 32 * v61;
        v65 = *(v70 + 16);
        v66 = *(v70 + 24);
        v64 = v36 + 4;
        v63 = v36[4];
        if (v66 <= v36[3] - v63)
        {
          if (!v66)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_65:
        llvm::raw_ostream::write(v36, v65, v66);
        goto LABEL_94;
      }
    }

    else
    {
      v110 = 1;
      while (v62 != -4096)
      {
        v111 = v61 + v110++;
        v61 = v111 & (v38 - 1);
        v62 = *(v60 + 32 * v61);
        if (v62 == v33)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    v64 = v36 + 4;
    v63 = v36[4];
    v65 = "INVALIDBLOCK";
    v66 = 12;
    if (v36[3] - v63 > 0xBuLL)
    {
LABEL_93:
      memcpy(v63, v65, v66);
      *v64 += v66;
      goto LABEL_94;
    }

    goto LABEL_65;
  }

  v120 = v122;
  v32.n128_u64[0] = 0x400000000;
  v121 = 0x400000000;
  v43 = *a2;
  if (!*a2)
  {
    v68 = v122;
    v67 = v122;
    goto LABEL_69;
  }

  do
  {
    v44 = mlir::PredecessorIterator::unwrap(v43);
    v45 = *(this + 3);
    v46 = *(v45 + 376);
    v47 = *(v45 + 392);
    if (v47)
    {
      v48 = (v47 - 1) & ((v44 >> 4) ^ (v44 >> 9));
      v49 = *(v46 + 32 * v48);
      if (v49 == v44)
      {
        goto LABEL_46;
      }

      v50 = 1;
      while (v49 != -4096)
      {
        v51 = v48 + v50++;
        v48 = v51 & (v47 - 1);
        v49 = *(v46 + 32 * v48);
        if (v49 == v44)
        {
          goto LABEL_46;
        }
      }
    }

    v48 = v47;
LABEL_46:
    v117 = -1;
    v118 = "INVALIDBLOCK";
    v119 = 12;
    v52 = v46 + 32 * v48 + 8;
    if (v48 == v47)
    {
      v53 = &v117;
    }

    else
    {
      v53 = v52;
    }

    v54 = *v53;
    v116 = *(v53 + 2);
    v115 = v54;
    v55 = v120;
    if (v121 >= HIDWORD(v121))
    {
      if (v120 <= &v115 && v120 + 24 * v121 > &v115)
      {
        v59 = &v115 - v120;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v121 + 1, 24);
        v55 = v120;
        v56 = v120 + v59;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v121 + 1, 24);
        v56 = &v115;
        v55 = v120;
      }
    }

    else
    {
      v56 = &v115;
    }

    v57 = &v55[24 * v121];
    v32 = *v56;
    v57[1].n128_u64[0] = *(v56 + 2);
    *v57 = v32;
    v58 = (v121 + 1);
    LODWORD(v121) = v121 + 1;
    v43 = *v43;
  }

  while (v43);
  v67 = v120;
  v68 = (v120 + 24 * v58);
  if (v58)
  {
    v69 = 126 - 2 * __clz(v58);
    goto LABEL_70;
  }

LABEL_69:
  v69 = 0;
LABEL_70:
  v71 = *(this + 2);
  v72 = *(v71 + 4);
  if ((*(v71 + 3) - v72) > 4)
  {
    *(v72 + 4) = 32;
    *v72 = 791617568;
    *(v71 + 4) += 5;
    v74 = llvm::raw_ostream::operator<<(v71, v121);
    v75 = *(v74 + 4);
    if (*(v74 + 3) - v75 <= 7uLL)
    {
      goto LABEL_74;
    }

LABEL_72:
    *v75 = 0x203A736465727020;
    *(v74 + 4) += 8;
  }

  else
  {
    v73 = llvm::raw_ostream::write(v71, "  // ", 5uLL);
    v74 = llvm::raw_ostream::operator<<(v73, v121);
    v75 = *(v74 + 4);
    if (*(v74 + 3) - v75 > 7uLL)
    {
      goto LABEL_72;
    }

LABEL_74:
    llvm::raw_ostream::write(v74, " preds: ", 8uLL);
  }

  v76 = v121;
  if (v121)
  {
    v77 = *(this + 2);
    v78 = v120;
    v79 = *(v120 + 1);
    v80 = *(v120 + 2);
    v81 = v77[4];
    if (v77[3] - v81 >= v80)
    {
      if (v80)
      {
        v82 = *(v120 + 2);
        memcpy(v81, v79, v80);
        v77[4] += v82;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), v79, v80);
    }

    if (v76 != 1)
    {
      v83 = 24 * v76;
      v84 = (v78 + 40);
      for (i = v83 - 24; i; i -= 24)
      {
        v86 = v77[4];
        if (v77[3] - v86 > 1uLL)
        {
          *v86 = 8236;
          v77[4] += 2;
          v87 = *(v84 - 1);
          v88 = *v84;
          v89 = *(this + 2);
          v90 = v89[4];
          if (v89[3] - v90 >= *v84)
          {
LABEL_90:
            if (v88)
            {
              v91 = v88;
              memcpy(v90, v87, v88);
              v89[4] += v91;
            }

            goto LABEL_85;
          }
        }

        else
        {
          llvm::raw_ostream::write(v77, ", ", 2uLL);
          v87 = *(v84 - 1);
          v88 = *v84;
          v89 = *(this + 2);
          v90 = v89[4];
          if (v89[3] - v90 >= *v84)
          {
            goto LABEL_90;
          }
        }

        llvm::raw_ostream::write(v89, v87, v88);
LABEL_85:
        v84 += 3;
      }
    }
  }

  if (v120 != v122)
  {
    free(v120);
  }

LABEL_94:
  v92 = *(this + 2);
  ++*(this + 20);
  v93 = *(v92 + 4);
  if (v93 < *(v92 + 3))
  {
    *(v92 + 4) = v93 + 1;
    *v93 = 10;
    goto LABEL_96;
  }

  llvm::raw_ostream::write(v92, 10);
  *(this + 38) += 2;
  if ((*(this + 72) & 0x40) != 0)
  {
LABEL_97:
    v94 = *(a2 + 6);
    for (j = *(a2 + 7); v94 != j; ++v94)
    {
      while (1)
      {
        v96 = *v94;
        llvm::raw_ostream::indent(*(this + 2), *(this + 38));
        v97 = *(this + 2);
        v98 = v97[4];
        if ((v97[3] - v98) > 2)
        {
          *(v98 + 2) = 32;
          *v98 = 12079;
          v97[4] += 3;
        }

        else
        {
          llvm::raw_ostream::write(v97, "// ", 3uLL);
        }

        v99 = *(this + 2);
        v100 = v99[4];
        v101 = v99[3] - v100;
        if (*v96)
        {
          if (v101 > 0xB)
          {
            *(v100 + 8) = 544825888;
            *v100 = *" is used by ";
            v99[4] += 12;
          }

          else
          {
            llvm::raw_ostream::write(v99, " is used by ", 0xCuLL);
          }
        }

        else if (v101 > 9)
        {
          *(v100 + 8) = 25701;
          *v100 = *" is unused";
          v99[4] += 10;
        }

        else
        {
          llvm::raw_ostream::write(v99, " is unused", 0xAuLL);
        }

        v102 = *(this + 2);
        ++*(this + 20);
        v103 = *(v102 + 4);
        if (v103 >= *(v102 + 3))
        {
          break;
        }

        *(v102 + 4) = v103 + 1;
        *v103 = 10;
        if (++v94 == j)
        {
          goto LABEL_115;
        }
      }

      llvm::raw_ostream::write(v102, 10);
    }
  }

LABEL_115:
  v105 = (a2 + 32);
  result = *(a2 + 4);
  if (result == (a2 + 32))
  {
    v107 = *(a2 + 5);
  }

  else
  {
    ZinIrHalH13g::~ZinIrHalH13g(result);
    {
      v112 = v106;
      v106 = v112;
    }

    result = (*(**(v106 + 48) + 32))(*(v106 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v107 = *(a2 + 5);
    if (result && (a4 & 1) == 0)
    {
      v105 = *v105;
    }
  }

  if (v107 != v105)
  {
  }

  *(this + 38) -= 2;
  return result;
}

void mlir::FallbackAsmResourceMap::ResourceCollection::~ResourceCollection(mlir::FallbackAsmResourceMap::ResourceCollection *this)
{
  *this = &unk_1F19FC298;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_1F19FC7A0[v6])(&v7, v4 - 64);
      }

      *v4 = -1;
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 11));
      }

      v4 -= 96;
      v5 += 96;
    }

    while (v5);
    v2 = *(this + 4);
  }

  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F19FC228;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F19FC298;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_1F19FC7A0[v6])(&v7, v4 - 64);
      }

      *v4 = -1;
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 11));
      }

      v4 -= 96;
      v5 += 96;
    }

    while (v5);
    v2 = *(this + 4);
  }

  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F19FC228;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  MEMORY[0x1AC55A070](this, 0x1093C40C1339079);
}

uint64_t mlir::OpAsmDialectInterface::getAlias()
{
  return 0;
}

{
  return 0;
}

void *llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>@<X0>(size_t __sz@<X1>, std::align_val_t a2@<X2>, uint64_t a3@<X8>)
{
  result = llvm::allocate_buffer(__sz, a2);
  *a3 = result;
  *(a3 + 8) = __sz;
  *(a3 + 48) = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
  *(a3 + 16) = a2;
  *(a3 + 24) = llvm::deallocate_buffer;
  *(a3 + 56) = 1;
  return result;
}

const char *llvm::getTypeName<mlir::DistinctAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DistinctAttr]";
  v6 = 68;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 2);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 3) > v5 >> 3)
    {
      *(result + 2) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v6 = *result;
        v5 = *(result + 4);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 3);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}