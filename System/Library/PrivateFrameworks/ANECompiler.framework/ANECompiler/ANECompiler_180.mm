ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::AndIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v15, a2, v9);
    NextResultAtOffset = *a3;
    v12 = a3[1];
    v13 = a3[3];
    if (v12)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
    }

    mlir::ValueRange::ValueRange(v17, NextResultAtOffset, v13 - v12);
    mlir::TypeRange::TypeRange(v16, v17[0], v17[1]);
    mlir::scf::IfOp::build(a1, v15, v16[0], v16[1], *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v15, v17, v16);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SelectOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::SelectOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SelectOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(uint64_t *a1, uint64_t a2, mlir::detail::OpResultImpl *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a6 - a4;
  v15 = a6 - a4 + v12;
  if (*a1 + 8 * v12 != a2)
  {
    if (v15 > v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
      v10 = *a1;
      v12 = *(a1 + 2);
    }

    __src = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 < v14)
    {
      v20 = v12 + v14;
      *(a1 + 2) = v20;
      if (v16 == v11)
      {
        v21 = (v10 + v11);
      }

      else
      {
        v29 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v29, __src, v18);
        v30 = __src;
        do
        {
          *v30++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++);
          --v19;
        }

        while (v19);
      }

      for (; a6 != v7; ++v7)
      {
        *v17++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7);
      }

      return v21;
    }

    v23 = 8 * v14;
    v24 = v12 + ((8 * v14) >> 3);
    if (v24 > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v24, 8);
      LODWORD(v12) = *(a1 + 2);
    }

    v25 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == v7)
    {
      goto LABEL_29;
    }

    v26 = (*a1 + 8 * v12);
    v27 = 8 * a6 - 8 * v7 - 8;
    if (v27 >= 0x38)
    {
      v31 = 8 * v12 + *a1;
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v31 - v25) >= 0x20)
      {
        v32 = (v27 >> 3) + 1;
        v33 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        v26 = (v26 + v33 * 8);
        v28 = &v25[v33];
        v34 = (8 * v7 + v16 - 8 * a6 + v10 + 16);
        v35 = (v31 + 16);
        v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v37 = *v34;
          *(v35 - 1) = *(v34 - 1);
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v38 = *v28++;
      *v26++ = v38;
    }

    while (v28 != v17);
LABEL_29:
    *(a1 + 2) = v12 + v14;
    v21 = __src;
    if (v25 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v39 = __src;
      do
      {
        *v39++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++);
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v15, 8);
    v12 = *(a1 + 2);
    v10 = *a1;
  }

  if (a6 != v7)
  {
    v22 = (v10 + 8 * v12);
    do
    {
      *v22++ = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++);
    }

    while (a6 != v7);
    LODWORD(v12) = *(a1 + 2);
    v10 = *a1;
  }

  *(a1 + 2) = v12 + v14;
  return (v10 + v11);
}

void anonymous namespace::ConditionPropagation::~ConditionPropagation(_anonymous_namespace_::ConditionPropagation *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::ConditionPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  I1Type = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&I1Type);
  if (DefiningOp)
  {
    {
      v29 = DefiningOp;
      mlir::collect_regions::detail::verifyShouldAddToQueue();
      DefiningOp = v29;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return 0;
    }
  }

  I1Type = mlir::Builder::getI1Type(a3 + 1);
  v7 = **(*(a2 + 72) + 24);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v30 = 0;
    v10 = a2 + 64;
    while (1)
    {
      v11 = *v7;
      v12 = *(a2 + 40);
      v13 = *(a2 + 44);
      v14 = *(v7[2] + 16);
      v15 = v14 ? mlir::Block::getParent(v14) : 0;
      v16 = (((v10 + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v12);
      if (v15 == v16 || mlir::Region::isProperAncestor(v16, v15))
      {
        break;
      }

      v23 = (((v10 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24);
      v24 = *(v7[2] + 16);
      if (v24)
      {
        Parent = mlir::Block::getParent(v24);
        if (v23 != Parent && !mlir::Region::isProperAncestor(v23, Parent))
        {
          goto LABEL_10;
        }
      }

      else if (!mlir::Region::isProperAncestor(v23, 0))
      {
        goto LABEL_10;
      }

      v18 = v30;
      if (!v30)
      {
        v26 = *(a2 + 24);
        IntegerAttr = mlir::Builder::getIntegerAttr((a3 + 1), I1Type, 0);
        v18 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>((a3 + 1), v26, &I1Type, &IntegerAttr) - 16);
      }

      v19 = v7[2];
      ((*a3)[5])(a3, v19);
      v27 = v7[1];
      if (v27)
      {
        v28 = *v7;
        *v27 = *v7;
        if (v28)
        {
          v28[1] = v27;
        }
      }

      v7[3] = v18;
      v7[1] = v18;
      v22 = *v18;
      *v7 = *v18;
      v30 = v18;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_9:
      *v18 = v7;
      ((*a3)[6])(a3, v19);
      v8 = 1;
LABEL_10:
      v7 = v11;
      if (!v11)
      {
        return v8 & 1;
      }
    }

    if (!v9)
    {
      v17 = *(a2 + 24);
      IntegerAttr = mlir::Builder::getIntegerAttr((a3 + 1), I1Type, 1);
      v9 = (mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>((a3 + 1), v17, &I1Type, &IntegerAttr) - 16);
    }

    v18 = v9;
    v19 = v7[2];
    ((*a3)[5])(a3, v19);
    v20 = v7[1];
    if (v20)
    {
      v21 = *v7;
      *v20 = *v7;
      if (v21)
      {
        v21[1] = v20;
      }
    }

    v7[3] = v9;
    v7[1] = v9;
    v22 = *v9;
    *v7 = *v9;
    if (!v22)
    {
      goto LABEL_9;
    }

LABEL_8:
    *(v22 + 8) = v7;
    goto LABEL_9;
  }

  v8 = 0;
  return v8 & 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v32[38] = *MEMORY[0x1E69E9840];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v32, v31, v30);
  }

  mlir::OperationState::OperationState(v32, a2, v9);
  v11 = *a3;
  v12 = *a4;
  if (!*a4)
  {
    goto LABEL_16;
  }

  v13 = *v12;
  {
    v23 = v11;
    v24 = v12;
    mlir::AbstractAttribute::get<mlir::complex::NumberAttr>();
    v12 = v24;
    v11 = v23;
    v14 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (!v16)
  {
    goto LABEL_16;
  }

LABEL_5:
  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 == &v15[2 * v16] || *v17 != v14)
  {
    goto LABEL_16;
  }

  v25 = v17[1];
