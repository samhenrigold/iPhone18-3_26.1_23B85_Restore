ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineVectorLoadOp,mlir::VectorType,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v24, v25, v23);
  }

  mlir::OperationState::OperationState(v24, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v18 = mlir::ValueRange::ValueRange(v25, *a6, *(a6 + 8));
  mlir::affine::AffineVectorLoadOp::build(v18, v24, v15, v16, v17, v25[0], v25[1]);
  v19 = mlir::OpBuilder::create(a1, v24);
  if (*(*(v19 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorLoadOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v24);
  return v20;
}

void *anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::~SimplifyAffineOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t anonymous namespace::SimplifyAffineOp<mlir::affine::AffineVectorStoreOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x1E69E9840];
  v36 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v36);
  v31 = Value;
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v36 = v38;
    v37 = 0x800000000;
    v7 = -2;
    v8 = 64;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v7, 8);
    v9 = v37;
    v10 = v36;
    v11 = v36 + 8 * v37;
    if (v7 < 0xD)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 68);
  v7 = v6 - 2;
  v8 = *(a2 + 72) + 64;
  v36 = v38;
  v37 = 0x800000000;
  if ((v6 - 2) >= 9)
  {
    goto LABEL_3;
  }

  v9 = 0;
  if (v6 == 2)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v10 = v38;
  v11 = v38;
  if (v7 < 0xD)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (v11 >= v8 + 32 * v7 || v8 + 24 >= &v10[v7 + v9])
  {
    v13 = v7 & 3;
    if ((v7 & 3) == 0)
    {
      v13 = 4;
    }

    v12 = v7 - v13;
    v14 = &v11[v12];
    v15 = (v8 + 88);
    v16 = (v11 + 2);
    v17 = v12;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v11 = v14;
    goto LABEL_15;
  }

LABEL_9:
  v12 = 0;
LABEL_15:
  v21 = v7 - v12;
  v22 = (32 * v12) | 0x18;
  do
  {
    *v11++ = *(v8 + v22);
    v22 += 32;
    --v21;
  }

  while (v21);
  v23 = v37;
  v9 = v7;
LABEL_18:
  LODWORD(v37) = v23 + v9;
  composeAffineMapAndOperands(&v31, &v36);
  mlir::affine::canonicalizeMapAndOperands(&v31, &v36);
  simplifyMapWithOperands(&v31, v36, v37);
  v24 = v36;
  if (v31 == Value)
  {
    if (!v9)
    {
LABEL_26:
      v27 = 0;
      if (v36 == v38)
      {
        return v27;
      }

      goto LABEL_20;
    }

    v29 = 0;
    v30 = (v8 + 24);
    while (*v30 == *(v36 + v29))
    {
      ++v29;
      v30 += 4;
      if (v9 == v29)
      {
        goto LABEL_26;
      }
    }
  }

  v34[1] = v37;
  v35 = v31;
  v25 = *(a2 + 72);
  v33 = *(v25 + 24);
  v34[0] = v36;
  v32 = *(v25 + 56);
  v26 = mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>((a3 + 8), *(a2 + 24), &v33, &v32, &v35, v34);
  (*(*a3 + 8))(a3, a2, v26);
  v27 = 1;
  v24 = v36;
  if (v36 != v38)
  {
LABEL_20:
    free(v24);
  }

  return v27;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v34[24] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineVectorStoreOp,mlir::Value,mlir::Value,mlir::AffineMap &,llvm::ArrayRef<mlir::Value> &>(v33, v30, v27);
  }

  mlir::OperationState::OperationState(v33, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v32, *a6, *(a6 + 8));
  v18 = v32[0];
  v19 = v32[1];
  v28 = v16;
  v29 = v15;
  mlir::OperationState::addOperands(v33, &v29, 1uLL);
  mlir::OperationState::addOperands(v33, &v28, 1uLL);
  mlir::OperationState::addOperands(v33, v18, v19);
  v20 = mlir::AffineMapAttr::get(v17);
  v21 = mlir::Attribute::getContext(v33);
  v31 = 261;
  v30[0] = "map";
  v30[1] = 3;
  v22 = mlir::StringAttr::get(v21, v30);
  ZinMirCacheTensors::ZinMirCacheTensors(v27, v22, v20);
  mlir::NamedAttrList::push_back(v34, v27[0], v27[1]);
  v23 = mlir::OpBuilder::create(a1, v33);
  if (*(*(v23 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineVectorStoreOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v33);
  return v24;
}

void anonymous namespace::DropDelinearizeOfSingleLoop::~DropDelinearizeOfSingleLoop(_anonymous_namespace_::DropDelinearizeOfSingleLoop *this)
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

uint64_t mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v3 = 1;
  v9 = 1;
  if (*a3)
  {
    v7 = a3;
    v3 = 3;
  }

  v8 = v3;
  v4 = *a2;
  v10 = &v7;
  v5 = *(a1 + 16);
  if (v5 && instruction::util::IsTasklet(*(a1 + 16)))
  {
    (*(*v5 + 88))(v5, *(v4 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::affine::AffineDelinearizeIndexOp &>(mlir::affine::AffineDelinearizeIndexOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v10);
  }

  return 0;
}

void anonymous namespace::DropUnitExtentBasis::~DropUnitExtentBasis(_anonymous_namespace_::DropUnitExtentBasis *this)
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

uint64_t anonymous namespace::DropUnitExtentBasis::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::IndexType **a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 36);
  v48 = v51;
  v50 = 6;
  if (v4 >= 7)
  {
    v49 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v51, v4, 8);
    v5 = v48;
    v6 = 8 * v4;
LABEL_5:
    bzero(v5, v6);
    goto LABEL_6;
  }

  if (v4)
  {
    v6 = 8 * v4;
    v5 = v51;
    goto LABEL_5;
  }

LABEL_6:
  v49 = v4;
  v39 = *(a2 + 24);
  v45 = v47;
  v46 = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 68);
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_55;
    }

    v38 = a2;
    v9 = *(a2 + 72) + 32;
  }

  else
  {
    v38 = a2;
    v8 = -1;
    v9 = 32;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = (v9 + 24);
  do
  {
    while (1)
    {
      v14 = *v13;
      v41 = *v13;
      DefiningOp = mlir::Value::getDefiningOp(&v41);
      if (!DefiningOp)
      {
        goto LABEL_42;
      }

      v16 = DefiningOp;
      LODWORD(v53) = 1;
      v52 = 0;
      v42 = &v52;
      v43 = &v44;
      v44 = 0;
      if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v43, DefiningOp))
      {
        v17 = *(*(*(v16 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        v18 = v17 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
        v19 = v18 || v17 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
        if (v19 || v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          break;
        }
      }

      v24 = 0;
      if (v53 < 0x41)
      {
        goto LABEL_37;
      }

LABEL_34:
      if (!v52)
      {
        goto LABEL_37;
      }

      MEMORY[0x1AC55A040](v52, 0x1000C8000313F17);
      if (!v24)
      {
        goto LABEL_42;
      }

LABEL_38:
      if ((v11 & 1) == 0)
      {
        LODWORD(v52) = 0;
        v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>(a3 + 1, v39, &v52) - 16;
      }

      *(v48 + v10) = v12;
      v11 = 1;
      ++v10;
      v13 += 4;
      if (v8 == v10)
      {
        goto LABEL_45;
      }
    }

    v21 = mlir::detail::constant_int_value_binder::match(&v42, v44);
    v22 = v53;
    if (v21)
    {
      if (v53 >= 0x41)
      {
        if (v22 - llvm::APInt::countLeadingZerosSlowCase(&v52) > 0x40)
        {
          if (v52)
          {
            MEMORY[0x1AC55A040](v52, 0x1000C8000313F17);
          }

          goto LABEL_42;
        }

        v23 = v52;
      }

      else
      {
        v23 = &v52;
      }

      v24 = *v23 == 1;
      if (v22 >= 0x41)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = 0;
      if (v53 >= 0x41)
      {
        goto LABEL_34;
      }
    }

LABEL_37:
    if (v24)
    {
      goto LABEL_38;
    }

LABEL_42:
    v25 = v46;
    if (v46 >= HIDWORD(v46))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v46 + 1, 8);
      v25 = v46;
    }

    *(v45 + v25) = v14;
    LODWORD(v46) = v46 + 1;
    ++v10;
    v13 += 4;
  }

  while (v8 != v10);
LABEL_45:
  if ((*(v38 + 46) & 0x80) == 0)
  {
    if (v46)
    {
      goto LABEL_48;
    }

    goto LABEL_59;
  }

  if (*(v38 + 68) - 1 == v46)
  {
LABEL_55:
    v35 = 0;
    v36 = v45;
    if (v45 != v47)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (!v46)
  {
LABEL_59:
    v27 = v48;
    v28 = v49;
    goto LABEL_60;
  }

LABEL_48:
  v52 = *(*(v38 + 72) + 24);
  v26 = mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(a3 + 1, v39, &v52, &v45);
  v27 = v48;
  v28 = v49;
  if (v49)
  {
    v29 = 0;
    v30 = 0;
    v31 = 8 * v49;
    do
    {
      if (!*&v27[v29])
      {
        v32 = v30 - 5;
        v33 = v30++ >= 6;
        v34 = v26 - 24 * v32 - 96;
        if (!v33)
        {
          v34 = v26 - 16 * v30;
        }

        *&v27[v29] = v34;
      }

      v29 += 8;
    }

    while (v31 != v29);
  }

LABEL_60:
  mlir::ValueRange::ValueRange(&v52, v27, v28);
  (**a3)(a3, v38, v52, v53);
  v35 = 1;
  v36 = v45;
  if (v45 != v47)
  {
LABEL_61:
    free(v36);
  }

LABEL_62:
  if (v48 != v51)
  {
    free(v48);
  }

  return v35;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::affine::AffineDelinearizeIndexOp,mlir::detail::TypedValue<mlir::IndexType>,llvm::SmallVector<mlir::Value,6u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::affine::AffineDelinearizeIndexOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineDelinearizeIndexOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,int>(mlir::IndexType **a1, uint64_t a2, int *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::arith::ConstantIndexOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (!mlir::arith::ConstantIndexOp::classof(v9, v10))
  {
    v9 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v9;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineApplyOpGenericAdaptorBase::Properties]";
  v6 = 115;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineForOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineLoadOpGenericAdaptorBase::Properties]";
  v6 = 114;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineMaxOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineMinOpGenericAdaptorBase::Properties]";
  v6 = 113;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineParallelOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffinePrefetchOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineVectorLoadOpGenericAdaptorBase::Properties]";
  v6 = 120;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::affine::detail::AffineVectorStoreOpGenericAdaptorBase::Properties]";
  v6 = 121;
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

uint64_t OUTLINED_FUNCTION_19_11@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  *a2 = 8236;
  *(result + 32) += 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_10@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *(result + 32) = a2 + 1;
  *a2 = 91;
  return result;
}

__n128 OUTLINED_FUNCTION_25_9@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v16 = (a1 + 24 * a15);
  result = *v15;
  v16[1].n128_u64[0] = v15[1].n128_u64[0];
  *v16 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1)
{
  if (*(a1 + 36))
  {
    v2 = a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
}

void OUTLINED_FUNCTION_71_2()
{

  JUMPOUT(0x1AC55A040);
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  *(v14 - 88) = a12;
  *(v14 - 80) = a13;
  return v13 + 8;
}

BOOL OUTLINED_FUNCTION_102_2@<W0>(const char *a1@<X2>, uint64_t *a2@<X8>)
{

  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(a2, v2 & 0xFFFFFFFFFFFFFFF8, a1, 6, 0);
}

llvm::raw_ostream *OUTLINED_FUNCTION_119_3(unsigned int a1)
{

  return printDimAndSymbolList(v3, v2, v5, v4, a1, v1);
}

void OUTLINED_FUNCTION_120_3(uint64_t **a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, int a8, char a9)
{
  a3 = a2;
  a7 = 259;

  mlir::OpState::emitOpError(a1, &a3, &a9);
}

uint64_t OUTLINED_FUNCTION_136_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a9 = a1;

  return mlir::AffineMapAttr::getValue(&a9);
}

void OUTLINED_FUNCTION_137_1(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  operator delete(a1);
}

void OUTLINED_FUNCTION_155_2()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 24, v1, v0 + 1, 24);
}

uint64_t OUTLINED_FUNCTION_156_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{

  return mlir::affine::AffineValueMap::AffineValueMap(v13, v14, a12, a13, a10, a11);
}

uint64_t *OUTLINED_FUNCTION_157_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v6 = *(a1 + 72);

  return mlir::IntegerAttr::getValue(va, va1);
}

void OUTLINED_FUNCTION_158_1(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const char *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);

  mlir::OpState::emitOpError(va1, va, a1);
}

uint64_t OUTLINED_FUNCTION_159_1(uint64_t a1, const void *a2)
{

  return mlir::DictionaryAttr::get(v2 + 56, a2, 3uLL);
}

uint64_t OUTLINED_FUNCTION_160_2(uint64_t a1, uint64_t a2)
{

  return mlir::Operation::getInherentAttr(v2, a2, 3);
}

uint64_t mlir::affine::AffineValueMap::AffineValueMap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = mlir::MutableAffineMap::MutableAffineMap(a1, a2);
  v12 = (v11 + 14);
  v11[12] = v11 + 14;
  v13 = (v11 + 12);
  *(v13 + 8) = 0x400000000;
  if (a4 < 5)
  {
    v14 = 0;
    v24 = a3;
    v25 = 0;
    if (!a4)
    {
      v17 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v12, a4, 8);
    v14 = *(a1 + 104);
    v12 = *(a1 + 96);
    v24 = a3;
    v25 = 0;
  }

  v15 = &v12[8 * v14];
  v16 = 0;
  do
  {
    *v15++ = mlir::ValueRange::dereference_iterator(&v24, v16);
    v16 = v25 + 1;
    v25 = v16;
  }

  while (v16 != a4);
  v17 = *(a1 + 104);
LABEL_7:
  v18 = (a1 + 160);
  *(a1 + 144) = a1 + 160;
  *(a1 + 104) = v17 + a4;
  *(a1 + 152) = 0x400000000;
  if (a6 < 5)
  {
    v19 = 0;
    v24 = a5;
    v25 = 0;
    if (!a6)
    {
      v22 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 144, v18, a6, 8);
    v19 = *(a1 + 152);
    v18 = *(a1 + 144);
    v24 = a5;
    v25 = 0;
  }

  v20 = &v18[8 * v19];
  v21 = 0;
  do
  {
    *v20++ = mlir::ValueRange::dereference_iterator(&v24, v21);
    v21 = v25 + 1;
    v25 = v21;
  }

  while (v21 != a6);
  v22 = *(a1 + 152);
LABEL_13:
  *(a1 + 152) = v22 + a6;
  return a1;
}

uint64_t mlir::affine::AffineValueMap::reset(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  result = mlir::MutableAffineMap::reset(a1, a2);
  *(a1 + 104) = 0;
  if (a4 > *(a1 + 108))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 96, (a1 + 112), a4, 8);
    v12 = *(a1 + 104);
    v13 = *(a1 + 96);
    v21 = a3;
    v22 = 0;
LABEL_5:
    v14 = 0;
    v15 = (v13 + 8 * v12);
    do
    {
      result = mlir::ValueRange::dereference_iterator(&v21, v14);
      *v15++ = result;
      v14 = v22 + 1;
      v22 = v14;
    }

    while (v14 != a4);
    *(a1 + 104) += a4;
    *(a1 + 152) = 0;
    if (a6 > *(a1 + 156))
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v13 = *(a1 + 96);
  v21 = a3;
  v22 = 0;
  if (a4)
  {
    v12 = 0;
    goto LABEL_5;
  }

  *(a1 + 104) = 0;
  *(a1 + 152) = 0;
  if (a6 > *(a1 + 156))
  {
LABEL_8:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 144, (a1 + 160), a6, 8);
    v16 = *(a1 + 152);
    v17 = *(a1 + 144);
    v21 = a5;
    v22 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v17 = *(a1 + 144);
  v21 = a5;
  v22 = 0;
  if (!a6)
  {
    v20 = 0;
    goto LABEL_15;
  }

  v16 = 0;
LABEL_12:
  v18 = 0;
  v19 = (v17 + 8 * v16);
  do
  {
    result = mlir::ValueRange::dereference_iterator(&v21, v18);
    *v19++ = result;
    v18 = v22 + 1;
    v22 = v18;
  }

  while (v18 != a6);
  v20 = *(a1 + 152);
LABEL_15:
  *(a1 + 152) = v20 + a6;
  return result;
}

void mlir::affine::AffineValueMap::~AffineValueMap(mlir::affine::AffineValueMap *this)
{
  v2 = *(this + 18);
  if (v2 != this + 160)
  {
    free(v2);
  }

  v3 = *(this + 12);
  if (v3 != this + 112)
  {
    free(v3);
  }

  if (*this != (this + 16))
  {
    free(*this);
  }
}

uint64_t mlir::detail::verifyShapedDimOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(this + 9) == 1)
  {
    v21[0] = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
    if (mlir::Type::isIndex(v21))
    {
      return 1;
    }

    v19[0] = "expect index result type";
    v20 = 259;
    mlir::Operation::emitError(this, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v27;
        v14 = __p;
        if (v27 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v27 = v12;
        operator delete(v14);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v15 = v25;
      v9 = v24;
      if (v25 == v24)
      {
LABEL_37:
        v25 = v7;
        operator delete(v9);
LABEL_38:
        if (v22 != &v23)
        {
          free(v22);
        }

        return v3;
      }

      do
      {
        v17 = *--v15;
        v16 = v17;
        *v15 = 0;
        if (v17)
        {
          MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
        }
      }

      while (v15 != v7);
LABEL_36:
      v9 = v24;
      goto LABEL_37;
    }
  }

  else
  {
    v19[0] = "expected single op result";
    v20 = 259;
    mlir::Operation::emitError(this, v19, v21);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (v21[0])
    {
      mlir::InFlightDiagnostic::report(v21);
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v27;
        v6 = __p;
        if (v27 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v27 = v4;
        operator delete(v6);
      }

      v7 = v24;
      if (!v24)
      {
        goto LABEL_38;
      }

      v8 = v25;
      v9 = v24;
      if (v25 == v24)
      {
        goto LABEL_37;
      }

      do
      {
        v11 = *--v8;
        v10 = v11;
        *v8 = 0;
        if (v11)
        {
          MEMORY[0x1AC55A040](v10, 0x1000C8077774924);
        }
      }

      while (v8 != v7);
      goto LABEL_36;
    }
  }

  return v3;
}

