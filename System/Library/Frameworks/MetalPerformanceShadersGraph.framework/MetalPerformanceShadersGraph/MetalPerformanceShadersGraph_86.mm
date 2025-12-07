char *mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

char *mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  NextResultAtOffset = *a3;
  v12 = a3[1];
  v13 = a3[3];
  if (v12)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
  }

  mlir::ValueRange::ValueRange(v20, NextResultAtOffset, v13 - v12);
  mlir::TypeRange::TypeRange(v19, v20[0], v20[1]);
  mlir::scf::IfOp::build(a1, v18, v19[0], v19[1], *a4, 0, 0);
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
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

  operator delete(this);
}

uint64_t anonymous namespace::ConditionPropagation::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  I1Type = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&I1Type);
  if (DefiningOp)
  {
    {
      v29 = DefiningOp;
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
        v18 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>((a3 + 1), v26, &I1Type, &IntegerAttr) - 16;
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
      v9 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>((a3 + 1), v17, &I1Type, &IntegerAttr) - 16;
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

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::Type &,mlir::IntegerAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void **a4)
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

  operator delete(this);
}

uint64_t anonymous namespace::ConvertTrivialIfToSelect::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v83[6] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 36))
  {
    return 0;
  }

  v70 = *(*(a2 + 72) + 24);
  v5 = a2 + 64;
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 72);
    v8 = *(v6 + 68);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v68 = a3;
  v10 = 0;
  if ((*(v9 + 46) & 0x80) == 0)
  {
    v11 = 0;
    v67 = 0;
    v81 = v83;
    v82 = 0x600000000;
    if (*(a2 + 36))
    {
      goto LABEL_25;
    }

LABEL_22:
    v24 = 0;
    v25 = v81;
    if (v81 == v83)
    {
      return v24;
    }

    goto LABEL_65;
  }

  v11 = *(v9 + 72);
  v12 = *(v9 + 68);
  v81 = v83;
  v82 = 0x600000000;
  v67 = v12;
  if (!v8 || !v12)
  {
    if (*(a2 + 36))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v13 = v8;
  v14 = v8 - 1;
  v15 = v12 - 1;
  v16 = 24;
  do
  {
    v17 = *(v11 + v16);
    v78 = *(v7 + v16);
    v79 = v17;
    v18 = (((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
    if (mlir::Value::getParentRegion(&v78) == v18 || (v19 = (((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24), v19 == mlir::Value::getParentRegion(&v79)))
    {
      v20 = *(v78 + 1);
      v21 = v82;
      if (v82 >= HIDWORD(v82))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v82 + 1, 8);
        v21 = v82;
      }

      v81[v21] = v20 & 0xFFFFFFFFFFFFFFF8;
      LODWORD(v82) = v82 + 1;
    }

    v22 = v15-- != 0;
    v23 = v22;
    v22 = v14-- != 0;
    if (!v22)
    {
      break;
    }

    v16 += 32;
  }

  while ((v23 & 1) != 0);
  v10 = 1;
  a3 = v68;
  v8 = v13;
  if (v82 == *(a2 + 36))
  {
    goto LABEL_22;
  }

LABEL_25:
  v26 = *(a2 + 24);
  LOBYTE(v78) = 0;
  v27 = mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>((a3 + 1), v26, &v81, &v70, &v78);
  v28 = v27 + 64;
  v29 = *(v27 + 11);
  v30 = (v29 >> 23) & 1;
  v31 = (v29 >> 21) & 0x7F8;
  v32 = 32 * *(v27 + 10);
  v33 = *((&v27[16 * v30 + 71 + v31] & 0xFFFFFFFFFFFFFFF8) + v32);
  v66 = v8;
  if (v33)
  {
    (*(*a3 + 24))(a3, v33 - 8);
    v34 = *(v27 + 11);
    v30 = (v34 >> 23) & 1;
    v31 = (v34 >> 21) & 0x7F8;
    v32 = 32 * *(v27 + 10);
  }

  mlir::Region::takeBody(((&v28[16 * v30 + 7 + v31] & 0xFFFFFFFFFFFFFFF8) + v32), (((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)));
  mlir::Region::takeBody(((&v28[16 * ((*(v27 + 11) >> 23) & 1) + 7 + ((*(v27 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10) + 24), (((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24));
  v35 = *(a2 + 36);
  v78 = v80;
  v79 = 0x600000000;
  if (v35)
  {
    if (v35 < 7)
    {
      v36 = 0;
      v37 = v35;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v35, 8);
      v36 = v79;
      v37 = v35 - v79;
      if (v35 == v79)
      {
        goto LABEL_33;
      }
    }

    bzero(v78 + 8 * v36, 8 * v37);
LABEL_33:
    LODWORD(v79) = v35;
  }

  v75 = v77;
  v76 = 0x600000000;
  v72 = v74;
  v73 = 0x600000000;
  v38 = *(v27 + 2);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  a3[3] = v38;
  a3[4] = v39;
  if (v10)
  {
    v40 = 0;
    v41 = (v7 + 24);
    v42 = (v11 + 24);
    v43 = v66 - 1;
    do
    {
      v44 = *v42;
      v71[0] = *v41;
      v69 = v44;
      v45 = ((&v28[16 * ((*(v27 + 11) >> 23) & 1) + 7 + ((*(v27 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10));
      if (mlir::Value::getParentRegion(v71) == v45 || (v46 = ((&v28[16 * ((*(v27 + 11) >> 23) & 1) + 7 + ((*(v27 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10) + 24), v46 == mlir::Value::getParentRegion(&v69)))
      {
        v48 = v76;
        v49 = &v27[-24 * (v76 - 5) - 96];
        if (v76 <= 5)
        {
          v49 = &v27[-16 * v76 - 16];
        }

        *(v78 + v40) = v49;
        v50 = v71[0];
        if (v48 >= HIDWORD(v76))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v48 + 1, 8);
          v48 = v76;
        }

        *(v75 + v48) = v50;
        LODWORD(v76) = v76 + 1;
        v51 = v69;
        v52 = v73;
        if (v73 >= HIDWORD(v73))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v73 + 1, 8);
          v52 = v73;
        }

        *(v72 + v52) = v51;
        LODWORD(v73) = v73 + 1;
        if (v43 == v40)
        {
          break;
        }
      }

      else
      {
        v47 = v71[0];
        if (v71[0] != v69)
        {
          v47 = mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((v68 + 1), *(a2 + 24), &v70, v71, &v69) - 16;
        }

        *(v78 + v40) = v47;
        if (v43 == v40)
        {
          break;
        }
      }

      v41 += 4;
      v42 += 4;
      v60 = v67 - 1 == v40++;
    }

    while (!v60);
  }

  v53 = *((&v28[16 * ((*(v27 + 11) >> 23) & 1) + 7 + ((*(v27 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10));
  if (v53)
  {
    v54 = v53 - 8;
  }

  else
  {
    v54 = 0;
  }

  v68[3] = v54;
  v68[4] = v54 + 32;
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v56 = v55;
  v57 = mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((v68 + 1), *(v55 + 24), &v75);
  (*(*v68 + 8))(v68, v56, v57);
  v58 = (&v28[16 * ((*(v27 + 11) >> 23) & 1) + 7 + ((*(v27 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v27 + 10);
  v59 = *(v58 + 24);
  v60 = v59 == v58 + 24 || v59 == 0;
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v59 - 8;
  }

  v68[3] = v61;
  v68[4] = v61 + 32;
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v63 = v62;
  v64 = mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((v68 + 1), *(v62 + 24), &v72);
  (*(*v68 + 8))(v68, v63, v64);
  mlir::ValueRange::ValueRange(v71, v78, v79);
  (**v68)(v68, a2, v71[0], v71[1]);
  if (v72 != v74)
  {
    free(v72);
  }

  if (v75 != v77)
  {
    free(v75);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  v24 = 1;
  v25 = v81;
  if (v81 != v83)
  {
LABEL_65:
    free(v25);
  }

  return v24;
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

  operator delete(this);
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

  operator delete(this);
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
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
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

  operator delete(this);
}

uint64_t anonymous namespace::RemoveUnusedResults::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, unint64_t, unint64_t))
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64 = v66;
  v65 = 0x400000000;
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  for (i = 0; i != v3; ++i)
  {
    if (*mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i))
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
      v9 = v65;
      if (v65 >= HIDWORD(v65))
      {
        v10 = NextResultAtOffset;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
        NextResultAtOffset = v10;
        v9 = v65;
      }

      *(v64 + v9) = NextResultAtOffset;
      LODWORD(v65) = v65 + 1;
    }
  }

  v11 = v64;
  if (v65 == *(a2 + 36))
  {
    v12 = 0;
    if (v64 == v66)
    {
      return v12;
    }

    goto LABEL_70;
  }

  v61 = v63;
  v62 = 0x400000000;
  if (v65)
  {
    v13 = 0;
    v14 = 8 * v65;
    do
    {
      v15 = *(*v11 + 8);
      if (v13 >= HIDWORD(v62))
      {
        v16 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v13 + 1, 8);
        v11 = v16;
        v13 = v62;
      }

      *(v61 + v13) = v15 & 0xFFFFFFFFFFFFFFF8;
      v13 = v62 + 1;
      LODWORD(v62) = v62 + 1;
      v11 += 8;
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a2 + 24);
  v58 = *(*(a2 + 72) + 24);
  v18 = mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,4u> &,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 1), v17, &v61, &v58);
  v19 = v18 + 64;
  v20 = ((&v18[16 * ((*(v18 + 11) >> 23) & 1) + 71 + ((*(v18 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10));
  mlir::ValueRange::ValueRange(&v58, 0, 0);
  mlir::OpBuilder::createBlock(a3 + 1, v20, 0, v58, v59, 0, 0);
  v21 = (&v18[16 * ((*(v18 + 11) >> 23) & 1) + 71 + ((*(v18 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10);
  mlir::ValueRange::ValueRange(&v58, 0, 0);
  mlir::OpBuilder::createBlock(a3 + 1, (v21 + 24), 0, v58, v59, 0, 0);
  v22 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v22)
  {
    v23 = v22 - 8;
  }

  else
  {
    v23 = 0;
  }

  v24 = *((&v19[16 * ((*(v18 + 11) >> 23) & 1) + 7 + ((*(v18 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10) + 8);
  if (v24)
  {
    v25 = (v24 - 8);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
  v56 = v26 == 0;
  v27 = v26 - 8;
  if (v56)
  {
    v28 = 0;
  }

  else
  {
    v28 = v27;
  }

  v29 = *((&v19[16 * ((*(v18 + 11) >> 23) & 1) + 7 + ((*(v18 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v18 + 10) + 32);
  if (v29)
  {
    v30 = (v29 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a2 + 36);
  v58 = v60;
  v59 = 0x400000000;
  if (!v31)
  {
    v31 = 0;
    v33 = v60;
    v35 = v65;
    if (!v65)
    {
      goto LABEL_65;
    }

    goto LABEL_41;
  }

  if (v31 < 5)
  {
    v32 = 0;
    v33 = v60;
    v34 = v31;
    goto LABEL_39;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v31, 8);
  v32 = v59;
  v33 = v58;
  v34 = v31 - v59;
  if (v31 != v59)
  {
LABEL_39:
    v36 = v33;
    bzero(&v33[8 * v32], 8 * v34);
    v33 = v36;
  }

  LODWORD(v59) = v31;
  v35 = v65;
  if (!v65)
  {
    goto LABEL_65;
  }

LABEL_41:
  v37 = v64;
  v38 = *(*v64 + 8) & 7;
  if (*v64 && v38 == 6)
  {
    v38 = (*(*v64 + 16) + 6);
  }

  *&v33[8 * v38] = v18 - 16;
  if (v35 != 1)
  {
    v39 = v37[1];
    v40 = *(v39 + 8) & 7;
    if (v39 && v40 == 6)
    {
      v40 = (*(v39 + 16) + 6);
    }

    *&v33[8 * v40] = v18 - 32;
    if (v35 != 2)
    {
      v41 = v37[2];
      v42 = *(v41 + 8) & 7;
      if (v41 && v42 == 6)
      {
        v42 = (*(v41 + 16) + 6);
      }

      *&v33[8 * v42] = v18 - 48;
      if (v35 != 3)
      {
        v43 = v37[3];
        v44 = *(v43 + 8) & 7;
        if (v43 && v44 == 6)
        {
          v44 = (*(v43 + 16) + 6);
        }

        *&v33[8 * v44] = v18 - 64;
        if (v35 != 4)
        {
          v45 = v37[4];
          v46 = *(v45 + 8) & 7;
          if (v45 && v46 == 6)
          {
            v46 = (*(v45 + 16) + 6);
          }

          *&v33[8 * v46] = v18 - 80;
          if (v35 != 5)
          {
            v47 = v18 - 96;
            v48 = v37[5];
            v49 = *(v48 + 8) & 7;
            if (v48 && v49 == 6)
            {
              v49 = (*(v48 + 16) + 6);
            }

            *&v33[8 * v49] = v47;
            if (v35 != 6)
            {
              v51 = 8 * v35;
              v52 = v37 + 6;
              v53 = v51 - 48;
              v54 = 0x100000001;
              do
              {
                v55 = *(*v52 + 8) & 7;
                if (*v52)
                {
                  v56 = v55 == 6;
                }

                else
                {
                  v56 = 0;
                }

                if (v56)
                {
                  v55 = (*(*v52 + 16) + 6);
                }

                *&v33[8 * v55] = &v47[-24 * v54];
                ++v52;
                ++v54;
                v53 -= 8;
              }

              while (v53);
            }
          }
        }
      }
    }
  }

LABEL_65:
  mlir::ValueRange::ValueRange(v57, v33, v31);
  (**a3)(a3, a2, v57[0], v57[1]);
  if (v58 != v60)
  {
    free(v58);
  }

  if (v61 != v63)
  {
    free(v61);
  }

  v12 = 1;
  v11 = v64;
  if (v64 != v66)
  {
LABEL_70:
    free(v11);
  }

  return v12;
}

char *mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,4u> &,mlir::detail::TypedValue<mlir::IntegerType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v16, v17, v15);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v17, *a3, *(a3 + 8));
  mlir::scf::IfOp::build(a1, v16, v17[0], v17[1], *a4, 0, 0);
  v11 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v12;
}

void anonymous namespace::RemoveUnusedResults::transferBody(uint64_t a1, mlir::Block *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  operator delete(this);
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

    v37 = v28 - 16;
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

char *mlir::OpBuilder::create<mlir::arith::XOrIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::OpResult>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  operator delete(this);
}

void anonymous namespace::ParallelOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v141[6] = *MEMORY[0x1E69E9840];
  v120 = a2;
  v108 = *(a2 + 24);
  v139 = v141;
  v140 = 0x600000000;
  v136 = v138;
  v137 = 0x600000000;
  v133 = v135;
  v134 = 0x600000000;
  v112[0] = 0;
  v112[1] = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v106 = a2 + 64;
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
  mlir::scf::ParallelOp::getLoopInductionVars(&v120, &__src);
  __dst = v123;
  v122 = 0x600000000;
  v13 = v125;
  if (!v125)
  {
    goto LABEL_9;
  }

  v14 = v123;
  v15 = v125;
  if (v125 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v123, v125, 8);
    v15 = v125;
    if (!v125)
    {
LABEL_8:
      LODWORD(v122) = v13;
LABEL_9:
      v16 = &v11[32 * v8];
      v17 = v12 - v8;
      if (v132[0] == 1 && __src != &v126)
      {
        free(__src);
        v13 = v122;
      }

      __src = v7;
      v125 = v6;
      v126 = v9;
      v127 = v10;
      v128 = v16;
      v129 = v17;
      v130 = v132;
      v131 = 0x600000000;
      v18 = __dst;
      if (v13)
      {
        if (__dst == v123)
        {
          v19 = v13;
          if (v13 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v130, v132, v13, 8), v19 = v122, v18 = __dst, v122))
          {
            memcpy(v130, v18, 8 * v19);
            v18 = __dst;
          }

          LODWORD(v131) = v13;
        }

        else
        {
          v130 = __dst;
          v131 = __PAIR64__(HIDWORD(v122), v13);
          __dst = v123;
          HIDWORD(v122) = 0;
          v18 = v123;
        }

        LODWORD(v122) = 0;
      }

      v109 = a3;
      if (v18 != v123)
      {
        free(v18);
        v13 = v131;
      }

      v20 = 0;
      if (!v125 || !v127 || !v129 || !v13)
      {
LABEL_54:
        if (v130 != v132)
        {
          free(v130);
        }

        if ((v20 & 1) == 0)
        {
          v49 = *(a2 + 44);
          v50 = (v49 >> 23) & 1;
          v51 = (v106 + 16 * v50);
          v52 = *v51;
          if (v140 != *v51)
          {
            if (v140)
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
              v125 = (v54 + v56) - v56;
              __dst = 0;
              v57 = mlir::OpBuilder::create<mlir::scf::ParallelOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,mlir::OperandRange,decltype(nullptr)>((v109 + 1), v53, &v139, &v136, &v133, &__src);
              v58 = *(((&v57[4 * ((v57[11] >> 23) & 1) + 17] + ((v57[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v57[10] + 8);
              if (v58)
              {
                v59 = v58 - 8;
              }

              else
              {
                v59 = 0;
              }

              ((*v109)[3])(v109, v59);
              v60 = ((&v57[4 * ((v57[11] >> 23) & 1) + 17] + ((v57[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v57[10];
              mlir::OpBuilder::cloneRegionBefore((v109 + 1), ((v106 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v60, *(v60 + 8), v112);
              v61 = v57[9];
              if (v61)
              {
                v62 = (v57 - 4);
              }

              else
              {
                v62 = 0;
              }

              mlir::ValueRange::ValueRange(&__src, v62, v61);
              (**v109)(v109, a2, __src, v125);
            }

            else
            {
              __src = &v126;
              v125 = 0x600000000;
              v63 = (v51[1] + v52 + v51[2]);
              v64 = (v51[3] + v63) - v63;
              if (v64 >= 7)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v126, v64, 8);
                v49 = *(a2 + 44);
                v50 = (v49 >> 23) & 1;
              }

              v65 = (v49 >> 21) & 0x7F8;
              v66 = 32 * *(a2 + 40);
              v67 = *(((v106 + 16 * v50 + v65 + 7) & 0xFFFFFFFFFFFFFFF8) + v66 + 8);
              if (v67)
              {
                v68 = v67 - 8;
              }

              else
              {
                v68 = 0;
              }

              v69 = *(v68 + 40);
              v70 = (v68 + 32);
              if (v69 != v70)
              {
                v71 = *v70;
                if (v69 != *v70)
                {
                  do
                  {
                    MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                    mlir::OpBuilder::clone(v109 + 1, v72, v112);
                    v69 = v69[1];
                  }

                  while (v69 != v71);
                  v73 = *(a2 + 44);
                  v50 = (v73 >> 23) & 1;
                  v65 = (v73 >> 21) & 0x7F8;
                  v66 = 32 * *(a2 + 40);
                }
              }

              v74 = *(((v106 + 16 * v50 + v65 + 7) & 0xFFFFFFFFFFFFFFF8) + v66 + 8);
              if (v74)
              {
                v75 = (v74 - 8);
              }

              else
              {
                v75 = 0;
              }

              mlir::Block::getTerminator(v75);
              v77 = *(v76 + 44);
              v78 = v125;
              v79 = *&v77 & 0x7FFFFFLL;
              if ((v77 & 0x7FFFFF) != 0)
              {
                v80 = v76;
                v81 = 0;
                v82 = v76 + 64;
                do
                {
                  v83 = *(((v82 + 16 * ((*(v80 + 44) >> 23) & 1) + ((*(v80 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v80 + 40) + 24 * v81 + 8);
                  if (v83)
                  {
                    v84 = v83 - 8;
                  }

                  else
                  {
                    v84 = 0;
                  }

                  v85 = *(*(a2 + 72) + 32 * (*(a2 + 84) + *(a2 + 80) + *(a2 + 88)) + 32 * v78 + 24);
                  __dst = **(v84 + 48);
                  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v112, &__dst) = v85;
                  v86 = *(*(v80 + 72) + 32 * v81 + 24);
                  if (v113)
                  {
                    v87 = 0x9DDFEA08EB382D69 * ((8 * v86 - 0xAE502812AA7333) ^ HIDWORD(v86));
                    v88 = 0x9DDFEA08EB382D69 * (HIDWORD(v86) ^ (v87 >> 47) ^ v87);
                    v89 = (-348639895 * ((v88 >> 47) ^ v88)) & (v113 - 1);
                    v90 = *(v112[0] + 2 * v89);
                    if (v90 == v86)
                    {
LABEL_87:
                      if (v89 != v113)
                      {
                        v86 = *(v112[0] + 2 * v89 + 1);
                      }
                    }

                    else
                    {
                      v102 = 1;
                      while (v90 != -4096)
                      {
                        v103 = v89 + v102++;
                        v89 = v103 & (v113 - 1);
                        v90 = *(v112[0] + 2 * v89);
                        if (v90 == v86)
                        {
                          goto LABEL_87;
                        }
                      }
                    }
                  }

                  __dst = *(*(v84 + 48) + 8);
                  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v112, &__dst) = v86;
                  v91 = *(v84 + 40);
                  v92 = (v84 + 32);
                  if (v91 != v84 + 32)
                  {
                    for (i = *v92; v91 != i; v91 = *(v91 + 8))
                    {
                      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
                      mlir::OpBuilder::clone(v109 + 1, v94, v112);
                    }
                  }

                  mlir::Block::getTerminator(v84);
                  v96 = *(*(v95 + 72) + 24);
                  if (v113)
                  {
                    v97 = 0x9DDFEA08EB382D69 * ((8 * *(*(v95 + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(v95 + 72) + 24)));
                    v98 = 0x9DDFEA08EB382D69 * (HIDWORD(v96) ^ (v97 >> 47) ^ v97);
                    v99 = (-348639895 * ((v98 >> 47) ^ v98)) & (v113 - 1);
                    v100 = *(v112[0] + 2 * v99);
                    if (v100 == v96)
                    {
LABEL_94:
                      if (v99 != v113)
                      {
                        v96 = *(v112[0] + 2 * v99 + 1);
                      }
                    }

                    else
                    {
                      v104 = 1;
                      while (v100 != -4096)
                      {
                        v105 = v99 + v104++;
                        v99 = v105 & (v113 - 1);
                        v100 = *(v112[0] + 2 * v99);
                        if (v100 == v96)
                        {
                          goto LABEL_94;
                        }
                      }
                    }
                  }

                  v101 = v125;
                  if (v125 >= HIDWORD(v125))
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v126, v125 + 1, 8);
                    v101 = v125;
                  }

                  *(__src + v101) = v96;
                  v78 = v125 + 1;
                  LODWORD(v125) = v125 + 1;
                  ++v81;
                }

                while (v81 != v79);
              }

              mlir::ValueRange::ValueRange(&__dst, __src, v78);
              (**v109)();
              if (__src != &v126)
              {
                free(__src);
              }
            }
          }
        }

        llvm::deallocate_buffer(v117, (16 * v119));
      }

      v21 = 0;
      v110 = 32 * v13 - 32;
      v111 = __src + 24;
      v22 = v126 + 24;
      v23 = v130;
      v24 = v128 + 24;
      v25 = v125 - 1;
      v26 = v127 - 1;
      v27 = v129 - 1;
      while (1)
      {
        v28 = *&v111[v21];
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
        ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp(v109 + 1, v108, v28 | 4);
        __dst = v36;
        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v112, &__dst) = ConstantIndexOp;
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
              v41 = v110 == v21;
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
        v43 = (v106 + 16 * ((v42 >> 23) & 1));
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
        (**v109)(v109, a2, __dst, v122);
        v20 = 1;
        goto LABEL_54;
      }

LABEL_30:
      v33 = v140;
      if (v140 >= HIDWORD(v140))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v139, v141, v140 + 1, 8);
        v33 = v140;
      }

      v139[v33] = v28;
      LODWORD(v140) = v140 + 1;
      v34 = v137;
      if (v137 >= HIDWORD(v137))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v136, v138, v137 + 1, 8);
        v34 = v137;
      }

      *&v136[8 * v34] = v29;
      LODWORD(v137) = v137 + 1;
      v35 = v134;
      if (v134 >= HIDWORD(v134))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v133, v135, v134 + 1, 8);
        v35 = v134;
      }

      *(v133 + v35) = v30;
      LODWORD(v134) = v134 + 1;
      goto LABEL_38;
    }

    v14 = __dst;
  }

  memcpy(v14, __src, 8 * v15);
  goto LABEL_8;
}

char *mlir::OpBuilder::create<mlir::scf::ParallelOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,mlir::OperandRange,decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ParallelOp,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &,mlir::OperandRange,decltype(nullptr)>(v23, v25, v24);
  }

  mlir::OperationState::OperationState(v23, a2, v13);
  mlir::ValueRange::ValueRange(v25, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v24, *a4, *(a4 + 8));
  mlir::ValueRange::ValueRange(v22, *a5, *(a5 + 8));
  mlir::ValueRange::ValueRange(v21, *a6, *(a6 + 8));
  mlir::scf::ParallelOp::build(a1, v23, v25[0], v25[1], v24[0], v24[1], v22[0], v22[1], v15, v16, v21[0], v21[1]);
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
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

  operator delete(this);
}

uint64_t anonymous namespace::MergeNestedParallelLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = *MEMORY[0x1E69E9840];
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
  if (v6 == v5 + 4)
  {
    return 0;
  }

  v7 = v5[4];
  if (v6 == v7 || v6[1] != v7)
  {
    return 0;
  }

  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  v11 = *(*(v10 + 48) + 16);
  v12 = v11 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id;
  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id ? v10 : 0;
  v107 = v13;
  if (!v12)
  {
    return 0;
  }

  v15 = v5[6];
  v16 = v5[7];
  v17 = a2;
  if (v15 != v16)
  {
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
    if (v40)
    {
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
            return 0;
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
            break;
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
            return 0;
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
            break;
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

    v52 = *(v20 + 8);
    if (v52)
    {
      if ((v18 & 0x800000) != 0)
      {
        v53 = *(v10 + 72) + 32 * v40 + 24;
LABEL_64:
        v54 = v53;
        v55 = v52;
        while (*v54 != *v15)
        {
          v54 += 4;
          if (!--v55)
          {
            if (++v15 == v16)
            {
              goto LABEL_89;
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
        v63 = (32 * v40) | 0x18;
LABEL_85:
        v64 = v63;
        v65 = v52;
        while (*v64 != *v15)
        {
          v64 += 4;
          if (!--v65)
          {
            ++v15;
            v17 = a2;
            if (v15 == v16)
            {
              goto LABEL_89;
            }

            goto LABEL_85;
          }
        }
      }

      return 0;
    }
  }

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
  if ((v66 & 0x800000) == 0)
  {
    v120 = 0;
    v121 = v70;
    v71 = *(v69 + 64);
    if ((v68 & 0x800000) != 0)
    {
      goto LABEL_93;
    }

LABEL_114:
    v72 = 0;
    goto LABEL_94;
  }

  v120 = *(v17 + 72);
  v121 = v70;
  v71 = *(v69 + 64);
  if ((v68 & 0x800000) == 0)
  {
    goto LABEL_114;
  }

LABEL_93:
  v72 = *(v13 + 72);
LABEL_94:
  v112 = v72;
  v113 = v71;
  _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(&v115, &v120, &v112);
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

  v120 = v77 + 32 * v75;
  v121 = v76 + v75 - v75;
  v78 = *(v107 + 44);
  v79 = v107 + 16 * ((v78 >> 23) & 1);
  v80 = *(v79 + 64);
  v81 = *(v79 + 68);
  if ((v78 & 0x800000) != 0)
  {
    v82 = *(v107 + 72);
  }

  else
  {
    v82 = 0;
  }

  v109 = (v82 + 32 * v80);
  v110 = (v81 + v80) - v80;
  _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(&v112, &v120, &v109);
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
  v120 = v88 + 32 * v89;
  v121 = (v87 + v89) - v89;
  v90 = *(v107 + 44);
  v91 = (v107 + 16 * ((v90 >> 23) & 1));
  v92 = v91[16];
  v93 = v91[17];
  v94 = v91[18];
  if ((v90 & 0x800000) != 0)
  {
    v95 = *(v107 + 72);
  }

  else
  {
    v95 = 0;
  }

  v96 = (v93 + v92);
  v124 = (v95 + 32 * v96);
  v125 = (v94 + v96) - v96;
  _ZZNK12_GLOBAL__N_124MergeNestedParallelLoops15matchAndRewriteEN4mlir3scf10ParallelOpERNS1_15PatternRewriterEENKUlRKT_RKT0_E_clINS1_12OperandRangeESE_EEDaS8_SB_(&v109, &v120, &v124);
  v97 = *(a2 + 24);
  v108 = v97;
  Context = mlir::Attribute::getContext(&v108);
  v99 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id, Context);
  if ((v100 & 1) == 0)
  {
    v128 = 1283;
    v126 = "scf.parallel";
    v127 = 12;
    v123 = 259;
    llvm::operator+(&v124, v122, &v120);
    llvm::report_fatal_error(&v120, 1);
  }

  mlir::OperationState::OperationState(&v120, v97, v99);
  mlir::ValueRange::ValueRange(&v124, v115, v116);
  mlir::ValueRange::ValueRange(v122, v112, v113);
  mlir::ValueRange::ValueRange(v119, v109, v110);
  mlir::ValueRange::ValueRange(v118, 0, 0);
  v101 = a3;
  mlir::scf::ParallelOp::build(a3 + 8, &v120, v124, v125, v122[0], v122[1], v119[0], v119[1], v102, v103, v118[0], v118[1]);
  v104 = mlir::OpBuilder::create((a3 + 8), &v120);
  v105 = *(*(v104 + 6) + 16);
  mlir::OperationState::~OperationState(&v120);
  if (v105 == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
  {
    v106 = v104;
  }

  else
  {
    v106 = 0;
  }

  (*(*v101 + 8))(v101, a2, v106);
  if (v109 != &v111)
  {
    free(v109);
  }

  if (v112 != &v114)
  {
    free(v112);
  }

  if (v115 != &v117)
  {
    free(v115);
  }

  return 1;
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
  v28 = v15 + 4;
  if (v27 != v15 + 4)
  {
    for (i = *v28; v27 != i; v27 = v27[1])
    {
      MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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

  operator delete(this);
}

char *mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v19, &v21, v20);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  NextResultAtOffset = *a3;
  v12 = a3[1];
  v13 = a3[3];
  if (v12)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
  }

  mlir::ValueRange::ValueRange(&v21, NextResultAtOffset, v13 - v12);
  mlir::TypeRange::TypeRange(v20, v21, v22);
  v14 = mlir::ValueRange::ValueRange(&v21, *a4, *(a4 + 8));
  mlir::scf::WhileOp::build(v14, v19, v20[0], v20[1], v21, v22, 0, 0);
  v15 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v16;
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

  operator delete(this);
}

uint64_t anonymous namespace::RemoveLoopInvariantValueYielded::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v103[6] = *MEMORY[0x1E69E9840];
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
      v101 = *v13;
      if (mlir::Value::getParentBlock(&v101) != v7)
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
    v84 = v5;
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
    v101 = v103;
    v102 = 0x600000000;
    v98 = &v100;
    v99 = 0x600000000;
    v85[0] = 0;
    v85[1] = 0;
    v86 = 0;
    v95 = v97;
    v96 = 0x600000000;
    v20 = (v12 + 24);
    while (1)
    {
      v87 = *v20;
      if (mlir::Value::getParentBlock(&v87) == v7)
      {
        break;
      }

      LODWORD(v89) = v16;
      v90 = v87;
      llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::try_emplace<mlir::Value>(v85, &v89, &v90, &v92);
LABEL_16:
      ++v16;
      v20 += 4;
      if (v11 == v16)
      {
        v27 = a3 + 3;
        v83 = *(a3 + 3);
        v28 = v9[2];
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        a3[3] = v28;
        a3[4] = v29;
        v92 = *(v9[9] + 24);
        v30 = mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), v9[3], &v92, &v101);
        (*(*a3 + 8))(a3, v9, v30);
        if (v83)
        {
          *v27 = v83;
          v31 = *(a2 + 24);
          if ((*(a2 + 46) & 0x80) != 0)
          {
            goto LABEL_27;
          }

LABEL_36:
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
            goto LABEL_36;
          }

LABEL_27:
          v32 = *(a2 + 72);
          v33 = *(a2 + 68);
        }

        v92 = v32;
        v93 = v33;
        v34 = mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>((a3 + 1), v31, &v98, &v92);
        v35 = (&v34[16 * ((*(v34 + 11) >> 23) & 1) + 71 + ((*(v34 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 10);
        mlir::ValueRange::ValueRange(&v92, v98, v99);
        Block = mlir::OpBuilder::createBlock(a3 + 1, (v35 + 24), 0, v92, v93, v95, v96);
        v37 = *(((v5 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 32);
        if (v37)
        {
          v38 = v37 - 8;
        }

        else
        {
          v38 = 0;
        }

        v39 = *(v38 + 56) - *(v38 + 48);
        v40 = v39 >> 3;
        v41 = (v39 >> 3);
        v92 = v94;
        v93 = 0x600000000;
        if (!(v39 >> 3))
        {
          v89 = v91;
          v90 = 0x600000000;
          goto LABEL_45;
        }

        if (v41 < 7)
        {
          v42 = 0;
          v43 = v41;
          if (!v41)
          {
            goto LABEL_40;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, (v39 >> 3), 8);
          v42 = v93;
          v43 = v41 - v93;
          if (v41 == v93)
          {
LABEL_40:
            LODWORD(v93) = v40;
            v40 = (*(v38 + 56) - *(v38 + 48)) >> 3;
            v89 = v91;
            v90 = 0x600000000;
            if (v40)
            {
              if (v40 < 7uLL)
              {
                v44 = 0;
                v45 = v40;
LABEL_43:
                bzero(v89 + 8 * v44, 8 * v45);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v40, 8);
                v44 = v90;
                v45 = v40 - v90;
                if (v40 != v90)
                {
                  goto LABEL_43;
                }
              }

              LODWORD(v90) = v40;
              v40 = (*(v38 + 56) - *(v38 + 48)) >> 3;
            }

LABEL_45:
            LODWORD(v87) = 0;
            if (!v40)
            {
              v59 = v92;
              goto LABEL_70;
            }

            v46 = (v34 - 96);
            v47 = v86;
            if (v86)
            {
              v48 = 0;
              v49 = 0;
LABEL_49:
              v50 = v47 - 1;
              v51 = v50 & (37 * v48);
              v52 = *(v85[0] + 4 * v51);
              if (v48 == v52)
              {
LABEL_50:
                v53 = *llvm::DenseMapBase<llvm::DenseMap<unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>,unsigned int,mlir::Value,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,mlir::Value>>::operator[](v85, &v87);
                v48 = v87;
                v54 = v53;
                goto LABEL_57;
              }

              v55 = 1;
              while (v52 != -1)
              {
                v56 = v51 + v55++;
                v51 = v56 & v50;
                v52 = *(v85[0] + 4 * v51);
                if (v48 == v52)
                {
                  goto LABEL_50;
                }
              }

              while (1)
              {
                v53 = *(*(Block + 6) + 8 * v49);
                v54 = (v46 - 24 * (v49 - 5));
                v57 = v49 + 1;
                if (v49++ <= 5)
                {
                  v54 = &v34[-16 * v57];
                }

LABEL_57:
                v59 = v92;
                *(v92 + v48) = v53;
                *(v89 + v48++) = v54;
                LODWORD(v87) = v48;
                if (v48 >= v40)
                {
                  break;
                }

                v47 = v86;
                if (v86)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
              v60 = *(Block + 6);
              v59 = v92;
              v61 = v89;
              *v92 = *v60;
              *v61 = v34 - 16;
              if (v40 != 1)
              {
                *(v59 + 1) = v60[1];
                *(v61 + 1) = v34 - 32;
                if (v40 >= 3)
                {
                  *(v59 + 2) = v60[2];
                  *(v61 + 2) = v34 - 48;
                  if (v40 != 3)
                  {
                    *(v59 + 3) = v60[3];
                    *(v61 + 3) = v34 - 64;
                    if (v40 >= 5)
                    {
                      *(v59 + 4) = v60[4];
                      *(v61 + 4) = v34 - 80;
                      if (v40 != 5)
                      {
                        *(v59 + 5) = v60[5];
                        *(v61 + 5) = v46;
                        if (v40 >= 7)
                        {
                          v62 = (v40 - 6);
                          if (v62 >= 8)
                          {
                            v63 = 6;
                            v64 = 6;
                            if ((v61 - v59) >= 0x20 && (v59 - v60) >= 0x20 && (v61 - v60) >= 0x20)
                            {
                              v63 = (v62 & 0xFFFFFFFC) + 6;
                              v64 = (v62 & 0xFFFFFFFC) + 6;
                              v70 = (v60 + 8);
                              v71 = xmmword_1E096E670;
                              v72 = vdupq_n_s64(5uLL);
                              v73 = vdupq_n_s64(3uLL);
                              v74 = 6;
                              v75 = vdupq_n_s64(v46);
                              v76 = vdupq_n_s64(4uLL);
                              do
                              {
                                v77 = *v70;
                                v78 = vsubq_s64(v72, v71);
                                v79 = vsubq_s64(v73, v71);
                                v78.i64[0] *= 24;
                                v78.i64[1] *= 24;
                                v79.i64[0] *= 24;
                                v79.i64[1] *= 24;
                                v80 = (8 * v74) & 0x7FFFFFFF0;
                                v81 = &v59[v80];
                                *v81 = *(v70 - 1);
                                *(v81 + 1) = v77;
                                v82 = &v61[v80];
                                *v82 = vaddq_s64(v75, v78);
                                v82[1] = vaddq_s64(v75, v79);
                                v71 = vaddq_s64(v71, v76);
                                v74 += 4;
                                v70 += 2;
                              }

                              while (v74 - (v62 & 0xFFFFFFFC) != 6);
                              if ((v62 & 0xFFFFFFFC) == v62)
                              {
                                goto LABEL_70;
                              }
                            }
                          }

                          else
                          {
                            v63 = 6;
                            v64 = 6;
                          }

                          v65 = &v34[-24 * v63 + 24];
                          v66 = &v60[v63];
                          v67 = v64;
                          do
                          {
                            v68 = *v66++;
                            *&v59[8 * v67] = v68;
                            *&v61[8 * v67] = v65;
                            v65 -= 24;
                            ++v67;
                          }

                          while (v67 < v40);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_70:
            mlir::ValueRange::ValueRange(&v87, v59, v93);
            mlir::RewriterBase::mergeBlocks(a3, v38, Block, v87, v88);
            v69 = (&v34[16 * ((*(v34 + 11) >> 23) & 1) + 71 + ((*(v34 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 10);
            mlir::RewriterBase::inlineRegionBefore(a3, (((v84 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)), v69, *(v69 + 8));
            mlir::ValueRange::ValueRange(&v87, v89, v90);
            (**a3)(a3, a2, v87, v88);
            if (v89 != v91)
            {
              free(v89);
            }

            if (v92 != v94)
            {
              free(v92);
            }

            if (v95 != v97)
            {
              free(v95);
            }

            llvm::deallocate_buffer(v85[0], (16 * v86));
          }
        }

        bzero(v92 + 8 * v42, 8 * v43);
        goto LABEL_40;
      }
    }

    v21 = v102;
    if (v102 >= HIDWORD(v102))
    {
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v101, &v87);
      v23 = (*(v87 + 8) & 0xFFFFFFFFFFFFFFF8);
      v92 = v23;
      v24 = v99;
      if (v99 < HIDWORD(v99))
      {
LABEL_20:
        v98[v24] = v23;
        LODWORD(v99) = v24 + 1;
        v25 = *(*(v19 + 8 * v16) + 32);
        v92 = v25;
        v26 = v96;
        if (v96 >= HIDWORD(v96))
        {
          goto LABEL_24;
        }

LABEL_21:
        *(v95 + v26) = v25;
        LODWORD(v96) = v96 + 1;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = v87;
      v101[v102] = v87;
      LODWORD(v102) = v21 + 1;
      v23 = (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
      v92 = v23;
      v24 = v99;
      if (v99 < HIDWORD(v99))
      {
        goto LABEL_20;
      }
    }

    llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v98, &v92);
    v25 = *(*(v19 + 8 * v16) + 32);
    v92 = v25;
    v26 = v96;
    if (v96 >= HIDWORD(v96))
    {
LABEL_24:
      llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v95, &v92);
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

char *mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v16, v18, v17);
  }

  mlir::OperationState::OperationState(v16, a2, v9);
  mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  v11 = mlir::ValueRange::ValueRange(v17, *a4, *(a4 + 8));
  mlir::scf::WhileOp::build(v11, v16, v18[0], v18[1], v17[0], v17[1], 0, 0);
  v12 = mlir::OpBuilder::create(a1, v16);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  return v13;
}

char *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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

  operator delete(this);
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

  operator delete(this);
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

  operator delete(this);
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

  operator delete(this);
}

char *mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ValueRange>,mlir::OperandRange,decltype(nullptr),decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v20, &v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[3];
  v22 = v11;
  v23 = v12;
  if (v12)
  {
    v11 = mlir::ValueRange::offset_base(&v22, v12);
    v12 = v23;
  }

  mlir::TypeRange::TypeRange(&v22, v11, v13 - v12);
  mlir::ValueRange::ValueRange(v21, *a4, *(a4 + 8));
  mlir::scf::WhileOp::build(a1, v20, v22, v23, v21[0], v21[1], 0, v14, 0, v18);
  v15 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v16;
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

char *mlir::OpBuilder::create<mlir::scf::ConditionOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

  operator delete(this);
}

uint64_t anonymous namespace::WhileRemoveUnusedArgs::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v97[6] = *MEMORY[0x1E69E9840];
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
  if (v10 == v9)
  {
LABEL_6:
    v88 = "No args to remove";
    v90[8] = 259;
    v95 = &v88;
    v11 = *(a3 + 16);
    if (v11)
    {
      if (mlir::RewriterBase::Listener::classof(*(a3 + 16)))
      {
        (*(*v11 + 88))(v11, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::WhileOp &>(mlir::scf::WhileOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v95);
      }
    }

    return 0;
  }

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
  v95 = v97;
  v96 = 0x600000000;
  v92 = v94;
  v93 = 0x600000000;
  v91 = 0;
  v17 = *(v4 + 40);
  v18 = v5 + 16 * ((*(v4 + 44) >> 23) & 1) + ((*(v4 + 44) >> 21) & 0x7F8);
  v88 = v90;
  v89 = 0x600000000;
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
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v97, (v21 - v22) >> 3, 8);
    if (v24 > HIDWORD(v93))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v24, 8);
    }
  }

  v25 = ((v23 >> 3) + 63) >> 6;
  if (HIDWORD(v89) < v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v25, 8);
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
    v83 = v16;
    if ((v26 & 0x800000) == 0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v83 = v16;
    if ((v26 & 0x800000) == 0)
    {
      goto LABEL_64;
    }
  }

  v34 = *(v31 + 48);
  v35 = *(v31 + 56);
  v36 = *(v4 + 68);
  v37 = v34 == v35 || v33 == 0;
  if (!v37 && v36 != 0)
  {
    v79 = v5;
    v80 = v3;
    v39 = 0;
    v81 = v4;
    v40 = (v32 + 24);
    v41 = (*(v4 + 72) + 24);
    v42 = 8 * v33 - 8;
    v43 = 8 * v36 - 8;
    while (1)
    {
      v44 = *v40;
      v45 = *v41;
      v85 = v34 + v39;
      v86 = v44;
      v87 = v45;
      if (!**(v34 + v39))
      {
        llvm::BitVector::push_back(&v88, 1);
        v54 = v39 + 8;
        if (v39 + 8 + v34 == v35)
        {
          goto LABEL_63;
        }

        goto LABEL_54;
      }

      v46 = v91;
      v47 = v89;
      v48 = v91 + 1;
      if ((v91 + 1) > v89 << 6)
      {
        break;
      }

      ++v91;
LABEL_51:
      v55 = v96;
      if (v96 >= HIDWORD(v96))
      {
        llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v95, &v86);
        v56 = v93;
        if (v93 >= HIDWORD(v93))
        {
LABEL_59:
          llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(&v92, &v87);
          v54 = v39 + 8;
          if (v39 + 8 + v34 == v35)
          {
            goto LABEL_63;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v95[v96] = v86;
        LODWORD(v96) = v55 + 1;
        v56 = v93;
        if (v93 >= HIDWORD(v93))
        {
          goto LABEL_59;
        }
      }

      *(v92 + v56) = v87;
      LODWORD(v93) = v56 + 1;
      v54 = v39 + 8;
      if (v39 + 8 + v34 == v35)
      {
        goto LABEL_63;
      }

LABEL_54:
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

LABEL_63:
      v3 = v80;
      v4 = v81;
      v57 = *(v81 + 44);
      v27 = (v57 >> 23) & 1;
      v28 = (v57 >> 21) & 0x7F8;
      v29 = 32 * *(v81 + 40);
      v5 = v79;
      goto LABEL_64;
    }

    if ((v91 & 0x3F) != 0)
    {
      *(v88 + v89 - 1) &= ~(-1 << (v91 & 0x3F));
    }

    v91 = v48;
    v49 = (v46 + 64) >> 6;
    if (v47 == v49)
    {
LABEL_46:
      v53 = v48 & 0x3F;
      if (v53)
      {
        *(v88 + v47 - 1) &= ~(-1 << v53);
      }

      goto LABEL_51;
    }

    if (v47 > v49)
    {
LABEL_45:
      LODWORD(v89) = v49;
      LODWORD(v47) = v49;
      goto LABEL_46;
    }

    v50 = v47;
    v51 = v47;
    if (HIDWORD(v89) < v49)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v90, v49, 8);
      v50 = v89;
      v51 = v89;
      v52 = v49 - v47;
      if (v49 == v47)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v52 = v49 - v47;
      if (v49 == v47)
      {
LABEL_44:
        LODWORD(v49) = v49 - v47 + v51;
        LOBYTE(v48) = v91;
        goto LABEL_45;
      }
    }

    bzero(v88 + 8 * v50, 8 * v52);
    goto LABEL_44;
  }

LABEL_64:
  v58 = ((v5 + 16 * v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) + v29;
  v59 = *(v58 + 8);
  if (v59)
  {
    v60 = v59 - 8;
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v58 + 32);
  if (v61)
  {
    v62 = v61 - 8;
  }

  else
  {
    v62 = 0;
  }

  mlir::Block::eraseArguments(v60, &v88);
  v63 = *(v4 + 24);
  v64 = *(v4 + 36);
  v65 = v4 - 16;
  if (!v64)
  {
    v65 = 0;
  }

  v84[0] = v65;
  v84[1] = v64;
  mlir::OperandRange::getTypes(&v85, v84);
  v84[0] = 0;
  v66 = mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &,decltype(nullptr),decltype(nullptr)>((v3 + 8), v63, &v85, &v92);
  v67 = ((&v66[4 * ((v66[11] >> 23) & 1) + 17] + ((v66[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v66[10];
  v68 = *(v67 + 8);
  if (v68)
  {
    v69 = v68 - 8;
  }

  else
  {
    v69 = 0;
  }

  v70 = *(v67 + 32);
  if (v70)
  {
    v71 = v70 - 8;
  }

  else
  {
    v71 = 0;
  }

  v72 = (v3 + 24);
  v82 = *(v3 + 24);
  v73 = *(v83 + 16);
  MPSGraphDelegateCompiler.precompilationDescriptor.modify();
  *(v3 + 24) = v73;
  *(v3 + 32) = v74;
  v75 = mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((v3 + 8), *(v83 + 24), &v95);
  (*(*v3 + 8))(v3, v83, v75);
  mlir::ValueRange::ValueRange(&v85, *(v69 + 48), (*(v69 + 56) - *(v69 + 48)) >> 3);
  mlir::RewriterBase::mergeBlocks(v3, v60, v69, v85, v86);
  mlir::ValueRange::ValueRange(&v85, *(v71 + 48), (*(v71 + 56) - *(v71 + 48)) >> 3);
  mlir::RewriterBase::mergeBlocks(v3, v62, v71, v85, v86);
  v76 = v66[9];
  if (v76)
  {
    v77 = (v66 - 4);
  }

  else
  {
    v77 = 0;
  }

  mlir::ValueRange::ValueRange(&v85, v77, v76);
  (**v3)(v3, v4, v85, v86);
  if (!v82)
  {
    *v72 = 0;
    *(v3 + 32) = 0;
    v78 = v88;
    if (v88 == v90)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  *v72 = v82;
  v78 = v88;
  if (v88 != v90)
  {
LABEL_83:
    free(v78);
  }

LABEL_84:
  if (v92 != v94)
  {
    free(v92);
  }

  if (v95 != v97)
  {
    free(v95);
  }

  return 1;
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

char *mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &,decltype(nullptr),decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v20, &v22, v21);
  }

  mlir::OperationState::OperationState(v20, a2, v9);
  NextResultAtOffset = *a3;
  v12 = a3[1];
  v13 = a3[3];
  if (v12)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v12);
  }

  mlir::ValueRange::ValueRange(&v22, NextResultAtOffset, v13 - v12);
  mlir::TypeRange::TypeRange(v21, v22, v23);
  mlir::ValueRange::ValueRange(&v22, *a4, *(a4 + 8));
  mlir::scf::WhileOp::build(a1, v20, v21[0], v21[1], v22, v23, 0, v14, 0, v18);
  v15 = mlir::OpBuilder::create(a1, v20);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v20);
  return v16;
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

  operator delete(this);
}

char *mlir::OpBuilder::create<mlir::scf::WhileOp,llvm::SmallVector<mlir::Type,6u> &,mlir::OperandRange,decltype(nullptr),decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::WhileOp,mlir::ValueTypeRange<mlir::ResultRange>,llvm::SmallVector<mlir::Value,6u> &>(v17, v19, v18);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::scf::WhileOp::build(a1, v17, v19[0], v19[1], v18[0], v18[1], 0, v11, 0, v15);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

char *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<std::unique_ptr<mlir::Region>>(uint64_t a1, uint64_t *a2)
{
  v28 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v28);
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
      operator delete(v24);
    }

    v7 -= 8;
  }

  while (v7);
  v10 = *a1;
LABEL_18:
  v25 = v28;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v5;
  v26 = *(a1 + 8) + 1;
  *(a1 + 8) = v26;
  *(a1 + 12) = v25;
  return &v5[8 * v26 - 8];
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

void mlir::RewritePatternSet::addImpl<FoldConstantCase,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, mlir::StringAttr **a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "scf.index_switch", 16, v31, v9, 0, 0);
  *v8 = &unk_1F5B07848;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = FoldConstantCase]";
    v32 = 66;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), v8 + 12, v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
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

  operator delete(this);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ForallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::IndexSwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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
            operator delete[](v20);
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::scf::detail::ParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(int a1, void *__p)
{
  if (__p)
  {
    operator delete(__p);
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

__n128 OUTLINED_FUNCTION_12_11@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_22_7@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_8@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  *a2 = v2;
  *(result + 32) += 4;
  return result;
}

void OUTLINED_FUNCTION_29_7()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void OUTLINED_FUNCTION_31_7(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *v7 = a1;
  *(v7 + 8) = v8;
  *(v7 + 12) = a7;
}

__n128 OUTLINED_FUNCTION_35_7@<Q0>(unsigned __int128 *a1@<X8>)
{
  v2 = v1 - 8;
  result = vld4q_f64(v2);
  v4 = vld4q_f64(v1);
  *(a1 - 1) = result;
  *a1 = v4;
  return result;
}

void OUTLINED_FUNCTION_45_3(uint64_t a1@<X8>)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, a1 + 1, 24);
}

void OUTLINED_FUNCTION_61_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = a10;
  v15 = a11;

  mlir::getMixedValues(v11, v12, v14, v15, &a9, va);
}

void OUTLINED_FUNCTION_74_3(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2, v3, 8);
}

void OUTLINED_FUNCTION_75_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, const void **);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  mlir::OpState::emitOpError(v10, va, va1);
}

llvm::raw_ostream *OUTLINED_FUNCTION_90_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return mlir::printDynamicIndexList(a1, a2, a3, a4, v11, v12, 0, 0, a9, a10, a11);
}

void OUTLINED_FUNCTION_124_2(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2, 8);
}

void *OUTLINED_FUNCTION_126_2@<X0>(const void *a1@<X8>)
{
  v4 = *v2;

  return memcpy(v4, a1, 8 * v1);
}

uint64_t OUTLINED_FUNCTION_127_2@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 56) = a2;
  v4 = (*a1 + 24);

  return mlir::Attribute::getContext(v4);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{

  return mlir::Builder::getDenseI64ArrayAttr(&a53, v53, v54);
}

void OUTLINED_FUNCTION_129_2(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, &a20, a1 + 1, 24);
}

void OUTLINED_FUNCTION_130_2(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_133_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a5 = a1;

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a5);
}

void OUTLINED_FUNCTION_134_1(uint64_t a1@<X8>)
{

  bzero((v2 + 8 * a1), 8 * v1);
}

void OUTLINED_FUNCTION_135_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(&a65, a20, v65 + 1, 24);
}

void OUTLINED_FUNCTION_137_1(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2, 8);
}

uint64_t OUTLINED_FUNCTION_138_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;

  return mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&a16);
}

void OUTLINED_FUNCTION_139_1(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2, 8);
}

__n128 OUTLINED_FUNCTION_148_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a18, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __n128 a19)
{
  result = a19;
  *(v19 - 128) = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_162_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;

  return mlir::tensor::preservesStaticInformation(a1 & 0xFFFFFFFFFFFFFFF8, v3);
}

void OUTLINED_FUNCTION_163_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v9 - 160, a9, a1 + 1, 8);
}

void OUTLINED_FUNCTION_164_0()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

void OUTLINED_FUNCTION_165_0(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{

  operator delete(a1);
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    if (*(this + 47) && (v73.var0 = "sym_name", v73.var1 = 8, InherentAttr = mlir::Operation::getInherentAttr(this, v73), (v6 & 1) != 0))
    {
      if (InherentAttr)
      {
        return 0;
      }
    }

    else
    {
      v74.var0 = "sym_name";
      v74.var1 = 8;
      if (mlir::DictionaryAttr::contains((this + 56), v74))
      {
        return 0;
      }
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

          v16 = v15 + 32;
          v17 = *(v15 + 40);
          if (v17 != v15 + 32)
          {
            do
            {
              MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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
              v17 = *(v17 + 8);
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

uint64_t mlir::hasEffect<mlir::MemoryEffects::Allocate>(uint64_t a1, uint64_t a2)
{
  v10[20] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v8 = v10;
  v9 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v8);
  v7 = &v6;
  result = std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Allocate>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(v8, v8 + 5 * v9, &v7);
  if (v8 != v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::hasEffect<mlir::MemoryEffects::Free>(uint64_t a1, uint64_t a2)
{
  v10[20] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  v8 = v10;
  v9 = 0x400000000;
  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  (*InterfaceFor)(InterfaceFor, a1, &v8);
  v7 = &v6;
  result = std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Free>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(v8, v8 + 5 * v9, &v7);
  if (v8 != v10)
  {
    v5 = result;
    free(v8);
    return v5;
  }

  return result;
}

uint64_t mlir::isMemoryEffectFree(mlir *this, mlir::Operation *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(this) && this)
  {
    v14[0] = &v15;
    v14[1] = 0x400000000;
    InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(this);
    (*InterfaceFor)(InterfaceFor, this, v14);
    v4 = v14[1];
    if (v14[0] != &v15)
    {
      free(v14[0]);
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
        mlir::Region::OpIterator::OpIterator(&v12, v7, 0);
        mlir::Region::OpIterator::OpIterator(&v16, v7, 1);
        v15 = v13;
        *v14 = v12;
        v9 = v17;
        if (v13 != v17)
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
        MPSGraphDelegateCompiler.precompilationDescriptor.modify();
        if ((mlir::isMemoryEffectFree(v10, v11) & 1) == 0)
        {
          return 0;
        }

        mlir::Region::OpIterator::operator++(&v12);
        if (v13 == v9)
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

            v12 = v11 + 32;
            v13 = *(v11 + 40);
            if (v13 != v11 + 32)
            {
              do
              {
                MPSGraphDelegateCompiler.precompilationDescriptor.modify();
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
                v13 = *(v13 + 8);
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

uint64_t std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Allocate>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(uint64_t **a1, uint64_t **a2, void **a3)
{
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1[2];
      if (v3 >= 8 && (v4 = a1[2] & 6, (v3 & 6) != 0))
      {
        v5 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v4 != 2 || v5 == 0)
        {
          if (v4 == 4)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            v5 = v7;
          }

          if (v5 == **a3)
          {
LABEL_20:
            v8 = **a1;
            {
              if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }

            else
            {
              v13 = a3;
              v11 = a2;
              v12 = a1;
              v10 = v8;
              std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Allocate>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>();
              a2 = v11;
              a1 = v12;
              a3 = v13;
              if (v10 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }
          }
        }

        else if (*(v5 + 24) == **a3)
        {
          goto LABEL_20;
        }
      }

      else if (!**a3)
      {
        goto LABEL_20;
      }

      a1 += 5;
      if (a1 == a2)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Free>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>(uint64_t **a1, uint64_t **a2, void **a3)
{
  if (a1 != a2)
  {
    while (1)
    {
      v3 = a1[2];
      if (v3 >= 8 && (v4 = a1[2] & 6, (v3 & 6) != 0))
      {
        v5 = v3 & 0xFFFFFFFFFFFFFFF8;
        if (v4 != 2 || v5 == 0)
        {
          if (v4 == 4)
          {
            v7 = v5;
          }

          else
          {
            v7 = 0;
          }

          if (v7)
          {
            v5 = v7;
          }

          if (v5 == **a3)
          {
LABEL_20:
            v8 = **a1;
            {
              if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }

            else
            {
              v13 = a3;
              v11 = a2;
              v12 = a1;
              v10 = v8;
              std::__any_of[abi:nn200100]<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect> *,std::__identity,BOOL mlir::hasEffect<mlir::MemoryEffects::Free>(mlir::Operation *,mlir::Value)::{lambda(mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>&)#1}>();
              a2 = v11;
              a1 = v12;
              a3 = v13;
              if (v10 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Free,void>::resolveTypeID(void)::id)
              {
                return 1;
              }
            }
          }
        }

        else if (*(v5 + 24) == **a3)
        {
          goto LABEL_20;
        }
      }

      else if (!**a3)
      {
        goto LABEL_20;
      }

      a1 += 5;
      if (a1 == a2)
      {
        return 0;
      }
    }
  }

  return 0;
}

void openInputFileImpl(void *a1, const void *a2, std::string::size_type a3, uint64_t a4, unsigned __int16 a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v29 = 261;
  v28.__r_.__value_.__r.__words[0] = a2;
  v28.__r_.__value_.__l.__size_ = a3;
  llvm::MemoryBuffer::getFileOrSTDIN(&v28, 0, 1, a5, &v31);
  if ((v32 & 1) == 0 || (v27 = v31, !v31.__val_))
  {
    *a1 = *&v31.__val_;
    return;
  }

  if (!a4)
  {
    *a1 = 0;
    return;
  }

  if (!a2)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_19;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    if ((a3 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (a3 | 7) + 1;
    }

    p_dst = operator new(v10);
    __dst.__r_.__value_.__l.__size_ = a3;
    __dst.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = a3;
    p_dst = &__dst;
    if (!a3)
    {
      goto LABEL_18;
    }
  }

  memmove(p_dst, a2, a3);
LABEL_18:
  p_dst->__r_.__value_.__s.__data_[a3] = 0;
LABEL_19:
  v11 = std::string::insert(&__dst, 0, "cannot open input file '");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v26, "': ");
  v14 = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::error_code::message(&__p, &v27);
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

  v17 = std::string::append(&v28, p_p, size);
  v18 = v17->__r_.__value_.__r.__words[0];
  v30[0] = v17->__r_.__value_.__l.__size_;
  *(v30 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v20 = v30[0];
  *a4 = v18;
  *(a4 + 8) = v20;
  *(a4 + 15) = *(v30 + 7);
  *(a4 + 23) = v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_36:
    operator delete(__dst.__r_.__value_.__l.__data_);
    v22 = v32;
    *a1 = 0;
    if (v22)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_35:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }

LABEL_31:
  v21 = v32;
  *a1 = 0;
  if (v21)
  {
    return;
  }

LABEL_37:
  v23 = *&v31.__val_;
  *&v31.__val_ = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }
}

void mlir::openOutputFile(_BYTE *a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v28.__val_ = 0;
  v28.__cat_ = std::system_category();
  v8 = operator new(0x90uLL);
  llvm::ToolOutputFile::ToolOutputFile(v8, a1, a2, &v28, 0);
  if (!v28.__val_)
  {
    *a4 = v8;
    return;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  if (!a1)
  {
    memset(&__dst, 0, sizeof(__dst));
    goto LABEL_16;
  }

  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (a2 >= 0x17)
  {
    if ((a2 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (a2 | 7) + 1;
    }

    p_dst = operator new(v12);
    __dst.__r_.__value_.__l.__size_ = a2;
    __dst.__r_.__value_.__r.__words[2] = v12 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = a2;
    p_dst = &__dst;
    if (!a2)
    {
      goto LABEL_15;
    }
  }

  memmove(p_dst, a1, a2);
LABEL_15:
  p_dst->__r_.__value_.__s.__data_[a2] = 0;
LABEL_16:
  v13 = std::string::insert(&__dst, 0, "cannot open output file '");
  v14 = v13->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v26, "': ");
  v16 = v15->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = *&v15->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::error_code::message(&__p, &v28);
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

  v19 = std::string::append(&v27, p_p, size);
  v20 = v19->__r_.__value_.__r.__words[0];
  v29[0] = v19->__r_.__value_.__l.__size_;
  *(v29 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
  v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  v22 = v29[0];
  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 15) = *(v29 + 7);
  *(a3 + 23) = v21;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_32:
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_27:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

LABEL_34:
      operator delete(__dst.__r_.__value_.__l.__data_);
      *a4 = 0;
      if (v8[128] != 1)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_33;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_26:
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_33:
  operator delete(v26.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  *a4 = 0;
  if (v8[128] == 1)
  {
LABEL_29:
    llvm::raw_fd_ostream::~raw_fd_ostream((v8 + 32));
  }

LABEL_30:
  llvm::CleanupInstaller::~CleanupInstaller(v8, v9, v10);
  operator delete(v23);
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

mlir::StorageUniquer *mlir::StorageUniquer::StorageUniquer(mlir::StorageUniquer *this)
{
  v2 = operator new(0x108uLL);
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[13] = 0u;
  v2[14] = 0u;
  v2[15] = 0u;
  *(v2 + 32) = 0;
  v2[12] = 0u;
  v2[9] = 0u;
  v3 = operator new(0x88uLL);
  *(v3 + 8) = 0u;
  *v3 = &unk_1F5B078E8;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 3) = v3 + 40;
  *(v3 + 4) = 0x100000000;
  MEMORY[0x1E12E57B0](v3 + 64);
  *(v3 + 32) = 0;
  *v2 = v3 + 24;
  *(v2 + 1) = v3;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 2) = 0;
  MEMORY[0x1E12E57B0](v2 + 40);
  *(v2 + 26) = 0;
  *(v2 + 14) = 0;
  *(v2 + 15) = 0;
  *(v2 + 16) = v2 + 9;
  *(v2 + 17) = 0x400000000;
  *(v2 + 24) = 0;
  *(v2 + 22) = v2 + 12;
  *(v2 + 23) = 0;
  *(v2 + 26) = 0;
  *(v2 + 27) = 0;
  *(v2 + 25) = 1;
  *(v2 + 56) = 0;
  *(v2 + 29) = 0;
  *(v2 + 30) = 0;
  *(v2 + 62) = 0;
  *(v2 + 256) = 1;
  *this = v2;
  return this;
}

void mlir::StorageUniquer::~StorageUniquer(llvm ***this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *this;
  *this = 0;
  if (v5)
  {
    mlir::detail::StorageUniquerImpl::~StorageUniquerImpl(v5, a2, a3, a4);
  }
}

uint64_t mlir::detail::StorageUniquerImpl::getOrCreate(mlir::detail::StorageUniquerImpl *a1, uint64_t a2, unsigned int a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v85 = a2;
  v13 = *v12;
  v83 = a1;
  v14 = *(a1 + 256);
  v15 = (*(*v12 + 24) - 1) & a3;
  explicit = atomic_load_explicit((*(*v12 + 16) + 8 * v15), memory_order_acquire);
  if (!explicit)
  {
    explicit = operator new(0x28uLL);
    *explicit = 0u;
    explicit[1] = 0u;
    *(explicit + 4) = 0;
    llvm::sys::RWMutexImpl::RWMutexImpl((explicit + 24));
    v17 = 0;
    *(explicit + 4) = 0;
    atomic_compare_exchange_strong((v13[2] + 8 * v15), &v17, explicit);
    if (v17)
    {
      llvm::sys::RWMutexImpl::~RWMutexImpl(explicit + 3);
      llvm::deallocate_buffer(*explicit, (16 * *(explicit + 4)));
    }
  }

  v87 = a3;
  v88 = a4;
  v89 = a5;
  if ((v14 & 1) == 0)
  {
    LODWORD(v86) = a3;
    *(&v86 + 1) = 0;
    v26 = v91;
    if ((v92 & 1) == 0)
    {
      return *(v91 + 8);
    }

    ThreadSafeAllocator = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v83);
    result = a6(a7, ThreadSafeAllocator);
    *(v26 + 8) = result;
    return result;
  }

  {
    mlir::detail::StorageUniquerImpl::getOrCreate();
  }

  v19 = v18;
  v20 = *v13;
  v22 = (v18 + 8);
  v21 = *v18;
  v23 = *v18 & 1;
  if (v23)
  {
    v24 = 4;
    v25 = v18 + 8;
  }

  else
  {
    v24 = *(v18 + 16);
    if (!v24)
    {
      v31 = 0;
      v42 = 0;
      *&v91 = 0;
      goto LABEL_20;
    }

    v25 = *(v18 + 8);
  }

  v29 = v24 - 1;
  v30 = v29 & ((v20 >> 4) ^ (v20 >> 9));
  v31 = v25 + 40 * v30;
  v32 = *v31;
  if (*v31 == v20)
  {
    goto LABEL_14;
  }

  v77 = 0;
  v78 = 1;
  while (v32 != -4096)
  {
    if (v77)
    {
      v79 = 0;
    }

    else
    {
      v79 = v32 == -8192;
    }

    if (v79)
    {
      v77 = v31;
    }

    v80 = v30 + v78++;
    v30 = v80 & v29;
    v31 = v25 + 40 * v30;
    v32 = *v31;
    if (*v31 == v20)
    {
      goto LABEL_14;
    }
  }

  if (v77)
  {
    v31 = v77;
  }

  *&v91 = v31;
  if (v23)
  {
    v42 = 4;
  }

  else
  {
    v42 = *(v18 + 16);
  }

LABEL_20:
  if (4 * (v21 >> 1) + 4 >= 3 * v42)
  {
    v42 *= 2;
    goto LABEL_98;
  }

  if (v42 + ~(v21 >> 1) - *(v18 + 4) <= v42 >> 3)
  {
LABEL_98:
    v21 = *v19;
    v31 = v91;
    v23 = *v19 & 1;
  }

  *v19 = (v21 & 0xFFFFFFFE | v23) + 2;
  if (*v31 != -4096)
  {
    --*(v19 + 4);
  }

  *v31 = v20;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v43 = operator new(0x28uLL);
  v43[1] = 0;
  v43[2] = 0;
  v43[3] = 0;
  *v43 = &unk_1F5B07938;
  *(v43 + 32) = 0;
  *(v31 + 8) = v43 + 3;
  *(v31 + 16) = v43;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
LABEL_14:
  v33 = **(v31 + 8);
  if (v33)
  {
    goto LABEL_64;
  }

  v34 = *v13;
  std::recursive_mutex::lock((*v13 + 40));
  v35 = *v13;
  v36 = *(*v13 + 8);
  v82 = (v31 + 8);
  if (v36 >= *(*v13 + 12))
  {
    std::recursive_mutex::unlock((v34 + 40));
    v45 = *v13;
    v44 = v13[1];
    if (v44)
    {
LABEL_27:
      atomic_fetch_add_explicit((v44 + 16), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v37 = (*v35 + 24 * v36);
    v38 = operator new(0x18uLL);
    v38[1] = 0;
    v38[2] = 0;
    *v38 = 0;
    *v37 = v38;
    v39 = *(v31 + 8);
    v40 = *(v31 + 16);
    v37[1] = v39;
    v37[2] = v40;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 16), 1uLL, memory_order_relaxed);
      v41 = (v31 + 8);
      v39 = *v82;
    }

    else
    {
      v41 = (v31 + 8);
    }

    atomic_store(1u, v39 + 8);
    **v41 = *v37;
    ++*(v35 + 8);
    std::recursive_mutex::unlock((v34 + 40));
    v45 = *v13;
    v44 = v13[1];
    if (v44)
    {
      goto LABEL_27;
    }
  }

  v46 = *(v31 + 32);
  *(v31 + 24) = v45;
  *(v31 + 32) = v44;
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  v47 = *v19;
  v81 = a6;
  if (*v19 > 1u)
  {
    if (v47)
    {
      v51 = (v19 + 168);
    }

    else
    {
      v22 = *(v19 + 8);
      v52 = *(v19 + 16);
      v51 = &v22[5 * v52];
      if (!v52)
      {
        v53 = 0;
        v50 = *(v19 + 8);
        goto LABEL_49;
      }
    }

    v47 = *v19 & 1;
    v50 = v22;
    while ((*v50 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v50 += 5;
      if (v50 == v51)
      {
        v50 = v51;
        break;
      }
    }
  }

  else
  {
    v48 = *(v19 + 8);
    v49 = *(v19 + 16);
    if (v47)
    {
      v50 = (v19 + 168);
    }

    else
    {
      v50 = &v48[5 * v49];
    }

    if (v47)
    {
      v48 = v22;
      v49 = 4;
    }

    v51 = &v48[5 * v49];
  }

  if (v47)
  {
    v54 = (v19 + 168);
    if (v50 == (v19 + 168))
    {
      goto LABEL_63;
    }

LABEL_50:
    v55 = v50 + 5;
    if (v50 + 5 != v51)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v57 = atomic_load((v50[1] + 8));
      if ((v57 & 1) == 0)
      {
        v58 = v50[4];
        if (v58)
        {
          std::__shared_weak_count::__release_weak(v58);
        }

        v59 = v50[2];
        if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v59->__on_zero_shared)(v59);
          std::__shared_weak_count::__release_weak(v59);
        }

        *v50 = -8192;
        v56 = *(v19 + 4) + 1;
        *v19 -= 2;
        *(v19 + 4) = v56;
      }

      v50 = v55;
      if (v55 == v54)
      {
        break;
      }

      v55 += 5;
      if (v50 + 5 != v51)
      {
        do
        {
LABEL_55:
          if ((*v55 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            break;
          }

          v55 += 5;
        }

        while (v55 != v51);
      }
    }

    goto LABEL_63;
  }

  v22 = *(v19 + 8);
  v53 = *(v19 + 16);
LABEL_49:
  v54 = &v22[5 * v53];
  if (v50 != v54)
  {
    goto LABEL_50;
  }

LABEL_63:
  a6 = v81;
  v33 = **v82;
LABEL_64:
  LODWORD(v91) = a3;
  *(&v91 + 1) = 0;
  v60 = v86;
  result = *(v86 + 8);
  if (!result)
  {
    llvm::sys::RWMutexImpl::lock_shared(explicit + 3);
    v61 = *explicit;
    v62 = *(explicit + 4);
    if (!v62)
    {
      goto LABEL_76;
    }

    v63 = v62 - 1;
    v64 = 1;
    v65 = v88;
    v66 = v89;
    v67 = v87 & (v62 - 1);
    v68 = v61 + 16 * v67;
    v69 = *(v68 + 8);
    if ((v69 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_69;
    }

    while (v69 != -4096)
    {
      while (1)
      {
        v70 = v67 + v64++;
        v67 = v70 & v63;
        v68 = v61 + 16 * (v70 & v63);
        v69 = *(v68 + 8);
        if ((v69 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          break;
        }

LABEL_69:
        if (v65(v66))
        {
          if (v68 != *explicit + 16 * *(explicit + 4))
          {
            goto LABEL_74;
          }

          goto LABEL_76;
        }

        if (*(v68 + 8) == -4096)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_71:
    v71 = *(explicit + 4);
    v68 = *explicit + 16 * v71;
    if (v68 != *explicit + 16 * v71)
    {
LABEL_74:
      v72 = *(v68 + 8);
      *(v60 + 8) = v72;
      llvm::sys::RWMutexImpl::unlock_shared(explicit + 3);
      return v72;
    }

    else
    {
LABEL_76:
      llvm::sys::RWMutexImpl::unlock_shared(explicit + 3);
      llvm::sys::RWMutexImpl::lock(explicit + 3);
      LODWORD(v90) = v87;
      *(&v90 + 1) = 0;
      v73 = v91;
      if (v92)
      {
        v74 = mlir::detail::StorageUniquerImpl::getThreadSafeAllocator(v83);
        v75 = a6(a7, v74);
        *(v73 + 8) = v75;
      }

      else
      {
        v75 = *(v91 + 8);
      }

      *(v60 + 8) = v75;
      v76 = v75;
      llvm::sys::RWMutexImpl::unlock_shared(explicit + 3);
      return v76;
    }
  }

  return result;
}

uint64_t *mlir::StorageUniquer::registerParametricStorageTypeImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = operator new(0x30uLL);
  v9 = operator new(0x88uLL);
  *(v9 + 8) = 0u;
  *v9 = &unk_1F5B079D8;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 3) = v9 + 40;
  *(v9 + 4) = 0x100000000;
  MEMORY[0x1E12E57B0](v9 + 64);
  *(v9 + 32) = 0;
  *v8 = v9 + 24;
  v8[1] = v9;
  v10 = operator new[](0x40uLL);
  v8[2] = v10;
  v8[3] = 8;
  v8[4] = a3;
  v8[5] = a4;
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 0;
  v10[6] = 0;
  v10[7] = 0;
  v11 = *(v7 + 208);
  v23 = v8;
  v12 = *(v7 + 224);
  if (!v12)
  {
    v20 = 0;
    goto LABEL_13;
  }

  v13 = (v12 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v14 = (v11 + 16 * v13);
  v15 = *v14;
  if (*v14 != a2)
  {
    v16 = 0;
    v17 = 1;
    while (v15 != -4096)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v15 == -8192;
      }

      if (v18)
      {
        v16 = v14;
      }

      v19 = v13 + v17++;
      v13 = v19 & (v12 - 1);
      v14 = (v11 + 16 * v13);
      v15 = *v14;
      if (*v14 == a2)
      {
      }
    }

    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v14;
    }

LABEL_13:
    v24 = v20;
    v21 = *(v7 + 216);
    if (4 * v21 + 4 >= 3 * v12)
    {
      v12 *= 2;
    }

    else if (v12 + ~v21 - *(v7 + 220) > v12 >> 3)
    {
      *(v7 + 216) = v21 + 1;
      if (*v20 == -4096)
      {
LABEL_17:
        v23 = 0;
        *v20 = a2;
        v20[1] = v8;
      }

LABEL_16:
      --*(v7 + 220);
      goto LABEL_17;
    }

    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::LookupBucketFor<void *>(*(v7 + 208), *(v7 + 224), a2, &v24);
    v20 = v24;
    ++*(v7 + 216);
    if (*v20 == -4096)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }
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
      operator delete[](v10);
    }

    v11 = *(v2 + 8);
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t mlir::StorageUniquer::getSingletonImpl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a2;
  return *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>,mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,mlir::bytecode::detail::AttributeNumbering *>>::operator[](v2 + 232, &v4);
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
  a1->__vftable = &unk_1F5B078E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
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

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<mlir::StorageUniquer::StorageAllocator *>::Owner,false>::destroy_range(void *a1, void *a2)
{
  if (a2 != a1)
  {
    v2 = a2;
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
            v10 = v5;
            (v5->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v10);
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
      v9 = *(v2 - 3);
      v2 -= 3;
      v8 = v9;
      *v2 = 0;
      if (v9)
      {
        operator delete(v8);
      }
    }

    while (v2 != a1);
  }
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
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>,void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::LookupBucketFor<void *>(*v14, *(v14 + 16), *v13, &v15);
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

int *mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::CacheType::~CacheType(int *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = *a1;
  if (*a1 <= 1)
  {
    if (v5)
    {
      v6 = a1 + 2;
      v7 = a1 + 42;
      v8 = 4;
    }

    else
    {
      v6 = *(a1 + 1);
      v8 = a1[4];
      v7 = &v6[10 * v8];
    }

    v11 = &v6[10 * v8];
    v9 = a1 + 2;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v9 = a1 + 2;
  if (v5)
  {
    v11 = a1 + 42;
    goto LABEL_8;
  }

  v10 = a1[4];
  v11 = (*(a1 + 1) + 40 * v10);
  if (v10)
  {
    v9 = *(a1 + 1);
LABEL_8:
    v7 = v9;
    while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v7 += 10;
      if (v7 == v11)
      {
        v7 = v11;
        break;
      }
    }

    v9 = a1 + 2;
    if ((v5 & 1) == 0)
    {
LABEL_19:
      v12 = (*(a1 + 1) + 40 * a1[4]);
      if (v7 == v12)
      {
        goto LABEL_14;
      }

LABEL_22:
      v39 = v9;
      do
      {
        v14 = *(v7 + 4);
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v16 = v15;
            v17 = *(v7 + 3);
            if (v17)
            {
              v18 = **(v7 + 1);
              std::recursive_mutex::lock((v17 + 40));
              v22 = *v17;
              v23 = *(v17 + 8);
              v24 = *v17 + 24 * v23;
              v25 = *v17;
              if (v23)
              {
                v26 = 24 * v23;
                v25 = *v17;
                while (*v25 != v18)
                {
                  v25 += 3;
                  v26 -= 24;
                  if (!v26)
                  {
                    v25 = (*v17 + 24 * v23);
                    break;
                  }
                }
              }

              if (v25 + 3 != v24)
              {
                v27 = v25 + 4;
                do
                {
                  v29 = *(v27 - 1);
                  *(v27 - 1) = 0;
                  v30 = *(v27 - 4);
                  *(v27 - 4) = v29;
                  if (v30)
                  {
                    llvm::deallocate_buffer(*v30, (16 * *(v30 + 16)));
                  }

                  v31 = *v27;
                  *v27 = 0;
                  v27[1] = 0;
                  v32 = *(v27 - 2);
                  *(v27 - 3) = v31;
                  if (v32)
                  {
                    std::__shared_weak_count::__release_weak(v32);
                  }

                  v28 = v27 + 2;
                  v27 += 3;
                }

                while (v28 != v24);
                LODWORD(v23) = *(v17 + 8);
                v22 = *v17;
              }

              v33 = v23 - 1;
              *(v17 + 8) = v33;
              std::recursive_mutex::unlock((v17 + 40));
            }

            if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v16->__on_zero_shared)(v16);
              std::__shared_weak_count::__release_weak(v16);
            }
          }
        }

        do
        {
          v7 += 10;
        }

        while (v7 != v11 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v7 != v12);
      v5 = *a1;
      v9 = v39;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_47:
      v13 = 4;
      goto LABEL_48;
    }

LABEL_13:
    v12 = a1 + 42;
    if (v7 == a1 + 42)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_14:
  if (v5)
  {
    goto LABEL_47;
  }

LABEL_15:
  v13 = a1[4];
  if (!v13)
  {
    goto LABEL_57;
  }

  v9 = *v9;
LABEL_48:
  v34 = (v9 + 4);
  v35 = 40 * v13;
  do
  {
    if ((*(v34 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v36 = v34[2];
      if (v36)
      {
        std::__shared_weak_count::__release_weak(v36);
      }

      v37 = *v34;
      if (*v34 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37, a2, a3, a4);
        std::__shared_weak_count::__release_weak(v37);
      }
    }

    v34 += 5;
    v35 -= 40;
  }

  while (v35);
  v5 = *a1;
LABEL_57:
  if ((v5 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (40 * a1[4]));
  }

  return a1;
}

uint64_t *mlir::ThreadLocalCache<llvm::DenseSet<anonymous namespace::ParametricStorageUniquer::HashedStorage,anonymous namespace::ParametricStorageUniquer::StorageKeyInfo>>::Owner::~Owner(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1[2];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = a1[1];
      if (v7)
      {
        *v7 = 0;
        atomic_store(0, (v7 + 8));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    llvm::deallocate_buffer(*v10, (16 * *(v10 + 16)));
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