LABEL_17:
  mlir::arith::ConstantOp::build(a1, v32, v11, v12, v25);
  v26 = mlir::OpBuilder::create(a1, v32);
  if (*(*(v26 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v32);
  return v27;
}

void anonymous namespace::ConvertTrivialIfToSelect::~ConvertTrivialIfToSelect(_anonymous_namespace_::ConvertTrivialIfToSelect *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::ConvertTrivialIfToSelect::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v37[6] = *MEMORY[0x1E69E9840];
  if (*(a2 + 36))
  {
    v5 = *(a2 + 47);
    v32 = *(*(a2 + 72) + 24);
    v6 = a2 + 64;
    v7 = *(32 * *(a2 + 40) + ((a2 + 8 * v5 + 87) & 0xFFFFFFFFFFFFFFF8));
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    ZinIrHalH13g::~ZinIrHalH13g(*(v8 + 32));
    if ((*(v9 + 46) & 0x80) != 0)
    {
      v10 = *(v9 + 72);
      v11 = *(v9 + 68);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = ((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v13 = *(v12 + 24);
    if (v13 == v12 + 24 || v13 == 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13 - 8;
    }

    ZinIrHalH13g::~ZinIrHalH13g(*(v15 + 32));
    v31 = a3;
    if ((*(v16 + 46) & 0x80) != 0)
    {
      v17 = *(v16 + 72);
      v18 = *(v16 + 68);
      v35 = v37;
      v36 = 0x600000000;
      if (v11 && v18)
      {
        v19 = v11 - 1;
        v20 = v18 - 1;
        v21 = 24;
        do
        {
          v22 = *(v17 + v21);
          v33 = *(v10 + v21);
          v34[0] = v22;
          v23 = (((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
          if (mlir::Value::getParentRegion(&v33) == v23 || (v24 = (((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24), v24 == mlir::Value::getParentRegion(v34)))
          {
            v25 = *(v33 + 1);
            v26 = v36;
            if (v36 >= HIDWORD(v36))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
              v26 = v36;
            }

            v35[v26] = v25 & 0xFFFFFFFFFFFFFFF8;
            LODWORD(v36) = v36 + 1;
          }

          v27 = v20-- != 0;
          v28 = v27;
          v27 = v19-- != 0;
          if (!v27)
          {
            break;
          }

          v21 += 32;
        }

        while ((v28 & 1) != 0);
        a3 = v31;
        if (v36 != *(a2 + 36))
        {
LABEL_34:
          v29 = *(a2 + 24);
          LOBYTE(v33) = 0;
          mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>((a3 + 1), v29, &v35, &v32, &v33);
        }
      }

      else if (*(a2 + 36))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v35 = v37;
      v36 = 0x600000000;
      if (*(a2 + 36))
      {
        goto LABEL_34;
      }
    }

    if (v35 != v37)
    {
      free(v35);
    }
  }

  return 0;
}

void anonymous namespace::RemoveEmptyElseBranch::~RemoveEmptyElseBranch(_anonymous_namespace_::RemoveEmptyElseBranch *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::RemoveEmptyElseBranch::matchAndRewrite(uint64_t a1, mlir::Operation *a2, void *a3)
{
  if (!*(a2 + 9))
  {
    v3 = ((a2 + 16 * ((*(a2 + 11) >> 23) & 1) + ((*(a2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10);
    v6 = *(v3 + 24);
    v5 = v3 + 24;
    v4 = v6;
    if (v6)
    {
      v7 = v4 == v5;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = *(v4 + 32);
      v9 = v4 + 24;
      if (v8 != v9 && *(v8 + 8) == v9)
      {
        mlir::Operation::cloneWithoutRegions(a2);
      }
    }
  }

  return 0;
}

void anonymous namespace::RemoveStaticCondition::~RemoveStaticCondition(_anonymous_namespace_::RemoveStaticCondition *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::RemoveStaticCondition::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = *(*(a2 + 72) + 24);
  v17 = 0;
  v18 = &v17;
  v20[0] = v5;
  result = mlir::Value::getDefiningOp(v20);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v18, result);
    if (result)
    {
      Value = mlir::BoolAttr::getValue(&v17);
      v8 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
      if (Value)
      {
        mlir::ValueRange::ValueRange(&v18, 0, 0);
        v9 = v18;
        v10 = v19;
        v11 = v8[1];
      }

      else
      {
        if (v8[3] == v8 + 3)
        {
          (*(*a3 + 16))(a3, a2);
          return 1;
        }

        mlir::ValueRange::ValueRange(&v18, 0, 0);
        v9 = v18;
        v10 = v19;
        v11 = v8[4];
      }

      if (v11)
      {
        v12 = (v11 - 8);
      }

      else
      {
        v12 = 0;
      }

      mlir::Block::getTerminator(v12);
      v14 = v13;
      if ((*(v13 + 46) & 0x80) != 0)
      {
        v15 = *(v13 + 72);
        v16 = *(v13 + 68);
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      mlir::ValueRange::ValueRange(v20, v15, v16);
      mlir::RewriterBase::inlineBlockBefore(a3, v12, a2, v9, v10);
      (**a3)(a3, a2, v20[0], v20[1]);
      (*(*a3 + 16))(a3, v14);
      return 1;
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::BoolAttr>::match(void **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_7>();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = (*v8[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::BoolAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v8[0] != v9)
    {
      v7 = v6 != 0;
      free(v8[0]);
      return v7;
    }
  }

  return result;
}

void anonymous namespace::RemoveUnusedResults::~RemoveUnusedResults(_anonymous_namespace_::RemoveUnusedResults *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::RemoveUnusedResults::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x400000000;
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i))
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
        v9 = v23;
        if (v23 >= HIDWORD(v23))
        {
          v10 = NextResultAtOffset;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v23 + 1, 8);
          NextResultAtOffset = v10;
          v9 = v23;
        }

        *(v22 + v9) = NextResultAtOffset;
        LODWORD(v23) = v23 + 1;
      }
    }

    v11 = v22;
    if (v23 != *(a2 + 36))
    {
      v19 = v21;
      v20 = 0x400000000;
      if (v23)
      {
        v12 = 0;
        v13 = 8 * v23;
        do
        {
          v14 = *(*v11 + 8);
          if (v12 >= HIDWORD(v20))
          {
            v15 = v11;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v12 + 1, 8);
            v11 = v15;
            v12 = v20;
          }

          *(v19 + v12) = v14 & 0xFFFFFFFFFFFFFFF8;
          v12 = v20 + 1;
          LODWORD(v20) = v20 + 1;
          v11 += 8;
          v13 -= 8;
        }

        while (v13);
      }

      v16 = *(a2 + 24);
      v18 = *(*(a2 + 72) + 24);
      mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,4u> &,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 8), v16, &v19, &v18);
    }

    if (v22 != v24)
    {
      free(v22);
    }
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,4u> &,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v13, a2, v9);
    mlir::ValueRange::ValueRange(v14, *a3, *(a3 + 8));
    mlir::scf::IfOp::build(a1, v13, v14[0], v14[1], *a4, 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v13, v14, v12);
}

void anonymous namespace::RemoveUnusedResults::transferBody(uint64_t a1, ZinIrHalH13g **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(&v17, 0, 0);
  mlir::RewriterBase::mergeBlocks(a5, a1, a2, v17, v18);
  mlir::Block::getTerminator(a2);
  v11 = v10;
  v17 = v19;
  v18 = 0x400000000;
  if (a4)
  {
    v12 = 0;
    v13 = 8 * a4;
    do
    {
      v14 = *(*a3 + 8) & 7;
      if (*a3)
      {
        v15 = v14 == 6;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v14 = (*(*a3 + 16) + 6);
      }

      v16 = *(v11[9] + 32 * v14 + 24);
      if (v12 >= HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v17, v19, v12 + 1, 8);
        v12 = v18;
      }

      *(v17 + v12) = v16;
      v12 = v18 + 1;
      LODWORD(v18) = v18 + 1;
      a3 += 8;
      v13 -= 8;
    }

    while (v13);
  }

  (*(*a5 + 40))(a5, v11);
  mlir::ValueRange::ValueRange(&v20, v17, v18);
  mlir::Operation::setOperands(v11, v20, v21);
  (*(*a5 + 48))(a5, v11);
  if (v17 != v19)
  {
    free(v17);
  }
}

void anonymous namespace::ReplaceIfYieldWithConditionOrValue::~ReplaceIfYieldWithConditionOrValue(_anonymous_namespace_::ReplaceIfYieldWithConditionOrValue *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::ReplaceIfYieldWithConditionOrValue::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!*(a2 + 36))
  {
    return 0;
  }

  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  mlir::Block::getTerminator(v7);
  v9 = v8;
  v10 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24);
  if (v10)
  {
    v11 = (v10 - 8);
  }

  else
  {
    v11 = 0;
  }

  mlir::Block::getTerminator(v11);
  v13 = v12;
  a3[3] = *(a2 + 16);
  a3[4] = a2;
  I1Type = mlir::Builder::getI1Type(a3 + 1);
  if ((*(v9 + 46) & 0x80) == 0)
  {
    v15 = 0;
    v14 = 0;
    v53 = a2;
    v51 = a3;
    if ((*(v13 + 46) & 0x80) != 0)
    {
      goto LABEL_10;
    }

LABEL_65:
    v17 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v14 = *(v9 + 68);
  v15 = *(v9 + 72);
  v53 = a2;
  v51 = a3;
  if ((*(v13 + 46) & 0x80) == 0)
  {
    goto LABEL_65;
  }

LABEL_10:
  v16 = *(v13 + 68);
  v17 = *(v13 + 72);
LABEL_11:
  v18 = 0;
  v19 = *(v53 + 36);
  if (v19)
  {
    v20 = v53 - 16;
  }

  else
  {
    v20 = 0;
  }

  if (v14 && v16 && v19)
  {
    v18 = 0;
    v21 = 0;
    while (1)
    {
      v22 = *(v15 + 32 * v21 + 24);
      v23 = *(v17 + 32 * v21 + 24);
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, v21);
      v58 = v22;
      v59 = v23;
      v60 = NextResultAtOffset;
      if (v22 == v23)
      {
        v30 = *NextResultAtOffset;
        if (*NextResultAtOffset)
        {
          do
          {
            v31 = v30[1];
            if (v31)
            {
              v32 = *v30;
              *v31 = *v30;
              if (v32)
              {
                *(v32 + 8) = v31;
              }
            }

            v30[3] = v22;
            v30[1] = v22;
            v33 = *v22;
            *v30 = *v22;
            if (v33)
            {
              v33[1] = v30;
            }

            *v22 = v30;
            v30 = *NextResultAtOffset;
          }

          while (*NextResultAtOffset);
          v18 = 1;
        }

        goto LABEL_37;
      }

      v56 = 0;
      v57 = 0;
      v55 = &v57;
      v61 = v22;
      DefiningOp = mlir::Value::getDefiningOp(&v61);
      if (!DefiningOp)
      {
        goto LABEL_37;
      }

      if (!mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v55, DefiningOp))
      {
        goto LABEL_37;
      }

      v54 = &v56;
      v61 = v59;
      v26 = mlir::Value::getDefiningOp(&v61);
      if (!v26 || (mlir::detail::constant_op_binder<mlir::BoolAttr>::match(&v54, v26) & 1) == 0)
      {
        goto LABEL_37;
      }

      Value = mlir::BoolAttr::getValue(&v57);
      LODWORD(v28) = mlir::BoolAttr::getValue(&v56);
      if (Value || !v28 || !*v60)
      {
        goto LABEL_51;
      }

      v50 = v28;
      v29 = *(mlir::Value::getDefiningOp(&v58) + 48);
      if (*(v29 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        v61 = *(v29 + 8);
        Values = mlir::SparseElementsAttr::getValues(&v61);
      }

      else
      {
        Values = *(v29 + 24);
      }

      v49 = *(v53 + 24);
      v61 = *(*(v53 + 72) + 24);
      v18 = 1;
      IntegerAttr = mlir::Builder::getIntegerAttr((v51 + 1), I1Type, 1);
      v55 = ((*(*Values + 24))(Values, v51 + 1, IntegerAttr, I1Type, *(v53 + 24)) - 16);
      v28 = mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>((v51 + 1), v49, &v61, &v55);
      v35 = v60;
      v36 = *v60;
      if (*v60)
      {
        break;
      }

      if (!(v50 & 1 | !Value))
      {
LABEL_52:
        v41 = v60;
        v42 = *v60;
        if (*v60)
        {
          v43 = *(*(v53 + 72) + 24);
          do
          {
            v44 = v42[1];
            if (v44)
            {
              v45 = *v42;
              *v44 = *v42;
              if (v45)
              {
                *(v45 + 8) = v44;
              }
            }

            v42[3] = v43;
            v42[1] = v43;
            v46 = *v43;
            *v42 = *v43;
            if (v46)
            {
              *(v46 + 8) = v42;
            }

            *v43 = v42;
            v42 = *v41;
            v18 = 1;
          }

          while (*v41);
        }
      }

LABEL_37:
      if (++v21 == v14 || v21 == v16 || v21 == v19)
      {
        return v18 & 1;
      }
    }

    v37 = (v28 - 16);
    LOBYTE(v28) = v50;
    do
    {
      v38 = v36[1];
      if (v38)
      {
        v39 = *v36;
        *v38 = *v36;
        if (v39)
        {
          *(v39 + 8) = v38;
        }
      }

      v36[3] = v37;
      v36[1] = v37;
      v40 = *v37;
      *v36 = *v37;
      if (v40)
      {
        *(v40 + 8) = v36;
      }

      *v37 = v36;
      v36 = *v35;
    }

    while (*v35);
    v18 = 1;
LABEL_51:
    if (!(v28 & 1 | !Value))
    {
      goto LABEL_52;
    }

    goto LABEL_37;
  }

  return v18 & 1;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::AndIOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "scf.reduce", 10);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::~ParallelOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ParallelOpSingleOrZeroIterationDimsFolder *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v135[6] = *MEMORY[0x1E69E9840];
  v114 = a2;
  v102 = *(a2 + 24);
  v133 = v135;
  v134 = 0x600000000;
  v130 = v132;
  v131 = 0x600000000;
  v127 = v129;
  v128 = 0x600000000;
  v106[0] = 0;
  v106[1] = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v100 = a2 + 64;
  v4 = *(a2 + 44);
  v5 = (a2 + 64 + 16 * ((v4 >> 23) & 1));
  v6 = *v5;
  if ((v4 & 0x800000) != 0)
  {
    v7 = *(a2 + 72);
    v8 = v5[1] + v6;
    v9 = &v7[32 * v6];
    v10 = v8 - v6;
    v11 = v7;
  }

  else
  {
    v7 = 0;
    v11 = 0;
    v8 = v5[1] + v6;
    v10 = v8 - v6;
    v9 = 32 * v6;
  }

  v12 = v5[2] + v8;
  mlir::scf::ParallelOp::getLoopInductionVars(&v114, &__src);
  __dst = v117;
  v116 = 0x600000000;
  v13 = v119;
  if (!v119)
  {
    goto LABEL_9;
  }

  v14 = v117;
  v15 = v119;
  if (v119 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v117, v119, 8);
    v15 = v119;
    if (!v119)
    {
LABEL_8:
      LODWORD(v116) = v13;
LABEL_9:
      v16 = &v11[32 * v8];
      v17 = v12 - v8;
      if (v126[0] == 1 && __src != &v120)
      {
        free(__src);
        v13 = v116;
      }

      __src = v7;
      v119 = v6;
      v120 = v9;
      v121 = v10;
      v122 = v16;
      v123 = v17;
      v124 = v126;
      v125 = 0x600000000;
      v18 = __dst;
      if (v13)
      {
        if (__dst == v117)
        {
          v19 = v13;
          if (v13 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v124, v126, v13, 8), v19 = v116, v18 = __dst, v116))
          {
            memcpy(v124, v18, 8 * v19);
            v18 = __dst;
          }

          LODWORD(v125) = v13;
        }

        else
        {
          v124 = __dst;
          v125 = __PAIR64__(HIDWORD(v116), v13);
          __dst = v117;
          HIDWORD(v116) = 0;
          v18 = v117;
        }

        LODWORD(v116) = 0;
      }

      v103 = a3;
      if (v18 != v117)
      {
        free(v18);
        v13 = v125;
      }

      v20 = 0;
      if (!v119 || !v121 || !v123 || !v13)
      {
LABEL_54:
        if (v124 != v126)
        {
          free(v124);
        }

        if ((v20 & 1) == 0)
        {
          v49 = *(a2 + 44);
          v50 = (v49 >> 23) & 1;
          v51 = (v100 + 16 * v50);
          v52 = *v51;
          if (v134 != *v51)
          {
            if (v134)
            {
              v53 = *(a2 + 24);
              v54 = v51[3];
              if ((v49 & 0x800000) != 0)
              {
                v55 = *(a2 + 72);
              }

              else
              {
                v55 = 0;
              }

              v56 = (v51[1] + v52 + v51[2]);
              __src = (v55 + 32 * v56);
              v119 = (v54 + v56) - v56;
              __dst = 0;
              mlir::OpBuilder::create<mlir::scf::ParallelOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,mlir::OperandRange,decltype(nullptr)>(v103 + 1, v53, &v133, &v130, &v127, &__src);
            }

            __src = &v120;
            v119 = 0x600000000;
            v57 = (v51[1] + v52 + v51[2]);
            v58 = (v51[3] + v57) - v57;
            if (v58 >= 7)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v120, v58, 8);
              v49 = *(a2 + 44);
              v50 = (v49 >> 23) & 1;
            }

            v59 = (v49 >> 21) & 0x7F8;
            v60 = 32 * *(a2 + 40);
            v61 = *(((v100 + 16 * v50 + v59 + 7) & 0xFFFFFFFFFFFFFFF8) + v60 + 8);
            if (v61)
            {
              v62 = v61 - 8;
            }

            else
            {
              v62 = 0;
            }

            v63 = *(v62 + 40);
            v64 = (v62 + 32);
            if (v63 != v64)
            {
              v65 = *v64;
              if (v63 != *v64)
              {
                do
                {
                  ZinIrHalH13g::~ZinIrHalH13g(v63);
                  mlir::OpBuilder::clone(v103 + 1, v66, v106);
                  v63 = *(v63 + 1);
                }

                while (v63 != v65);
                v67 = *(a2 + 44);
                v50 = (v67 >> 23) & 1;
                v59 = (v67 >> 21) & 0x7F8;
                v60 = 32 * *(a2 + 40);
              }
            }

            v68 = *(((v100 + 16 * v50 + v59 + 7) & 0xFFFFFFFFFFFFFFF8) + v60 + 8);
            if (v68)
            {
              v69 = (v68 - 8);
            }

            else
            {
              v69 = 0;
            }

            mlir::Block::getTerminator(v69);
            v71 = *(v70 + 44);
            v72 = v119;
            v73 = *&v71 & 0x7FFFFFLL;
            if ((v71 & 0x7FFFFF) != 0)
            {
              v74 = v70;
              v75 = 0;
              v76 = v70 + 64;
              do
              {
                v77 = *(((v76 + 16 * ((*(v74 + 44) >> 23) & 1) + ((*(v74 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v74 + 40) + 24 * v75 + 8);
                if (v77)
                {
                  v78 = v77 - 8;
                }

                else
                {
                  v78 = 0;
                }

                v79 = *(*(a2 + 72) + 32 * (*(a2 + 84) + *(a2 + 80) + *(a2 + 88)) + 32 * v72 + 24);
                __dst = **(v78 + 48);
                *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v106, &__dst) = v79;
                v80 = *(*(v74 + 72) + 32 * v75 + 24);
                if (v107)
                {
                  v81 = 0x9DDFEA08EB382D69 * ((8 * v80 - 0xAE502812AA7333) ^ HIDWORD(v80));
                  v82 = 0x9DDFEA08EB382D69 * (HIDWORD(v80) ^ (v81 >> 47) ^ v81);
                  v83 = (-348639895 * ((v82 >> 47) ^ v82)) & (v107 - 1);
                  v84 = *(v106[0] + 2 * v83);
                  if (v84 == v80)
                  {
LABEL_81:
                    if (v83 != v107)
                    {
                      v80 = *(v106[0] + 2 * v83 + 1);
                    }
                  }

                  else
                  {
                    v96 = 1;
                    while (v84 != -4096)
                    {
                      v97 = v83 + v96++;
                      v83 = v97 & (v107 - 1);
                      v84 = *(v106[0] + 2 * v83);
                      if (v84 == v80)
                      {
                        goto LABEL_81;
                      }
                    }
                  }
                }

                __dst = *(*(v78 + 48) + 8);
                *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v106, &__dst) = v80;
                v85 = *(v78 + 40);
                v86 = (v78 + 32);
                if (v85 != (v78 + 32))
                {
                  for (i = *v86; v85 != i; v85 = *(v85 + 1))
                  {
                    ZinIrHalH13g::~ZinIrHalH13g(v85);
                    mlir::OpBuilder::clone(v103 + 1, v88, v106);
                  }
                }

                mlir::Block::getTerminator(v78);
                v90 = *(*(v89 + 72) + 24);
                if (v107)
                {
                  v91 = 0x9DDFEA08EB382D69 * ((8 * *(*(v89 + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(v89 + 72) + 24)));
                  v92 = 0x9DDFEA08EB382D69 * (HIDWORD(v90) ^ (v91 >> 47) ^ v91);
                  v93 = (-348639895 * ((v92 >> 47) ^ v92)) & (v107 - 1);
                  v94 = *(v106[0] + 2 * v93);
                  if (v94 == v90)
                  {
LABEL_88:
                    if (v93 != v107)
                    {
                      v90 = *(v106[0] + 2 * v93 + 1);
                    }
                  }

                  else
                  {
                    v98 = 1;
                    while (v94 != -4096)
                    {
                      v99 = v93 + v98++;
                      v93 = v99 & (v107 - 1);
                      v94 = *(v106[0] + 2 * v93);
                      if (v94 == v90)
                      {
                        goto LABEL_88;
                      }
                    }
                  }
                }

                v95 = v119;
                if (v119 >= HIDWORD(v119))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v120, v119 + 1, 8);
                  v95 = v119;
                }

                *(__src + v95) = v90;
                v72 = v119 + 1;
                LODWORD(v119) = v119 + 1;
                ++v75;
              }

              while (v75 != v73);
            }

            mlir::ValueRange::ValueRange(&__dst, __src, v72);
            (**v103)();
            if (__src != &v120)
            {
              free(__src);
            }
          }
        }

        llvm::deallocate_buffer(v111, (16 * v113));
      }

      v21 = 0;
      v104 = 32 * v13 - 32;
      v105 = __src + 24;
      v22 = v120 + 24;
      v23 = v124;
      v24 = v122 + 24;
      v25 = v119 - 1;
      v26 = v121 - 1;
      v27 = v123 - 1;
      while (1)
      {
        v28 = *&v105[v21];
        v29 = *(v22 + v21);
        v30 = *&v24[v21];
        v31 = mlir::constantTripCount(v28 | 4, v29 | 4, v30 | 4);
        if ((v32 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v31 != 1)
        {
          break;
        }

        v36 = *v23;
        ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp(v103 + 1, v102, v28 | 4);
        __dst = v36;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v106, &__dst) = ConstantIndexOp;
LABEL_38:
        v20 = 0;
        v38 = v26-- != 0;
        v39 = v38;
        v38 = v27-- != 0;
        v40 = v38;
        v38 = v25-- != 0;
        if (v38)
        {
          if (v39)
          {
            if (v40)
            {
              ++v23;
              v41 = v104 == v21;
              v21 += 32;
              if (!v41)
              {
                continue;
              }
            }
          }
        }

        goto LABEL_54;
      }

      if (!v31)
      {
        v42 = *(a2 + 44);
        v43 = (v100 + 16 * ((v42 >> 23) & 1));
        v44 = *v43;
        v45 = v43[1];
        v47 = v43[2];
        v46 = v43[3];
        if ((v42 & 0x800000) != 0)
        {
          v48 = *(a2 + 72);
        }

        else
        {
          v48 = 0;
        }

        mlir::ValueRange::ValueRange(&__dst, v48 + 32 * (v45 + v44 + v47), (v46 + v45 + v44 + v47) - (v45 + v44 + v47));
        (**v103)(v103, a2, __dst, v116);
        v20 = 1;
        goto LABEL_54;
      }

LABEL_30:
      v33 = v134;
      if (v134 >= HIDWORD(v134))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v134 + 1, 8);
        v33 = v134;
      }

      v133[v33] = v28;
      LODWORD(v134) = v134 + 1;
      v34 = v131;
      if (v131 >= HIDWORD(v131))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v132, v131 + 1, 8);
        v34 = v131;
      }

      *&v130[8 * v34] = v29;
      LODWORD(v131) = v131 + 1;
      v35 = v128;
      if (v128 >= HIDWORD(v128))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v127, v129, v128 + 1, 8);
        v35 = v128;
      }

      *(v127 + v35) = v30;
      LODWORD(v128) = v128 + 1;
      goto LABEL_38;
    }

    v14 = __dst;
  }

  memcpy(v14, __src, 8 * v15);
  goto LABEL_8;
}

void mlir::OpBuilder::create<mlir::scf::ParallelOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,mlir::OperandRange,decltype(nullptr)>(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id, Context);
  if (v14)
  {
    mlir::OperationState::OperationState(v20, a2, v13);
    mlir::ValueRange::ValueRange(v22, *a3, *(a3 + 8));
    mlir::ValueRange::ValueRange(v21, *a4, *(a4 + 8));
    mlir::ValueRange::ValueRange(v19, *a5, *(a5 + 8));
    mlir::ValueRange::ValueRange(&v18, *a6, *(a6 + 8));
    mlir::scf::ParallelOp::build(a1, v20, v22[0], v22[1], v21[0], v21[1], v19[0], v19[1], v15, v16);
  }

  mlir::OpBuilder::create<mlir::scf::ParallelOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,mlir::OperandRange,decltype(nullptr)>(v20, v22, v21);
}