uint64_t mlir::detail::verifyDestinationStyleOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v166[6] = *MEMORY[0x1E69E9840];
  if (this)
  {
    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  else
  {
    InterfaceFor = 0;
  }

  v164 = v166;
  v165 = 0x600000000;
  (*InterfaceFor)(v161, InterfaceFor, this);
  v5 = mlir::MutableOperandRange::begin(v161);
  v6 = mlir::MutableOperandRange::end(v161);
  if (v5 == v6)
  {
LABEL_20:
    v11 = 1;
    v12 = v162;
    if (v162 == v163)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v2 = v5;
  while (1)
  {
    while (1)
    {
      v8 = *(*(*(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        break;
      }

      v10 = v165;
      if (v165 >= HIDWORD(v165))
      {
        v139 = v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v164, v166, v165 + 1, 8);
        v6 = v139;
        v10 = v165;
      }

      v164[v10] = v5;
      LODWORD(v165) = v165 + 1;
      v2 += 32;
      v5 += 32;
      if (v2 == v6)
      {
        goto LABEL_20;
      }
    }

    if (v8 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      break;
    }

    v2 += 32;
    v5 += 32;
    if (v2 == v6)
    {
      goto LABEL_20;
    }
  }

  v140 = "expected that operand #";
  v144 = 259;
  mlir::Operation::emitOpError(this, &v140, &v148);
  OperandNumber = mlir::OpOperand::getOperandNumber(v2);
  if (v148)
  {
    LODWORD(v145) = 5;
    v146 = OperandNumber;
    v66 = &v145;
    v67 = v151;
    if (v152 >= v153)
    {
      if (v151 <= &v145 && v151 + 24 * v152 > &v145)
      {
        v127 = &v145 - v151;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v67 = v151;
        v66 = (v151 + v127);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v66 = &v145;
        v67 = v151;
      }
    }

    v68 = &v67[24 * v152];
    v69 = *v66;
    *(v68 + 2) = v66[2];
    *v68 = v69;
    v70 = ++v152;
    if (v148)
    {
      LODWORD(v145) = 3;
      v146 = " is a tensor or a memref";
      v147 = 24;
      v71 = &v145;
      v72 = v151;
      if (v70 >= v153)
      {
        if (v151 <= &v145 && v151 + 24 * v70 > &v145)
        {
          v129 = &v145 - v151;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v70 + 1, 24);
          v72 = v151;
          v71 = (v151 + v129);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v70 + 1, 24);
          v71 = &v145;
          v72 = v151;
        }
      }

      v73 = &v72[24 * v152];
      v74 = *v71;
      *(v73 + 2) = v71[2];
      *v73 = v74;
      ++v152;
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v160 == 1)
  {
    if (v159 != &v160)
    {
      free(v159);
    }

    v75 = __p;
    if (__p)
    {
      v76 = v158;
      v77 = __p;
      if (v158 != __p)
      {
        do
        {
          v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
        }

        while (v76 != v75);
        v77 = __p;
      }

      v158 = v75;
      operator delete(v77);
    }

    v78 = v155;
    if (v155)
    {
      v79 = v156;
      v80 = v155;
      if (v156 != v155)
      {
        do
        {
          v82 = *--v79;
          v81 = v82;
          *v79 = 0;
          if (v82)
          {
            MEMORY[0x1AC55A040](v81, 0x1000C8077774924);
          }
        }

        while (v79 != v78);
        v80 = v155;
      }

      v156 = v78;
      operator delete(v80);
    }

    if (v151 != v154)
    {
      free(v151);
    }
  }

  v11 = 0;
  v12 = v162;
  if (v162 != v163)
  {
LABEL_21:
    free(v12);
  }

LABEL_22:
  if (!v11)
  {
    goto LABEL_138;
  }

  v13 = *(this + 9);
  if (v13)
  {
    v14 = this - 16;
  }

  else
  {
    v14 = 0;
  }

  v161[0] = v14;
  v161[1] = v13;
  mlir::OperandRange::getTypes(&v148, v161);
  v15 = 0;
  v16 = v149;
  v17 = v151;
  if (v149 != v151)
  {
    v15 = 0;
    v18 = v148;
    do
    {
      v19 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v18, v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v19 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        ++v15;
      }

      ++v16;
    }

    while (v17 != v16);
  }

  if (v15 != v165)
  {
    v161[0] = "expected the number of tensor results (";
    v163[0] = 259;
    mlir::Operation::emitOpError(this, v161, &v148);
    v30 = *(this + 9);
    if (v30)
    {
      v31 = this - 16;
    }

    else
    {
      v31 = 0;
    }

    v145 = v31;
    v146 = v30;
    mlir::OperandRange::getTypes(&v140, &v145);
    v32 = 0;
    v33 = v141;
    v34 = v143;
    if (v141 != v143)
    {
      v32 = 0;
      v35 = v140;
      do
      {
        v36 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v35, v33) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        if (v36 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          ++v32;
        }

        ++v33;
      }

      while (v34 != v33);
    }

    if (v148)
    {
      LODWORD(v140) = 5;
      v141 = v32;
      v38 = &v140;
      v39 = v151;
      if (v152 >= v153)
      {
        if (v151 <= &v140 && v151 + 24 * v152 > &v140)
        {
          v126 = &v140 - v151;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
          v39 = v151;
          v38 = (v151 + v126);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
          v38 = &v140;
          v39 = v151;
        }
      }

      v40 = &v39[24 * v152];
      v41 = *v38;
      *(v40 + 2) = v38[2];
      *v40 = v41;
      v42 = ++v152;
      if (v148)
      {
        LODWORD(v140) = 3;
        v141 = ") to be equal to the number of output tensors (";
        v142 = 47;
        v43 = &v140;
        v44 = v151;
        if (v42 >= v153)
        {
          if (v151 <= &v140 && v151 + 24 * v42 > &v140)
          {
            v128 = &v140 - v151;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v42 + 1, 24);
            v44 = v151;
            v43 = (v151 + v128);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v42 + 1, 24);
            v43 = &v140;
            v44 = v151;
          }
        }

        v45 = &v44[24 * v152];
        v46 = *v43;
        *(v45 + 2) = v43[2];
        *v45 = v46;
        v47 = ++v152;
        if (v148)
        {
          LODWORD(v140) = 5;
          v141 = v165;
          v48 = &v140;
          v49 = v151;
          if (v47 >= v153)
          {
            if (v151 <= &v140 && v151 + 24 * v47 > &v140)
            {
              v130 = &v140 - v151;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v47 + 1, 24);
              v49 = v151;
              v48 = (v151 + v130);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v47 + 1, 24);
              v48 = &v140;
              v49 = v151;
            }
          }

          v50 = &v49[24 * v152];
          v51 = *v48;
          *(v50 + 2) = v48[2];
          *v50 = v51;
          v52 = ++v152;
          if (v148)
          {
            LODWORD(v140) = 3;
            v141 = ")";
            v142 = 1;
            v53 = &v140;
            v54 = v151;
            if (v52 >= v153)
            {
              if (v151 <= &v140 && v151 + 24 * v52 > &v140)
              {
                v132 = &v140 - v151;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v52 + 1, 24);
                v54 = v151;
                v53 = (v151 + v132);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v52 + 1, 24);
                v53 = &v140;
                v54 = v151;
              }
            }

            v55 = &v54[24 * v152];
            v56 = *v53;
            *(v55 + 2) = v53[2];
            *v55 = v56;
            ++v152;
          }
        }
      }
    }

    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
    if (v148)
    {
      mlir::InFlightDiagnostic::report(&v148);
    }

    if (v160 != 1)
    {
      goto LABEL_138;
    }

    if (v159 != &v160)
    {
      free(v159);
    }

    v57 = __p;
    if (__p)
    {
      v58 = v158;
      v59 = __p;
      if (v158 != __p)
      {
        do
        {
          v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
        }

        while (v58 != v57);
        v59 = __p;
      }

      v158 = v57;
      operator delete(v59);
    }

    v60 = v155;
    if (v155)
    {
      v61 = v156;
      v62 = v155;
      if (v156 != v155)
      {
        do
        {
          v64 = *--v61;
          v63 = v64;
          *v61 = 0;
          if (v64)
          {
            MEMORY[0x1AC55A040](v63, 0x1000C8077774924);
          }
        }

        while (v61 != v60);
        v62 = v155;
      }

      v156 = v60;
      operator delete(v62);
    }

    v124 = v151;
    if (v151 == v154)
    {
      goto LABEL_138;
    }

LABEL_137:
    free(v124);
    goto LABEL_138;
  }

  if (!v165)
  {
    v2 = 1;
    goto LABEL_138;
  }

  v21 = v164;
  v22 = 8 * v15;
  while (1)
  {
    v23 = *v21;
    (*InterfaceFor)(&v148, InterfaceFor, this);
    v24 = mlir::MutableOperandRange::operator mlir::OperandRange(&v148);
    v26 = v25;
    if (v150 != &v152)
    {
      free(v150);
    }

    v148 = v24;
    v149 = v26;
    v27 = mlir::OpOperand::getOperandNumber(v23);
    v28 = v27 - mlir::OperandRange::getBeginOperandIndex(&v148);
    v29 = v28 <= 5 ? (this - 16 * v28 - 16) : (this - 24 * v28 + 24);
    if ((*(*(v23 + 3) + 8) ^ *(v29 + 1)) >= 8)
    {
      break;
    }

    ++v21;
    v22 -= 8;
    if (!v22)
    {
      v2 = 1;
      goto LABEL_138;
    }
  }

  v161[0] = "expected type of operand #";
  v163[0] = 259;
  mlir::Operation::emitOpError(this, v161, &v148);
  v83 = mlir::OpOperand::getOperandNumber(v23);
  if (v148)
  {
    LODWORD(v140) = 5;
    v141 = v83;
    v84 = &v140;
    v85 = v151;
    if (v152 >= v153)
    {
      if (v151 <= &v140 && v151 + 24 * v152 > &v140)
      {
        v131 = &v140 - v151;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v85 = v151;
        v84 = (v151 + v131);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
        v84 = &v140;
        v85 = v151;
      }
    }

    v86 = &v85[24 * v152];
    v87 = *v84;
    *(v86 + 2) = v84[2];
    *v86 = v87;
    v88 = ++v152;
    if (v148)
    {
      LODWORD(v140) = 3;
      v141 = " (";
      v142 = 2;
      v89 = &v140;
      v90 = v151;
      if (v88 >= v153)
      {
        if (v151 <= &v140 && v151 + 24 * v88 > &v140)
        {
          v133 = &v140 - v151;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v88 + 1, 24);
          v90 = v151;
          v89 = (v151 + v133);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v88 + 1, 24);
          v89 = &v140;
          v90 = v151;
        }
      }

      v91 = &v90[24 * v152];
      v92 = *v89;
      *(v91 + 2) = v89[2];
      *v91 = v92;
      ++v152;
      if (v148)
      {
        v93 = &v140;
        mlir::DiagnosticArgument::DiagnosticArgument(&v140, *(*(v23 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
        v94 = v151;
        if (v152 >= v153)
        {
          if (v151 <= &v140 && v151 + 24 * v152 > &v140)
          {
            v134 = &v140 - v151;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
            v94 = v151;
            v93 = (v151 + v134);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
            v93 = &v140;
            v94 = v151;
          }
        }

        v95 = &v94[24 * v152];
        v96 = *v93;
        *(v95 + 2) = v93[2];
        *v95 = v96;
        v97 = ++v152;
        if (v148)
        {
          LODWORD(v140) = 3;
          v141 = ")";
          v142 = 1;
          v98 = &v140;
          v99 = v151;
          if (v97 >= v153)
          {
            if (v151 <= &v140 && v151 + 24 * v97 > &v140)
            {
              v135 = &v140 - v151;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v97 + 1, 24);
              v99 = v151;
              v98 = (v151 + v135);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v97 + 1, 24);
              v98 = &v140;
              v99 = v151;
            }
          }

          v100 = &v99[24 * v152];
          v101 = *v98;
          *(v100 + 2) = v98[2];
          *v100 = v101;
          v102 = ++v152;
          if (v148)
          {
            LODWORD(v140) = 3;
            v141 = " to match type of corresponding result (";
            v142 = 40;
            v103 = &v140;
            v104 = v151;
            if (v102 >= v153)
            {
              if (v151 <= &v140 && v151 + 24 * v102 > &v140)
              {
                v136 = &v140 - v151;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v102 + 1, 24);
                v104 = v151;
                v103 = (v151 + v136);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v102 + 1, 24);
                v103 = &v140;
                v104 = v151;
              }
            }

            v105 = &v104[24 * v152];
            v106 = *v103;
            *(v105 + 2) = v103[2];
            *v105 = v106;
            ++v152;
            if (v148)
            {
              v107 = &v140;
              mlir::DiagnosticArgument::DiagnosticArgument(&v140, *(v29 + 1) & 0xFFFFFFFFFFFFFFF8);
              v108 = v151;
              if (v152 >= v153)
              {
                if (v151 <= &v140 && v151 + 24 * v152 > &v140)
                {
                  v137 = &v140 - v151;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
                  v108 = v151;
                  v107 = (v151 + v137);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v152 + 1, 24);
                  v107 = &v140;
                  v108 = v151;
                }
              }

              v109 = &v108[24 * v152];
              v110 = *v107;
              *(v109 + 2) = v107[2];
              *v109 = v110;
              v111 = ++v152;
              if (v148)
              {
                LODWORD(v140) = 3;
                v141 = ")";
                v142 = 1;
                v112 = &v140;
                v113 = v151;
                if (v111 >= v153)
                {
                  if (v151 <= &v140 && v151 + 24 * v111 > &v140)
                  {
                    v138 = &v140 - v151;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v111 + 1, 24);
                    v113 = v151;
                    v112 = (v151 + v138);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v151, v154, v111 + 1, 24);
                    v112 = &v140;
                    v113 = v151;
                  }
                }

                v114 = &v113[24 * v152];
                v115 = *v112;
                *(v114 + 2) = v112[2];
                *v114 = v115;
                ++v152;
              }
            }
          }
        }
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v148);
  if (v148)
  {
    mlir::InFlightDiagnostic::report(&v148);
  }

  if (v160)
  {
    if (v159 != &v160)
    {
      free(v159);
    }

    v116 = __p;
    if (__p)
    {
      v117 = v158;
      v118 = __p;
      if (v158 != __p)
      {
        do
        {
          v117 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v117 - 1);
        }

        while (v117 != v116);
        v118 = __p;
      }

      v158 = v116;
      operator delete(v118);
    }

    v119 = v155;
    if (v155)
    {
      v120 = v156;
      v121 = v155;
      if (v156 != v155)
      {
        do
        {
          v123 = *--v120;
          v122 = v123;
          *v120 = 0;
          if (v123)
          {
            MEMORY[0x1AC55A040](v122, 0x1000C8077774924);
          }
        }

        while (v120 != v119);
        v121 = v155;
      }

      v156 = v119;
      operator delete(v121);
    }

    v124 = v151;
    if (v151 != v154)
    {
      goto LABEL_137;
    }
  }

LABEL_138:
  if (v164 != v166)
  {
    free(v164);
  }

  return v2;
}

uint64_t *mlir::intrange::truncRange@<X0>(unint64_t *__return_ptr a1@<X8>, mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = a3;
  ZinIrHalH13g::~ZinIrHalH13g(this);
  v7 = *(v6 + 8);
  v54 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v53, v6);
  }

  v53 = *v6;
  if (v7 == v3)
  {
    v53 = 0;
  }

  else
  {
    v53 >>= v3;
  }

  LayerInfo = ZinException::GetLayerInfo(this);
  v9 = *(LayerInfo + 8);
  v52 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v51, LayerInfo);
  }

  v51 = *LayerInfo;
  if (v9 == v3)
  {
    v51 = 0;
    v10 = v54;
    if (v54 > 0x40)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v51 >>= v3;
    v10 = v54;
    if (v54 > 0x40)
    {
LABEL_15:
      v11 = llvm::APInt::equalSlowCase(&v53, &v51);
      goto LABEL_16;
    }
  }

  v11 = v53 == v51;
LABEL_16:
  if (v52 >= 0x41 && v51)
  {
    MEMORY[0x1AC55A040](v51, 0x1000C8000313F17);
    v10 = v54;
  }

  if (v10 >= 0x41 && v53)
  {
    MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
  }

  if (v11)
  {
    ZinIrHalH13g::~ZinIrHalH13g(this);
    llvm::APInt::trunc(&v53, v12, v3);
    v13 = ZinException::GetLayerInfo(this);
    llvm::APInt::trunc(&v51, v13, v3);
  }

  else
  {
    v54 = v3;
    if (v3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v53, 0, 0);
    }

    v53 = 0;
    v52 = v3;
    v14 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    if (!v3)
    {
      v14 = 0;
    }

    v51 = v14;
  }

  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
  v16 = v3 - 1;
  v17 = *(ContainedObjects + 8);
  v50 = v17;
  if (v17 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v49, ContainedObjects);
  }

  if (v17 == v16)
  {
    v18 = 63;
  }

  else
  {
    v18 = v3 - 1;
  }

  v19 = -v17;
  v20 = v17 == 0;
  if (v17)
  {
    v21 = (*ContainedObjects << -v17) >> -v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 >> v18;
  v23 = 0xFFFFFFFFFFFFFFFFLL >> v19;
  if (v20)
  {
    v23 = 0;
  }

  v49 = (v22 & v23);
  result = ZinMirUnit::Opcode(this);
  v25 = *(result + 2);
  v48 = v25;
  if (v25 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, result);
  }

  if (v25 == v16)
  {
    v26 = 63;
  }

  else
  {
    v26 = v3 - 1;
  }

  v27 = -v25;
  v28 = v25 == 0;
  if (v25)
  {
    v29 = *result << -v25 >> -v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 >> v26;
  v31 = 0xFFFFFFFFFFFFFFFFLL >> v27;
  if (v28)
  {
    v31 = 0;
  }

  v47 = (v30 & v31);
  v32 = v50;
  if (v50 > 0x40)
  {
    if (llvm::APInt::equalSlowCase(&v49, &v47))
    {
      goto LABEL_76;
    }

    result = llvm::APInt::countTrailingOnesSlowCase(&v49);
    if (result != v32)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v49 == v47)
    {
      goto LABEL_76;
    }

    if (v50 && v49 != (0xFFFFFFFFFFFFFFFFLL >> -v50))
    {
      if (v49)
      {
        goto LABEL_70;
      }

      goto LABEL_68;
    }
  }

  v33 = v48;
  if (!v48)
  {
    goto LABEL_76;
  }

  if (v48 > 0x40)
  {
    if (llvm::APInt::countTrailingOnesSlowCase(&v47) == v33)
    {
      goto LABEL_76;
    }

    result = llvm::APInt::countLeadingZerosSlowCase(&v47);
    if (result == v33)
    {
      goto LABEL_76;
    }
  }

  else if (v47 == (0xFFFFFFFFFFFFFFFFLL >> -v48) || !v47)
  {
    goto LABEL_76;
  }

  if (v32 <= 0x40)
  {
    if (v49)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = llvm::APInt::countLeadingZerosSlowCase(&v49);
  if (result != v32)
  {
    goto LABEL_70;
  }

LABEL_68:
  v34 = v48;
  if (v48 <= 0x40)
  {
    if (v47)
    {
      goto LABEL_70;
    }

LABEL_76:
    v36 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
    llvm::APInt::trunc(&v45, v36, v3);
    v37 = ZinMirUnit::Opcode(this);
    result = llvm::APInt::trunc(&v43, v37, v3);
    v38 = v54;
    *(a1 + 2) = v54;
    if (v38 > 0x40)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

  result = llvm::APInt::countLeadingZerosSlowCase(&v47);
  if (result == v34)
  {
    goto LABEL_76;
  }

LABEL_70:
  v46 = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v45, 0, 0);
  }

  v45 = (1 << v16);
  v44 = v3;
  v35 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (!v3)
  {
    v35 = 0;
  }

  v43 = v35;
  v43 &= ~(1 << v16);
  v40 = v54;
  *(a1 + 2) = v54;
  if (v40 > 0x40)
  {
LABEL_82:
    llvm::APInt::initSlowCase(a1, &v53);
  }