void anonymous namespace::MergeNestedParallelLoops::~MergeNestedParallelLoops(_anonymous_namespace_::MergeNestedParallelLoops *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = *MEMORY[0x1E69E9840];
  v3 = a2 + 64;
  v4 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v4)
  {
    v5 = (v4 - 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5[5];
  if (v6 == (v5 + 4))
  {
    return 0;
  }

  v7 = v5[4];
  if (v6 == v7 || *(v6 + 1) != v7)
  {
    return 0;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v6);
  v11 = *(*(v10 + 48) + 16);
  v12 = v11 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id;
  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id ? v10 : 0;
  v103 = v13;
  if (!v12)
  {
    return 0;
  }

  v15 = v5[6];
  v16 = v5[7];
  v17 = a2;
  if (v15 == v16)
  {
LABEL_89:
    v66 = *(v17 + 44);
    v67 = (v3 + 16 * ((v66 >> 23) & 1));
    if (v67[3])
    {
      return 0;
    }

    v68 = *(v13 + 44);
    v69 = v13 + 16 * ((v68 >> 23) & 1);
    if (*(v69 + 76))
    {
      return 0;
    }

    v70 = *v67;
    if ((v66 & 0x800000) != 0)
    {
      v113 = *(v17 + 72);
      v114 = v70;
      v71 = *(v69 + 64);
      if ((v68 & 0x800000) != 0)
      {
LABEL_93:
        v72 = *(v13 + 72);
        goto LABEL_94;
      }
    }

    else
    {
      v113 = 0;
      v114 = v70;
      v71 = *(v69 + 64);
      if ((v68 & 0x800000) != 0)
      {
        goto LABEL_93;
      }
    }

    v72 = 0;
LABEL_94:
    v107 = v72;
    v108 = v71;
    _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(&v109, &v113, &v107);
    v73 = *(a2 + 44);
    v74 = (v3 + 16 * ((v73 >> 23) & 1));
    v75 = *v74;
    v76 = v74[1];
    if ((v73 & 0x800000) != 0)
    {
      v77 = *(a2 + 72);
    }

    else
    {
      v77 = 0;
    }

    v113 = (v77 + 32 * v75);
    v114 = v76 + v75 - v75;
    v78 = *(v103 + 44);
    v79 = v103 + 16 * ((v78 >> 23) & 1);
    v80 = *(v79 + 64);
    v81 = *(v79 + 68);
    if ((v78 & 0x800000) != 0)
    {
      v82 = *(v103 + 72);
    }

    else
    {
      v82 = 0;
    }

    v105 = (v82 + 32 * v80);
    v106 = (v81 + v80) - v80;
    _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(&v107, &v113, &v105);
    v83 = *(a2 + 44);
    v84 = (v3 + 16 * ((v83 >> 23) & 1));
    v85 = *v84;
    v86 = v84[1];
    v87 = v84[2];
    if ((v83 & 0x800000) != 0)
    {
      v88 = *(a2 + 72);
    }

    else
    {
      v88 = 0;
    }

    v89 = (v86 + v85);
    v113 = (v88 + 32 * v89);
    v114 = (v87 + v89) - v89;
    v90 = *(v103 + 44);
    v91 = (v103 + 16 * ((v90 >> 23) & 1));
    v92 = v91[16];
    v93 = v91[17];
    v94 = v91[18];
    if ((v90 & 0x800000) != 0)
    {
      v95 = *(v103 + 72);
    }

    else
    {
      v95 = 0;
    }

    v96 = (v93 + v92);
    v117 = (v95 + 32 * v96);
    v118 = (v94 + v96) - v96;
    _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(&v105, &v113, &v117);
    v97 = *(a2 + 24);
    v104 = v97;
    Context = mlir::Attribute::getContext(&v104);
    v99 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id, Context);
    if (v100)
    {
      mlir::OperationState::OperationState(&v113, v97, v99);
      mlir::ValueRange::ValueRange(&v117, v109, v110);
      mlir::ValueRange::ValueRange(v115, v107, v108);
      mlir::ValueRange::ValueRange(v112, v105, v106);
      mlir::ValueRange::ValueRange(&v111, 0, 0);
      mlir::scf::ParallelOp::build((a3 + 8), &v113, v117, v118, v115[0], v115[1], v112[0], v112[1], v101, v102);
    }

    v121 = 1283;
    v119 = "scf.parallel";
    v120 = 12;
    v116 = 259;
    llvm::operator+(&v117, v115, &v113);
    llvm::report_fatal_error(&v113, 1);
  }

  v18 = *(v10 + 44);
  v19 = v10 + 16 * ((v18 >> 23) & 1);
  v22 = *(v19 + 64);
  v20 = v19 + 64;
  v21 = v22;
  if (v22)
  {
    while (1)
    {
      if ((v18 & 0x800000) != 0)
      {
        v24 = *(v10 + 72);
      }

      else
      {
        v24 = 0;
      }

      v25 = *v15;
      v26 = (v24 + 24);
      v27 = v21;
      while (*v26 != v25)
      {
        v26 += 4;
        if (!--v27)
        {
          goto LABEL_25;
        }
      }

      if (v27)
      {
        return 0;
      }

LABEL_25:
      if ((v18 & 0x800000) != 0)
      {
        v28 = *(v10 + 72);
        v29 = *(v20 + 4);
        v30 = (v29 + v21);
        v31 = v30 - v21;
        if (!v29)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v28 = 0;
        v34 = *(v20 + 4);
        v30 = (v34 + v21);
        v31 = v30 - v21;
        if (!v34)
        {
LABEL_33:
          v32 = 0;
          goto LABEL_34;
        }
      }

      v32 = 0;
      v33 = (v28 + ((32 * v21) | 0x18));
      while (*v33 != v25)
      {
        ++v32;
        v33 += 4;
        if (v31 == v32)
        {
          goto LABEL_35;
        }
      }

LABEL_34:
      if (v32 != v31)
      {
        return 0;
      }

LABEL_35:
      if ((v18 & 0x800000) != 0)
      {
        v35 = *(v10 + 72);
        v36 = *(v20 + 8);
        v37 = (v36 + v30) - v30;
        if (v36)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v35 = 0;
        v39 = *(v20 + 8);
        v37 = (v39 + v30) - v30;
        if (v39)
        {
LABEL_37:
          v23 = 0;
          v38 = (v35 + 32 * v30 + 24);
          while (*v38 != v25)
          {
            ++v23;
            v38 += 4;
            if (v37 == v23)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_16;
        }
      }

      v23 = 0;
LABEL_16:
      if (v23 != v37)
      {
        return 0;
      }

LABEL_17:
      if (++v15 == v16)
      {
        goto LABEL_89;
      }
    }
  }

  v40 = *(v20 + 4);
  if (!v40)
  {
    v52 = *(v20 + 8);
    if (v52)
    {
      if ((v18 & 0x800000) != 0)
      {
        v53 = *(v10 + 72) + 32 * v40 + 24;
        do
        {
          v54 = v53;
          v55 = v52;
          do
          {
            if (*v54 == *v15)
            {
              return 0;
            }

            v54 += 4;
            --v55;
          }

          while (v55);
          ++v15;
        }

        while (v15 != v16);
      }

      else
      {
        v63 = (32 * v40) | 0x18;
        do
        {
          v64 = v63;
          v65 = v52;
          do
          {
            if (*v64 == *v15)
            {
              return 0;
            }

            v64 += 4;
            --v65;
          }

          while (v65);
          ++v15;
          v17 = a2;
        }

        while (v15 != v16);
      }
    }

    goto LABEL_89;
  }

  v41 = v40 - v21;
  if ((v18 & 0x800000) != 0)
  {
    v42 = *(v10 + 72);
    v43 = v42 + 32 * v21 + 24;
    v44 = v42 + 32 * v40 + 24;
    while (1)
    {
      v46 = *v15;
      v47 = v43;
      v48 = v41;
      while (*v47 != v46)
      {
        v47 += 4;
        if (!--v48)
        {
          goto LABEL_54;
        }
      }

      if (v48)
      {
        break;
      }

LABEL_54:
      v49 = *(v20 + 8);
      v50 = (v49 + v40) - v40;
      if (v49)
      {
        v45 = 0;
        v51 = v44;
        while (*v51 != v46)
        {
          ++v45;
          v51 += 4;
          if (v50 == v45)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v45 = 0;
      }

      if (v45 != v50)
      {
        return 0;
      }

LABEL_48:
      if (++v15 == v16)
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    while (1)
    {
      v57 = *v15;
      v58 = ((32 * v21) | 0x18);
      v59 = v40 - v21;
      while (*v58 != v57)
      {
        v58 += 4;
        if (!--v59)
        {
          goto LABEL_77;
        }
      }

      if (v59)
      {
        break;
      }

LABEL_77:
      v60 = *(v20 + 8);
      v61 = (v60 + v40) - v40;
      if (v60)
      {
        v56 = 0;
        v62 = ((32 * v40) | 0x18);
        while (*v62 != v57)
        {
          ++v56;
          v62 += 4;
          if (v61 == v56)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v56 = 0;
      }

      if (v56 != v61)
      {
        return 0;
      }

LABEL_71:
      ++v15;
      v17 = a2;
      if (v15 == v16)
      {
        goto LABEL_89;
      }
    }
  }

  return 0;
}

void _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(uint64_t a1, void *a2, uint64_t *a3)
{
  v50[6] = *MEMORY[0x1E69E9840];
  __src = v50;
  v49 = 0x600000000;
  v6 = a2[1];
  v7 = a3[1] + v6;
  if (v7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v50, v7, 8);
    v9 = a2;
    v8 = *a2;
    v6 = v9[1];
    LODWORD(v49) = 0;
    if (v6 <= HIDWORD(v49))
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v50, v6, 8);
    v10 = v49;
    v11 = __src;
    v12 = __src + 8 * v49;
    if (v6 < 0xD)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v8 = *a2;
  LODWORD(v49) = 0;
  if (v6 > 6)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!v6)
  {
    v25 = 0;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = __src;
  v12 = __src;
  if (v6 < 0xD)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v12 >= v8 + 32 * v6 || v8 + 24 >= v11 + 8 * v6 + 8 * v10)
  {
    v14 = v6 & 3;
    if ((v6 & 3) == 0)
    {
      v14 = 4;
    }

    v13 = v6 - v14;
    v15 = &v12[v13];
    v16 = (v8 + 88);
    v17 = (v12 + 2);
    v18 = v13;
    do
    {
      v19 = v16 - 8;
      v20 = vld4q_f64(v19);
      v21 = vld4q_f64(v16);
      *(v17 - 1) = v20;
      *v17 = v21;
      v16 += 16;
      v17 += 2;
      v18 -= 4;
    }

    while (v18);
    v12 = v15;
    goto LABEL_16;
  }

LABEL_10:
  v13 = 0;
LABEL_16:
  v22 = v6 - v13;
  v23 = (v8 + 32 * v13 + 24);
  do
  {
    v24 = *v23;
    v23 += 4;
    *v12++ = v24;
    --v22;
  }

  while (v22);
  v25 = v49;
LABEL_19:
  v26 = (v25 + v6);
  LODWORD(v49) = v25 + v6;
  v28 = *a3;
  v27 = a3[1];
  if (v27 + v26 > HIDWORD(v49))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v50, v27 + v26, 8);
    v26 = v49;
  }

  v29 = __src;
  if (v27)
  {
    v30 = __src + 8 * v26;
    if (v27 >= 0xD && ((v31 = __src + 8 * v26 + 8 * v27, v30 < v28 + 32 * v27) ? (v32 = v28 + 24 >= v31) : (v32 = 1), v32))
    {
      v33 = v27 & 3;
      if ((v27 & 3) == 0)
      {
        v33 = 4;
      }

      v34 = v27 - v33;
      v35 = &v30[v34];
      v36 = (v28 + 88);
      v37 = (v30 + 2);
      v38 = v34;
      do
      {
        v39 = v36 - 8;
        v40 = vld4q_f64(v39);
        v41 = vld4q_f64(v36);
        *(v37 - 1) = v40;
        *v37 = v41;
        v36 += 16;
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      v30 = v35;
    }

    else
    {
      v34 = 0;
    }

    v42 = v27 - v34;
    v43 = (v28 + 32 * v34 + 24);
    do
    {
      v44 = *v43;
      v43 += 4;
      *v30++ = v44;
      --v42;
    }

    while (v42);
    LODWORD(v26) = v49;
    v29 = __src;
  }

  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  v45 = (v26 + v27);
  LODWORD(v49) = v45;
  if (v45 && &__src != a1)
  {
    if (v29 == v50)
    {
      v47 = v45;
      if (v45 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v45, 8), v47 = v49, v29 = __src, v49))
      {
        memcpy(*a1, v29, 8 * v47);
        v29 = __src;
      }

      *(a1 + 8) = v45;
    }

    else
    {
      *a1 = v29;
      v46 = HIDWORD(v49);
      *(a1 + 8) = v45;
      *(a1 + 12) = v46;
      __src = v50;
      HIDWORD(v49) = 0;
      v29 = v50;
    }

    LODWORD(v49) = 0;
  }

  if (v29 != v50)
  {
    free(v29);
  }
}

void llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)>::callback_fn<anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(mlir::scf::ParallelOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::ValueRange,mlir::ValueRange)#1}>(uint64_t **a1, uint64_t **a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v8 = a1[1];
  v9 = **a1;
  v11 = *(v9 + 40);
  v10 = *(v9 + 44);
  v13 = v8[6];
  v12 = v8[7];
  v40[0] = a4;
  v40[1] = a5;
  v14 = *(((v9 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v11 + 8);
  if (v14)
  {
    v15 = (v14 - 8);
  }

  else
  {
    v15 = 0;
  }

  if (a5 >= ((v12 - v13) >> 3))
  {
    v16 = ((v12 - v13) >> 3);
  }

  else
  {
    v16 = a5;
  }

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v41 = v13;
  v42 = a4;
  v43 = 0;
  if (v12 != v13 && v16)
  {
    v17 = 0;
    do
    {
      v18 = mlir::ValueRange::dereference_iterator(&v42, v17);
      v39 = *v13;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v31, &v39) = v18;
      v13 = v41 + 8;
      v17 = v43 + 1;
      v41 = v13;
      ++v43;
    }

    while (v13 != v12 && v17 != v16);
  }

  v21 = v15[6];
  v20 = v15[7];
  v22 = ((v20 - v21) >> 3);
  if (v5 > v22)
  {
    v6 = mlir::ValueRange::offset_base(v40, v5 - v22);
    v5 = ((v20 - v21) >> 3);
  }

  v41 = v21;
  v42 = v6;
  v43 = 0;
  if (v20 != v21 && v5 != 0)
  {
    v24 = 0;
    do
    {
      v25 = mlir::ValueRange::dereference_iterator(&v42, v24);
      v39 = *v21;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v31, &v39) = v25;
      v21 = v41 + 8;
      v24 = v43 + 1;
      v41 = v21;
      ++v43;
    }

    while (v21 != v20 && v24 != v5);
  }

  v27 = v15[5];
  v28 = (v15 + 4);
  if (v27 != (v15 + 4))
  {
    for (i = *v28; v27 != i; v27 = *(v27 + 1))
    {
      ZinIrHalH13g::~ZinIrHalH13g(v27);
      mlir::OpBuilder::clone(a2, v30, v31);
    }
  }

  llvm::deallocate_buffer(v36, (16 * v38));
}

void anonymous namespace::RemoveLoopInvariantArgsFromBeforeBlock::~RemoveLoopInvariantArgsFromBeforeBlock(_anonymous_namespace_::RemoveLoopInvariantArgsFromBeforeBlock *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if (v9)
  {
    mlir::OperationState::OperationState(v15, a2, v8);
    NextResultAtOffset = *a3;
    v11 = a3[1];
    v12 = a3[3];
    if (v11)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v11);
    }

    mlir::ValueRange::ValueRange(&v17, NextResultAtOffset, v12 - v11);
    mlir::TypeRange::TypeRange(v16, v17, v18);
    v13 = mlir::ValueRange::ValueRange(&v17, *a4, *(a4 + 8));
    mlir::scf::WhileOp::build(v13, v15, v16[0], v16[1], v17, v18, 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v15, &v17, v16);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (37 * *a2) & (v2 - 1);
    v5 = *a1 + 16 * v4;
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 8;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -1)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -2;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = *a1 + 16 * (v12 & v3);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 8;
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
    llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -1)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  *(v5 + 8) = 0;
  return v5 + 8;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 4);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = (37 * *a2) & (v5 - 1);
  v9 = *result + 16 * v8;
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -2;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = v6 + 16 * (v16 & v7);
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
      if (*v9 == -1)
      {
LABEL_9:
        *v9 = *a2;
        *(v9 + 8) = *a3;
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
    llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 2);
    if (*v9 == -1)
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::LookupBucketFor<unsigned int>(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

_DWORD *llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::grow(uint64_t a1, int a2)
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
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -1;
        *v13 = -1;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 4;
        }

        while (v10 != &result[4 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFD)
        {
          v25 = (37 * v24) & v16;
          v23 = &result[4 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[4 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 1) = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 4;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 4) = -1;
      *v20 = -1;
      v20 += 8;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[4 * v18];
      do
      {
        *v10 = -1;
        v10 += 4;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void anonymous namespace::RemoveLoopInvariantValueYielded::~RemoveLoopInvariantValueYielded(_anonymous_namespace_::RemoveLoopInvariantValueYielded *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::RemoveLoopInvariantValueYielded::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v49[6] = *MEMORY[0x1E69E9840];
  v5 = a2 + 64;
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  mlir::Block::getTerminator(v7);
  v9 = v8;
  if ((*(v8 + 46) & 0x80) == 0)
  {
    v11 = -1;
    v12 = 32;
LABEL_7:
    v13 = (v12 + 24);
    v14 = v11;
    while (1)
    {
      v47 = *v13;
      if (mlir::Value::getParentBlock(&v47) != v7)
      {
        break;
      }

      v13 += 4;
      if (!--v14)
      {
        return 0;
      }
    }

    v16 = 0;
    v17 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 48);
    v47 = v49;
    v48 = 0x600000000;
    v44 = &v46;
    v45 = 0x600000000;
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v41 = &v43;
    v42 = 0x600000000;
    v20 = (v12 + 24);
    while (1)
    {
      v37 = *v20;
      if (mlir::Value::getParentBlock(&v37) == v7)
      {
        break;
      }

      LODWORD(v38) = v16;
      v39[0] = v37;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(v35, &v38, v39, v40);
LABEL_16:
      ++v16;
      v20 += 4;
      if (v11 == v16)
      {
        v27 = a3 + 3;
        v34 = *(a3 + 3);
        v28 = *(v9 + 2);
        ZinIrHalH13g::~ZinIrHalH13g(v9);
        a3[3] = v28;
        a3[4] = v29;
        v40[0] = *(*(v9 + 9) + 24);
        v30 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), *(v9 + 3), v40, &v47);
        (*(*a3 + 8))(a3, v9, v30);
        if (v34)
        {
          *v27 = v34;
          v31 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) != 0)
          {
            goto LABEL_27;
          }

LABEL_30:
          v32 = 0;
          v33 = 0;
        }

        else
        {
          *v27 = 0;
          a3[4] = 0;
          v31 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) == 0)
          {
            goto LABEL_30;
          }

LABEL_27:
          v32 = *(a2 + 72);
          v33 = *(a2 + 68);
        }

        v40[0] = v32;
        v40[1] = v33;
        mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>((a3 + 1), v31, &v44, v40);
      }
    }

    v21 = v48;
    if (v48 >= HIDWORD(v48))
    {
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v47, &v37);
      v23 = (*(v37 + 8) & 0xFFFFFFFFFFFFFFF8);
      v40[0] = v23;
      v24 = v45;
      if (v45 < HIDWORD(v45))
      {
LABEL_20:
        v44[v24] = v23;
        LODWORD(v45) = v24 + 1;
        v25 = *(*(v19 + 8 * v16) + 32);
        v40[0] = v25;
        v26 = v42;
        if (v42 >= HIDWORD(v42))
        {
          goto LABEL_24;
        }

LABEL_21:
        *(v41 + v26) = v25;
        LODWORD(v42) = v42 + 1;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = v37;
      v47[v48] = v37;
      LODWORD(v48) = v21 + 1;
      v23 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
      v40[0] = v23;
      v24 = v45;
      if (v45 < HIDWORD(v45))
      {
        goto LABEL_20;
      }
    }

    llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v44, v40);
    v25 = *(*(v19 + 8 * v16) + 32);
    v40[0] = v25;
    v26 = v42;
    if (v42 >= HIDWORD(v42))
    {
LABEL_24:
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v41, v40);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v10 = *(v8 + 68);
  v11 = v10 - 1;
  if (v10 != 1)
  {
    v12 = *(v8 + 72) + 32;
    goto LABEL_7;
  }

  return 0;
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v11 = a2;
  Context = mlir::Attribute::getContext(&v11);
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if (v9)
  {
    mlir::OperationState::OperationState(v12, a2, v8);
    mlir::ValueRange::ValueRange(v14, *a3, *(a3 + 8));
    v10 = mlir::ValueRange::ValueRange(v13, *a4, *(a4 + 8));
    mlir::scf::WhileOp::build(v10, v12, v14[0], v14[1], v13[0], v13[1], 0, 0);
  }

  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v12, v14, v13);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(v19, v20, v18);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v20, *a4, *(a4 + 8));
  v12 = v20[0];
  v13 = v20[1];
  v18[0] = v11;
  mlir::OperationState::addOperands(v19, v18, 1uLL);
  mlir::OperationState::addOperands(v19, v12, v13);
  v14 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v15;
}

void anonymous namespace::WhileConditionTruth::~WhileConditionTruth(_anonymous_namespace_::WhileConditionTruth *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerType,mlir::BoolAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  v11 = *a3;
  v12 = mlir::BoolAttr::operator mlir::TypedAttr(a4);
  mlir::arith::ConstantOp::build(a1, v20, v11, v12, v13);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void anonymous namespace::WhileCmpCond::~WhileCmpCond(_anonymous_namespace_::WhileCmpCond *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::WhileCmpCond::matchAndRewrite(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v62[38] = *MEMORY[0x1E69E9840];
  v5 = a2 + 8;
  v6 = *(((&a2[2 * ((*(a2 + 11) >> 23) & 1) + 8] + ((*(a2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  mlir::Block::getTerminator(v7);
  v9 = v8;
  v62[0] = *(*(v8 + 72) + 24);
  result = mlir::Value::getDefiningOp(v62);
  if (result)
  {
    v11 = *(*(result + 48) + 16);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id;
    if (v11 == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
    {
      v13 = result;
    }

    else
    {
      v13 = 0;
    }

    v57 = v13;
    if (!v12)
    {
      return 0;
    }

    if ((*(v9 + 46) & 0x80) != 0)
    {
      v14 = *(v9 + 72);
      v15 = *(v9 + 68) - 1;
    }

    else
    {
      v14 = 0;
      v15 = -1;
    }

    v16 = 0;
    v17 = *(((&v5[2 * ((*(a2 + 11) >> 23) & 1)] + ((*(a2 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 10) + 32);
    if (v17)
    {
      v18 = v17 - 8;
    }

    else
    {
      v18 = 0;
    }

    if (!v15)
    {
      return v16 & 1;
    }

    v19 = *(v18 + 48);
    v54 = *(v18 + 56);
    if (v19 == v54)
    {
      return v16 & 1;
    }

    v16 = 0;
    v20 = 0;
    v55 = v14 + 32;
    v53 = v15;
LABEL_19:
    v21 = *(v55 + 32 * v20 + 24);
    v22 = *(v57 + 72);
    if (v21 != *(v22 + 24) || (v23 = **v19) == 0)
    {
      if (v21 == *(v22 + 56))
      {
        goto LABEL_40;
      }

      goto LABEL_22;
    }

    while (1)
    {
      v24 = v23[2];
      v23 = *v23;
      if (*(*(v24 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
      {
        v24 = 0;
      }

      v56 = v24;
      if (v24 && *(*(v24 + 72) + 56) == *(*(v57 + 72) + 56))
      {
        Predicate = mlir::arith::CmpIOp::getPredicate(&v56);
        if (Predicate == mlir::arith::CmpIOp::getPredicate(&v57))
        {
          v26 = 1;
LABEL_34:
          v29 = v56;
          v30 = *(v56 + 24);
          v58 = v30;
          Context = mlir::Attribute::getContext(&v58);
          v32 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
          if ((v33 & 1) == 0)
          {
LABEL_57:
            mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v61, v60, v59);
          }

          mlir::OperationState::OperationState(v62, v30, v32);
          v16 = 1;
          mlir::arith::ConstantIntOp::build(a3 + 1, v62, v26, 1);
          v34 = mlir::OpBuilder::create((a3 + 1), v62);
          v36 = mlir::arith::ConstantIntOp::classof(v34, v35);
          mlir::OperationState::~OperationState(v62);
          if (v36)
          {
            v37 = v34;
          }

          else
          {
            v37 = 0;
          }

          ((*a3)[1])(a3, v29, v37);
          goto LABEL_25;
        }

        v27 = mlir::arith::CmpIOp::getPredicate(&v56);
        v28 = mlir::arith::CmpIOp::getPredicate(&v57);
        if (v27 == mlir::arith::invertPredicate(v28))
        {
          v26 = 0;
          goto LABEL_34;
        }
      }

LABEL_25:
      if (!v23)
      {
        if (v21 == *(*(v57 + 72) + 56))
        {
LABEL_40:
          v38 = **v19;
          if (!v38)
          {
            goto LABEL_22;
          }

          while (2)
          {
            v39 = v38[2];
            v38 = *v38;
            if (*(*(v39 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
            {
              v39 = 0;
            }

            v56 = v39;
            if (v39 && *(*(v39 + 72) + 24) == *(*(v57 + 72) + 24))
            {
              v40 = mlir::arith::CmpIOp::getPredicate(&v56);
              if (v40 == mlir::arith::CmpIOp::getPredicate(&v57))
              {
                v41 = 1;
                goto LABEL_51;
              }

              v42 = mlir::arith::CmpIOp::getPredicate(&v56);
              v43 = mlir::arith::CmpIOp::getPredicate(&v57);
              if (v42 == mlir::arith::invertPredicate(v43))
              {
                v41 = 0;
LABEL_51:
                v44 = v56;
                v45 = *(v56 + 24);
                v58 = v45;
                v46 = mlir::Attribute::getContext(&v58);
                v47 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, v46);
                if ((v48 & 1) == 0)
                {
                  goto LABEL_57;
                }

                mlir::OperationState::OperationState(v62, v45, v47);
                v16 = 1;
                mlir::arith::ConstantIntOp::build(a3 + 1, v62, v41, 1);
                v49 = mlir::OpBuilder::create((a3 + 1), v62);
                v51 = mlir::arith::ConstantIntOp::classof(v49, v50);
                mlir::OperationState::~OperationState(v62);
                if (v51)
                {
                  v52 = v49;
                }

                else
                {
                  v52 = 0;
                }

                ((*a3)[1])(a3, v44, v52);
              }
            }

            if (!v38)
            {
              break;
            }

            continue;
          }
        }

LABEL_22:
        if (++v20 == v53)
        {
          return v16 & 1;
        }

        if (++v19 == v54)
        {
          return v16 & 1;
        }

        goto LABEL_19;
      }
    }
  }

  return result;
}

void anonymous namespace::WhileUnusedResult::~WhileUnusedResult(_anonymous_namespace_::WhileUnusedResult *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::SmallVectorTemplateBase<unsigned int,true>::growAndEmplaceBack<unsigned int &>(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 4);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 4 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 4 * v4 - 4;
}

void anonymous namespace::WhileRemoveDuplicatedResults::~WhileRemoveDuplicatedResults(_anonymous_namespace_::WhileRemoveDuplicatedResults *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ValueRange>,mlir::OperandRange,decltype(nullptr),decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v17, a2, v9);
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[3];
    v19 = v11;
    v20 = v12;
    if (v12)
    {
      v11 = mlir::ValueRange::offset_base(&v19, v12);
      v12 = v20;
    }

    mlir::TypeRange::TypeRange(&v19, v11, v13 - v12);
    mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
    mlir::scf::WhileOp::build(a1, v17, v19, v20, v18[0], v18[1], 0, v14, 0, v15);
  }

  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v17, &v19, v18);
}

int *llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(uint64_t a1, unsigned int a2)
{
  v21[6] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v7 = v21;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 2) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 2) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 2) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v19 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v19) ^ (v14 >> 47) ^ v14);
      v16 = v13 & (-348639895 * ((v15 >> 47) ^ v15));
      v17 = &v12[4 * v16];
      v18 = *v17;
      if (v19 != *v17)
      {
        v20 = 0;
        v21 = 1;
        while (v18 != -4096)
        {
          if (v20)
          {
            v22 = 0;
          }

          else
          {
            v22 = v18 == -8192;
          }

          if (v22)
          {
            v20 = v17;
          }

          v23 = v16 + v21++;
          v16 = v23 & v13;
          v17 = &v12[4 * (v23 & v13)];
          v18 = *v17;
          if (v19 == *v17)
          {
            goto LABEL_15;
          }
        }

        if (v20)
        {
          v17 = v20;
        }
      }

LABEL_15:
      *v17 = v19;
      v17[2] = *(a2 + 2);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 16 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v3 + 16 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::try_emplace<unsigned int>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 4;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v13 = 0;
      v16 = 0;
      v26 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = HIDWORD(*a2);
  v10 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v9);
  LODWORD(v10) = -348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)));
  v11 = v7 - 1;
  v12 = v10 & (v7 - 1);
  v13 = &v8[4 * v12];
  v14 = *v13;
  if (*a2 == *v13)
  {
LABEL_6:
    if (v6)
    {
      v15 = 4;
    }

    else
    {
      v5 = *(result + 1);
      v15 = result[4];
    }

    *a4 = v13;
    *(a4 + 8) = &v5[4 * v15];
    *(a4 + 16) = 0;
    return result;
  }

  v18 = 0;
  v19 = 1;
  while (v14 != -4096)
  {
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v14 == -8192;
    }

    if (v20)
    {
      v18 = v13;
    }

    v21 = v12 + v19++;
    v12 = v21 & v11;
    v13 = &v8[4 * (v21 & v11)];
    v14 = *v13;
    if (*a2 == *v13)
    {
      goto LABEL_6;
    }
  }

  if (v18)
  {
    v13 = v18;
  }

  v26 = v13;
  if (v6)
  {
    v16 = 4;
  }

  else
  {
    v16 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v16)
  {
    v16 *= 2;
    goto LABEL_34;
  }

  if (v16 + ~(v4 >> 1) - result[1] <= v16 >> 3)
  {
LABEL_34:
    v24 = a2;
    v25 = result;
    v22 = a3;
    v23 = a4;
    llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::grow(result, v16);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,unsigned int,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>,mlir::Value,unsigned int,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned int>>::LookupBucketFor<mlir::Value>(v25, v24, &v26);
    a2 = v24;
    result = v25;
    a3 = v22;
    a4 = v23;
    v4 = *v25;
    v13 = v26;
    v6 = *v25 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v13 != -4096)
  {
    --result[1];
  }

  *v13 = *a2;
  v13[2] = *a3;
  if (*result)
  {
    v17 = 4;
  }

  else
  {
    v5 = *(result + 1);
    v17 = result[4];
  }

  *a4 = v13;
  *(a4 + 8) = &v5[4 * v17];
  *(a4 + 16) = 1;
  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[38] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(v20, v19, v18);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  v11 = *a3;
  v13 = *a4;
  v12 = a4[1];
  v19[0] = v11;
  mlir::OperationState::addOperands(v20, v19, 1uLL);
  mlir::OperationState::addOperands(v20, v13, v12);
  v14 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v15;
}

void anonymous namespace::WhileRemoveUnusedArgs::~WhileRemoveUnusedArgs(_anonymous_namespace_::WhileRemoveUnusedArgs *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::WhileRemoveUnusedArgs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v79[6] = *MEMORY[0x1E69E9840];
  v5 = a2 + 64;
  v6 = ((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v7 = *(v6 + 8);
  v8 = v7 - 8;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(v8 + 48);
  v10 = *(v8 + 56);
  if (v10 != v9)
  {
    while (**v9)
    {
      if (++v9 == v10)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v6 + 32);
    if (v13)
    {
      v14 = (v13 - 8);
    }

    else
    {
      v14 = 0;
    }

    mlir::Block::getTerminator(v14);
    v16 = v15;
    v77 = v79;
    v78 = 0x600000000;
    v74 = v76;
    v75 = 0x600000000;
    v73 = 0;
    v17 = *(v4 + 40);
    v18 = v5 + 16 * ((*(v4 + 44) >> 23) & 1) + ((*(v4 + 44) >> 21) & 0x7F8);
    v70 = v72;
    v71 = 0x600000000;
    v19 = *(((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v17 + 8);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v22 = *(v20 + 48);
    v21 = *(v20 + 56);
    v23 = v21 - v22;
    v24 = (v21 - v22) >> 3;
    if (v24 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, (v21 - v22) >> 3, 8);
      if (v24 > HIDWORD(v75))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v76, v24, 8);
      }
    }

    v25 = ((v23 >> 3) + 63) >> 6;
    if (HIDWORD(v71) < v25)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v25, 8);
    }

    v26 = *(v4 + 44);
    v27 = (v26 >> 23) & 1;
    v28 = (v26 >> 21) & 0x7F8;
    v29 = 32 * *(v4 + 40);
    v30 = *(((v5 + 16 * v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 8);
    if (v30)
    {
      v31 = v30 - 8;
    }

    else
    {
      v31 = 0;
    }

    if ((*(v16 + 46) & 0x80) != 0)
    {
      v32 = *(v16 + 72);
      v33 = *(v16 + 68);
      if ((v26 & 0x800000) == 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      if ((v26 & 0x800000) == 0)
      {
        goto LABEL_63;
      }
    }

    v34 = *(v31 + 48);
    v35 = *(v31 + 56);
    v36 = *(v4 + 68);
    v37 = v34 == v35 || v33 == 0;
    if (!v37 && v36 != 0)
    {
      v63 = v5;
      v64 = v3;
      v39 = 0;
      v65 = v4;
      v40 = (v32 + 24);
      v41 = (*(v4 + 72) + 24);
      v42 = 8 * v33 - 8;
      v43 = 8 * v36 - 8;
      while (1)
      {
        v44 = *v40;
        v45 = *v41;
        v67 = v34 + v39;
        v68 = v44;
        v69 = v45;
        if (!**(v34 + v39))
        {
          llvm::BitVector::push_back(&v70, 1);
          v54 = v39 + 8;
          if (v39 + 8 + v34 == v35)
          {
            goto LABEL_62;
          }

          goto LABEL_53;
        }

        v46 = v73;
        v47 = v71;
        v48 = v73 + 1;
        if ((v73 + 1) > v71 << 6)
        {
          break;
        }

        ++v73;
LABEL_50:
        v55 = v78;
        if (v78 >= HIDWORD(v78))
        {
          llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v77, &v68);
          v56 = v75;
          if (v75 >= HIDWORD(v75))
          {
LABEL_58:
            llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v74, &v69);
            v54 = v39 + 8;
            if (v39 + 8 + v34 == v35)
            {
              goto LABEL_62;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v77[v78] = v68;
          LODWORD(v78) = v55 + 1;
          v56 = v75;
          if (v75 >= HIDWORD(v75))
          {
            goto LABEL_58;
          }
        }

        *(v74 + v56) = v69;
        LODWORD(v75) = v56 + 1;
        v54 = v39 + 8;
        if (v39 + 8 + v34 == v35)
        {
          goto LABEL_62;
        }

LABEL_53:
        if (v42 != v39)
        {
          v40 += 4;
          v41 += 4;
          v37 = v43 == v39;
          v39 = v54;
          if (!v37)
          {
            continue;
          }
        }

LABEL_62:
        v3 = v64;
        v4 = v65;
        v57 = *(v65 + 44);
        v27 = (v57 >> 23) & 1;
        v28 = (v57 >> 21) & 0x7F8;
        v29 = 32 * *(v65 + 40);
        v5 = v63;
        goto LABEL_63;
      }

      if ((v73 & 0x3F) != 0)
      {
        *(v70 + v71 - 1) &= ~(-1 << (v73 & 0x3F));
      }

      v73 = v48;
      v49 = (v46 + 64) >> 6;
      if (v47 == v49)
      {
LABEL_45:
        v53 = v48 & 0x3F;
        if (v53)
        {
          *(v70 + v47 - 1) &= ~(-1 << v53);
        }

        goto LABEL_50;
      }

      if (v47 > v49)
      {
LABEL_44:
        LODWORD(v71) = v49;
        LODWORD(v47) = v49;
        goto LABEL_45;
      }

      v50 = v47;
      v51 = v47;
      if (HIDWORD(v71) < v49)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v49, 8);
        v50 = v71;
        v51 = v71;
        v52 = v49 - v47;
        if (v49 == v47)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v52 = v49 - v47;
        if (v49 == v47)
        {
LABEL_43:
          LODWORD(v49) = v49 - v47 + v51;
          LOBYTE(v48) = v73;
          goto LABEL_44;
        }
      }

      bzero(v70 + 8 * v50, 8 * v52);
      goto LABEL_43;
    }

LABEL_63:
    v58 = *(((v5 + 16 * v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) + v29 + 8);
    if (v58)
    {
      v59 = v58 - 8;
    }

    else
    {
      v59 = 0;
    }

    mlir::Block::eraseArguments(v59, &v70);
    v60 = *(v4 + 24);
    v61 = *(v4 + 36);
    v62 = v4 - 16;
    if (!v61)
    {
      v62 = 0;
    }

    v66[0] = v62;
    v66[1] = v61;
    mlir::OperandRange::getTypes(&v67, v66);
    v66[0] = 0;
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &,decltype(nullptr),decltype(nullptr)>((v3 + 8), v60, &v67, &v74);
  }

LABEL_6:
  v70 = "No args to remove";
  v72[8] = 259;
  v77 = &v70;
  v11 = *(a3 + 16);
  if (v11 && instruction::util::IsTasklet(*(a3 + 16)))
  {
    (*(*v11 + 88))(v11, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v77);
  }

  return 0;
}

uint64_t llvm::BitVector::push_back(uint64_t this, int a2)
{
  v2 = *(this + 64);
  v3 = v2 + 1;
  v4 = *(this + 8);
  if (v2 + 1 > v4 << 6)
  {
    if ((v2 & 0x3F) != 0)
    {
      *(*this + 8 * v4 - 8) &= ~(-1 << (v2 & 0x3F));
    }

    *(this + 64) = v3;
    v5 = (v2 + 64) >> 6;
    if (v4 == v5)
    {
LABEL_11:
      v11 = v3 & 0x3F;
      if (v11)
      {
        *(*this + 8 * v4 - 8) &= ~(-1 << v11);
      }

      if (a2)
      {
        goto LABEL_14;
      }

      return this;
    }

    if (v4 > v5)
    {
LABEL_10:
      *(this + 8) = v5;
      LODWORD(v4) = v5;
      goto LABEL_11;
    }

    v6 = v4;
    v7 = v4;
    if (*(this + 12) < v5)
    {
      v12 = a2;
      v13 = this;
      llvm::SmallVectorBase<unsigned int>::grow_pod(this, (this + 16), (v2 + 64) >> 6, 8);
      a2 = v12;
      this = v13;
      v6 = *(v13 + 8);
      v7 = *(v13 + 8);
      v8 = v5 - v4;
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = v5 - v4;
      if (v5 == v4)
      {
LABEL_9:
        LODWORD(v5) = v7 + v5 - v4;
        v3 = *(this + 64);
        goto LABEL_10;
      }
    }

    v9 = this;
    v10 = a2;
    bzero((*this + 8 * v6), 8 * v8);
    a2 = v10;
    this = v9;
    goto LABEL_9;
  }

  *(this + 64) = v3;
  if (a2)
  {
LABEL_14:
    *(*this + 8 * (v2 >> 6)) |= 1 << v2;
  }

  return this;
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &,decltype(nullptr),decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v17, a2, v9);
    NextResultAtOffset = *a3;
    v12 = a3[1];
    v13 = a3[3];
    if (v12)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
    }

    mlir::ValueRange::ValueRange(&v19, NextResultAtOffset, v13 - v12);
    mlir::TypeRange::TypeRange(v18, v19, v20);
    mlir::ValueRange::ValueRange(&v19, *a4, *(a4 + 8));
    mlir::scf::WhileOp::build(a1, v17, v18[0], v18[1], v19, v20, 0, v14, 0, v15);
  }

  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v17, &v19, v18);
}

void anonymous namespace::WhileOpAlignBeforeArgs::~WhileOpAlignBeforeArgs(_anonymous_namespace_::WhileOpAlignBeforeArgs *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

void mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange,decltype(nullptr),decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if (v10)
  {
    mlir::OperationState::OperationState(v14, a2, v9);
    mlir::ValueRange::ValueRange(v16, *a3, *(a3 + 8));
    mlir::ValueRange::ValueRange(v15, *a4, *(a4 + 8));
    mlir::scf::WhileOp::build(a1, v14, v16[0], v16[1], v15[0], v15[1], 0, v11, 0, v12);
  }

  mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v14, v16, v15);
}

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v12 = 0;
      v15 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = HIDWORD(*a2);
  v9 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v8);
  LODWORD(v9) = -348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)));
  v10 = v6 - 1;
  v11 = v9 & (v6 - 1);
  v12 = &v7[2 * v11];
  v13 = *v12;
  if (*a2 == *v12)
  {
LABEL_6:
    if (v5)
    {
      v14 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v14 = result[4];
    }

    *a3 = v12;
    *(a3 + 8) = &v4[2 * v14];
    *(a3 + 16) = 0;
    return result;
  }

  v17 = 0;
  v18 = 1;
  while (v13 != -4096)
  {
    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13 == -8192;
    }

    if (v19)
    {
      v17 = v12;
    }

    v20 = v11 + v18++;
    v11 = v20 & v10;
    v12 = &v7[2 * (v20 & v10)];
    v13 = *v12;
    if (*a2 == *v12)
    {
      goto LABEL_6;
    }
  }

  if (v17)
  {
    v12 = v17;
  }

  v24 = v12;
  if (v5)
  {
    v15 = 4;
  }

  else
  {
    v15 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v15)
  {
    v15 *= 2;
    goto LABEL_34;
  }

  if (v15 + ~(v3 >> 1) - result[1] <= v15 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v21 = a3;
    llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(result, v15);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v21;
    v3 = *v23;
    v12 = v24;
    v5 = *v23 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v12 != -4096)
  {
    --result[1];
  }

  *v12 = *a2;
  if (*result)
  {
    v16 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v16 = result[4];
  }

  *a3 = v12;
  *(a3 + 8) = &v4[2 * v16];
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v4 - 1;
    v8 = v6 & (v4 - 1);
    v9 = (v3 + 8 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v3 + 8 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v9 = 0;
  result = 0;
LABEL_8:
  *a3 = v9;
  return result;
}