LABEL_77:
  *a1 = v53;
  v39 = v52;
  *(a1 + 6) = v52;
  if (v39 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 2), &v51);
  }

  a1[2] = v51;
  v41 = v46;
  *(a1 + 10) = v46;
  if (v41 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 4), &v45);
  }

  a1[4] = v45;
  v42 = v44;
  *(a1 + 14) = v44;
  if (v42 > 0x40)
  {
    llvm::APInt::initSlowCase((a1 + 6), &v43);
  }

  a1[6] = v43;
  if (v46 >= 0x41)
  {
    result = v45;
    if (v45)
    {
      result = MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
    }
  }

  if (v48 >= 0x41)
  {
    result = v47;
    if (v47)
    {
      result = MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
    }
  }

  if (v50 >= 0x41)
  {
    result = v49;
    if (v49)
    {
      result = MEMORY[0x1AC55A040](v49, 0x1000C8000313F17);
    }
  }

  if (v52 >= 0x41)
  {
    result = v51;
    if (v51)
    {
      result = MEMORY[0x1AC55A040](v51, 0x1000C8000313F17);
    }
  }

  if (v54 >= 0x41)
  {
    result = v53;
    if (v53)
    {
      return MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::extUIRange@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = a3;
  ZinIrHalH13g::~ZinIrHalH13g(this);
  llvm::APInt::zext(&v11, v6, v3);
  LayerInfo = ZinException::GetLayerInfo(this);
  llvm::APInt::zext(&v9, LayerInfo, v3);
  result = mlir::ConstantIntRanges::fromUnsigned(a1, &v11, &v9);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

const llvm::APInt *mlir::intrange::extSIRange@<X0>(uint64_t *__return_ptr a1@<X8>, mlir::intrange *this@<X0>, const mlir::ConstantIntRanges *a3@<X1>)
{
  v3 = a3;
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
  llvm::APInt::sext(&v11, ContainedObjects, v3);
  v7 = ZinMirUnit::Opcode(this);
  llvm::APInt::sext(&v9, v7, v3);
  result = mlir::ConstantIntRanges::fromSigned(&v11, &v9, a1);
  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
    }
  }

  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      return MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
    }
  }

  return result;
}

void **mlir::intrange::inferAdd@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = &unk_1F1A15F00;
  v36 = a2;
  v37 = &v35;
  v32 = &unk_1F1A15F90;
  v33 = a2;
  v34 = &v32;
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v6 = v5;
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  v8 = v7;
  LayerInfo = ZinException::GetLayerInfo(a1);
  v10 = ZinException::GetLayerInfo((a1 + 64));
  computeBoundsBy(&v24, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v35, v6, v8, LayerInfo, v10, 0);
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v12 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1 + 64);
  v13 = ZinMirUnit::Opcode(a1);
  v14 = ZinMirUnit::Opcode((a1 + 64));
  computeBoundsBy(&v16, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v32, ContainedObjects, v12, v13, v14, 1);
  mlir::ConstantIntRanges::intersection(&v24, &v16, a3);
  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
  }

  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
  }

  if (v34 != &v32)
  {
    if (v34)
    {
      (*(*v34 + 5))();
    }

    result = v37;
    if (v37 != &v35)
    {
      goto LABEL_29;
    }

    return (*(*result + 4))(result);
  }

  (*(*v34 + 4))(v34);
  result = v37;
  if (v37 == &v35)
  {
    return (*(*result + 4))(result);
  }

LABEL_29:
  if (result)
  {
    return (*(*result + 5))(result);
  }

  return result;
}

unsigned int *computeBoundsBy(uint64_t *a1, void (*a2)(uint64_t **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const llvm::APInt *a8)
{
  a2(&v19, a3, a4, a5);
  a2(&v16, a3, a6, a7);
  if (v21 == 1 && v18 == 1)
  {
    result = mlir::ConstantIntRanges::range(&v19, &v16, a8, a1);
    if (v18 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = mlir::ConstantIntRanges::maxRange(*(a4 + 8), a1);
    if (v18 != 1)
    {
      goto LABEL_9;
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
    }
  }

LABEL_9:
  if (v21 == 1 && v20 >= 0x41)
  {
    result = v19;
    if (v19)
    {
      return MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
    }
  }

  return result;
}

void **mlir::intrange::inferSub@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = &unk_1F1A16010;
  v35 = a2;
  v36 = &v34;
  v31 = &unk_1F1A16090;
  v32 = a2;
  v33 = &v31;
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v6 = v5;
  LayerInfo = ZinException::GetLayerInfo((a1 + 64));
  v8 = ZinException::GetLayerInfo(a1);
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  computeBoundsBy(&v23, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v34, v6, LayerInfo, v8, v9, 0);
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v11 = ZinMirUnit::Opcode((a1 + 64));
  v12 = ZinMirUnit::Opcode(a1);
  v13 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1 + 64);
  computeBoundsBy(&v15, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v31, ContainedObjects, v11, v12, v13, 1);
  mlir::ConstantIntRanges::intersection(&v23, &v15, a3);
  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x1AC55A040](v21, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x1AC55A040](v19, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x1AC55A040](v17, 0x1000C8000313F17);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
  }

  if (v30 >= 0x41 && v29)
  {
    MEMORY[0x1AC55A040](v29, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v27)
  {
    MEMORY[0x1AC55A040](v27, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x1AC55A040](v25, 0x1000C8000313F17);
  }

  if (v24 >= 0x41 && v23)
  {
    MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
  }

  if (v33 != &v31)
  {
    if (v33)
    {
      (*(*v33 + 5))();
    }

    result = v36;
    if (v36 != &v34)
    {
      goto LABEL_29;
    }

    return (*(*result + 4))(result);
  }

  (*(*v33 + 4))(v33);
  result = v36;
  if (v36 == &v34)
  {
    return (*(*result + 4))(result);
  }

LABEL_29:
  if (result)
  {
    return (*(*result + 5))(result);
  }

  return result;
}

void **mlir::intrange::inferMul@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = &unk_1F1A16110;
  v42 = a2;
  v43 = &v41;
  v38 = &unk_1F1A16190;
  v39 = a2;
  v40 = &v38;
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v27 = *(v5 + 8);
  if (v27 > 0x40)
  {
    llvm::APInt::initSlowCase(&v26, v5);
  }

  v26 = *v5;
  LayerInfo = ZinException::GetLayerInfo(a1);
  v29 = *(LayerInfo + 8);
  if (v29 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28, LayerInfo);
  }

  v28 = *LayerInfo;
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  v35 = *(v7 + 8);
  if (v35 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, v7);
  }

  v34 = *v7;
  v8 = ZinException::GetLayerInfo((a1 + 64));
  v37 = *(v8 + 8);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v8);
  }

  v36 = *v8;
  minMaxBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v41, &v26, 2, &v34, 2, 0);
  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x1AC55A040](v34, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
  }

  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v35 = *(ContainedObjects + 8);
  if (v35 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, ContainedObjects);
  }

  v34 = *ContainedObjects;
  v10 = ZinMirUnit::Opcode(a1);
  v37 = *(v10 + 8);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v10);
  }

  v36 = *v10;
  v11 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1 + 64);
  v23 = *(v11 + 8);
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase(&v22, v11);
  }

  v22 = *v11;
  v12 = ZinMirUnit::Opcode((a1 + 64));
  v25 = *(v12 + 8);
  if (v25 > 0x40)
  {
    llvm::APInt::initSlowCase(&v24, v12);
  }

  v24 = *v12;
  minMaxBy(&v26, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v38, &v34, 2, &v22, 2, 1);
  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
  }

  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
  }

  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x1AC55A040](v34, 0x1000C8000313F17);
  }

  mlir::ConstantIntRanges::intersection(&v14, &v26, a3);
  if (v33 >= 0x41 && v32)
  {
    MEMORY[0x1AC55A040](v32, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
  }

  if (v40 != &v38)
  {
    if (v40)
    {
      (*(*v40 + 5))(v40);
    }

    result = v43;
    if (v43 != &v41)
    {
      goto LABEL_77;
    }

    return (*(*result + 4))(result);
  }

  (*(*v40 + 4))(v40);
  result = v43;
  if (v43 == &v41)
  {
    return (*(*result + 4))(result);
  }

LABEL_77:
  if (result)
  {
    return (*(*result + 5))(result);
  }

  return result;
}

unsigned int *minMaxBy(uint64_t *a1, void (*a2)(uint64_t **__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, llvm::APInt *a8)
{
  v9 = a6;
  v10 = a4;
  v14 = *(a4 + 8);
  v36 = *(a4 + 8);
  if (a8)
  {
    if (v14 > 0x40)
    {
      llvm::APInt::initSlowCase(&v35, -1, 1);
    }

    v15 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    if (!v14)
    {
      v15 = 0;
    }

    v35 = (v15 & ~(1 << (v14 - 1)));
    v34 = v14;
    v33 = 0;
    v33 |= 1 << (v14 - 1);
    if (!a5)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v14 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v35, -1, 1);
    }

    v16 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    if (!v14)
    {
      v16 = 0;
    }

    v35 = v16;
    v34 = v14;
    v33 = 0;
    if (!a5)
    {
      goto LABEL_47;
    }
  }

  if (a7)
  {
    v17 = 16 * a7;
    v25 = a4 + 16 * a5;
    v26 = 16 * a7;
    do
    {
      v18 = v9;
      do
      {
        a2(&v30, a3, v10, v18);
        v19 = v32;
        if ((v32 & 1) == 0)
        {
          result = mlir::ConstantIntRanges::maxRange(v14, a1);
          goto LABEL_40;
        }

        v29 = v31;
        v28 = v30;
        v31 = 0;
        v20 = &v28;
        if (a8)
        {
          if ((llvm::APInt::compareSigned(&v28, &v35) & 0x80000000) != 0)
          {
            goto LABEL_24;
          }

LABEL_23:
          v20 = &v35;
          goto LABEL_24;
        }

        if ((llvm::APInt::compare(&v28, &v35) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_24:
        if (v36 > 0x40 || (v22 = *(v20 + 2), v22 > 0x40))
        {
          llvm::APInt::assignSlowCase(&v35, v20);
          v23 = &v28;
          if (!a8)
          {
LABEL_27:
            result = llvm::APInt::compare(&v28, &v33);
            if (result > 0)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v35 = *v20;
          v36 = v22;
          v23 = &v28;
          if (!a8)
          {
            goto LABEL_27;
          }
        }

        result = llvm::APInt::compareSigned(&v28, &v33);
        if (result > 0)
        {
LABEL_31:
          if (v34 > 0x40)
          {
            goto LABEL_37;
          }

          goto LABEL_34;
        }

LABEL_33:
        v23 = &v33;
        if (v34 > 0x40)
        {
          goto LABEL_37;
        }

LABEL_34:
        v24 = *(v23 + 2);
        if (v24 > 0x40)
        {
LABEL_37:
          result = llvm::APInt::assignSlowCase(&v33, v23);
          if (v29 < 0x41)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        v33 = *v23;
        v34 = v24;
        if (v29 < 0x41)
        {
          goto LABEL_40;
        }

LABEL_38:
        result = v28;
        if (v28)
        {
          result = MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
        }

LABEL_40:
        if (v32 == 1 && v31 >= 0x41)
        {
          result = v30;
          if (v30)
          {
            result = MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
          }
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_48;
        }

        v18 += 16;
        v17 -= 16;
      }

      while (v17);
      v10 += 16;
      v17 = v26;
      v9 = a6;
    }

    while (v10 != v25);
  }

LABEL_47:
  result = mlir::ConstantIntRanges::range(&v35, &v33, a8, a1);
LABEL_48:
  if (v34 >= 0x41)
  {
    result = v33;
    if (v33)
    {
      result = MEMORY[0x1AC55A040](v33, 0x1000C8000313F17);
    }
  }

  if (v36 >= 0x41)
  {
    result = v35;
    if (v35)
    {
      return MEMORY[0x1AC55A040](v35, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *inferDivURange(uint64_t *a1, ZinIrHalH13g *this, ZinIrHalH13g *a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v17[0] = a4;
  v17[1] = a5;
  ZinIrHalH13g::~ZinIrHalH13g(this);
  v9 = v8;
  LayerInfo = ZinException::GetLayerInfo(this);
  ZinIrHalH13g::~ZinIrHalH13g(a3);
  v12 = v11;
  v13 = ZinException::GetLayerInfo(a3);
  v14 = v12[2];
  if (v14 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(v12) != v14)
    {
      goto LABEL_3;
    }
  }

  else if (*v12)
  {
LABEL_3:
    v16 = v17;
    v23 = *(v9 + 8);
    if (v23 > 0x40)
    {
      llvm::APInt::initSlowCase(&v22, v9);
    }

    v22 = *v9;
    v25 = *(LayerInfo + 8);
    if (v25 > 0x40)
    {
      llvm::APInt::initSlowCase(&v24, LayerInfo);
    }

    v24 = *LayerInfo;
    v19 = v12[2];
    if (v19 > 0x40)
    {
      llvm::APInt::initSlowCase(&v18, v12);
    }

    v18 = *v12;
    v21 = *(v13 + 8);
    if (v21 > 0x40)
    {
      llvm::APInt::initSlowCase(&v20, v13);
    }

    v20 = *v13;
    result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v16, &v22, 2, &v18, 2, 0);
    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
      }
    }

    if (v19 >= 0x41)
    {
      result = v18;
      if (v18)
      {
        result = MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
      }
    }

    if (v25 >= 0x41)
    {
      result = v24;
      if (v24)
      {
        result = MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
      }
    }

    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        return MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
      }
    }

    return result;
  }

  return mlir::ConstantIntRanges::maxRange(v14, a1);
}

unsigned int *inferDivSRange(uint64_t *a1, ZinMirUnit *a2, ZinMirUnit *a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v19[0] = a4;
  v19[1] = a5;
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a2);
  v9 = ZinMirUnit::Opcode(a2);
  v10 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a3);
  v11 = ZinMirUnit::Opcode(a3);
  v12 = v10[2];
  v13 = v12 - 1;
  if (v12 > 0x40)
  {
    if (((*(*v10 + 8 * (v13 >> 6)) >> v13) & 1) != 0 || llvm::APInt::countLeadingZerosSlowCase(v10) == v12)
    {
      goto LABEL_7;
    }

LABEL_11:
    v18 = v19;
    v25 = *(ContainedObjects + 8);
    if (v25 > 0x40)
    {
      llvm::APInt::initSlowCase(&v24, ContainedObjects);
    }

    v24 = *ContainedObjects;
    v27 = *(v9 + 8);
    if (v27 > 0x40)
    {
      llvm::APInt::initSlowCase(&v26, v9);
    }

    v26 = *v9;
    v21 = v10[2];
    if (v21 > 0x40)
    {
      llvm::APInt::initSlowCase(&v20, v10);
    }

    v20 = *v10;
    v23 = *(v11 + 8);
    if (v23 > 0x40)
    {
      llvm::APInt::initSlowCase(&v22, v11);
    }

    v22 = *v11;
    result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v18, &v24, 2, &v20, 2, 1);
    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        result = MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
      }
    }

    if (v27 >= 0x41)
    {
      result = v26;
      if (v26)
      {
        result = MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
      }
    }

    if (v25 >= 0x41)
    {
      result = v24;
      if (v24)
      {
        return MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
      }
    }

    return result;
  }

  if (((*v10 >> v13) & 1) == 0 && *v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = *(v11 + 8);
  v15 = v14 - 1;
  if (v14 >= 0x41)
  {
    v16 = (*v11 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v16 = v11;
  }

  if ((*v16 >> v15))
  {
    goto LABEL_11;
  }

  return mlir::ConstantIntRanges::maxRange(v12, a1);
}

const llvm::APInt *mlir::intrange::inferRemS@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v5 = ZinMirUnit::Opcode(a1);
  v6 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1 + 64);
  v7 = ZinMirUnit::Opcode((a1 + 64));
  v8 = *(v7 + 8);
  v62 = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v61, 0, 0);
  }

  v61 = (1 << (v8 - 1));
  v60 = v8;
  v9 = 0xFFFFFFFFFFFFFFFFLL >> ((v8 - 1) & 0x3F ^ 0x3F);
  if (!v8)
  {
    v9 = 0;
  }

  v59 = v9;
  v59 &= ~(1 << (v8 - 1));
  v10 = *(v6 + 2);
  v11 = v10 - 1;
  if (v10 > 0x40)
  {
    v13 = *v6;
    if (((*(*v6 + 8 * (v11 >> 6)) >> v11) & 1) == 0 && llvm::APInt::countLeadingZerosSlowCase(v6) != v10)
    {
      goto LABEL_17;
    }

    v12 = v13;
  }

  else
  {
    v12 = *v6;
    if (((*v6 >> v11) & 1) == 0 && v12)
    {
      goto LABEL_21;
    }

    v13 = *v6;
  }

  v14 = *(v7 + 8);
  v15 = v14 - 1;
  if (v14 >= 0x41)
  {
    v16 = (*v7 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v16 = v7;
  }

  if (((*v16 >> v15) & 1) == 0)
  {
    goto LABEL_104;
  }

  if (v10 <= 0x40)
  {
LABEL_21:
    if (((v12 >> v11) & 1) == 0 && v12)
    {
      goto LABEL_23;
    }

LABEL_25:
    llvm::APInt::abs(&v57, v6);
    goto LABEL_27;
  }

LABEL_17:
  if (((*(v13 + 8 * (v11 >> 6)) >> v11) & 1) != 0 || llvm::APInt::countLeadingZerosSlowCase(v6) == v10)
  {
    goto LABEL_25;
  }

LABEL_23:
  v58 = *(v7 + 8);
  if (v58 > 0x40)
  {
    llvm::APInt::initSlowCase(&v57, v7);
  }

  v57 = *v7;
LABEL_27:
  v17 = *(ContainedObjects + 8);
  v18 = v17 - 1;
  if (v17 >= 0x41)
  {
    v19 = (*ContainedObjects + 8 * ((v17 - 1) >> 6));
  }

  else
  {
    v19 = ContainedObjects;
  }

  v20 = *v19;
  v21 = *(v5 + 2);
  v22 = v21 - 1;
  if (v21 <= 0x40)
  {
    if (((*v5 >> v22) & 1) == 0)
    {
      v23 = *v5 == 0;
      goto LABEL_37;
    }

LABEL_34:
    v24 = 0;
    v25 = 1 << v18;
    v26 = v58;
    v56 = v58;
    if (v58 > 0x40)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if ((*(*v5 + 8 * (v22 >> 6)) >> v22))
  {
    goto LABEL_34;
  }

  v23 = llvm::APInt::countLeadingZerosSlowCase(v5) == v21;
LABEL_37:
  v27 = v23;
  v24 = v27 ^ 1;
  v25 = 1 << v18;
  v26 = v58;
  v56 = v58;
  if (v58 > 0x40)
  {
LABEL_41:
    llvm::APInt::initSlowCase(&v55, 0, 0);
  }

LABEL_35:
  v55 = 0;
  v52 = v26;
  v51 = v57;
  v28 = v25 & v20;
  llvm::APInt::operator-=(&v51, 1uLL);
  v29 = v52;
  v54 = v52;
  v53 = v51;
  v52 = 0;
  v48 = v54;
  if (v54 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v47, &v53);
  }

  if (v29)
  {
    v30 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
  }

  else
  {
    v30 = 0;
  }

  v47 = (v30 & ~v51);
  llvm::APInt::operator++(&v47);
  v31 = v48;
  v50 = v48;
  v49 = v47;
  v48 = 0;
  if (v28)
  {
    v32 = &v49;
  }

  else
  {
    v32 = &v55;
  }

  if (v62 > 0x40)
  {
    goto LABEL_55;
  }

  if (!v28)
  {
    v31 = v56;
  }

  if (v31 > 0x40)
  {
LABEL_55:
    llvm::APInt::assignSlowCase(&v61, v32);
  }

  else
  {
    v61 = *v32;
    v62 = v31;
  }

  v33 = &v55;
  if (v24)
  {
    v34 = &v53;
  }

  else
  {
    v34 = &v55;
  }

  if (v60 <= 0x40)
  {
    if (v24)
    {
      v33 = &v53;
    }

    v35 = *(v33 + 2);
    if (v35 <= 0x40)
    {
      v59 = *v34;
      v60 = v35;
      if (*(v6 + 2) > 0x40u)
      {
        goto LABEL_64;
      }

LABEL_67:
      if (*v6 != *v7)
      {
        goto LABEL_92;
      }

LABEL_68:
      v44 = *(v5 + 2);
      if (v44 > 0x40)
      {
        llvm::APInt::initSlowCase(&v43, v5);
      }

      v43 = *v5;
      llvm::APInt::operator-=(&v43, ContainedObjects);
      v36 = v44;
      v46 = v44;
      v37 = v43;
      v45 = v43;
      v44 = 0;
      v38 = llvm::APInt::compare(&v45, &v57);
      v39 = v38;
      if (v36 >= 0x41)
      {
        if (v37)
        {
          MEMORY[0x1AC55A040](v37, 0x1000C8000313F17);
          if (v44 >= 0x41)
          {
            if (v43)
            {
              MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
            }
          }
        }
      }

      if (v39 < 0)
      {
        llvm::APInt::srem(&v45, ContainedObjects, &v57);
        llvm::APInt::srem(&v41, v5, &v57);
        if (llvm::APInt::compareSigned(&v45, &v41) <= 0)
        {
          if (v62 > 0x40 || v46 > 0x40)
          {
            llvm::APInt::assignSlowCase(&v61, &v45);
          }

          else
          {
            v61 = v45;
            v62 = v46;
          }

          if (v60 > 0x40 || v42 > 0x40)
          {
            llvm::APInt::assignSlowCase(&v59, &v41);
          }

          else
          {
            v59 = v41;
            v60 = v42;
          }
        }

        if (v42 >= 0x41 && v41)
        {
          MEMORY[0x1AC55A040](v41, 0x1000C8000313F17);
        }

        if (v46 >= 0x41 && v45)
        {
          MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
        }
      }

      goto LABEL_92;
    }
  }

  llvm::APInt::assignSlowCase(&v59, v34);
  if (*(v6 + 2) <= 0x40u)
  {
    goto LABEL_67;
  }

LABEL_64:
  if (llvm::APInt::equalSlowCase(v6, v7))
  {
    goto LABEL_68;
  }

LABEL_92:
  if (v50 >= 0x41 && v49)
  {
    MEMORY[0x1AC55A040](v49, 0x1000C8000313F17);
  }

  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
  }

  if (v56 >= 0x41 && v55)
  {
    MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
  }

  if (v58 >= 0x41 && v57)
  {
    MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
  }