int *llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(uint64_t a1, unsigned int a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(8 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (8 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 16);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v7 = v20;
    v8 = *(a1 + 16);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7++ = v8;
  v9 = *(a1 + 24);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 32);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7++ = v10;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7++ = v9;
  v10 = *(a1 + 32);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(8 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Value,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::moveFromOldBuckets(int *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 10;
    v5 = result + 2;
    v7 = 24;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[2 * v4];
    v7 = v6 - v5 - 8;
    if (v7 < 0x18)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 2;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 3) + 1;
  v9 = &v5[2 * (v8 & 0x3FFFFFFFFFFFFFFCLL)];
  v10 = (v5 + 4);
  v11 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v12 = v8 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v10[-1] = v11;
    *v10 = v11;
    v10 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v20 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v14 = 3;
        v13 = result + 2;
      }

      else
      {
        v13 = *(result + 1);
        v14 = result[4] - 1;
      }

      v15 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v20) ^ (v15 >> 47) ^ v15);
      v17 = v14 & (-348639895 * ((v16 >> 47) ^ v16));
      v18 = &v13[2 * v17];
      v19 = *v18;
      if (v20 != *v18)
      {
        v21 = 0;
        v22 = 1;
        while (v19 != -4096)
        {
          if (v21)
          {
            v23 = 0;
          }

          else
          {
            v23 = v19 == -8192;
          }

          if (v23)
          {
            v21 = v18;
          }

          v24 = v17 + v22++;
          v17 = v24 & v14;
          v18 = &v13[2 * (v24 & v14)];
          v19 = *v18;
          if (v20 == *v18)
          {
            goto LABEL_15;
          }
        }

        if (v21)
        {
          v18 = v21;
        }
      }

LABEL_15:
      *v18 = v20;
      *result += 2;
    }

    ++a2;
  }

  return result;
}

char *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<std::unique_ptr<mlir::Region>>(uint64_t a1, uint64_t *a2)
{
  v27 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v27);
  v6 = *(a1 + 8);
  v7 = 8 * v6;
  v8 = *a2;
  *a2 = 0;
  *&v5[8 * v6] = v8;
  v9 = *a1;
  v10 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  v11 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 < 0xB)
  {
    v12 = v5;
    do
    {
LABEL_12:
      v21 = *v10;
      *v10 = 0;
      v10 += 8;
      *v12 = v21;
      v12 += 8;
    }

    while (v10 != &v9[v7]);
    goto LABEL_13;
  }

  v13 = v9 >= &v5[v7] || v5 >= &v9[v7];
  v12 = v5;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v11 + 1;
  v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
  v12 = &v5[v15];
  v10 = &v9[v15];
  v16 = (v9 + 16);
  v17 = v5 + 16;
  v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = *(v16 - 1);
    v20 = *v16;
    *(v16 - 1) = 0uLL;
    *v16 = 0uLL;
    *(v17 - 1) = v19;
    *v17 = v20;
    v16 += 2;
    v17 += 2;
    v18 -= 4;
  }

  while (v18);
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  v22 = v9 - 8;
  do
  {
    v23 = *&v22[v7];
    *&v22[v7] = 0;
    if (v23)
    {
      mlir::Region::~Region(v23);
      MEMORY[0x1AC55A070]();
    }

    v7 -= 8;
  }

  while (v7);
  v10 = *a1;
LABEL_18:
  v24 = v27;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v5;
  v25 = *(a1 + 8) + 1;
  *(a1 + 8) = v25;
  *(a1 + 12) = v24;
  return &v5[8 * v25 - 8];
}

double std::__copy_impl::operator()[abi:nn200100]<llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,llvm::detail::indexed_accessor_range_base<mlir::RegionRange,llvm::PointerUnion<mlir::Region *,std::unique_ptr<mlir::Region> const*,mlir::Region **>,mlir::Region *,mlir::Region *,mlir::Region *>::iterator,std::back_insert_iterator<llvm::SmallVectorImpl<mlir::RegionSuccessor>>>@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  *&v17 = a1;
  for (*(&v17 + 1) = a2; a2 != a3; *(&v17 + 1) = a2)
  {
    v15 = mlir::RegionRange::dereference_iterator(&v17, a2);
    mlir::ValueRange::ValueRange(&v16, 0, 0);
    v9 = *(a4 + 8);
    v10 = *a4;
    if (v9 >= *(a4 + 12))
    {
      if (v10 <= &v15 && v10 + 24 * v9 > &v15)
      {
        v14 = &v15 - v10;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v9 + 1, 24);
        v10 = *a4;
        v11 = &v14[*a4];
        goto LABEL_5;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v9 + 1, 24);
      v10 = *a4;
    }

    v11 = &v15;
LABEL_5:
    v12 = v10 + 24 * *(a4 + 8);
    v13 = *v11;
    *(v12 + 16) = v11[2];
    *v12 = v13;
    ++*(a4 + 8);
    a2 = *(&v17 + 1) + 1;
  }

  result = *&v17;
  *a5 = v17;
  *(a5 + 16) = a4;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,BOOL>(uint64_t a1, _DWORD *a2, unsigned __int8 *a3)
{
  LODWORD(v7) = *a2;
  HIDWORD(v7) = *a3;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 12);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  v4 = *a1 + 12 * v3;
  *v4 = v7;
  *(v4 + 8) = 1;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 12 * v4 - 12;
}