LABEL_104:
  result = mlir::ConstantIntRanges::fromSigned(&v61, &v59, a2);
  if (v60 >= 0x41)
  {
    result = v59;
    if (v59)
    {
      result = MEMORY[0x1AC55A040](v59, 0x1000C8000313F17);
    }
  }

  if (v62 >= 0x41)
  {
    result = v61;
    if (v61)
    {
      return MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::APInt::abs@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = *(this + 2);
  v4 = v3 - 1;
  if (v3 > 0x40)
  {
    if ((*(*this + 8 * (v4 >> 6)) >> v4))
    {
      v8 = *(this + 2);
      llvm::APInt::initSlowCase(&v7, this);
    }

    *(a1 + 2) = v3;

    llvm::APInt::initSlowCase(a1, this);
  }

  v5 = *this;
  if ((*this >> v4))
  {
    v8 = *(this + 2);
    v7 = v5;
    if (v3)
    {
      v6 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 & ~v7;
    this = llvm::APInt::operator++(&v7);
    *(a1 + 2) = v8;
    *a1 = v7;
    v8 = 0;
  }

  else
  {
    *(a1 + 2) = v3;
    *a1 = v5;
  }

  return this;
}

unsigned int *mlir::intrange::inferRemU@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  v5 = v4;
  LayerInfo = ZinException::GetLayerInfo((a1 + 64));
  v7 = *(v5 + 8);
  v31 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v30, 0, 0);
  }

  v30 = 0;
  v29 = v7;
  v8 = 0xFFFFFFFFFFFFFFFFLL >> -v7;
  if (!v7)
  {
    v8 = 0;
  }

  v28 = v8;
  if (*v5)
  {
    v27 = *(LayerInfo + 8);
    if (v27 > 0x40)
    {
      llvm::APInt::initSlowCase(&v26, LayerInfo);
    }

    v26 = *LayerInfo;
    llvm::APInt::operator-=(&v26, 1uLL);
    v9 = v27;
    v10 = v26;
    v27 = 0;
    if (v29 > 0x40 && v28)
    {
      MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
      v28 = v10;
      v29 = v9;
      if (v27 >= 0x41 && v26)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
      }

      if (*(v5 + 8) <= 0x40u)
      {
LABEL_16:
        if (*v5 != *LayerInfo)
        {
          goto LABEL_44;
        }

LABEL_20:
        ZinIrHalH13g::~ZinIrHalH13g(a1);
        v12 = v11;
        v13 = ZinException::GetLayerInfo(a1);
        v14 = v13;
        v23 = *(v13 + 8);
        if (v23 > 0x40)
        {
          llvm::APInt::initSlowCase(&v22, v13);
        }

        v22 = *v13;
        llvm::APInt::operator-=(&v22, v12);
        v15 = v23;
        v25 = v23;
        v16 = v22;
        v24 = v22;
        v23 = 0;
        v17 = llvm::APInt::compare(&v24, LayerInfo);
        v18 = v17;
        if (v15 >= 0x41)
        {
          if (v16)
          {
            MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
            if (v23 >= 0x41)
            {
              if (v22)
              {
                MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
              }
            }
          }
        }

        if (v18 < 0)
        {
          llvm::APInt::urem(&v24, v12, LayerInfo);
          llvm::APInt::urem(&v20, v14, LayerInfo);
          if (llvm::APInt::compare(&v24, &v20) <= 0)
          {
            if (v31 > 0x40 || v25 > 0x40)
            {
              llvm::APInt::assignSlowCase(&v30, &v24);
            }

            else
            {
              v30 = v24;
              v31 = v25;
            }

            if (v29 > 0x40 || v21 > 0x40)
            {
              llvm::APInt::assignSlowCase(&v28, &v20);
            }

            else
            {
              v28 = v20;
              v29 = v21;
            }
          }

          if (v21 >= 0x41 && v20)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
          }

          if (v25 >= 0x41 && v24)
          {
            MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      v28 = v26;
      v29 = v9;
      if (*(v5 + 8) <= 0x40u)
      {
        goto LABEL_16;
      }
    }

    if (!llvm::APInt::equalSlowCase(v5, LayerInfo))
    {
      goto LABEL_44;
    }

    goto LABEL_20;
  }

LABEL_44:
  result = mlir::ConstantIntRanges::fromUnsigned(a2, &v30, &v28);
  if (v29 >= 0x41)
  {
    result = v28;
    if (v28)
    {
      result = MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
    }
  }

  if (v31 >= 0x41)
  {
    result = v30;
    if (v30)
    {
      return MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
    }
  }

  return result;
}

const llvm::APInt *mlir::intrange::inferMaxS@<X0>(ZinMirUnit *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (a1 + 64);
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v6 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(v4);
  if (llvm::APInt::compareSigned(ContainedObjects, v6) <= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(v7);
  v9 = ZinMirUnit::Opcode(a1);
  v10 = ZinMirUnit::Opcode(v4);
  if (llvm::APInt::compareSigned(v9, v10) <= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = ZinMirUnit::Opcode(v11);

  return mlir::ConstantIntRanges::fromSigned(v8, v12, a2);
}

unsigned int *mlir::intrange::inferMaxU@<X0>(ZinIrHalH13g *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (a1 + 64);
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v6 = v5;
  ZinIrHalH13g::~ZinIrHalH13g(v4);
  if (llvm::APInt::compare(v6, v7) <= 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = a1;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v8);
  v10 = v9;
  LayerInfo = ZinException::GetLayerInfo(a1);
  v12 = ZinException::GetLayerInfo(v4);
  if (llvm::APInt::compare(LayerInfo, v12) <= 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = a1;
  }

  v14 = ZinException::GetLayerInfo(v13);

  return mlir::ConstantIntRanges::fromUnsigned(a2, v10, v14);
}

const llvm::APInt *mlir::intrange::inferMinS@<X0>(ZinMirUnit *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (a1 + 64);
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v6 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(v4);
  if (llvm::APInt::compareSigned(ContainedObjects, v6) >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = a1;
  }

  v8 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(v7);
  v9 = ZinMirUnit::Opcode(a1);
  v10 = ZinMirUnit::Opcode(v4);
  if (llvm::APInt::compareSigned(v9, v10) >= 0)
  {
    v11 = v4;
  }

  else
  {
    v11 = a1;
  }

  v12 = ZinMirUnit::Opcode(v11);

  return mlir::ConstantIntRanges::fromSigned(v8, v12, a2);
}

unsigned int *mlir::intrange::inferMinU@<X0>(ZinIrHalH13g *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (a1 + 64);
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v6 = v5;
  ZinIrHalH13g::~ZinIrHalH13g(v4);
  if (llvm::APInt::compare(v6, v7) >= 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = a1;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v8);
  v10 = v9;
  LayerInfo = ZinException::GetLayerInfo(a1);
  v12 = ZinException::GetLayerInfo(v4);
  if (llvm::APInt::compare(LayerInfo, v12) >= 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = a1;
  }

  v14 = ZinException::GetLayerInfo(v13);

  return mlir::ConstantIntRanges::fromUnsigned(a2, v10, v14);
}

unsigned int *mlir::intrange::inferAnd@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v22 = *MEMORY[0x1E69E9840];
  widenBitwiseBounds(&v10, a2);
  widenBitwiseBounds(&v6, (a2 + 64));
  v19 = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, &v10);
  }

  v18 = v10;
  v21 = v13;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, &v12);
  }

  v20 = v12;
  v15 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v6);
  }

  v14 = v6;
  v17 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, &v8);
  }

  v16 = v8;
  result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v18, 2, &v14, 2, 0);
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      result = MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x1AC55A040](v12, 0x1000C8000313F17);
    }
  }

  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x1AC55A040](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

void *widenBitwiseBounds(const mlir::ConstantIntRanges *a1, ZinIrHalH13g *a2)
{
  ZinIrHalH13g::~ZinIrHalH13g(a2);
  v15 = *(v4 + 8);
  if (v15 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, v4);
  }

  v14 = *v4;
  LayerInfo = ZinException::GetLayerInfo(a2);
  v13 = *(LayerInfo + 8);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v12, LayerInfo);
  }

  v12 = *LayerInfo;
  v6 = v15;
  v11 = v15;
  v10 = v14 ^ v12;
  v11 = 0;
  v7 = v15 + __clz(v14 ^ v12) - 64;
  result = llvm::APInt::clearLowBits(&v14, v15 - v7);
  v9 = v6 - v7;
  if (v6 != v7)
  {
    if (v9 > 0x40)
    {
      result = llvm::APInt::setBitsSlowCase(&v12, 0, v9);
    }

    else
    {
      v12 |= 0xFFFFFFFFFFFFFFFFLL >> (v7 - v6);
    }
  }

  *(a1 + 2) = v15;
  *a1 = v14;
  *(a1 + 6) = v13;
  *(a1 + 2) = v12;
  return result;
}

unsigned int *mlir::intrange::inferOr@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  widenBitwiseBounds(&v10, a1);
  widenBitwiseBounds(&v6, (a1 + 64));
  v19 = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, &v10);
  }

  v18 = v10;
  v21 = v13;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, &v12);
  }

  v20 = v12;
  v15 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v6);
  }

  v14 = v6;
  v17 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, &v8);
  }

  v16 = v8;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v18, 2, &v14, 2, 0);
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      result = MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x1AC55A040](v12, 0x1000C8000313F17);
    }
  }

  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x1AC55A040](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::inferXor@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  widenBitwiseBounds(&v10, a1);
  widenBitwiseBounds(&v6, (a1 + 64));
  v19 = v11;
  if (v11 > 0x40)
  {
    llvm::APInt::initSlowCase(&v18, &v10);
  }

  v18 = v10;
  v21 = v13;
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, &v12);
  }

  v20 = v12;
  v15 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, &v6);
  }

  v14 = v6;
  v17 = v9;
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, &v8);
  }

  v16 = v8;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferXor(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v5, &v18, 2, &v14, 2, 0);
  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }
  }

  if (v21 >= 0x41)
  {
    result = v20;
    if (v20)
    {
      result = MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
    }
  }

  if (v9 >= 0x41)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
    }
  }

  if (v7 >= 0x41)
  {
    result = v6;
    if (v6)
    {
      result = MEMORY[0x1AC55A040](v6, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      result = MEMORY[0x1AC55A040](v12, 0x1000C8000313F17);
    }
  }

  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x1AC55A040](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

void **mlir::intrange::inferShl@<X0>(uint64_t a1@<X0>, int a2@<W2>, _DWORD *a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  v7 = v6;
  LayerInfo = ZinException::GetLayerInfo((a1 + 64));
  v41 = &unk_1F1A16210;
  v42 = a2;
  v43 = &v41;
  v38 = &unk_1F1A16290;
  v39 = a2;
  v40 = &v38;
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v27 = *(v9 + 8);
  if (v27 > 0x40)
  {
    llvm::APInt::initSlowCase(&v26, v9);
  }

  v26 = *v9;
  v10 = ZinException::GetLayerInfo(a1);
  v29 = *(v10 + 8);
  if (v29 > 0x40)
  {
    llvm::APInt::initSlowCase(&v28, v10);
  }

  v28 = *v10;
  v35 = *(v7 + 8);
  if (v35 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, v7);
  }

  v34 = *v7;
  v37 = *(LayerInfo + 8);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, LayerInfo);
  }

  v36 = *LayerInfo;
  minMaxBy(&v14, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v41, &v26, 2, &v34, 2, 0);
  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x1AC55A040](v34, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
  }

  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v35 = *(ContainedObjects + 8);
  if (v35 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, ContainedObjects);
  }

  v34 = *ContainedObjects;
  v12 = ZinMirUnit::Opcode(a1);
  v37 = *(v12 + 8);
  if (v37 > 0x40)
  {
    llvm::APInt::initSlowCase(&v36, v12);
  }

  v36 = *v12;
  v23 = *(v7 + 8);
  if (v23 > 0x40)
  {
    llvm::APInt::initSlowCase(&v22, v7);
  }

  v22 = *v7;
  v25 = *(LayerInfo + 8);
  if (v25 > 0x40)
  {
    llvm::APInt::initSlowCase(&v24, LayerInfo);
  }

  v24 = *LayerInfo;
  minMaxBy(&v26, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v38, &v34, 2, &v22, 2, 1);
  if (v25 >= 0x41 && v24)
  {
    MEMORY[0x1AC55A040](v24, 0x1000C8000313F17);
  }

  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x1AC55A040](v22, 0x1000C8000313F17);
  }

  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x1AC55A040](v36, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x1AC55A040](v34, 0x1000C8000313F17);
  }

  mlir::ConstantIntRanges::intersection(&v14, &v26, a3);
  if (v33 >= 0x41 && v32)
  {
    MEMORY[0x1AC55A040](v32, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v30)
  {
    MEMORY[0x1AC55A040](v30, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x1AC55A040](v28, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    MEMORY[0x1AC55A040](v26, 0x1000C8000313F17);
  }

  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
  }

  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x1AC55A040](v18, 0x1000C8000313F17);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x1AC55A040](v16, 0x1000C8000313F17);
  }

  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
  }

  if (v40 != &v38)
  {
    if (v40)
    {
      (*(*v40 + 5))(v40);
    }

    result = v43;
    if (v43 != &v41)
    {
      goto LABEL_71;
    }

    return (*(*result + 4))(result);
  }

  (*(*v40 + 4))(v40);
  result = v43;
  if (v43 == &v41)
  {
    return (*(*result + 4))(result);
  }

LABEL_71:
  if (result)
  {
    return (*(*result + 5))(result);
  }

  return result;
}