void FoldConstantCase::~FoldConstantCase(FoldConstantCase *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t FoldConstantCase::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[6] = *MEMORY[0x1E69E9840];
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 24) | 4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = ConstantIntValue;
  v8 = a2 + 64;
  v40 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v40);
  v9 = 0;
  v11 = v10;
  if (v10)
  {
    while (1)
    {
      v40 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1));
      if (v7 == *(mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v40) + 8 * v9))
      {
        break;
      }

      if (v11 == ++v9)
      {
        v9 = v11;
        break;
      }
    }
  }

  v40 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1));
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v40);
  v12 = *(a2 + 44);
  if (v9 >= v13)
  {
    v16 = ((v8 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    if ((v12 & 0x7FFFFF) != 0)
    {
      v14 = ((v8 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    }

    else
    {
      v14 = 0;
    }

    v16 = v14 + 24 * v9 + 24;
  }

  v17 = *(v16 + 8);
  if (v17)
  {
    v18 = (v17 - 8);
  }

  else
  {
    v18 = 0;
  }

  mlir::Block::getTerminator(v18);
  v20 = v19;
  if ((*(v19 + 46) & 0x80) == 0)
  {
    LODWORD(v22) = 0;
    v37 = 0;
    v40 = v42;
    HIDWORD(v41) = 6;
    goto LABEL_36;
  }

  v21 = *(v19 + 72);
  v22 = *(v19 + 68);
  v40 = v42;
  v41 = 0x600000000;
  if (v22 < 7)
  {
    if (!v22)
    {
      v37 = 0;
      goto LABEL_36;
    }

    v23 = v42;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v40, v42, v22, 8);
    v23 = v40 + 8 * v41;
    if (v22 >= 0xD && (v23 >= v21 + 32 * v22 || v21 + 24 >= v40 + 8 * v41 + 8 * v22))
    {
      v25 = v22 & 3;
      if ((v22 & 3) == 0)
      {
        v25 = 4;
      }

      v26 = v22 - v25;
      v27 = &v23[v26];
      v28 = (v21 + 88);
      v29 = (v23 + 2);
      v30 = v26;
      do
      {
        v31 = v28 - 8;
        v32 = vld4q_f64(v31);
        v33 = vld4q_f64(v28);
        *(v29 - 1) = v32;
        *v29 = v33;
        v28 += 16;
        v29 += 2;
        v30 -= 4;
      }

      while (v30);
      v23 = v27;
      goto LABEL_33;
    }
  }

  v26 = 0;
LABEL_33:
  v34 = v22 - v26;
  v35 = (v21 + 32 * v26 + 24);
  do
  {
    v36 = *v35;
    v35 += 4;
    *v23++ = v36;
    --v34;
  }

  while (v34);
  v37 = v41;
LABEL_36:
  LODWORD(v41) = v37 + v22;
  mlir::ValueRange::ValueRange(&v38, 0, 0);
  mlir::RewriterBase::inlineBlockBefore(a3, v18, a2, v38, v39);
  (*(*a3 + 16))(a3, v20);
  mlir::ValueRange::ValueRange(&v38, v40, v41);
  (**a3)(a3, a2, v38, v39);
  if (v40 != v42)
  {
    free(v40);
  }

  return 1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::scf::detail::ForallOpGenericAdaptorBase::Properties]";
  v6 = 107;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties]";
  v6 = 112;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::scf::IndexSwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  (*(**a1 + 24))(&v28);
  if (v28)
  {
    LODWORD(v24) = 3;
    v25 = "'";
    v26 = 1;
    v4 = &v24;
    v5 = v30;
    if (v31 >= v32)
    {
      if (v30 <= &v24 && v30 + 24 * v31 > &v24)
      {
        v22 = &v24 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v5 = v30;
        v4 = (v30 + v22);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
        v4 = &v24;
        v5 = v30;
      }
    }

    v6 = &v5[24 * v31];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v31;
  }

  v24 = *(*(a1[2] + 8) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v24);
  if (v28)
  {
    v27 = 261;
    v24 = AttrData;
    v25 = v9;
    mlir::Diagnostic::operator<<(&v29, &v24);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "' op ";
      v26 = 5;
      v10 = &v24;
      v11 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v23 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v11 = v30;
          v10 = (v30 + v23);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v10 = &v24;
          v11 = v30;
        }
      }

      v12 = &v11[24 * v31];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v31;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v28);
  if (v28)
  {
    mlir::InFlightDiagnostic::report(&v28);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v37;
      v16 = __p;
      if (v37 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v37 = v14;
      operator delete(v16);
    }

    v17 = v34;
    if (v34)
    {
      v18 = v35;
      v19 = v34;
      if (v35 != v34)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v34;
      }

      v35 = v17;
      operator delete(v19);
    }

    if (v30 != v33)
    {
      free(v30);
    }
  }
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IndexSwitchOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties]";
  v6 = 109;
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

__n128 OUTLINED_FUNCTION_12_9@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_23_5@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_6@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_30_6()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void OUTLINED_FUNCTION_33_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *v7 = a1;
  *(v7 + 8) = v8;
  *(v7 + 12) = a7;
}

__n128 OUTLINED_FUNCTION_36_3@<Q0>(unsigned __int128 *a1@<X8>)
{
  v2 = v1 - 8;
  result = vld4q_f64(v2);
  v4 = vld4q_f64(v1);
  *(a1 - 1) = result;
  *a1 = v4;
  return result;
}

void OUTLINED_FUNCTION_46_2(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, a1 + 1, 24);
}

void OUTLINED_FUNCTION_63_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = a10;
  v15 = a11;

  mlir::getMixedValues(v11, v12, v14, v15, &a9, va);
}

void OUTLINED_FUNCTION_75_3(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2, v3, 8);
}

void OUTLINED_FUNCTION_76_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, const char *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  mlir::OpState::emitOpError(v10, va, va1);
}

llvm::raw_ostream *OUTLINED_FUNCTION_91_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return mlir::printDynamicIndexList(a1, a2, a3, a4, v11, v12, 0, 0, a9, a10, a11);
}

void OUTLINED_FUNCTION_125_1(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2, 8);
}

void *OUTLINED_FUNCTION_127_1@<X0>(const void *a1@<X8>)
{
  v4 = *v2;

  return memcpy(v4, a1, 8 * v1);
}

uint64_t OUTLINED_FUNCTION_128_1@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 56) = a2;
  v4 = (*a1 + 24);

  return mlir::Attribute::getContext(v4);
}

uint64_t OUTLINED_FUNCTION_129_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{

  return mlir::Builder::getDenseI64ArrayAttr(&a53, v53, v54);
}

void OUTLINED_FUNCTION_130_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, &a20, a1 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_134_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a5 = a1;

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a5);
}

void OUTLINED_FUNCTION_135(uint64_t a1@<X8>)
{

  bzero((v2 + 8 * a1), 8 * v1);
}

void OUTLINED_FUNCTION_136_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a65, a20, v65 + 1, 24);
}

void OUTLINED_FUNCTION_138_0(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2, 8);
}

uint64_t OUTLINED_FUNCTION_139_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a16);
}

void OUTLINED_FUNCTION_140_0(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2, 8);
}

void OUTLINED_FUNCTION_141_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  operator delete(a1);
}

__n128 OUTLINED_FUNCTION_150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a18, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a19)
{
  result = a19;
  *(v19 - 128) = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_164_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;

  return mlir::tensor::preservesStaticInformation(a1 & 0xFFFFFFFFFFFFFFF8, v3);
}

void OUTLINED_FUNCTION_165_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v9 - 160, a9, a1 + 1, 8);
}

void OUTLINED_FUNCTION_166_0()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

uint64_t mlir::isOpTriviallyDead(mlir *this, mlir::Operation *a2)
{
  v3 = *(this + 9);
  if (v3)
  {
    v4 = this - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 0;
    while (!*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5))
    {
      if (v3 == ++v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:

    return mlir::wouldOpBeTriviallyDead(this, a2);
  }
}

uint64_t mlir::wouldOpBeTriviallyDead(mlir *this, mlir::Operation *a2)
{
  v72[1] = *MEMORY[0x1E69E9840];
  {
    v3 = *(this + 6);
    if (v3[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      return 0;
    }
  }

  else
  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v3 = *(this + 6);
    if (v3[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      return 0;
    }
  }

  if ((*(*v3 + 4))(v3, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    return 0;
  }

  if (mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(this))
  {
    if (*(this + 47) && (InherentAttr = mlir::Operation::getInherentAttr(this, "sym_name", 8), (v6 & 1) != 0))
    {
      if (InherentAttr)
      {
        return 0;
      }
    }

    else if (mlir::DictionaryAttr::contains(this + 56, "sym_name", 8uLL))
    {
      return 0;
    }
  }

  v69 = v72;
  v7 = 1;
  v71 = 1;
  v72[0] = this;
  while (1)
  {
    v8 = v69[v7 - 1];
    v70 = v7 - 1;
    {
      mlir::wouldOpBeTriviallyDead();
    }

    v9 = (*(**(v8 + 48) + 32))(*(v8 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id);
    v10 = v9;
    if (v9)
    {
      v11 = *(v8 + 44);
      if ((v11 & 0x7FFFFF) != 0)
      {
        v12 = ((v8 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
        v13 = v12 + 24 * (v11 & 0x7FFFFF);
        for (i = *(v12 + 8); i != v12; i = *(i + 8))
        {
LABEL_22:
          v15 = i - 8;
          if (!i)
          {
            v15 = 0;
          }

          v16 = (v15 + 32);
          v17 = *(v15 + 40);
          if (v17 != (v15 + 32))
          {
            do
            {
              ZinIrHalH13g::~ZinIrHalH13g(v17);
              v20 = v70;
              if (v70 >= v71)
              {
                v18 = v19;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 8);
                v19 = v18;
                v20 = v70;
              }

              v69[v20] = v19;
              ++v70;
              v17 = *(v17 + 1);
            }

            while (v17 != v16);
          }
        }

        while (1)
        {
          v12 += 24;
          if (v12 == v13)
          {
            break;
          }

          i = *(v12 + 8);
          if (i != v12)
          {
            goto LABEL_22;
          }
        }
      }
    }

    if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v8) && v8)
    {
      break;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_127;
    }

LABEL_14:
    v7 = v70;
    if (!v70)
    {
      result = 1;
      v58 = v69;
      if (v69 == v72)
      {
        return result;
      }

LABEL_130:
      v59 = result;
      free(v58);
      return v59;
    }
  }

  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
  v66 = v68;
  v67 = 0x100000000;
  (*InterfaceFor)(InterfaceFor, v8, &v66);
  v61 = v65;
  v62 = v65;
  v63 = 4;
  v64 = 0;
  if (!v67)
  {
LABEL_122:
    v56 = 1;
    v57 = v62;
    if (v62 == v61)
    {
      goto LABEL_124;
    }

LABEL_123:
    free(v57);
    goto LABEL_124;
  }

  v22 = v66;
  v23 = v66 + 40 * v67;
  do
  {
    v26 = **v22;
    {
      if (v26 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        goto LABEL_39;
      }
    }

    else
    {
      mlir::wouldOpBeTriviallyDead();
      if (v26 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
      {
        goto LABEL_39;
      }
    }

    v27 = *(v22 + 2);
    v28 = v27 & 6;
    if (v27 >= 8 && v28 != 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFFFF8;
      if (v28 != 2 || v30 == 0)
      {
        if (v28 == 4)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          v30 = v32;
        }

        if (!v30)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v30 = *(v30 + 24);
        if (!v30)
        {
          goto LABEL_39;
        }
      }

      v60 = v30;
      if (mlir::Value::getDefiningOp(&v60) == v8)
      {
        v33 = *(v22 + 2);
        if (v33 >= 8 && (v34 = *(v22 + 2) & 6, (v33 & 6) != 0))
        {
          v35 = v33 & 0xFFFFFFFFFFFFFFF8;
          if (v34 == 2 && v35)
          {
            v24 = *(v35 + 24);
            v25 = v61;
            if (v62 != v61)
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v34 == 4)
            {
              v36 = v35;
            }

            else
            {
              v36 = 0;
            }

            if (v36)
            {
              v24 = v36;
            }

            else
            {
              v24 = v35;
            }

            v25 = v61;
            if (v62 != v61)
            {
LABEL_38:
              llvm::SmallPtrSetImplBase::insert_imp_big(&v61, v24);
              goto LABEL_39;
            }
          }
        }

        else
        {
          v24 = 0;
          v25 = v61;
          if (v62 != v61)
          {
            goto LABEL_38;
          }
        }

        v37 = HIDWORD(v63);
        if (HIDWORD(v63))
        {
          v38 = 8 * HIDWORD(v63);
          v39 = v25;
          while (*v39 != v24)
          {
            ++v39;
            v38 -= 8;
            if (!v38)
            {
              goto LABEL_77;
            }
          }
        }

        else
        {
LABEL_77:
          if (HIDWORD(v63) >= v63)
          {
            goto LABEL_38;
          }

          ++HIDWORD(v63);
          v25[v37] = v24;
        }
      }
    }

LABEL_39:
    v22 += 40;
  }

  while (v22 != v23);
  if (!v67)
  {
    goto LABEL_122;
  }

  v40 = v66;
  v41 = v66 + 40 * v67;
  while (2)
  {
    v45 = *(v40 + 2);
    if (v45 < 8 || (v46 = *(v40 + 2) & 6, (v45 & 6) == 0))
    {
      v50 = 0;
      v42 = v61;
      v51 = v62;
      if (v62 == v61)
      {
        goto LABEL_114;
      }

      goto LABEL_106;
    }

    v47 = v45 & 0xFFFFFFFFFFFFFFF8;
    if (v46 != 2 || v47 == 0)
    {
      if (v46 == 4)
      {
        v49 = v47;
      }

      else
      {
        v49 = 0;
      }

      if (v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v47;
      }

      v42 = v61;
      v51 = v62;
      if (v62 != v61)
      {
        goto LABEL_106;
      }

LABEL_114:
      v52 = HIDWORD(v63);
      if (HIDWORD(v63))
      {
        v55 = 8 * HIDWORD(v63);
        while (*v42 != v50)
        {
          ++v42;
          v55 -= 8;
          if (!v55)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
LABEL_83:
        v42 = &v51[HIDWORD(v63)];
      }

      v43 = v51;
    }

    else
    {
      v50 = *(v47 + 24);
      v42 = v61;
      v51 = v62;
      if (v62 == v61)
      {
        goto LABEL_114;
      }

LABEL_106:
      v42 = llvm::SmallPtrSetImplBase::doFind(&v61, v50);
      v51 = v61;
      v43 = v62;
      v52 = HIDWORD(v63);
      if (!v42)
      {
        v53 = v63;
        if (v62 == v61)
        {
          v53 = HIDWORD(v63);
        }

        v42 = &v62[v53];
      }
    }

    if (v43 == v51)
    {
      v44 = v52;
    }

    else
    {
      v44 = v63;
    }

    if (v42 != &v43[v44])
    {
      goto LABEL_89;
    }

    v54 = **v40;
    {
      if (v54 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
      {
        break;
      }

      goto LABEL_89;
    }

    mlir::wouldOpBeTriviallyDead();
    if (v54 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id)
    {
LABEL_89:
      v40 += 40;
      if (v40 == v41)
      {
        goto LABEL_122;
      }

      continue;
    }

    break;
  }

  v56 = 0;
  v57 = v62;
  if (v62 != v61)
  {
    goto LABEL_123;
  }

LABEL_124:
  if (v66 != v68)
  {
    free(v66);
  }

  if (v56)
  {
    goto LABEL_14;
  }

LABEL_127:
  result = 0;
  v58 = v69;
  if (v69 != v72)
  {
    goto LABEL_130;
  }

  return result;
}

uint64_t mlir::isMemoryEffectFree(mlir *this, mlir::Operation *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(this) && this)
  {
    v15[0] = &v16;
    v15[1] = 0x400000000;
    InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    (*InterfaceFor)(InterfaceFor, this, v15);
    v4 = v15[1];
    if (v15[0] != &v16)
    {
      free(v15[0]);
    }

    if (v4)
    {
      return 0;
    }

    {
      mlir::wouldOpBeTriviallyDead();
    }

    if (((*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      return 1;
    }

    goto LABEL_15;
  }

  {
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  }

  result = (*(**(this + 6) + 32))(*(this + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
LABEL_15:
    v6 = *(this + 11);
    if ((v6 & 0x7FFFFF) != 0)
    {
      v7 = (((this + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(this + 10));
      v8 = (v7 + 24 * (v6 & 0x7FFFFF));
      while (1)
      {
        mlir::Region::OpIterator::OpIterator(&v13, v7, 0);
        mlir::Region::OpIterator::OpIterator(&v17, v7, 1);
        v9 = v14;
        v16 = v14;
        *v15 = v13;
        v10 = v18;
        if (v14 != v18)
        {
          break;
        }

LABEL_20:
        v7 = (v7 + 24);
        result = 1;
        if (v7 == v8)
        {
          return result;
        }
      }

      while (1)
      {
        ZinIrHalH13g::~ZinIrHalH13g(v9);
        if ((mlir::isMemoryEffectFree(v11, v12) & 1) == 0)
        {
          return 0;
        }

        mlir::Region::OpIterator::operator++(&v13);
        v9 = v14;
        if (v14 == v10)
        {
          goto LABEL_20;
        }
      }
    }

    return 1;
  }

  return result;
}

void mlir::getEffectsRecursively(mlir *this@<X0>, uint64_t a3@<X8>)
{
  v30[5] = *MEMORY[0x1E69E9840];
  __src = v30;
  v29 = 0x100000000;
  v24 = v27;
  v26 = 6;
  v27[0] = this;
  v3 = 1;
  do
  {
    v4 = *(v24 + v3 - 1);
    v25 = v3 - 1;
    {
      mlir::wouldOpBeTriviallyDead();
    }

    v5 = (*(**(v4 + 48) + 32))(*(v4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id);
    v6 = v5;
    if (v5)
    {
      v7 = *(v4 + 44);
      if ((v7 & 0x7FFFFF) != 0)
      {
        v8 = ((v4 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v4 + 40);
        v9 = v8 + 24 * (v7 & 0x7FFFFF);
        do
        {
          for (i = *(v8 + 8); i != v8; i = *(i + 8))
          {
            v11 = i - 8;
            if (!i)
            {
              v11 = 0;
            }

            v12 = (v11 + 32);
            v13 = *(v11 + 40);
            if (v13 != (v11 + 32))
            {
              do
              {
                ZinIrHalH13g::~ZinIrHalH13g(v13);
                v15 = v25;
                if (v25 >= v26)
                {
                  v16 = v14;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 8);
                  v14 = v16;
                  v15 = v25;
                }

                *(v24 + v15) = v14;
                ++v25;
                v13 = *(v13 + 1);
              }

              while (v13 != v12);
            }
          }

          v8 += 24;
        }

        while (v8 != v9);
      }
    }

    if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v4) && v4)
    {
      InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(v4);
      (*InterfaceFor)(InterfaceFor, v4, &__src);
    }

    else if ((v6 & 1) == 0)
    {
      v20 = 0;
      v21 = a3;
      *a3 = 0;
      goto LABEL_36;
    }

    v3 = v25;
  }

  while (v25);
  v21 = a3;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x100000000;
  v18 = v29;
  v20 = 1;
  if (v29 && &__src != a3)
  {
    if (__src != v30)
    {
      *a3 = __src;
      v19 = HIDWORD(v29);
      *(a3 + 8) = v18;
      *(a3 + 12) = v19;
      __src = v30;
      HIDWORD(v29) = 0;
LABEL_35:
      LODWORD(v29) = 0;
      v20 = 1;
      goto LABEL_36;
    }

    if (v29 < 2)
    {
      v22 = 1;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v29, 40);
      v22 = v29;
      if (!v29)
      {
        goto LABEL_34;
      }
    }

    memcpy(*a3, __src, 40 * v22);
LABEL_34:
    *(a3 + 8) = v18;
    goto LABEL_35;
  }

LABEL_36:
  *(v21 + 56) = v20;
  if (v24 != v27)
  {
    free(v24);
  }

  if (__src != v30)
  {
    free(__src);
  }
}

void mlir::openOutputFile()
{
  v5 = *MEMORY[0x1E69E9840];
  v4.__val_ = 0;
  v4.__cat_ = std::system_category();
  operator new();
}

void mlir::detail::InterfaceMap::insert(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    do
    {
      v7 = v6 >> 1;
      v8 = &v5[16 * (v6 >> 1)];
      v10 = *v8;
      v9 = (v8 + 2);
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v5 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
    v11 = *(a1 + 8);
    if (v5 != &v3[16 * v4])
    {
      if (*v5 == a2)
      {

        free(a3);
      }

      else
      {
        v12 = (v5 - v3);
        if (v4 >= *(a1 + 12))
        {
          v31 = a3;
          v32 = a2;
          v33 = a1;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 16);
          a2 = v32;
          a1 = v33;
          a3 = v31;
          v13 = *v33;
          v11 = *(v33 + 8);
        }

        else
        {
          v13 = *a1;
        }

        v14 = &v12[v13];
        *&v13[16 * v11] = *&v13[16 * v11 - 16];
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = *a1 + 16 * v16;
        v18 = (v17 - 16);
        if ((v17 - 16) != &v12[v13])
        {
          v19 = &v3[16 * v16 + v15] - &v5[v13] - 32;
          if (v19 < 0x30)
          {
            goto LABEL_16;
          }

          v20 = (v19 >> 4) + 1;
          v21 = 16 * (v20 & 0x1FFFFFFFFFFFFFFCLL);
          v17 -= v21;
          v18 -= v21;
          v22 = &v15[16 * v16 - 32];
          v23 = v20 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            i64 = v22[-1].i64;
            v36 = vld2q_f64(i64);
            v25 = v22[-3].i64;
            v37 = vld2q_f64(v25);
            *v22 = vzip1q_s64(v36.val[0], v36.val[1]);
            v22[1] = vzip2q_s64(v36.val[0], v36.val[1]);
            v22[-2] = vzip1q_s64(v37.val[0], v37.val[1]);
            v22[-1] = vzip2q_s64(v37.val[0], v37.val[1]);
            v22 -= 4;
            v23 -= 4;
          }

          while (v23);
          if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
          {
LABEL_16:
            v26 = (v17 - 8);
            do
            {
              v27 = *(v18 - 2);
              v18 -= 16;
              *(v26 - 1) = v27;
              *v26 = *(v18 + 1);
              v26 -= 2;
            }

            while (v18 != v14);
          }
        }

        *(a1 + 8) = v16 + 1;
        *v14 = a2;
        *(v14 + 1) = a3;
      }

      return;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v4 >= *(a1 + 12))
  {
    v29 = a2;
    v30 = a3;
    v34 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v11 + 1, 16);
    a2 = v29;
    a1 = v34;
    a3 = v30;
    v11 = *(v34 + 8);
    v3 = *v34;
  }

  v28 = &v3[16 * v11];
  *v28 = a2;
  *(v28 + 1) = a3;
  ++*(a1 + 8);
}

void mlir::StorageUniquer::~StorageUniquer(llvm ***this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::StorageUniquerImpl::~StorageUniquerImpl(v2);
  }
}

uint64_t mlir::detail::StorageUniquerImpl::getOrCreate(mlir::detail::StorageUniquerImpl *a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v55 = a2;
  v13 = *v12;
  v53 = a1;
  v14 = *(a1 + 256);
  explicit = atomic_load_explicit((*(*v12 + 16) + 8 * ((*(*v12 + 24) - 1) & a3)), memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  v57 = a3;
  v58 = a4;
  v59 = a5;
  if ((v14 & 1) == 0)
  {
    LODWORD(v56) = a3;
    *(&v56 + 1) = 0;
    v23 = v61;
    if ((v62 & 1) == 0)
    {
      return *(v61 + 8);
    }

    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v53);
    result = a6(a7, ThreadSafeAllocator);
    *(v23 + 8) = result;
    return result;
  }

  {
    mlir::detail::StorageUniquerImpl::getOrCreate();
  }

  v17 = v16;
  v18 = *v13;
  v19 = *v16;
  v20 = *v16 & 1;
  if (v20)
  {
    v21 = 4;
    v22 = v16 + 8;
  }

  else
  {
    v21 = *(v16 + 16);
    if (!v21)
    {
      v28 = 0;
      v31 = 0;
      *&v61 = 0;
      goto LABEL_18;
    }

    v22 = *(v16 + 8);
  }

  v26 = v21 - 1;
  v27 = v26 & ((v18 >> 4) ^ (v18 >> 9));
  v28 = v22 + 40 * v27;
  v29 = *v28;
  if (*v28 != v18)
  {
    v49 = 0;
    v50 = 1;
    while (v29 != -4096)
    {
      if (v49)
      {
        v51 = 0;
      }

      else
      {
        v51 = v29 == -8192;
      }

      if (v51)
      {
        v49 = v28;
      }

      v52 = v27 + v50++;
      v27 = v52 & v26;
      v28 = v22 + 40 * v27;
      v29 = *v28;
      if (*v28 == v18)
      {
        goto LABEL_13;
      }
    }

    if (v49)
    {
      v28 = v49;
    }

    *&v61 = v28;
    if (v20)
    {
      v31 = 4;
    }

    else
    {
      v31 = *(v16 + 16);
    }

LABEL_18:
    if (4 * (v19 >> 1) + 4 >= 3 * v31)
    {
      v31 *= 2;
    }

    else if (v31 + ~(v19 >> 1) - *(v16 + 4) > v31 >> 3)
    {
      goto LABEL_20;
    }

    v19 = *v17;
    v28 = v61;
    v20 = *v17 & 1;
LABEL_20:
    *v17 = (v19 & 0xFFFFFFFE | v20) + 2;
    if (*v28 != -4096)
    {
      --v17[1];
    }

    *v28 = v18;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    operator new();
  }

LABEL_13:
  v30 = **(v28 + 8);
  if (!v30)
  {
    std::recursive_mutex::lock((*v13 + 40));
    if (*(*v13 + 8) < *(*v13 + 12))
    {
      operator new();
    }
  }

  LODWORD(v61) = a3;
  *(&v61 + 1) = 0;
  v32 = v56;
  result = *(v56 + 8);
  if (!result)
  {
    llvm::sys::RWMutexImpl::lock_shared((explicit + 24));
    v33 = *explicit;
    v34 = *(explicit + 16);
    if (!v34)
    {
      goto LABEL_35;
    }

    v35 = v34 - 1;
    v36 = 1;
    v37 = v58;
    v38 = v59;
    v39 = v57 & (v34 - 1);
    v40 = v33 + 16 * v39;
    v41 = *(v40 + 8);
    if ((v41 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_28;
    }

    while (v41 != -4096)
    {
      while (1)
      {
        v42 = v39 + v36++;
        v39 = v42 & v35;
        v40 = v33 + 16 * (v42 & v35);
        v41 = *(v40 + 8);
        if ((v41 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_28:
        if (v37(v38))
        {
          if (v40 != *explicit + 16 * *(explicit + 16))
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }

        if (*(v40 + 8) == -4096)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_30:
    v43 = *(explicit + 16);
    v40 = *explicit + 16 * v43;
    if (v40 != *explicit + 16 * v43)
    {
LABEL_33:
      v44 = *(v40 + 8);
      *(v32 + 8) = v44;
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      return v44;
    }

    else
    {
LABEL_35:
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      llvm::sys::RWMutexImpl::lock((explicit + 24));
      LODWORD(v60) = v57;
      *(&v60 + 1) = 0;
      v45 = v61;
      if (v62)
      {
        v46 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v53);
        v47 = a6(a7, v46);
        *(v45 + 8) = v47;
      }

      else
      {
        v47 = *(v61 + 8);
      }

      *(v32 + 8) = v47;
      v48 = v47;
      llvm::sys::RWMutexImpl::unlock_shared((explicit + 24));
      return v48;
    }
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::ParametricStorageUniquer>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 24))
    {
      v3 = 0;
      do
      {
        v4 = atomic_load((*(v2 + 16) + 8 * v3));
        if (v4)
        {
          if (*(v2 + 32) && *(v4 + 8))
          {
            v5 = *(v4 + 16);
            if (v5)
            {
              v6 = 16 * v5;
              v7 = *v4;
              while ((*(v7 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
              {
                v7 = (v7 + 16);
                v6 -= 16;
                if (!v6)
                {
                  goto LABEL_4;
                }
              }
            }

            else
            {
              v7 = *v4;
            }

            v8 = *v4 + 16 * v5;
            if (v7 != v8)
            {
              v9 = *(v7 + 1);
              do
              {
                (*(v2 + 32))(*(v2 + 40), v9);
                do
                {
                  v7 = (v7 + 16);
                  if (v7 == v8)
                  {
                    goto LABEL_4;
                  }

                  v9 = *(v7 + 1);
                }

                while ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
              }

              while (v7 != v8);
            }
          }

LABEL_4:
          llvm::sys::RWMutexImpl::~RWMutexImpl((v4 + 24));
          llvm::deallocate_buffer(*v4, (16 * *(v4 + 16)));
        }

        ++v3;
      }

      while (v3 != *(v2 + 24));
    }

    v10 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v10)
    {
      MEMORY[0x1AC55A040](v10, 0x20C8093837F09);
    }

    v11 = *(v2 + 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    MEMORY[0x1AC55A070](v2, 0x10A0C40E20AF11ELL);
  }

  return a1;
}

uint64_t mlir::StorageUniquer::getSingletonImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>,mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *,llvm::DenseMapInfo<mlir::pdl_to_pdl_interp::Position *,void>,llvm::detail::DenseMapPair<mlir::pdl_to_pdl_interp::Position *,llvm::ScopedHashTableVal<mlir::pdl_to_pdl_interp::Position *,mlir::Value> *>>::operator[](v2 + 232, &v4);
}

uint64_t *mlir::StorageUniquer::registerSingletonImpl(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = a2;
  v4 = *a1;
  v7 = a3(a4, *a1 + 112);
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::try_emplace<llvm::SMLoc&>((v4 + 232), &v8, &v7, v6);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A07FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(*(a1 + 24), (*(a1 + 24) + 24 * *(a1 + 32)));
  v2 = *(a1 + 24);
  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

void *llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(void *result, void *a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 - 1);
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = *(v2 - 2);
          if (v6)
          {
            *v6 = 0;
            atomic_store(0, (v6 + 8));
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v5;
            (v5->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v9);
            v7 = *(v2 - 1);
            if (!v7)
            {
              goto LABEL_11;
            }

LABEL_10:
            std::__shared_weak_count::__release_weak(v7);
            goto LABEL_11;
          }
        }

        v7 = *(v2 - 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      v8 = *(v2 - 3);
      v2 -= 3;
      result = v8;
      *v2 = 0;
      if (v8)
      {
        result = MEMORY[0x1AC55A070](result, 0x20C4093837F09);
      }
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::operator[](uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 16 * v4);
    v6 = *v5;
    if (*v5 == *a2)
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
      v5 = (*a1 + 16 * (v12 & v3));
      v6 = *v5;
      if (*v5 == *a2)
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
  return v5 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::LookupBucketFor<mlir::TypeID>(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
LABEL_3:
      *a4 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 16 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }

      *a4 = v6;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>,mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<anonymous namespace::ParametricStorageUniquer>>>::grow(uint64_t a1, int a2)
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
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = *(a1 + 16) - 1;
          v26 = v25 & ((v24 >> 4) ^ (v24 >> 9));
          v22 = (*a1 + 16 * v26);
          v27 = *v22;
          if (*v22 != v24)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -4096)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -8192;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = (*a1 + 16 * (v31 & v25));
              v27 = *v22;
              if (*v22 == v24)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          v23 = *(v16 + 1);
          *(v16 + 1) = 0;
          *v22 = v24;
          v22[1] = v23;
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

uint64_t llvm::detail::DenseSetImpl<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>::insert_as<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t result, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = *a3;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = *a2;
    v7 = v4 - 1;
    v8 = 1;
    v9 = *a4 & (v4 - 1);
    v10 = *a2 + 16 * v9;
    v11 = *(v10 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v11 != -4096)
    {
      while (1)
      {
        if (v5)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11 == -8192;
        }

        if (v12)
        {
          v5 = v10;
        }

        v13 = v9 + v8++;
        v9 = v13 & v7;
        v10 = v6 + 16 * (v13 & v7);
        v11 = *(v10 + 8);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v14 = a2;
        v15 = result;
        v16 = a4;
        if ((*(a4 + 8))(*(a4 + 16), v11))
        {
          v19 = 0;
          result = v15;
          a2 = v14;
          goto LABEL_22;
        }

        v11 = *(v10 + 8);
        result = v15;
        a2 = v14;
        a4 = v16;
        if (v11 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v5)
    {
      v10 = v5;
    }

    v17 = *(a2 + 4);
  }

  else
  {
    v17 = 0;
    v10 = 0;
  }

  v24 = v10;
  v18 = *(a2 + 2);
  if (4 * v18 + 4 >= 3 * v17)
  {
    v17 *= 2;
LABEL_24:
    v21 = result;
    v22 = a2;
    v23 = a4;
    a2 = v22;
    result = v21;
    v10 = v24;
    ++*(v22 + 2);
    if (*(v10 + 8) == -4096)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v17 + ~v18 - *(a2 + 3) <= v17 >> 3)
  {
    goto LABEL_24;
  }

  *(a2 + 2) = v18 + 1;
  if (*(v10 + 8) != -4096)
  {
LABEL_19:
    --*(a2 + 3);
  }

LABEL_20:
  *v10 = v25;
  v19 = 1;
LABEL_22:
  v20 = *a2 + 16 * *(a2 + 4);
  *result = v10;
  *(result + 8) = v20;
  *(result + 16) = v19;
  return result;
}

llvm **mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::CacheType::~CacheType(int *a1)
{
  v1 = a1;
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v8 = &v3[10 * v5];
    v6 = a1 + 2;
    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v6 = a1 + 2;
  if (v2)
  {
    v8 = a1 + 42;
    goto LABEL_8;
  }

  v7 = a1[4];
  v8 = (*(a1 + 1) + 40 * v7);
  if (v7)
  {
    v6 = *(a1 + 1);
LABEL_8:
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v8)
      {
        v4 = v8;
        break;
      }
    }

    v6 = a1 + 2;
    if ((v2 & 1) == 0)
    {
LABEL_19:
      v9 = (*(a1 + 1) + 40 * a1[4]);
      if (v4 == v9)
      {
        goto LABEL_14;
      }

LABEL_22:
      v33 = v6;
      do
      {
        v11 = *(v4 + 4);
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v12;
            v14 = *(v4 + 3);
            if (v14)
            {
              v15 = **(v4 + 1);
              std::recursive_mutex::lock((v14 + 40));
              v16 = *v14;
              v17 = *(v14 + 8);
              v18 = *v14 + 24 * v17;
              v19 = *v14;
              if (v17)
              {
                v20 = 24 * v17;
                v19 = *v14;
                while (*v19 != v15)
                {
                  v19 += 3;
                  v20 -= 24;
                  if (!v20)
                  {
                    v19 = (*v14 + 24 * v17);
                    break;
                  }
                }
              }

              if (v19 + 3 != v18)
              {
                v21 = v19 + 4;
                do
                {
                  v23 = *(v21 - 1);
                  *(v21 - 1) = 0;
                  v24 = *(v21 - 4);
                  *(v21 - 4) = v23;
                  if (v24)
                  {
                    llvm::deallocate_buffer(*v24, (16 * *(v24 + 16)));
                  }

                  v25 = *v21;
                  *v21 = 0;
                  v21[1] = 0;
                  v26 = *(v21 - 2);
                  *(v21 - 3) = v25;
                  if (v26)
                  {
                    std::__shared_weak_count::__release_weak(v26);
                  }

                  v22 = v21 + 2;
                  v21 += 3;
                }

                while (v22 != v18);
                LODWORD(v17) = *(v14 + 8);
                v16 = *v14;
              }

              v27 = v17 - 1;
              *(v14 + 8) = v27;
              std::recursive_mutex::unlock((v14 + 40));
            }

            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }
          }
        }

        do
        {
          v4 += 10;
        }

        while (v4 != v8 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v4 != v9);
      v6 = v33;
      v1 = a1;
      v2 = *a1;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_47:
      v10 = 4;
      goto LABEL_48;
    }

LABEL_13:
    v9 = a1 + 42;
    if (v4 == a1 + 42)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_14:
  if (v2)
  {
    goto LABEL_47;
  }

LABEL_15:
  v10 = v1[4];
  if (!v10)
  {
    goto LABEL_57;
  }

  v6 = *v6;
LABEL_48:
  v28 = (v6 + 4);
  v29 = 40 * v10;
  do
  {
    if ((*(v28 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v30 = v28[2];
      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      v31 = *v28;
      if (*v28 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }
    }

    v28 += 5;
    v29 -= 40;
  }

  while (v29);
  v2 = *v1;
LABEL_57:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(*(v1 + 1), (40 * v1[4]));
  }

  return v1;
}

uint64_t *mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner::~Owner(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    llvm::deallocate_buffer(*v7, (16 * *(v7 + 16)));
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *>(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result + 8;
  if (*result)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(result + 16);
    if (!v4)
    {
      *a3 = 0;
      return result;
    }

    v3 = *(result + 8);
  }

  v5 = v4 - 1;
  v6 = ((a2 >> 4) ^ (a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
LABEL_6:
    *a3 = v7;
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (v8 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8 == -8192;
      }

      if (v11)
      {
        v9 = v7;
      }

      v12 = v6 + v10++;
      v6 = v12 & v5;
      v7 = (v3 + 40 * (v12 & v5));
      v8 = *v7;
      if (*v7 == a2)
      {
        goto LABEL_6;
      }
    }

    if (v9)
    {
      v7 = v9;
    }

    *a3 = v7;
  }

  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v21[15] = *MEMORY[0x1E69E9840];
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if ((*a1 & 1) == 0)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v6 > 4)
    {
      v15 = a1;
      buffer = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
      a1 = v15;
      *(v15 + 8) = buffer;
      *(v15 + 16) = v6;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::deallocate_buffer(v7, (40 * v8));
  }

  v9 = &v18;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(a1 + 8);
    v17 = *(a1 + 32);
    v19 = *(a1 + 16);
    v20 = v17;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v9 = v21;
    v10 = *(a1 + 48);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_12:
      v11 = *(a1 + 88);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  *v9 = v10;
  *(v9 + 1) = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(v9 + 3) = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v9 += 5;
  v11 = *(a1 + 88);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *v9 = v11;
  *(v9 + 1) = *(a1 + 96);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(v9 + 3) = *(a1 + 112);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v9 += 5;
  v12 = *(a1 + 128);
  if ((v12 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v6 >= 5)
  {
LABEL_15:
    *a1 &= ~1u;
    v13 = a1;
    v14 = llvm::allocate_buffer(8 * (v6 + 4 * v6), 8uLL);
    a1 = v13;
    *(v13 + 8) = v14;
    *(v13 + 16) = v6;
  }

LABEL_16:
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer>>::moveFromOldBuckets(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = a1 + 42;
    v9 = a1 + 2;
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[10 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 10;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[10 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 20;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (*v19 != v15)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (*v19 == v15)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 2) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 6) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A08028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Observer &>(uint64_t a1, unsigned __int8 **a2)
{
  v2 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v2);
  operator new();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::LookupBucketFor<anonymous namespace::ParametricStorageUniquer::LookupKey>(uint64_t result, int a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2 - 1;
    v6 = 1;
    v7 = *a3 & (a2 - 1);
    v8 = result + 16 * v7;
    v9 = *(v8 + 8);
    if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }

    while (v9 != -4096)
    {
      while (1)
      {
        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v9 == -8192;
        }

        if (v10)
        {
          v4 = v8;
        }

        v11 = v7 + v6++;
        v7 = v11 & v5;
        v8 = result + 16 * (v11 & v5);
        v9 = *(v8 + 8);
        if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_10:
        v12 = result;
        v13 = a4;
        v14 = a3;
        result = (*(a3 + 8))(*(a3 + 16));
        if (result)
        {
          a4 = v13;
          goto LABEL_17;
        }

        v9 = *(v8 + 8);
        a4 = v13;
        a3 = v14;
        result = v12;
        if (v9 == -4096)
        {
          goto LABEL_12;
        }
      }
    }

LABEL_12:
    if (v4)
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_17:
  *a4 = v8;
  return result;
}

_OWORD *llvm::DenseMapBase<llvm::DenseMap<anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>,anonymous namespace::ParametricStorageUniquer::HashedStorage,llvm::detail::DenseSetEmpty,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo,llvm::detail::DenseSetPair<anonymous namespace::ParametricStorageUniquer::HashedStorage>>::grow(uint64_t a1, int a2)
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
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_1A75D9A90;
        *(v14 - 1) = xmmword_1A75D9A90;
        *v14 = xmmword_1A75D9A90;
        v14[1] = xmmword_1A75D9A90;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_1A75D9A90;
        }

        while (v10 != v16);
      }
    }

    if (v3)
    {
      v17 = v4;
      do
      {
        v25 = *(v17 + 1);
        if ((v25 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = *(a1 + 16) - 1;
          v27 = v26 & *v17;
          v24 = *a1 + 16 * v27;
          v28 = *(v24 + 8);
          if (v28 != v25)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v24;
              }

              v32 = v27 + v30++;
              v27 = v32 & v26;
              v24 = *a1 + 16 * (v32 & v26);
              v28 = *(v24 + 8);
              if (v28 == v25)
              {
                goto LABEL_24;
              }
            }

            if (v29)
            {
              v24 = v29;
            }
          }

LABEL_24:
          *v24 = *v17;
          ++*(a1 + 8);
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (v18 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v19 < 3)
    {
      goto LABEL_19;
    }

    v20 = v19 + 1;
    v10 = &result[v20 & 0x1FFFFFFFFFFFFFFCLL];
    v21 = result + 2;
    v22 = v20 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v21 - 2) = xmmword_1A75D9A90;
      *(v21 - 1) = xmmword_1A75D9A90;
      *v21 = xmmword_1A75D9A90;
      v21[1] = xmmword_1A75D9A90;
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if (v20 != (v20 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v23 = &result[v18];
      do
      {
        *v10++ = xmmword_1A75D9A90;
      }

      while (v10 != v23);
    }
  }

  return result;
}