unsigned int *mlir::intrange::inferShrS@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a1);
  v14 = *(ContainedObjects + 8);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, ContainedObjects);
  }

  v13 = *ContainedObjects;
  v5 = ZinMirUnit::Opcode(a1);
  v16 = *(v5 + 8);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, v5);
  }

  v15 = *v5;
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  v10 = *(v6 + 8);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, v6);
  }

  v9 = *v6;
  LayerInfo = ZinException::GetLayerInfo((a1 + 64));
  v12 = *(LayerInfo + 8);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, LayerInfo);
  }

  v11 = *LayerInfo;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v13, &v13, 2, &v9, 2, 1);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *mlir::intrange::inferShrU@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  ZinIrHalH13g::~ZinIrHalH13g(a1);
  v14 = *(v4 + 8);
  if (v14 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, v4);
  }

  v13 = *v4;
  LayerInfo = ZinException::GetLayerInfo(a1);
  v16 = *(LayerInfo + 8);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, LayerInfo);
  }

  v15 = *LayerInfo;
  ZinIrHalH13g::~ZinIrHalH13g((a1 + 64));
  v10 = *(v6 + 8);
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(&v9, v6);
  }

  v9 = *v6;
  v7 = ZinException::GetLayerInfo((a1 + 64));
  v12 = *(v7 + 8);
  if (v12 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, v7);
  }

  v11 = *v7;
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v13, &v13, 2, &v9, 2, 0);
  if (v12 >= 0x41)
  {
    result = v11;
    if (v11)
    {
      result = MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
    }
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      result = MEMORY[0x1AC55A040](v9, 0x1000C8000313F17);
    }
  }

  if (v16 >= 0x41)
  {
    result = v15;
    if (v15)
    {
      result = MEMORY[0x1AC55A040](v15, 0x1000C8000313F17);
    }
  }

  if (v14 >= 0x41)
  {
    result = v13;
    if (v13)
    {
      return MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::evaluatePred(uint64_t a1, mlir::ConstantIntRanges *a2, ZinMirUnit *a3)
{
  if (isStaticallyTrue(a1, a2, a3))
  {
    return 257;
  }

  else
  {
    return isStaticallyTrue(qword_1A75EBBD8[a1], a2, a3) << 8;
  }
}

uint64_t isStaticallyTrue(uint64_t a1, mlir::ConstantIntRanges *this, ZinMirUnit *a3)
{
  result = 0;
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v25 = ZinMirUnit::Opcode(this);
        ContainedObjects = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a3);
        return llvm::APInt::compareSigned(v25, ContainedObjects) >> 31;
      }

      if (a1 != 3)
      {
        v7 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
        v8 = ZinMirUnit::Opcode(a3);
        v9 = llvm::APInt::compareSigned(v7, v8);
        return v9 > 0;
      }

      v30 = ZinMirUnit::Opcode(this);
      v31 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a3);
      v29 = llvm::APInt::compareSigned(v30, v31);
      return v29 < 1;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v14 = ZinMirUnit::Opcode(this);
        v15 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(a3);
        if ((llvm::APInt::compareSigned(v14, v15) & 0x80000000) != 0)
        {
          v18 = 1;
        }

        else
        {
          v16 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
          v17 = ZinMirUnit::Opcode(a3);
          v18 = llvm::APInt::compareSigned(v16, v17) > 0;
        }

        LayerInfo = ZinException::GetLayerInfo(this);
        ZinIrHalH13g::~ZinIrHalH13g(a3);
        if ((llvm::APInt::compare(LayerInfo, v36) & 0x80000000) != 0)
        {
          return v18;
        }

        else
        {
          ZinIrHalH13g::~ZinIrHalH13g(this);
          v38 = v37;
          v39 = ZinException::GetLayerInfo(a3);
          return v18 & (llvm::APInt::compare(v38, v39) > 0);
        }
      }
    }

    else
    {
      mlir::ConstantIntRanges::getConstantValue(&v45, this);
      mlir::ConstantIntRanges::getConstantValue(&v42, a3);
      result = 0;
      v21 = v47;
      v22 = v44;
      if (v47 == 1 && v44 == 1)
      {
        if (v46 > 0x40)
        {
          result = llvm::APInt::equalSlowCase(&v45, &v42);
        }

        else
        {
          result = v45 == v42;
        }

        v22 = 1;
      }

      if ((v22 & 1) != 0 && v43 >= 0x41 && v42)
      {
        v40 = result;
        MEMORY[0x1AC55A040](v42, 0x1000C8000313F17);
        result = v40;
        v21 = v47;
      }

      if ((v21 & 1) != 0 && v46 >= 0x41 && v45)
      {
        v41 = result;
        MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
        return v41;
      }
    }

    return result;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      v19 = ZinException::GetLayerInfo(this);
      ZinIrHalH13g::~ZinIrHalH13g(a3);
      return llvm::APInt::compare(v19, v20) >> 31;
    }

    v23 = ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>::GetContainedObjects(this);
    v24 = ZinMirUnit::Opcode(a3);
    v13 = llvm::APInt::compareSigned(v23, v24);
    return v13 >= 0;
  }

  switch(a1)
  {
    case 7:
      v27 = ZinException::GetLayerInfo(this);
      ZinIrHalH13g::~ZinIrHalH13g(a3);
      v29 = llvm::APInt::compare(v27, v28);
      return v29 < 1;
    case 8:
      ZinIrHalH13g::~ZinIrHalH13g(this);
      v33 = v32;
      v34 = ZinException::GetLayerInfo(a3);
      v9 = llvm::APInt::compare(v33, v34);
      return v9 > 0;
    case 9:
      ZinIrHalH13g::~ZinIrHalH13g(this);
      v11 = v10;
      v12 = ZinException::GetLayerInfo(a3);
      v13 = llvm::APInt::compare(v11, v12);
      return v13 >= 0;
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(uint64_t *a1, const void **this, llvm::APInt *a3)
{
  v5 = *a1;
  llvm::APInt::udiv(&v7, this, a3);
  result = (*v5)(*(v5 + 8), this, a3, &v7);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, _BYTE *a4@<X8>)
{
  v10 = 0;
  llvm::APInt::sdiv_ov(&v8, this, a2, &v10);
  if (v10)
  {
    *a4 = 0;
    a4[16] = 0;
    if (v9 < 0x41)
    {
      return;
    }
  }

  else
  {
    (**a3)(*(*a3 + 8), this, a2, &v8);
    if (v9 < 0x41)
    {
      return;
    }
  }

  if (v8)
  {
    MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
  }
}

llvm::APInt *llvm::APInt::clearLowBits(llvm::APInt *this, unsigned int a2)
{
  v2 = this;
  v3 = *(this + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, 0, 0);
  }

  v5 = 0;
  v4 = v3;
  if (v3 == a2)
  {
LABEL_7:
    if (*(this + 2) <= 0x40u)
    {
      goto LABEL_8;
    }

LABEL_11:
    this = llvm::APInt::andAssignSlowCase(v2, &v5);
    if (v6 < 0x41)
    {
      return this;
    }

    goto LABEL_12;
  }

  if (a2 <= 0x3F)
  {
    v5 |= 0xFFFFFFFFFFFFFFFFLL >> (a2 - v3) << a2;
    goto LABEL_7;
  }

  this = llvm::APInt::setBitsSlowCase(&v5, a2, v3);
  if (*(v2 + 2) > 0x40u)
  {
    goto LABEL_11;
  }

LABEL_8:
  *v2 &= v5;
  if (v6 < 0x41)
  {
    return this;
  }

LABEL_12:
  this = v5;
  if (v5)
  {
    return MEMORY[0x1AC55A040](v5, 0x1000C8000313F17, v4);
  }

  return this;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A15F00;
  *(a2 + 8) = v2;
  return result;
}

const void **std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(const void **this@<X1>, uint64_t **a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if ((v5 & 2) != 0)
  {
    result = llvm::APInt::uadd_sat(&v8, this, a2);
  }

  else
  {
    result = llvm::APInt::uadd_ov(&v8, this, a2, &v10);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A15F90;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::sadd_sat(&v7, this, a2);
  }

  else
  {
    llvm::APInt::sadd_ov(&v7, this, a2, &v9);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferAddEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1A6F66508);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A16010;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, unint64_t **a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if ((v5 & 2) != 0)
  {
    llvm::APInt::usub_sat(&v7, this, a2);
  }

  else
  {
    llvm::APInt::usub_ov(&v7, this, a2, &v9);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A16090;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::ssub_sat(&v7, this, a2);
  }

  else
  {
    llvm::APInt::ssub_ov(&v7, this, a2, &v9);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferSubEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A16110;
  *(a2 + 8) = v2;
  return result;
}

uint64_t *std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v10 = 0;
  if ((v5 & 2) != 0)
  {
    result = llvm::APInt::umul_sat(&v8, this, a2);
  }

  else
  {
    result = llvm::APInt::umul_ov(&v8, this, a2, &v10);
    if (v10)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v9 < 0x41)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v8);
  }

  *a4 = v8;
  *(a4 + 16) = 1;
  if (v9 >= 0x41)
  {
LABEL_10:
    result = v8;
    if (v8)
    {
      return MEMORY[0x1AC55A040](v8, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A16190;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::smul_sat(&v7, this, a2);
  }

  else
  {
    llvm::APInt::smul_ov(&v7, this, a2, &v9);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferMulEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v5[2] = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(v5, a1);
  }

  v4 = *a1;
  *(a2 + 8) = v3;
  *a2 = v4;
  *(a2 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, const llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::urem(&v14, this, a2);
  v6 = v15;
  if (v15 > 0x40)
  {
    v8 = llvm::APInt::countLeadingZerosSlowCase(&v14);
    if (v14)
    {
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }

    if (v8 != v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = *(a3 + 2);
    *(a4 + 8) = v9;
    if (v9 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    *a4 = *a3;
    *(a4 + 16) = 1;
    return;
  }

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
  v7 = *(a3 + 2);
  v12 = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, 1, 0);
  }

  v11 = v7 != 0;
  llvm::APInt::uadd_ov(&v14, a3, &v11, &v13);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  }

  if (v13)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v15 < 0x41)
    {
      return;
    }

    goto LABEL_22;
  }

  v10 = v15;
  *(a4 + 8) = v15;
  if (v10 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v14);
  }

  *a4 = v14;
  *(a4 + 16) = 1;
  if (v15 >= 0x41)
  {
LABEL_22:
    if (v14)
    {
      MEMORY[0x1AC55A040](v14, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X3>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v5[2] = v3;
  if (v3 >= 0x41)
  {
    llvm::APInt::initSlowCase(v5, a1);
  }

  v4 = *a1;
  *(a2 + 8) = v3;
  *a2 = v4;
  *(a2 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, const llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(&v23, this, a2);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v23) == v8)
    {
      if (v23)
      {
        MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
      }

      goto LABEL_17;
    }
  }

  else if (!v23)
  {
LABEL_17:
    v17 = *(a3 + 2);
    *(a4 + 8) = v17;
    if (v17 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    *a4 = *a3;
    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && v23)
  {
    MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
  }

  if (v16)
  {
    goto LABEL_17;
  }

  v22 = 0;
  v18 = *(a3 + 2);
  v21 = v18;
  if (v18 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, 1, 0);
  }

  v20 = v18 != 0;
  llvm::APInt::sadd_ov(&v23, a3, &v20, &v22);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
  }

  if (v22)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v24 < 0x41)
    {
      return;
    }

    goto LABEL_34;
  }

  v19 = v24;
  *(a4 + 8) = v24;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v23);
  }

  *a4 = v23;
  *(a4 + 16) = 1;
  if (v24 >= 0x41)
  {
LABEL_34:
    if (v23)
    {
      MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferFloorDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const void **this@<X1>, llvm::APInt *a2@<X2>, const llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(&v23, this, a2);
  v8 = v24;
  if (v24 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v23) == v8)
    {
      if (v23)
      {
        MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
      }

      goto LABEL_19;
    }
  }

  else if (!v23)
  {
LABEL_19:
    v18 = *(a3 + 2);
    *(a4 + 8) = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(a4, a3);
    }

    *a4 = *a3;
    *(a4 + 16) = 1;
    return;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && v23)
  {
    MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
  }

  if (!v16)
  {
    goto LABEL_19;
  }

  v22 = 0;
  v17 = *(a3 + 2);
  v21 = v17;
  if (v17 > 0x40)
  {
    llvm::APInt::initSlowCase(&v20, 1, 0);
  }

  v20 = v17 != 0;
  llvm::APInt::ssub_ov(&v23, a3, &v20, &v22);
  if (v21 >= 0x41 && v20)
  {
    MEMORY[0x1AC55A040](v20, 0x1000C8000313F17);
  }

  if (v22)
  {
    *a4 = 0;
    *(a4 + 16) = 0;
    if (v24 < 0x41)
    {
      return;
    }

    goto LABEL_34;
  }

  v19 = v24;
  *(a4 + 8) = v24;
  if (v19 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v23);
  }

  *a4 = v23;
  *(a4 + 16) = 1;
  if (v24 >= 0x41)
  {
LABEL_34:
    if (v23)
    {
      MEMORY[0x1AC55A040](v23, 0x1000C8000313F17);
    }
  }
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const llvm::APInt *a1@<X1>, const llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v7 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  v5 = *a2 & *a1;
  *(a3 + 8) = v4;
  *a3 = v5;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const llvm::APInt *a1@<X1>, const llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v7 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  v5 = *a2 | *a1;
  *(a3 + 8) = v4;
  *a3 = v5;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferXor(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(const llvm::APInt *a1@<X1>, const llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v7 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  v5 = *a2 ^ *a1;
  *(a3 + 8) = v4;
  *a3 = v5;
  *(a3 + 16) = 1;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A16210;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(const void **this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if ((v5 & 2) != 0)
  {
    llvm::APInt::ushl_sat(this, a2, &v7);
  }

  else
  {
    llvm::APInt::ushl_ov(this, a2, &v9, &v7);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F1A16290;
  *(a2 + 8) = v2;
  return result;
}

void std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v9 = 0;
  if (v5)
  {
    llvm::APInt::sshl_sat(this, a2, &v7);
  }

  else
  {
    llvm::APInt::sshl_ov(this, a2, &v9, &v7);
    if (v9)
    {
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v8 < 0x41)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v6 = v8;
  *(a4 + 8) = v8;
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(a4, &v7);
  }

  *a4 = v7;
  *(a4 + 16) = 1;
  if (v8 >= 0x41)
  {
LABEL_10:
    if (v7)
    {
      MEMORY[0x1AC55A040](v7, 0x1000C8000313F17);
    }
  }
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir8intrange8inferShlEN4llvm8ArrayRefINS_17ConstantIntRangesEEENS0_13OverflowFlagsEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
LABEL_7:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }

    v7 = *a2;
  }

  if (*v7 >= v6)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 2);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a1);
  }

  v8 = *a1;
  llvm::APInt::ashrInPlace(&v8, a2);
  *(a3 + 8) = v9;
  *a3 = v8;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *a1@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
LABEL_7:
      *a3 = 0;
      *(a3 + 16) = 0;
      return;
    }

    v7 = *a2;
  }

  if (*v7 >= v6)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 2);
  if (v9 > 0x40)
  {
    llvm::APInt::initSlowCase(&v8, a1);
  }

  v8 = *a1;
  llvm::APInt::lshrInPlace(&v8, a2);
  *(a3 + 8) = v9;
  *a3 = v8;
  *(a3 + 16) = 1;
}

void mlir::mpsx::MPSXDialect::MPSXDialect(mlir::mpsx::MPSXDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "mpsx", 4, a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id);
  *v2 = &unk_1F1A16310;
  mlir::mpsx::MPSXDialect::initialize(v2);
}

void sub_1A6F67E5C()
{

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::mpsx::MPSXDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8))
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a3 + 8);
    v10 = a3;
    v11 = v8;
    if (a3)
    {
      return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>(a2, a5, &v12, &v10);
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return 0;
}