uint64_t mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(mlir::detail::StorageUniquerImpl *this)
{
  if ((*(this + 256) & 1) == 0)
  {
    return this + 112;
  }

  result = *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get(this);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get(uint64_t *a1)
{
  {
    mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::get();
  }

  v2 = mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::getStaticCache(void)::cache();
  v3 = *a1;
  v16 = *a1;
  v4 = v2 + 8;
  if (*v2)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(v2 + 16);
    if (!v5)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v4 = *(v2 + 8);
  }

  v6 = v5 - 1;
  v7 = v6 & ((v3 >> 4) ^ (v3 >> 9));
  v8 = v4 + 40 * v7;
  v9 = *v8;
  if (v3 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = v4 + 40 * v7;
      v9 = *v8;
      if (v3 == *v8)
      {
        goto LABEL_8;
      }
    }

    if (v12)
    {
      v11 = v12;
    }

    else
    {
      v11 = v8;
    }

LABEL_13:
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(v2, v11, &v16);
  }

LABEL_8:
  result = **(v8 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    if (*(*a1 + 8) < *(*a1 + 12))
    {
      operator new();
    }

    llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer &>(*a1, (v8 + 8));
  }

  return result;
}

int *mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1u)
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = a1 + 168;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = v3 + 40 * v5;
    }

    v7 = v3 + 40 * v5;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 168;
    if (v4 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v4 = a1 + 8;
    v7 = a1 + 168;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 40;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 + 40 * v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v4 == v8)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 24);
        if (v12)
        {
          mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState::remove(v12, **(v4 + 8));
        }

        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    do
    {
      v4 += 40;
    }

    while (v4 != v7 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v4 != v8);
LABEL_28:

  return llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::~SmallDenseMap(a1);
}

void mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState::remove(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  if (v5)
  {
    v7 = 24 * v5;
    while (*v4 != a2)
    {
      v4 += 3;
      v7 -= 24;
      if (!v7)
      {
        v4 = v6;
        break;
      }
    }
  }

  if (v4 + 3 != v6)
  {
    v8 = v4 + 4;
    do
    {
      v10 = *(v8 - 1);
      *(v8 - 1) = 0;
      v11 = *(v8 - 4);
      *(v8 - 4) = v10;
      if (v11)
      {
        MEMORY[0x1AC55A070](v11, 0x20C4093837F09);
      }

      v12 = *v8;
      *v8 = 0;
      v8[1] = 0;
      v13 = *(v8 - 2);
      *(v8 - 3) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      v9 = v8 + 2;
      v8 += 3;
    }

    while (v9 != v6);
  }

  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::pop_back(a1);

  std::recursive_mutex::unlock((a1 + 40));
}

uint64_t llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::pop_back(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  *(a1 + 8) = v1;
  v2 = (*a1 + 24 * v1);
  v3 = v2[2];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v2[1];
      if (v5)
      {
        *v5 = 0;
        atomic_store(0, (v5 + 8));
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    v7 = v2[2];
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  result = *v2;
  *v2 = 0;
  if (result)
  {

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *,mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::PerInstanceState *>(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void std::__shared_ptr_emplace<std::pair<mlir::StorageUniquer::StorageAllocator **,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A08078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Observer &>(uint64_t a1, unsigned __int8 **a2)
{
  v2 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v2);
  operator new();
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1A080C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t result, double a2)
{
  *result = a2;
  *(result + 8) = -4096;
  *(result + 48) = -4096;
  *(result + 88) = -4096;
  *(result + 128) = -4096;
  return result;
}

unint64_t mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(llvm::hashing::detail *a1, llvm::hashing::detail *a2)
{
  if ((atomic_load_explicit(_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    v7 = a2;
    v6 = a1;
    mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID();
    a1 = v6;
    a2 = v7;
  }

  v11[0] = a1;
  v11[1] = a2;
  llvm::sys::RWMutexImpl::lock_shared(&qword_1ED440648);
  v2 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>(&qword_1ED4406B8, v11);
  if (!v2 || v2 == qword_1ED4406B8 + 24 * dword_1ED4406C8)
  {
    llvm::sys::RWMutexImpl::unlock_shared(&qword_1ED440648);
    llvm::sys::RWMutexImpl::lock(&qword_1ED440648);
    v8 = &mlir::detail::TypeIDResolver<void,void>::id;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>(&qword_1ED4406B8, v11, &v8, &v9);
    if (v10)
    {
      qword_1ED4406A8 += 8;
      if (qword_1ED440658 && (Slow = (qword_1ED440658 + 7) & 0xFFFFFFFFFFFFFFF8, Slow + 8 <= qword_1ED440660))
      {
        qword_1ED440658 = Slow + 8;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(&qword_1ED440658, 8, 8, 3);
      }

      *(v9 + 16) = Slow;
    }

    else
    {
      Slow = *(v9 + 16);
    }

    llvm::sys::RWMutexImpl::unlock_shared(&qword_1ED440648);
    return Slow;
  }

  else
  {
    v3 = *(v2 + 16);
    llvm::sys::RWMutexImpl::unlock_shared(&qword_1ED440648);
    return v3;
  }
}

void sub_1A6DC7230()
{
  if (*(v0 + 88))
  {
    llvm::deallocate_buffer(**(v0 + 80), *(*(v0 + 80) + 8));
  }

  *(v0 + 88) = 0;
  v1 = *(v0 + 40);
  if (v1)
  {
    *(v0 + 96) = 0;
    v2 = *(v0 + 32);
    v3 = *v2 + 4096;
    *(v0 + 16) = *v2;
    *(v0 + 24) = v3;
    if (v1 != 1)
    {
      v4 = ((v2 + 8 - *(v0 + 32)) >> 10) & 0x1FFFFFF;
      if (v4 >= 0x1E)
      {
        LOBYTE(v4) = 30;
      }

      llvm::deallocate_buffer(*(v2 + 8), (4096 << v4));
    }

    *(v0 + 40) = 1;
  }

  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(v0 + 16);

  llvm::sys::RWMutexImpl::~RWMutexImpl(v0);
}

void mlir::tensor::TensorDialect::TensorDialect(mlir::tensor::TensorDialect *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "tensor", 6, a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id);
  *v3 = &unk_1F1A08118;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "affine", 6))
  {
    v7 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "affine", 6, &mlir::detail::TypeIDResolver<mlir::affine::AffineDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::affine::AffineDialect * mlir::MLIRContext::getOrLoadDialect<mlir::affine::AffineDialect>(void)::{lambda(void)#1}>, &v7);
  }

  v5 = *(this + 4);
  if (!mlir::MLIRContext::isDialectLoading(v5, "arith", 5))
  {
    v7 = v5;
    mlir::MLIRContext::getOrLoadDialect(v5, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v7);
  }

  v6 = *(this + 4);
  if (!mlir::MLIRContext::isDialectLoading(v6, "complex", 7))
  {
    v7 = v6;
    mlir::MLIRContext::getOrLoadDialect(v6, "complex", 7, &mlir::detail::TypeIDResolver<mlir::complex::ComplexDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::complex::ComplexDialect * mlir::MLIRContext::getOrLoadDialect<mlir::complex::ComplexDialect>(void)::{lambda(void)#1}>, &v7);
  }

  mlir::tensor::TensorDialect::initialize(this);
}

void sub_1A6DC75B4()
{

  JUMPOUT(0x1AC55A070);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::tensor::CastOp,mlir::tensor::CollapseShapeOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::ExtractOp,mlir::tensor::FromElementsOp,mlir::tensor::GenerateOp,mlir::tensor::InsertOp,mlir::tensor::InsertSliceOp,mlir::tensor::PadOp,mlir::tensor::ParallelInsertSliceOp,mlir::tensor::RankOp,mlir::tensor::ReshapeOp,mlir::tensor::SplatOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::InsertOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::RankOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::transform::FindPayloadReplacementOpInterface,mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ReshapeOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::transform::FindPayloadReplacementOpInterface,mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ReshapeOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::transform::FindPayloadReplacementOpInterface,mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ReshapeOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::transform::FindPayloadReplacementOpInterface,mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ReshapeOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::transform::FindPayloadReplacementOpInterface,mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ReshapeOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::transform::FindPayloadReplacementOpInterface,mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ReshapeOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ReifyRankedShapedTypeOpInterface,mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp,mlir::tensor::PadOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::SubsetOpInterface,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::SubsetOpInterface,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::SubsetOpInterface,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::SubsetOpInterface,mlir::tensor::ExtractSliceOp,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::SubsetInsertionOpInterface,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::SubsetInsertionOpInterface,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::SubsetInsertionOpInterface,mlir::tensor::InsertSliceOp,mlir::tensor::ParallelInsertSliceOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::TilingInterface,mlir::tensor::PadOp,mlir::tensor::PackOp,mlir::tensor::UnPackOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::TilingInterface,mlir::tensor::PadOp,mlir::tensor::PackOp,mlir::tensor::UnPackOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::TilingInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::TilingInterface,mlir::tensor::PadOp,mlir::tensor::PackOp,mlir::tensor::UnPackOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::TilingInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::TilingInterface,mlir::tensor::PadOp,mlir::tensor::PackOp,mlir::tensor::UnPackOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::TilingInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}

uint64_t *mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::ValueBoundsOpInterface,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::tensor::EmptyOp,mlir::tensor::ExtractSliceOp,mlir::tensor::PadOp,mlir::tensor::RankOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::tensor::RankOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>((a1 + 72), &v3, v5);
}