void *mlir::mpsx::QuantizedMatMulOp::getInputDequantizedType(mlir::Operation **this)
{
  v7 = *this;
  v1 = v7;
  v2 = (*(*(*(v1 + 9) + 32 * mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v7, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = v2;
  v6[1] = v3;
  if (*(*mlir::getElementTypeOrSelf(v2) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v7);
    LOBYTE(v8) = 0;
    v9 = 0;
    return mlir::ShapedType::cloneWith(v6, &v8, FunctionType);
  }

  return v2;
}

void *mlir::mpsx::QuantizedMatMulOp::getWeightsDequantizedType(mlir::Operation **this)
{
  v41 = *MEMORY[0x1E69E9840];
  v37 = *this;
  v1 = v37;
  v2 = (*(*(*(v1 + 9) + 32 * mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v37, 4) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v35 = v2;
  v36 = v3;
  if (*(*mlir::getElementTypeOrSelf(v2) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *&v39 = v1;
    ODSOperandIndexAndLength = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v39, 8);
    if ((*(v1 + 46) & 0x80) != 0)
    {
      v5 = *(v1 + 9);
    }

    else
    {
      v5 = 0;
    }

    if (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength != ODSOperandIndexAndLength && *(v5 + 32 * ODSOperandIndexAndLength + 24))
    {
      v6 = (*(*(*(v1 + 9) + 32 * mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v37, 8) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
      }

      else
      {
        v7 = 0;
      }

      v34[0] = v6;
      v34[1] = v7;
      if (!mlir::ElementsAttr::getShapedType(v34))
      {
        goto LABEL_27;
      }

      Shape = mlir::ShapedType::getShape(v34);
      if (v9)
      {
        v10 = 8 * v9;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_27;
      }

LABEL_17:
      if (!mlir::ElementsAttr::getShapedType(&v35))
      {
LABEL_27:
        isSplat = mlir::ElementsAttr::isSplat(&v35);
        v16 = mlir::UnrankedTensorType::get(isSplat);
        v17 = v16;
        if (v16)
        {
          v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        }

        v35 = v17;
        v36 = v16;
        goto LABEL_30;
      }

      v11 = mlir::ShapedType::getShape(&v35);
      if (v12)
      {
        v13 = 8 * v12;
        while (*v11 != 0x8000000000000000)
        {
          ++v11;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

LABEL_22:
      WeightsQuantParamsAxisAttr = mlir::mpsx::QuantizedMatMulOp::getWeightsQuantParamsAxisAttr(&v37);
      if (WeightsQuantParamsAxisAttr)
      {
        mlir::IntegerAttr::getValue(&WeightsQuantParamsAxisAttr, &v39);
        if (DWORD2(v39) > 0x40)
        {
          v14 = *v39;
          MEMORY[0x1AC55A040]();
        }

        else if (DWORD2(v39))
        {
          v14 = (v39 << -BYTE8(v39)) >> -BYTE8(v39);
        }

        else
        {
          v14 = 0;
        }

        v20 = v14 | 0x100000000;
      }

      else
      {
        v20 = 0;
      }

      mlir::ShapedType::getShape(v34);
      if (v21 != 1 && (v20 & 0x100000000) != 0)
      {
        v22 = *(mlir::ShapedType::getShape(v34) + 8 * (v21 - 1));
        if (v22 >= 2)
        {
          if (v20 <= 0)
          {
            mlir::ShapedType::getShape(&v35);
            LODWORD(v20) = v23 + v20;
          }

          v24 = mlir::ShapedType::getShape(&v35);
          v26 = v25;
          *&v39 = v40;
          *(&v39 + 1) = 0x500000000;
          v27 = (8 * v25) >> 3;
          if (v27 < 6)
          {
            v28 = 0;
            v29 = v40;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v40, v27, 8);
            v28 = DWORD2(v39);
            v29 = v39;
          }

          if (v26)
          {
            memcpy(v29 + 8 * v28, v24, 8 * v26);
            v28 = DWORD2(v39);
            v29 = v39;
          }

          v30 = v28 + v26;
          DWORD2(v39) = v28 + v26;
          *(v29 + v20) *= v22;
          v31 = mlir::ElementsAttr::isSplat(&v35);
          v32 = mlir::RankedTensorType::get(v29, v30, v31, 0);
          v33 = v32;
          if (v32)
          {
            v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
          }

          v35 = v33;
          v36 = v32;
          if (v39 != v40)
          {
            free(v39);
          }
        }
      }
    }

LABEL_30:
    FunctionType = mlir::mpsx::ANEOp::getFunctionType(&v37);
    LOBYTE(v39) = 0;
    v40[0] = 0;
    return mlir::ShapedType::cloneWith(&v35, &v39, FunctionType);
  }

  return v2;
}

uint64_t mlir::mpsx::QuantizedMatMulOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v185[4] = *MEMORY[0x1E69E9840];
  *&v166 = a6;
  BYTE8(v166) = 0;
  LOBYTE(v167) = 0;
  *(&v167 + 1) = a9;
  *&v168 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v166);
    if (v167 == 1)
    {
      LOBYTE(v167) = 0;
    }

    mlir::OperationName::OperationName(&v166 + 1, "mpsx.quantized_matmul", 21, Context);
    LOBYTE(v167) = 1;
  }

  *(&v168 + 1) = a4;
  v169 = a5;
  v17 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::QuantizedMatMulOpAdaptor::verify(&v166, v17))
  {
    v24 = mlir::Float32Type::get(this, v18);
LABEL_75:
    v85 = mlir::UnrankedTensorType::get(v24);
    goto LABEL_76;
  }

  *v173 = v166;
  *v174 = v167;
  v175 = v168;
  v176 = v169;
  Value = mlir::AffineMapAttr::getValue(v173);
  v20 = mlir::DictionaryAttr::end(v173);
  v21 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v20 - 16), *(*(v173[1] + 12) + 8));
  if (v22)
  {
    v23 = *(v21 + 1);
  }

  else
  {
    v23 = 0;
  }

  v162[0] = v23;
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v162);
  v162[0] = *(&v175 + 1);
  v162[1] = 0;
  v25 = *(mlir::ValueRange::dereference_iterator(v162, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v25)
  {
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8);
  }

  else
  {
    v26 = 0;
  }

  v183 = v25;
  v184 = v26;
  if (*(*mlir::getElementTypeOrSelf(v25) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v27 = mlir::AffineMapAttr::getValue(v173);
    v28 = mlir::DictionaryAttr::end(v173);
    v29 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v27 + 16), v28, *(*(v173[1] + 12) + 16));
    if (v30)
    {
      v31 = *(v29 + 1);
    }

    else
    {
      v31 = 0;
    }

    v162[0] = v31;
    v32 = mlir::AffineMapAttr::getValue(v162);
    LOBYTE(v162[0]) = 0;
    LOBYTE(v163) = 0;
    v25 = mlir::ShapedType::cloneWith(&v183, v162, v32);
  }

  *v162 = v166;
  v163 = v167;
  v164 = v168;
  v165 = v169;
  v33 = *(mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeights(v162) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v33)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  v183 = v33;
  v184 = v34;
  if (*(*mlir::getElementTypeOrSelf(v33) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    *v173 = *v162;
    *v174 = v163;
    v175 = v164;
    v176 = v165;
    if (mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(v173))
    {
      v35 = (*(mlir::mpsx::QuantizedMatMulOpGenericAdaptor<mlir::ValueRange>::getWeightsPaletteLut(v162) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v35)
      {
        v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v35 + 8);
      }

      else
      {
        v36 = 0;
      }

      v170 = v35;
      v171 = v36;
      if (!mlir::ElementsAttr::getShapedType(&v170))
      {
        goto LABEL_43;
      }

      Shape = mlir::ShapedType::getShape(&v170);
      if (v38)
      {
        v39 = 8 * v38;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_43;
      }

LABEL_31:
      if (!mlir::ElementsAttr::getShapedType(&v183))
      {
LABEL_43:
        isSplat = mlir::ElementsAttr::isSplat(&v183);
        v54 = mlir::UnrankedTensorType::get(isSplat);
        v55 = v54;
        if (v54)
        {
          v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
        }

        v183 = v55;
        v184 = v54;
        goto LABEL_46;
      }

      v40 = mlir::ShapedType::getShape(&v183);
      if (v41)
      {
        v42 = 8 * v41;
        while (*v40 != 0x8000000000000000)
        {
          ++v40;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_43;
      }

LABEL_36:
      WeightsQuantParamsAxis = mlir::mpsx::detail::QuantizedMatMulOpGenericAdaptorBase::getWeightsQuantParamsAxis(v162);
      mlir::ShapedType::getShape(&v170);
      if (v44 != 1 && (WeightsQuantParamsAxis & 0x100000000) != 0)
      {
        v45 = *(mlir::ShapedType::getShape(&v170) + 8 * (v44 - 1));
        if (v45 >= 2)
        {
          if (WeightsQuantParamsAxis <= 0)
          {
            mlir::ShapedType::getShape(&v183);
            LODWORD(WeightsQuantParamsAxis) = v46 + WeightsQuantParamsAxis;
          }

          v47 = mlir::ShapedType::getShape(&v183);
          v49 = v48;
          v50 = v174;
          v173[0] = v174;
          v173[1] = 0x500000000;
          v51 = (8 * v48) >> 3;
          if (v51 < 6)
          {
            v52 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v173, v174, v51, 8);
            v52 = v173[1];
            v50 = v173[0];
          }

          if (v49)
          {
            memcpy(&v50[v52], v47, 8 * v49);
            v52 = v173[1];
            v50 = v173[0];
          }

          v151 = (v52 + v49);
          LODWORD(v173[1]) = v52 + v49;
          v50[WeightsQuantParamsAxis] = (v50[WeightsQuantParamsAxis] * v45);
          v152 = mlir::ElementsAttr::isSplat(&v183);
          v153 = mlir::RankedTensorType::get(v50, v151, v152, 0);
          v154 = v153;
          if (v153)
          {
            v153 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v153 + 8);
          }

          v183 = v154;
          v184 = v153;
          if (v173[0] != v174)
          {
            free(v173[0]);
          }
        }
      }
    }

LABEL_46:
    v56 = mlir::AffineMapAttr::getValue(v162);
    v57 = mlir::DictionaryAttr::end(v162);
    v58 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v56 + 16), v57, *(*(v162[1] + 12) + 16));
    if (v59)
    {
      v60 = *(v58 + 1);
    }

    else
    {
      v60 = 0;
    }

    v173[0] = v60;
    v61 = mlir::AffineMapAttr::getValue(v173);
    LOBYTE(v173[0]) = 0;
    LOBYTE(v174[0]) = 0;
    v33 = mlir::ShapedType::cloneWith(&v183, v173, v61);
  }

  v62 = mlir::AffineMapAttr::getValue(&v166);
  v63 = mlir::DictionaryAttr::end(&v166);
  v64 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v62 + 16), v63, *(*(*(&v166 + 1) + 96) + 16));
  if (v65)
  {
    v66 = *(v64 + 1);
  }

  else
  {
    v66 = 0;
  }

  v173[0] = v66;
  v67 = mlir::AffineMapAttr::getValue(v173);
  v68 = mlir::AffineMapAttr::getValue(&v166);
  v69 = mlir::DictionaryAttr::end(&v166);
  v70 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v68 + 32), v69, *(*(*(&v166 + 1) + 96) + 24));
  if ((v71 & 1) != 0 && (v72 = *(v70 + 1)) != 0)
  {
    if (mlir::BoolAttr::classof(*(v70 + 1)))
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }
  }

  else
  {
    v73 = 0;
  }

  v173[0] = v73;
  v74 = mlir::BoolAttr::getValue(v173);
  v75 = mlir::AffineMapAttr::getValue(&v166);
  v76 = mlir::DictionaryAttr::end(&v166);
  v77 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v75 + 32), v76, *(*(*(&v166 + 1) + 96) + 32));
  if ((v78 & 1) != 0 && (v79 = *(v77 + 1)) != 0)
  {
    if (mlir::BoolAttr::classof(*(v77 + 1)))
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }
  }

  else
  {
    v80 = 0;
  }

  v173[0] = v80;
  v81 = mlir::BoolAttr::getValue(v173);
  if (*(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || ((v82 = v81, (v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8)) == 0) ? (v25 = 0) : (v83 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v25 + 8)), (v161[0] = v25, v161[1] = v83, (v84 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8)) == 0) ? (v33 = 0) : (v84 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v33 + 8)), v160[0] = v33, v160[1] = v84, !(v25 | v33)))
  {
    v24 = v67;
    goto LABEL_75;
  }

  if (*(*v25 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *(*v33 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    mlir::emitError(a2, v173);
    if (v173[0])
    {
      mlir::Diagnostic::append<char const(&)[22],mlir::ShapedType &,char const(&)[3],mlir::ShapedType &>(&v173[1], "invalid input types: ", v161, ", ", v160);
    }

    v88 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v173);
    if (v173[0])
    {
      mlir::InFlightDiagnostic::report(v173);
    }

    if (v182 == 1)
    {
      if (v181 != &v182)
      {
        free(v181);
      }

      v89 = __p;
      if (__p)
      {
        v90 = v180;
        v91 = __p;
        if (v180 != __p)
        {
          do
          {
            v90 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v90 - 1);
          }

          while (v90 != v89);
          v91 = __p;
        }

        v180 = v89;
        operator delete(v91);
      }

      v92 = v177;
      if (v177)
      {
        v93 = v178;
        v94 = v177;
        if (v178 != v177)
        {
          do
          {
            v96 = *--v93;
            v95 = v96;
            *v93 = 0;
            if (v96)
            {
              MEMORY[0x1AC55A040](v95, 0x1000C8077774924);
            }
          }

          while (v93 != v92);
          v94 = v177;
        }

        v178 = v92;
        operator delete(v94);
      }

      if (v174[1] != &v175 + 8)
      {
        free(v174[1]);
      }
    }

    if (!v88)
    {
      return 0;
    }

    v85 = 0;
    goto LABEL_76;
  }

  v170 = v172;
  v171 = 0x400000000;
  v97 = mlir::ShapedType::getShape(v161);
  v99 = v98;
  v100 = mlir::ShapedType::getShape(v160);
  v101 = v99;
  v102 = v100;
  v104 = v103;
  v173[0] = v174;
  v173[1] = 0x400000000;
  v159 = v101;
  v162[0] = &v163;
  v162[1] = 0x400000000;
  if (v101 == 1)
  {
    v105 = *v97;
    v174[0] = 1;
    v174[1] = v105;
    goto LABEL_110;
  }

  if (!v101)
  {
    *v174 = vdupq_n_s64(1uLL);
LABEL_110:
    LODWORD(v173[1]) = 2;
    goto LABEL_111;
  }

  v157 = v100;
  __n = v101;
  v183 = v185;
  v184 = 0x400000000;
  v110 = (8 * v101) >> 3;
  if (v110 < 5)
  {
    v111 = 0;
    v112 = v185;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v185, v110, 8);
    v111 = v184;
    v112 = v183;
  }

  memcpy(&v112[v111], v97, __n * 8);
  LODWORD(v184) = v184 + ((__n * 8) >> 3);
  llvm::SmallVectorImpl<mlir::Value>::operator=(v173, &v183);
  if (v183 != v185)
  {
    free(v183);
  }

  v102 = v157;
  if (v74)
  {
    v120 = v173[0] + 8 * LODWORD(v173[1]);
    *(v120 - 1) = v97[__n - 2];
    *(v120 - 2) = v97[__n - 1];
  }

LABEL_111:
  v106 = v104;
  if (v104 == 1)
  {
    v108 = *v102;
    LODWORD(v162[1]) = 0;
    if (HIDWORD(v162[1]) > 1)
    {
      v109 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v162, &v163, 2uLL, 8);
      v109 = LODWORD(v162[1]);
    }

    v118 = v162[0] + 8 * v109;
    *v118 = v108;
    goto LABEL_125;
  }

  if (!v104)
  {
    LODWORD(v162[1]) = 0;
    if (HIDWORD(v162[1]) > 1)
    {
      v107 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v162, &v163, 2uLL, 8);
      v107 = LODWORD(v162[1]);
    }

    v118 = v162[0] + 8 * v107;
    *v118 = 1;
LABEL_125:
    *(v118 + 1) = 1;
    v119 = LODWORD(v162[1]) + 2;
    LODWORD(v162[1]) += 2;
    goto LABEL_136;
  }

  v113 = v104;
  v183 = v185;
  v184 = 0x400000000;
  v114 = (8 * v104) >> 3;
  if (v114 < 5)
  {
    v116 = 0;
    v117 = v185;
  }

  else
  {
    v115 = v102;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v183, v185, v114, 8);
    v102 = v115;
    v116 = v184;
    v117 = v183;
  }

  v121 = v102;
  memcpy(&v117[v116], v102, 8 * v104);
  LODWORD(v184) = v184 + v104;
  llvm::SmallVectorImpl<mlir::Value>::operator=(v162, &v183);
  if (v183 != v185)
  {
    free(v183);
  }

  v119 = v162[1];
  if (v82)
  {
    v122 = v162[0] + 8 * LODWORD(v162[1]);
    *(v122 - 1) = v121[v113 - 2];
    *(v122 - 2) = v121[v113 - 1];
  }

LABEL_136:
  LODWORD(v171) = 0;
  if (LODWORD(v173[1]) <= v119)
  {
    v123 = 0;
    if (v119)
    {
      v127 = v162[0];
      v128 = 8 * v119;
      do
      {
        v129 = *v127;
        if (v123 >= HIDWORD(v171))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v172, v123 + 1, 8);
          v123 = v171;
        }

        *(v170 + v123) = v129;
        v123 = v171 + 1;
        LODWORD(v171) = v171 + 1;
        ++v127;
        v128 -= 8;
      }

      while (v128);
    }
  }

  else
  {
    v123 = 0;
    v124 = v173[0];
    v125 = 8 * LODWORD(v173[1]);
    do
    {
      v126 = *v124;
      if (v123 >= HIDWORD(v171))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v170, v172, v123 + 1, 8);
        v123 = v171;
      }

      *(v170 + v123) = v126;
      v123 = v171 + 1;
      LODWORD(v171) = v171 + 1;
      ++v124;
      v125 -= 8;
    }

    while (v125);
  }

  v130 = v173[0];
  v131 = LODWORD(v173[1]);
  v132 = v173[0] + 8 * LODWORD(v173[1]);
  v133 = v162[0];
  v134 = LODWORD(v162[1]);
  v135 = v162[0] + 8 * LODWORD(v162[1]);
  v136 = v170;
  v137 = v170 + 8 * v123;
  *(v137 - 1) = *(v135 - 1);
  v138 = v135 - 16;
  *(v137 - 2) = *(v132 - 2);
  v139 = v132 - 16 == v130 || v138 == v133;
  if (v139)
  {
LABEL_168:
    if (v159 <= 1)
    {
      v147 = *(v137 - 1);
      LODWORD(v171) = --v123;
      v136[v123 - 1] = v147;
    }

    if (v106 > 1)
    {
      v148 = 0;
      if (v133 == &v163)
      {
        goto LABEL_173;
      }
    }

    else
    {
      v148 = 0;
      LODWORD(v171) = v123 - 1;
      if (v133 == &v163)
      {
        goto LABEL_173;
      }
    }

    goto LABEL_172;
  }

  v140 = 8 * v131 - 24;
  v141 = &v136[v123 - 3];
  v142 = 8 * v134 - 24;
  while (1)
  {
    v143 = *&v130[v140];
    v144 = *&v133[v142];
    if (v143 == 0x8000000000000000)
    {
      if (v144 <= 1)
      {
        v143 = 0x8000000000000000;
      }

      else
      {
        v143 = *&v133[v142];
      }

      goto LABEL_166;
    }

    if (v144 == 0x8000000000000000)
    {
      if (v143 <= 1)
      {
        v143 = 0x8000000000000000;
      }

      goto LABEL_166;
    }

    if (v143 != v144 && v144 != 1)
    {
      v139 = v143 == 1;
      v143 = *&v133[v142];
      if (!v139)
      {
        break;
      }
    }

LABEL_166:
    *v141-- = v143;
    if (v140)
    {
      v140 -= 8;
      v146 = v142;
      v142 -= 8;
      if (v146)
      {
        continue;
      }
    }

    goto LABEL_168;
  }

  LODWORD(v171) = 0;
  v155 = mlir::emitOptionalError<char const(&)[41]>(a2, v13, "incompatible dimensions");
  v133 = v162[0];
  v148 = !v155;
  if (v162[0] != &v163)
  {
LABEL_172:
    free(v133);
  }

LABEL_173:
  if (v173[0] != v174)
  {
    free(v173[0]);
  }

  if (v148)
  {
    v149 = mlir::emitOptionalError<char const(&)[41]>(a2, v13, "invalid shape");
    v85 = 0;
  }

  else
  {
    v85 = mlir::RankedTensorType::get(v170, v171, v67, 0);
    v149 = 1;
  }

  if (v170 != v172)
  {
    v150 = v85;
    free(v170);
    v85 = v150;
  }

  if (!v149)
  {
    return 0;
  }

LABEL_76:
  v86 = *(a11 + 8);
  if (v86 >= *(a11 + 12))
  {
    v156 = v85;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v86 + 1, 8);
    v85 = v156;
    LODWORD(v86) = *(a11 + 8);
  }

  *(*a11 + 8 * v86) = v85;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::QuantizedMatMulOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v50);
  if (Value != mlir::DictionaryAttr::end(&v50))
  {
    v5 = 0;
    while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 8))
    {
      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
      {
        v5 = *(Value + 1);
      }

      Value = (Value + 16);
      if (Value == mlir::DictionaryAttr::end(&v50))
      {
        goto LABEL_7;
      }
    }

    v15 = *(Value + 1);
    while (1)
    {
      if (Value == mlir::DictionaryAttr::end(&v50))
      {
        v48[0] = "'mpsx.quantized_matmul' op requires attribute 'output_type'";
        v49 = 259;
        mlir::emitError(a2, v48, &v53);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
        if (v53)
        {
          mlir::InFlightDiagnostic::report(&v53);
        }

        if (v64 != 1)
        {
          return v6;
        }

        if (v63 != &v64)
        {
          free(v63);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v62;
          v18 = __p;
          if (v62 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v62 = v16;
          operator delete(v18);
        }

        v10 = v59;
        if (!v59)
        {
          goto LABEL_100;
        }

        v19 = v60;
        v12 = v59;
        if (v60 == v59)
        {
          goto LABEL_99;
        }

        do
        {
          v21 = *--v19;
          v20 = v21;
          *v19 = 0;
          if (v21)
          {
            MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
          }
        }

        while (v19 != v10);
        goto LABEL_98;
      }

      if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
      {
        break;
      }

      Value = (Value + 16);
    }

    v22 = *(Value + 1);
    if (Value == mlir::DictionaryAttr::end(&v50))
    {
      v25 = 0;
      v24 = 0;
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      do
      {
        if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
        {
          v23 = *(Value + 1);
        }

        else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 32))
        {
          v25 = *(Value + 1);
        }

        else if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 40))
        {
          v24 = *(Value + 1);
        }

        Value = (Value + 16);
      }

      while (Value != mlir::DictionaryAttr::end(&v50));
    }

    v47 = v15;
    mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v47);
    if (v26 == 11)
    {
      if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v48[0] = v5, v53 = mlir::AffineMapAttr::getValue(v48), mlir::Type::isSignedInteger(&v53, 32)))
      {
        if (!v24 || *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v48[0] = v24, v53 = mlir::AffineMapAttr::getValue(v48), mlir::Type::isSignedInteger(&v53, 32)))
        {
          if (v22)
          {
            if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
            {
              v27 = "'mpsx.quantized_matmul' op attribute 'output_type' failed to satisfy constraint: any type attribute";
LABEL_115:
              v48[0] = v27;
              v49 = 259;
              mlir::emitError(a2, v48, &v53);
              v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
              return v6;
            }

            v53 = v22;
            mlir::AffineMapAttr::getValue(&v53);
          }

          if (v23 && !mlir::BoolAttr::classof(v23))
          {
            v27 = "'mpsx.quantized_matmul' op attribute 'transpose_lhs' failed to satisfy constraint: BOOL attribute";
          }

          else
          {
            if (!v25 || mlir::BoolAttr::classof(v25))
            {
              return 1;
            }

            v27 = "'mpsx.quantized_matmul' op attribute 'transpose_rhs' failed to satisfy constraint: BOOL attribute";
          }

          goto LABEL_115;
        }

        v48[0] = "'mpsx.quantized_matmul' op attribute 'weights_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
        v49 = 259;
        mlir::emitError(a2, v48, &v53);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
        if (v53)
        {
          mlir::InFlightDiagnostic::report(&v53);
        }

        if (v64 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v54);
        }

        return v6;
      }

      v48[0] = "'mpsx.quantized_matmul' op attribute 'input_quant_params_axis' failed to satisfy constraint: 32-bit signed integer attribute";
      v49 = 259;
      mlir::emitError(a2, v48, &v53);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
      }

      if (v64 != 1)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v62;
        v41 = __p;
        if (v62 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v62 = v39;
        operator delete(v41);
      }

      v10 = v59;
      if (!v59)
      {
        goto LABEL_100;
      }

      v42 = v60;
      v12 = v59;
      if (v60 == v59)
      {
        goto LABEL_99;
      }

      do
      {
        v44 = *--v42;
        v43 = v44;
        *v42 = 0;
        if (v44)
        {
          MEMORY[0x1AC55A040](v43, 0x1000C8077774924);
        }
      }

      while (v42 != v10);
    }

    else
    {
      v28 = v26;
      v48[0] = "'mpsx.quantized_matmul' op 'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
      v49 = 259;
      mlir::emitError(a2, v48, &v53);
      if (v53)
      {
        v51 = 5;
        v52 = v28;
        v29 = &v51;
        v30 = v55;
        if (v56 >= v57)
        {
          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
          {
            v46 = &v51 - v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v30 = v55;
            v29 = (v55 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v29 = &v51;
            v30 = v55;
          }
        }

        v31 = &v30[24 * v56];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v56;
      }

      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
      if (v53)
      {
        mlir::InFlightDiagnostic::report(&v53);
      }

      if ((v64 & 1) == 0)
      {
        return v6;
      }

      if (v63 != &v64)
      {
        free(v63);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v62;
        v35 = __p;
        if (v62 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v62 = v33;
        operator delete(v35);
      }

      v10 = v59;
      if (!v59)
      {
        goto LABEL_100;
      }

      v36 = v60;
      v12 = v59;
      if (v60 == v59)
      {
        goto LABEL_99;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          MEMORY[0x1AC55A040](v37, 0x1000C8077774924);
        }
      }

      while (v36 != v10);
    }

    goto LABEL_98;
  }

LABEL_7:
  v48[0] = "'mpsx.quantized_matmul' op requires attribute 'operandSegmentSizes'";
  v49 = 259;
  mlir::emitError(a2, v48, &v53);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v53);
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
  }

  if (v64 == 1)
  {
    if (v63 != &v64)
    {
      free(v63);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v62;
      v9 = __p;
      if (v62 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v62 = v7;
      operator delete(v9);
    }

    v10 = v59;
    if (!v59)
    {
      goto LABEL_100;
    }

    v11 = v60;
    v12 = v59;
    if (v60 == v59)
    {
LABEL_99:
      v60 = v10;
      operator delete(v12);
LABEL_100:
      if (v55 != v58)
      {
        free(v55);
      }

      return v6;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
LABEL_98:
    v12 = v59;
    goto LABEL_99;
  }

  return v6;
}

uint64_t mlir::mpsx::anonymous namespace::isCompatibleReturnTypesDefaultImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 24);
  if (!v9)
  {
    v14 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  if (v9 != a5)
  {
    v10 = (*(*v9 + 16))(v9);
    v14 = v10;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v14 = v13;
  (*(*v9 + 24))(v9, v13);
  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v10 == v13)
  {
    v18 = v17;
    (*(*v10 + 24))(v10, v17);
  }

  else
  {
    v18 = (*(*v10 + 16))(v10);
  }

LABEL_10:
  {
    v11 = 1;
  }

  else
  {
    if (v14)
    {
      if (v14 == v13)
      {
        v16 = v15;
        (*(*v14 + 24))();
      }

      else
      {
        v16 = (*(*v14 + 16))();
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
    }

    else if (v16)
    {
      (*(*v16 + 40))();
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v14 == v13)
  {
    (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    (*(*v14 + 40))();
  }

  return v11;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v86 = *MEMORY[0x1E69E9840];
  v79 = a6;
  LOBYTE(v80) = 0;
  v81 = 0;
  v82 = a9;
  v83 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v79);
    if (v81 == 1)
    {
      v81 = 0;
    }

    mlir::OperationName::OperationName(&v80, "mpsx.sparse_dense_matmul", 24, Context);
    v81 = 1;
  }

  v84 = a4;
  v85 = a5;
  if (a5 >= 4)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::SparseDenseMatMulOpAdaptor::verify(&v79, v15))
    {
      v77[0] = v78;
      v77[1] = 0x400000000;
      __b = v84;
      v75 = 3;
      __b = mlir::ValueRange::offset_base(&__b, 3);
      v75 = 0;
      v16 = mlir::ValueRange::dereference_iterator(&__b, 0);
      if (mlir::matchConstantWithIntVector<long long>(v16, v77))
      {
        __b = v84;
        v75 = 4;
        __b = mlir::ValueRange::offset_base(&__b, 4);
        v75 = 0;
        v18 = (*(mlir::ValueRange::dereference_iterator(&__b, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        if (v19)
        {
          v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
        }

        else
        {
          v18 = 0;
        }

        v72[0] = v18;
        v72[1] = v19;
        if (mlir::ElementsAttr::getShapedType(v72))
        {
          if (mlir::ElementsAttr::getShapedType(v72))
          {
            Shape = mlir::ShapedType::getShape(v72);
            if (!v28)
            {
LABEL_24:
              v30 = *v77[0];
              v31 = *(v77[0] + 1);
              Value = mlir::AffineMapAttr::getValue(&v79);
              v33 = mlir::DictionaryAttr::end(&v79);
              v34 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), v33, *(*(v80 + 96) + 8));
              if ((v35 & 1) != 0 && (v36 = *(v34 + 1)) != 0)
              {
                if (mlir::BoolAttr::classof(*(v34 + 1)))
                {
                  v37 = v36;
                }

                else
                {
                  v37 = 0;
                }
              }

              else
              {
                v37 = 0;
              }

              __b = v37;
              if (mlir::BoolAttr::getValue(&__b))
              {
                v30 = v31;
              }

              mlir::ShapedType::getShape(v72);
              v49 = *(mlir::ShapedType::getShape(v72) + 8 * (v48 - 2));
              mlir::ShapedType::getShape(v72);
              v51 = *(mlir::ShapedType::getShape(v72) + 8 * (v50 - 1));
              v52 = mlir::AffineMapAttr::getValue(&v79);
              v53 = mlir::DictionaryAttr::end(&v79);
              v54 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((v52 + 16), v53, *(*(v80 + 96) + 16));
              if ((v55 & 1) != 0 && (v56 = *(v54 + 1)) != 0)
              {
                if (mlir::BoolAttr::classof(*(v54 + 1)))
                {
                  v57 = v56;
                }

                else
                {
                  v57 = 0;
                }
              }

              else
              {
                v57 = 0;
              }

              __b = v57;
              if (!mlir::BoolAttr::getValue(&__b))
              {
                v49 = v51;
              }

              __b = v76;
              v75 = 0x400000000;
              v58 = mlir::ShapedType::getShape(v72);
              v60 = v75;
              if (&v58[v59 - 2] != v58)
              {
                v61 = 8 * v59 - 16;
                do
                {
                  v62 = *v58;
                  if (v60 >= HIDWORD(v75))
                  {
                    v71 = v58;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v76, v60 + 1, 8);
                    v58 = v71;
                    v60 = v75;
                  }

                  *(__b + v60) = v62;
                  v60 = v75 + 1;
                  LODWORD(v75) = v75 + 1;
                  ++v58;
                  v61 -= 8;
                }

                while (v61);
              }

              __src[0] = v30;
              __src[1] = v49;
              llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&__b, __b + 8 * v60, __src, &__b);
              v63 = __b;
              v64 = v75;
              ElementTypeOrSelf = mlir::getElementTypeOrSelf(v72[0]);
              v46 = v63;
              v47 = v64;
LABEL_60:
              v65 = mlir::RankedTensorType::get(v46, v47, ElementTypeOrSelf, 0);
              v66 = *(a11 + 8);
              if (v66 >= *(a11 + 12))
              {
                v70 = v65;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v66 + 1, 8);
                v65 = v70;
                LODWORD(v66) = *(a11 + 8);
              }

              *(*a11 + 8 * v66) = v65;
              ++*(a11 + 8);
              if (__b != v76)
              {
                free(__b);
              }

              goto LABEL_35;
            }

            v29 = 8 * v28;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_24;
              }
            }
          }

          mlir::ShapedType::getShape(v72);
          v43 = v42;
          __b = v76;
          HIDWORD(v75) = 6;
          if (v42 < 7)
          {
            if (v42)
            {
              memset_pattern16(v76, &unk_1A75D94C0, 8 * v42);
            }

            v44 = v76;
          }

          else
          {
            LODWORD(v75) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v76, v42, 8);
            v44 = __b;
            memset_pattern16(__b, &unk_1A75D94C0, 8 * v43);
          }

          LODWORD(v75) = v43;
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v72[0]);
          v46 = v44;
          v47 = v43;
          goto LABEL_60;
        }

        v38 = mlir::getElementTypeOrSelf(v72[0]);
        if (!v38)
        {
          v38 = mlir::Float32Type::get(this, v39);
        }

        v40 = mlir::UnrankedTensorType::get(v38);
        v41 = *(a11 + 8);
        if (v41 >= *(a11 + 12))
        {
          v69 = v40;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v41 + 1, 8);
          v40 = v69;
          v41 = *(a11 + 8);
        }

        *(*a11 + 8 * v41) = v40;
      }

      else
      {
        v24 = mlir::Float32Type::get(this, v17);
        v25 = mlir::UnrankedTensorType::get(v24);
        v26 = *(a11 + 8);
        if (v26 >= *(a11 + 12))
        {
          v68 = v25;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
          v25 = v68;
          LODWORD(v26) = *(a11 + 8);
        }

        *(*a11 + 8 * v26) = v25;
      }

      ++*(a11 + 8);
LABEL_35:
      if (v77[0] != v78)
      {
        free(v77[0]);
      }

      return 1;
    }
  }

  v20 = mlir::Float32Type::get(this, a2);
  v21 = mlir::UnrankedTensorType::get(v20);
  v22 = *(a11 + 8);
  if (v22 >= *(a11 + 12))
  {
    v67 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v22 + 1, 8);
    v21 = v67;
    LODWORD(v22) = *(a11 + 8);
  }

  *(*a11 + 8 * v22) = v21;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::SparseDenseMatMulOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v38 = *a1;
  for (i = mlir::AffineMapAttr::getValue(&v38); ; i = (i + 16))
  {
    if (i == mlir::DictionaryAttr::end(&v38))
    {
      v36[0] = "'mpsx.sparse_dense_matmul' op requires attribute 'storage_type'";
      v37 = 259;
      mlir::emitError(a2, v36, v39);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
      if (v39[0])
      {
        mlir::InFlightDiagnostic::report(v39);
      }

      if (v47 != 1)
      {
        return v5;
      }

      if (v46 != &v47)
      {
        free(v46);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v45;
        v8 = __p;
        if (v45 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v45 = v6;
        operator delete(v8);
      }

      v9 = v42;
      if (!v42)
      {
        goto LABEL_85;
      }

      v10 = v43;
      v11 = v42;
      if (v43 == v42)
      {
        goto LABEL_84;
      }

      do
      {
        v13 = *--v10;
        v12 = v13;
        *v10 = 0;
        if (v13)
        {
          MEMORY[0x1AC55A040](v12, 0x1000C8077774924);
        }
      }

      while (v10 != v9);
LABEL_83:
      v11 = v42;
      goto LABEL_84;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == **(a1[1] + 96))
    {
      break;
    }
  }

  v14 = *(i + 1);
  if (i == mlir::DictionaryAttr::end(&v38))
  {
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 0;
  do
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 8))
    {
      v16 = *(i + 1);
    }

    else if (ZinCompressedFootprintInfo::GetCompressedBytes(i) == *(*(a1[1] + 96) + 16))
    {
      v15 = *(i + 1);
    }

    i = (i + 16);
  }

  while (i != mlir::DictionaryAttr::end(&v38));
  if (v16 && !mlir::BoolAttr::classof(v16))
  {
    v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'transpose_lhs' failed to satisfy constraint: BOOL attribute";
    v37 = 259;
    mlir::emitError(a2, v36, v39);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v5;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v45;
      v25 = __p;
      if (v45 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v45 = v23;
      operator delete(v25);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_85;
    }

    v26 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_84;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v9);
    goto LABEL_83;
  }

  if (v15 && !mlir::BoolAttr::classof(v15))
  {
    v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'transpose_rhs' failed to satisfy constraint: BOOL attribute";
    v37 = 259;
    mlir::emitError(a2, v36, v39);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v5;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v45;
      v31 = __p;
      if (v45 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v45 = v29;
      operator delete(v31);
    }

    v9 = v42;
    if (!v42)
    {
      goto LABEL_85;
    }

    v32 = v43;
    v11 = v42;
    if (v43 == v42)
    {
      goto LABEL_84;
    }

    do
    {
      v34 = *--v32;
      v33 = v34;
      *v32 = 0;
      if (v34)
      {
        MEMORY[0x1AC55A040](v33, 0x1000C8077774924);
      }
    }

    while (v32 != v9);
    goto LABEL_83;
  }

LABEL_32:
  if (!v14 || *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    return 1;
  }

  v36[0] = "'mpsx.sparse_dense_matmul' op attribute 'storage_type' failed to satisfy constraint: valid SparseTensorStorage";
  v37 = 259;
  mlir::emitError(a2, v36, v39);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v9 = v42;
    if (v42)
    {
      v20 = v43;
      v11 = v42;
      if (v43 != v42)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x1AC55A040](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v9);
        goto LABEL_83;
      }

LABEL_84:
      v43 = v9;
      operator delete(v11);
    }

LABEL_85:
    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v5;
}

uint64_t mlir::mpsx::anonymous namespace::defaultInferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, mlir::Float32Type *this)
{
  if (this)
  {
    v4 = this;
  }

  else
  {
    v4 = mlir::Float32Type::get(a1, a2);
  }

  v5 = mlir::UnrankedTensorType::get(v4);
  v6 = *(a2 + 2);
  if (v6 >= *(a2 + 3))
  {
    v8 = v5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v6 + 1, 8);
    v5 = v8;
    v6 = *(a2 + 2);
  }

  *(*a2 + 8 * v6) = v5;
  ++*(a2 + 2);
  return 1;
}

BOOL mlir::mpsx::SparseDenseMatMulOp::verify(mlir::Operation **this)
{
  v39 = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v27 = mlir::getElementTypeOrSelf((*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (ElementTypeOrSelf == v27)
  {
    v29[0] = &v30;
    v29[1] = 0x600000000;
    if (mlir::matchConstantWithIntVector<long long>(*(*(*this + 9) + 120), v29))
    {
      v2 = *(*this + 9);
      v3 = v2[3];
      v4 = v2[7];
      v5 = v2[11];
      StorageType = mlir::mpsx::SparseDenseMatMulOp::getStorageType(this);
      v7 = *v29[0];
      v8 = *(v29[0] + 1);
      v20[0] = this;
      v9 = mlir::mps::verifySparseTensorHelper(v3, v4, v5, StorageType, v7, v8, llvm::function_ref<mlir::InFlightDiagnostic ()(llvm::Twine const&)>::callback_fn<mlir::mpsx::SparseDenseMatMulOp::verify(void)::$_0>, v20);
    }

    else
    {
      v9 = 1;
    }

    v18 = v29[0];
    if (v29[0] != &v30)
    {
LABEL_22:
      free(v18);
    }
  }

  else
  {
    v20[0] = "failed: expected same element type between the sparse and the dense matrix, but got {0} and {1}";
    v20[1] = 95;
    v20[2] = v24;
    v20[3] = 2;
    v21 = 1;
    v22[0] = &unk_1F1A16390;
    v22[1] = &ElementTypeOrSelf;
    v23[0] = &unk_1F1A16390;
    v23[1] = &v27;
    v24[0] = v22;
    v24[1] = v23;
    v26 = 263;
    v25 = v20;
    mlir::OpState::emitOpError(this, &v25, v29);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v36;
        v12 = __p;
        if (v36 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v36 = v10;
        operator delete(v12);
      }

      v13 = v33;
      if (v33)
      {
        v14 = v34;
        v15 = v33;
        if (v34 != v33)
        {
          do
          {
            v17 = *--v14;
            v16 = v17;
            *v14 = 0;
            if (v17)
            {
              MEMORY[0x1AC55A040](v16, 0x1000C8077774924);
            }
          }

          while (v14 != v13);
          v15 = v33;
        }

        v34 = v13;
        operator delete(v15);
      }

      v18 = v31;
      if (v31 != &v32)
      {
        goto LABEL_22;
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::SparseDenseMatMulOp::getStorageType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::getAxis(uint64_t a1, char a2, char *a3, char *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  v24 = a4;
  v25 = &v26;
  v22 = a3;
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v25, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<long long>(v26, v27);
  v22 = SingleInt;
  v23 = v11;
  result = 1;
  if (v11)
  {
    if ((*a5 = SingleInt, *(a5 + 8) = 1, SingleInt < 0) && (SingleInt += a4, *a5 = SingleInt, SingleInt < 0) || SingleInt >= a4)
    {
      if (a2)
      {
        mlir::emitError(a1, &v26);
        if (v26)
        {
          mlir::Diagnostic::append<char const(&)[23],long long &,char const(&)[47],char const(&)[9],long long &>(&v27, "invalid axis tensor: [", &v22, "], axis must be in range -rank <= axis < rank,", " rank = ", &v24);
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
        v13 = result;
        if (v26)
        {
          mlir::InFlightDiagnostic::report(&v26);
          result = v13;
        }

        if (v35 == 1)
        {
          if (v34 != &v35)
          {
            free(v34);
            result = v13;
          }

          v14 = __p;
          if (__p)
          {
            v15 = v33;
            v16 = __p;
            if (v33 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v33 = v14;
            operator delete(v16);
            result = v13;
          }

          v17 = v30;
          if (v30)
          {
            v18 = v31;
            v19 = v30;
            if (v31 != v30)
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
              v19 = v30;
            }

            v31 = v17;
            operator delete(v19);
            result = v13;
          }

          if (v28 != &v29)
          {
            free(v28);
            return v13;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedGatherOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = a3;
  v68[2] = *MEMORY[0x1E69E9840];
  v68[0] = a4;
  v68[1] = a5;
  v61 = a6;
  LOBYTE(v62) = 0;
  v63 = 0;
  v64 = a9;
  v65 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v61);
    if (v63 == 1)
    {
      v63 = 0;
    }

    mlir::OperationName::OperationName(&v62, "mpsx.quantized_gather", 21, Context);
    v63 = 1;
  }

  v66 = a4;
  v67 = a5;
  if (a5 < 4 || (v17 = mlir::UnknownLoc::get(this, a2), !mlir::mpsx::QuantizedGatherOpAdaptor::verify(&v61, v17)))
  {
    v20 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v20);
    v22 = *(a11 + 8);
    if (v22 >= *(a11 + 12))
    {
      v50 = v21;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v22 + 1, 8);
      v21 = v50;
      LODWORD(v22) = *(a11 + 8);
    }

    *(*a11 + 8 * v22) = v21;
    goto LABEL_12;
  }

  v18 = (*(mlir::ValueRange::dereference_iterator(v68, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  }

  else
  {
    v18 = 0;
  }

  v57[0] = v18;
  v57[1] = v19;
  v24 = (*(mlir::ValueRange::dereference_iterator(v68, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8))
  {
    v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    v55 = v24;
    v56 = v25;
    if (!v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = 0;
    v55 = 0;
    v56 = 0;
    if (!v18)
    {
LABEL_21:
      v31 = mlir::ValueRange::dereference_iterator(v68, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
      if (!ElementTypeOrSelf)
      {
        ElementTypeOrSelf = mlir::Float32Type::get(this, v33);
      }

      v34 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
      v35 = *(a11 + 8);
      if (v35 >= *(a11 + 12))
      {
        v51 = v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v35 + 1, 8);
        v34 = v51;
        v35 = *(a11 + 8);
      }

      *(*a11 + 8 * v35) = v34;
LABEL_12:
      ++*(a11 + 8);
      return 1;
    }
  }

  if (!v24)
  {
    goto LABEL_21;
  }

  Value = mlir::AffineMapAttr::getValue(&v61);
  v27 = mlir::DictionaryAttr::end(&v61);
  v28 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v27 - 16), *(*(v62 + 96) + 16));
  if (v29)
  {
    v30 = *(v28 + 1);
  }

  else
  {
    v30 = 0;
  }

  v54 = v30;
  v36 = mlir::AffineMapAttr::getValue(&v54);
  v37 = mlir::getElementTypeOrSelf(v36);
  v38 = mlir::UnrankedTensorType::get(v37);
  if (!mlir::ElementsAttr::getShapedType(v57) || !mlir::ElementsAttr::getShapedType(&v55))
  {
    goto LABEL_36;
  }

  mlir::ShapedType::getShape(v57);
  v40 = v39;
  LOBYTE(v52) = 0;
  v53 = 0;
  v41 = mlir::ValueRange::dereference_iterator(v68, 2);
  if (mlir::mpsx::getAxis(a2, v13, v41, v40, &v52))
  {
    if (v53 != 1)
    {
      goto LABEL_36;
    }

    BatchDims = mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase::getBatchDims(&v61);
    v58 = v60;
    v59 = 0x400000000;
    Shape = mlir::ShapedType::getShape(v57);
    v45 = v44;
    v46 = mlir::ShapedType::getShape(&v55);
    if (v48)
    {
      v38 = mlir::RankedTensorType::get(v58, v59, v37, 0);
    }

    if (v58 != v60)
    {
      free(v58);
    }

    if (v48)
    {
LABEL_36:
      v49 = *(a11 + 8);
      if (v49 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v49 + 1, 8);
        LODWORD(v49) = *(a11 + 8);
      }

      *(*a11 + 8 * v49) = v38;
      goto LABEL_12;
    }
  }

  return 0;
}

BOOL mlir::mpsx::QuantizedGatherOpAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v47 = *a1;
  Value = mlir::AffineMapAttr::getValue(&v47);
  if (Value == mlir::DictionaryAttr::end(&v47))
  {
LABEL_7:
    v45[0] = "'mpsx.quantized_gather' op requires attribute 'batch_dims'";
    v46 = 259;
    mlir::emitError(a2, v45, &v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
    }

    if (v61 != 1)
    {
      return v6;
    }

    if (v60 != &v61)
    {
      free(v60);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v59;
      v9 = __p;
      if (v59 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v59 = v7;
      operator delete(v9);
    }

    v10 = v56;
    if (v56)
    {
      v11 = v57;
      v12 = v56;
      if (v57 != v56)
      {
        do
        {
          v14 = *--v11;
          v13 = v14;
          *v11 = 0;
          if (v14)
          {
            MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
          }
        }

        while (v11 != v10);
        goto LABEL_89;
      }

      goto LABEL_90;
    }

    goto LABEL_91;
  }

  v5 = 0;
  while (ZinCompressedFootprintInfo::GetCompressedBytes(Value) != *(*(a1[1] + 96) + 8))
  {
    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == **(a1[1] + 96))
    {
      v5 = *(Value + 1);
    }

    Value = (Value + 16);
    if (Value == mlir::DictionaryAttr::end(&v47))
    {
      goto LABEL_7;
    }
  }

  v15 = *(Value + 1);
  while (1)
  {
    if (Value == mlir::DictionaryAttr::end(&v47))
    {
      v45[0] = "'mpsx.quantized_gather' op requires attribute 'dtype'";
      v46 = 259;
      mlir::emitError(a2, v45, &v50);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
      if (v50)
      {
        mlir::InFlightDiagnostic::report(&v50);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v16 = __p;
        if (__p)
        {
          v17 = v59;
          v18 = __p;
          if (v59 != __p)
          {
            do
            {
              v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
            }

            while (v17 != v16);
            v18 = __p;
          }

          v59 = v16;
          operator delete(v18);
        }

        v10 = v56;
        if (v56)
        {
          v19 = v57;
          v12 = v56;
          if (v57 != v56)
          {
            do
            {
              v21 = *--v19;
              v20 = v21;
              *v19 = 0;
              if (v21)
              {
                MEMORY[0x1AC55A040](v20, 0x1000C8077774924);
              }
            }

            while (v19 != v10);
            goto LABEL_89;
          }

          goto LABEL_90;
        }

LABEL_91:
        if (v52 != v55)
        {
          free(v52);
        }

        return v6;
      }

      return v6;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 16))
    {
      break;
    }

    Value = (Value + 16);
  }

  v22 = *(Value + 1);
  while (1)
  {
    if (Value == mlir::DictionaryAttr::end(&v47))
    {
      v45[0] = "'mpsx.quantized_gather' op requires attribute 'operandSegmentSizes'";
      v46 = 259;
      mlir::emitError(a2, v45, &v50);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
      if (v50)
      {
        mlir::InFlightDiagnostic::report(&v50);
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
        }

        v23 = __p;
        if (__p)
        {
          v24 = v59;
          v25 = __p;
          if (v59 != __p)
          {
            do
            {
              v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
            }

            while (v24 != v23);
            v25 = __p;
          }

          v59 = v23;
          operator delete(v25);
        }

        v10 = v56;
        if (v56)
        {
          v26 = v57;
          v12 = v56;
          if (v57 == v56)
          {
            goto LABEL_90;
          }

          do
          {
            v28 = *--v26;
            v27 = v28;
            *v26 = 0;
            if (v28)
            {
              MEMORY[0x1AC55A040](v27, 0x1000C8077774924);
            }
          }

          while (v26 != v10);
          goto LABEL_89;
        }

        goto LABEL_91;
      }

      return v6;
    }

    if (ZinCompressedFootprintInfo::GetCompressedBytes(Value) == *(*(a1[1] + 96) + 24))
    {
      break;
    }

    Value = (Value + 16);
  }

  v44 = *(Value + 1);
  mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v44);
  if (v29 == 6)
  {
    if (v22)
    {
      if (*(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v45[0] = "'mpsx.quantized_gather' op attribute 'dtype' failed to satisfy constraint: any type attribute";
        v46 = 259;
        mlir::emitError(a2, v45, &v50);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
        if (v50)
        {
          mlir::InFlightDiagnostic::report(&v50);
        }

        if (v61 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v51);
        }

        return v6;
      }

      v50 = v22;
      mlir::AffineMapAttr::getValue(&v50);
    }

    if (!v15 || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v45[0] = v15, v50 = mlir::AffineMapAttr::getValue(v45), mlir::Type::isUnsignedInteger(&v50, 32)))
    {
      if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        return 1;
      }

      v42 = "'mpsx.quantized_gather' op attribute 'allow_negative_indices' failed to satisfy constraint: unit attribute";
    }

    else
    {
      v42 = "'mpsx.quantized_gather' op attribute 'batch_dims' failed to satisfy constraint: 32-bit unsigned integer attribute";
    }

    v45[0] = v42;
    v46 = 259;
    mlir::emitError(a2, v45, &v50);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
    return v6;
  }

  v30 = v29;
  v45[0] = "'mpsx.quantized_gather' op 'operandSegmentSizes' attribute for specifying operand segments must have 6 elements, but got ";
  v46 = 259;
  mlir::emitError(a2, v45, &v50);
  if (v50)
  {
    v48 = 5;
    v49 = v30;
    v31 = &v48;
    v32 = v52;
    if (v53 >= v54)
    {
      if (v52 <= &v48 && v52 + 24 * v53 > &v48)
      {
        v43 = &v48 - v52;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v32 = v52;
        v31 = (v52 + v43);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
        v31 = &v48;
        v32 = v52;
      }
    }

    v33 = &v32[24 * v53];
    v34 = *v31;
    *(v33 + 2) = *(v31 + 2);
    *v33 = v34;
    ++v53;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
  }

  if (v61)
  {
    if (v60 != &v61)
    {
      free(v60);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v59;
      v37 = __p;
      if (v59 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v59 = v35;
      operator delete(v37);
    }

    v10 = v56;
    if (v56)
    {
      v38 = v57;
      v12 = v56;
      if (v57 == v56)
      {
        goto LABEL_90;
      }

      do
      {
        v40 = *--v38;
        v39 = v40;
        *v38 = 0;
        if (v40)
        {
          MEMORY[0x1AC55A040](v39, 0x1000C8077774924);
        }
      }

      while (v38 != v10);
LABEL_89:
      v12 = v56;
LABEL_90:
      v57 = v10;
      operator delete(v12);
    }

    goto LABEL_91;
  }

  return v6;
}

uint64_t *mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase::getBatchDims(mlir::mpsx::detail::QuantizedGatherOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 - 32), *(*(*(this + 1) + 96) + 8));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &v9);
  if (v10 <= 0x40)
  {
    return v9;
  }

  v7 = *v9;
  MEMORY[0x1AC55A040]();
  return v7;
}

BOOL mlir::mpsx::anonymous namespace::inferQuantizedGatherShape(uint64_t a1, char a2, uint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, char *a7, unsigned int a8, uint64_t a9)
{
  v105 = *MEMORY[0x1E69E9840];
  v94 = a7;
  v93 = a8;
  v9 = a8;
  v10 = a4 - a8;
  if (a4 <= a8 || a6 < a8)
  {
    if (a2)
    {
      mlir::emitError(a1, &v95);
      if (v95)
      {
        mlir::Diagnostic::append<char const(&)[27],unsigned int &,char const(&)[47]>(v96, "invalid batch dimensions: ", &v93, ", must be less than ranks of all input tensors");
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v13 = v101;
        if (v101)
        {
          v14 = v102;
          v15 = v101;
          if (v102 != v101)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = v101;
          }

          v102 = v13;
          operator delete(v15);
        }

        v16 = v99;
        if (!v99)
        {
          goto LABEL_77;
        }

        v17 = v100;
        v18 = v99;
        if (v100 == v99)
        {
LABEL_76:
          v100 = v16;
          operator delete(v18);
LABEL_77:
          if (v97 != &v98)
          {
            free(v97);
          }

          return v12;
        }

        do
        {
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x1AC55A040](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
LABEL_75:
        v18 = v99;
        goto LABEL_76;
      }

      return v12;
    }

    return 0;
  }

  v21 = &a7[-a8];
  if (a7 >= a8)
  {
    v28 = a6 - a8;
    v94 = &a7[-a8];
    v29 = (v10 - 1);
    if (v10 - 1 + v28 < 0)
    {
      if (a2)
      {
        mlir::emitError(a1, &v95);
        if (v95)
        {
          mlir::Diagnostic::append<char const(&)[57],char const(&)[5]>(v96, "Rank of destination array must be greater than or equal ", "to 0");
        }

        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
        if (v95)
        {
          mlir::InFlightDiagnostic::report(&v95);
        }

        if (v104 == 1)
        {
          if (v103 != &v104)
          {
            free(v103);
          }

          v44 = v101;
          if (v101)
          {
            v45 = v102;
            v46 = v101;
            if (v102 != v101)
            {
              do
              {
                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
              }

              while (v45 != v44);
              v46 = v101;
            }

            v102 = v44;
            operator delete(v46);
          }

          v16 = v99;
          if (!v99)
          {
            goto LABEL_77;
          }

          v47 = v100;
          v18 = v99;
          if (v100 == v99)
          {
            goto LABEL_76;
          }

          do
          {
            v49 = *--v47;
            v48 = v49;
            *v47 = 0;
            if (v49)
            {
              MEMORY[0x1AC55A040](v48, 0x1000C8077774924);
            }
          }

          while (v47 != v16);
          goto LABEL_75;
        }

        return v12;
      }

      return 0;
    }

    v32 = &v29[a6];
    v33 = *(a9 + 8);
    if (&v29[a6] != v33)
    {
      if (&v29[a6] >= v33)
      {
        v91 = a7;
        v92 = a4;
        v90 = a8;
        if (v32 > *(a9 + 12))
        {
          v34 = a6;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a9, (a9 + 16), &v29[a6], 8);
          a7 = v91;
          a4 = v92;
          a6 = v34;
          a8 = v90;
          v33 = *(a9 + 8);
        }

        if (v32 != v33)
        {
          v35 = a6;
          bzero((*a9 + 8 * v33), 8 * (v32 - v33));
          a7 = v91;
          a4 = v92;
          a6 = v35;
          a8 = v90;
        }
      }

      *(a9 + 8) = v32;
      v33 = v32;
    }

    v36 = &a3[a4];
    v37 = *a9;
    v38 = *a9 + 8 * v33;
    v39 = (v21 - v29);
    if (v21 != v29)
    {
      v40 = 8 * a4 - 16;
      v41 = v40 - 8 * a7;
      if (v41 < 0x58)
      {
        v42 = &a3[a4];
        v43 = &v37[v33];
LABEL_83:
        v57 = v43 - 1;
        do
        {
          v58 = *--v42;
          *v57-- = v58;
        }

        while (v42 != &v36[v39]);
        goto LABEL_85;
      }

      v50 = &v37[v33];
      v42 = &a3[a4];
      v43 = v50;
      if ((v36 - v50) < 0x20)
      {
        goto LABEL_83;
      }

      v51 = (v41 >> 3) + 1;
      v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
      v42 = &v36[v52 / 0xFFFFFFFFFFFFFFF8];
      v43 = (v38 - v52);
      v53 = (a3 + v40);
      v54 = v50 - 2;
      v55 = v51 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 -= 2;
        v54 -= 4;
        v55 -= 4;
      }

      while (v55);
      if (v51 != (v51 & 0x3FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_83;
      }
    }

LABEL_85:
    if (a6 != v9)
    {
      v59 = &a5[a6];
      v60 = v38 + 8 * v39;
      v61 = 8 * a6 - 8 * v9 - 8;
      if (v61 >= 0x98)
      {
        v63 = &a7[v33];
        v62 = &a5[a6];
        if (v59 + 8 * a4 - &v37[v63] - 8 >= 0x20)
        {
          v64 = (v61 >> 3) + 1;
          v65 = 8 * (v64 & 0x3FFFFFFFFFFFFFFCLL);
          v62 = &v59[v65 / 0xFFFFFFFFFFFFFFF8];
          v60 -= v65;
          v66 = &a5[a6 - 2];
          v67 = (v37 + v63 * 8 - 8 * a4 - 8);
          v68 = v64 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v69 = *v66;
            *(v67 - 1) = *(v66 - 1);
            *v67 = v69;
            v66 -= 4;
            v67 -= 2;
            v68 -= 4;
          }

          while (v68);
          if (v64 == (v64 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v62 = &a5[a6];
      }

      v70 = &v59[-v28];
      v71 = (v60 - 8);
      do
      {
        v72 = *--v62;
        *v71-- = v72;
      }

      while (v62 != v70);
    }

LABEL_94:
    if (a7 != v9)
    {
      v73 = &v21[-v10 - v28];
      v74 = v38 + 8 * v73 + 8;
      v75 = &v36[&v21[-v10]];
      v76 = 8 * a7 - 8 * v9 - 8;
      if (v76 < 0x88)
      {
        goto LABEL_100;
      }

      if ((&a3[a6 + a4] - &v37[&v9[v33]] - 8) < 0x20)
      {
        goto LABEL_100;
      }

      v77 = (v76 >> 3) + 1;
      v78 = 8 * (v77 & 0x3FFFFFFFFFFFFFFCLL);
      v75 = (v75 - v78);
      v74 -= v78;
      v79 = &a3[a7 - 2];
      v80 = &v37[v33 - 1 + v73];
      v81 = v77 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v82 = *v79;
        *(v80 - 1) = *(v79 - 1);
        *v80 = v82;
        v79 -= 4;
        v80 -= 4;
        v81 -= 4;
      }

      while (v81);
      if (v77 != (v77 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_100:
        v83 = &v36[-v10];
        v84 = (v74 - 8);
        do
        {
          v85 = *--v75;
          *v84-- = v85;
        }

        while (v75 != v83);
      }
    }

    if (a8)
    {
      v86 = 8 * v9;
      do
      {
        v87 = *a5++;
        v95 = v87;
        v88 = *a3++;
        v96[0] = v88;
        *v37++ = mlir::mps::mergeDynamicDims(&v95, 2);
        v86 -= 8;
      }

      while (v86);
    }

    return 1;
  }

  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v95);
  if (v95)
  {
    mlir::Diagnostic::append<char const(&)[39],char const(&)[19],long long &,char const(&)[4],unsigned int &>(v96, "Axis must be greater than or equal to ", "batch dimensions, ", &v94, " < ", &v93);
  }

  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v22 = v101;
    if (v101)
    {
      v23 = v102;
      v24 = v101;
      if (v102 != v101)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = v101;
      }

      v102 = v22;
      operator delete(v24);
    }

    v16 = v99;
    if (!v99)
    {
      goto LABEL_77;
    }

    v25 = v100;
    v18 = v99;
    if (v100 == v99)
    {
      goto LABEL_76;
    }

    do
    {
      v27 = *--v25;
      v26 = v27;
      *v25 = 0;
      if (v27)
      {
        MEMORY[0x1AC55A040](v26, 0x1000C8077774924);
      }
    }

    while (v25 != v16);
    goto LABEL_75;
  }

  return v12;
}