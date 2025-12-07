__n128 mlir::InFlightDiagnostic::operator<<<mlir::Type &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = v10;
    mlir::DiagnosticArgument::DiagnosticArgument(v10, *a2);
    v4 = a1;
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= v10 && v5 + 24 * v6 > v10)
      {
        v9 = &v10[-v5];
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = &v9[v5];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = v10;
      }
    }

    v7 = (v5 + 24 * *(v4 + 32));
    result = *v2;
    v7[1].n128_u64[0] = v2[1].n128_u64[0];
    *v7 = result;
    ++*(v4 + 32);
  }

  return result;
}

void mlir::InFlightDiagnostic::~InFlightDiagnostic(mlir::InFlightDiagnostic *this)
{
  if (*this)
  {
    mlir::InFlightDiagnostic::report(this);
  }

  if (*(this + 200) == 1)
  {
    mlir::Diagnostic::~Diagnostic((this + 8));
  }
}

uint64_t mlir::arith::ConstantOp::isBuildableWith(uint64_t *a1, uint64_t a2)
{
  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a1);
  v19[0] = result;
  v19[1] = v5;
  if (!result)
  {
    return result;
  }

  if (mlir::FunctionOpInterface::getFunctionType(v19) != a2)
  {
    return 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = a2;
    if (mlir::IntegerType::getSignedness(&v18))
    {
      return 0;
    }
  }

  v6 = *a1;
  v7 = *(v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    return 1;
  }

  {
    v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v10 = *(v6 + 8);
    v11 = *(v6 + 16);
    if (v11)
    {
      goto LABEL_13;
    }

    return 0;
  }

  mlir::arith::ConstantOp::verify();
  v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  if (!v11)
  {
    return 0;
  }

LABEL_13:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    return 0;
  }

  return v12[1] != 0;
}

ZinIrHalH13g *mlir::arith::ConstantOp::materialize(mlir::OpBuilder *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!mlir::arith::ConstantOp::isBuildableWith(a2, a3))
  {
    return 0;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v7 = *a2;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v7;
    mlir::arith::ConstantOp::materialize();
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v19 + 8);
    v10 = *(v19 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v18 = v11[1];
    goto LABEL_17;
  }

LABEL_16:
  v18 = 0;
LABEL_17:
  v20[0] = a2;
  v20[1] = v18;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(a1, a4, v20);
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
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
  mlir::arith::ConstantOp::build(a1, v15, *a3, a3[1]);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::arith::ConstantIntOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IntegerType = mlir::Builder::getIntegerType(a1, a4);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a3);
  if (!IntegerAttr)
  {
    goto LABEL_14;
  }

  v9 = *IntegerAttr;
  {
    v19 = IntegerAttr;
    mlir::arith::ConstantOp::materialize();
    IntegerAttr = v19;
    v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_15;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_14;
  }

LABEL_4:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_14;
  }

  v20 = v13[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IntegerAttr, a2, IntegerType, IntegerAttr, v20);
}

void mlir::arith::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 256);
  if (!v7)
  {
    operator new();
  }

  *v7 = a4;
  v7[1] = a5;
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

void mlir::arith::ConstantIntOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, a4, a3);
  if (!IntegerAttr)
  {
    goto LABEL_14;
  }

  v7 = *IntegerAttr;
  {
    v18 = v7;
    v19 = IntegerAttr;
    mlir::arith::ConstantOp::materialize();
    IntegerAttr = v19;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v18 + 8);
    v10 = *(v18 + 16);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_14;
  }

  v17 = v11[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IntegerAttr, a2, a4, IntegerAttr, v17);
}

BOOL mlir::arith::ConstantIntOp::classof(_BOOL8 this, mlir::Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v4[1] = v2;
      v4[2] = v3;
      v4[0] = *(this - 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::Type::isSignlessInteger(v4);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void mlir::arith::ConstantIndexOp::build(mlir::IndexType **a1, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  IndexType = mlir::Builder::getIndexType(a1, a2);
  IndexAttr = mlir::Builder::getIndexAttr(a1, a3);
  if (!IndexAttr)
  {
    goto LABEL_14;
  }

  v8 = *IndexAttr;
  {
    v18 = IndexAttr;
    mlir::arith::ConstantOp::materialize();
    IndexAttr = v18;
    v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v9 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_4:
  v12 = v10;
  v13 = v11;
  do
  {
    v14 = v13 >> 1;
    v15 = &v12[2 * (v13 >> 1)];
    v17 = *v15;
    v16 = v15 + 2;
    v13 += ~(v13 >> 1);
    if (v17 < v9)
    {
      v12 = v16;
    }

    else
    {
      v13 = v14;
    }
  }

  while (v13);
  if (v12 == &v10[2 * v11] || *v12 != v9)
  {
    goto LABEL_14;
  }

  v19 = v12[1];
LABEL_15:

  mlir::arith::ConstantOp::build(IndexAttr, a2, IndexType, IndexAttr, v19);
}

BOOL mlir::arith::ConstantIndexOp::classof(_BOOL8 this, mlir::Operation *a2)
{
  if (this)
  {
    if (*(*(this + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v4[1] = v2;
      v4[2] = v3;
      v4[0] = *(this - 8) & 0xFFFFFFFFFFFFFFF8;
      return mlir::Type::isIndex(v4);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t mlir::arith::AddIOp::fold(uint64_t *a1, uint64_t a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 48) + 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  LODWORD(v72) = 1;
  v71 = 0;
  v63 = &v71;
  v5 = mlir::detail::constant_int_value_binder::match(&v63, v4);
  v6 = v72;
  if (v5)
  {
    if (v72 < 0x41)
    {
      v7 = v71 == 0;
      goto LABEL_11;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&v71) > 0x40)
    {
      if (v71)
      {
        MEMORY[0x1AC55A040](v71, 0x1000C8000313F17);
      }

      goto LABEL_16;
    }

    v7 = *v71 == 0;
  }

  else
  {
    v7 = 0;
    if (v72 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!v71)
  {
LABEL_11:
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  MEMORY[0x1AC55A040](v71, 0x1000C8000313F17);
  if (v7)
  {
LABEL_12:
    v8 = *(*a1 + 72);
    return *(v8 + 24) | 4;
  }

LABEL_16:
  v71 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v71);
  if (DefiningOp)
  {
    v11 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v12 = *(DefiningOp + 72);
      if (*(*(v11 + 72) + 56) == *(v12 + 56))
      {
        return *(v12 + 24) | 4;
      }
    }
  }

  else
  {
    v11 = *a1;
  }

  v71 = *(*(v11 + 72) + 56);
  v13 = mlir::Value::getDefiningOp(&v71);
  if (v13)
  {
    if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v8 = *(v13 + 72);
      if (*(*(*a1 + 72) + 24) == *(v8 + 56))
      {
        return *(v8 + 24) | 4;
      }
    }
  }

  v14 = *(a2 + 48);
  v15 = *v14;
  if (*v14 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v17 = v14 + 1;
  v16 = v14[1];
  if (v16 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = v14[1];
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v15)
  {
    v71 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v72 = v18;
    if (v71)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v71);
      v15 = *v17;
      if (*v17)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  FunctionType = 0;
  v15 = *v17;
  if (*v17)
  {
LABEL_31:
    v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    v71 = v15;
    v72 = v20;
    if (!v15)
    {
      return v15 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_36;
  }

LABEL_35:
  v71 = v15;
  v72 = 0;
  if (!v15)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_36:
  v21 = mlir::FunctionOpInterface::getFunctionType(&v71);
  v15 = 0;
  if (!FunctionType || !v21 || v21 != FunctionType)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v70 = FunctionType;
  v22 = *v14;
  if (*v14 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = *v14;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v23 = *v17;
  if (!*v17)
  {
    goto LABEL_87;
  }

  v24 = *(*v23 + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v15 = *v17;
  }

  else
  {
    v15 = 0;
  }

  if (!v22 || v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v24 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v14))
    {
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    v71 = v27;
    if (v27 && mlir::DenseElementsAttr::isSplat(&v71) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v14 + 1))
    {
      v28 = v14[1];
      v56 = *v14;
      v53 = v28;
      Value = mlir::ArrayAttr::getValue(&v56);
      if (Value == mlir::ArrayAttr::getValue(&v53))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v56, &v63);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v59);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v63, &v59);
        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x1AC55A040](v59, 0x1000C8000313F17);
        }

        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x1AC55A040](v63, 0x1000C8000313F17);
        }

        if (v73 == 1)
        {
          v30 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
          v15 = mlir::DenseElementsAttr::get(v30, v31, &v71, 1);
          if ((v73 & 1) == 0)
          {
            return v15 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_58;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v14) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v14 + 1))
    {
      v68 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v14);
      v69 = v32;
      v67[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v14 + 1);
      v67[1] = v33;
      Type = mlir::ElementsAttr::getType(&v68);
      if (Type == mlir::ElementsAttr::getType(v67))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v63);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v67, &v59);
        if (v66 == 1 && v62 == 1)
        {
          LOWORD(v56) = v63;
          if (v63 == 1)
          {
            v57 = v64;
          }

          else
          {
            (*(*v64 + 16))(&v57);
          }

          v58 = v65;
          LOWORD(v53) = v59;
          if (v59 == 1)
          {
            v54 = v60;
          }

          else
          {
            (*(*v60 + 16))(&v54);
          }

          v55 = v61;
          v71 = &v73;
          v72 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&v71, NumElements);
          v39 = mlir::ElementsAttr::getNumElements(v68, v69);
          if (v39)
          {
            v40 = v39;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v56, &v48);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v46);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v50, &v48, &v46);
              if (v47 >= 0x41 && v46)
              {
                MEMORY[0x1AC55A040](v46, 0x1000C8000313F17);
              }

              if (v49 >= 0x41 && v48)
              {
                MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
              }

              if (v52 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v71, &v50);
              if ((v52 & 1) != 0 && v51 >= 0x41 && v50)
              {
                MEMORY[0x1AC55A040](v50, 0x1000C8000313F17);
              }

              ++v58;
              ++v55;
              if (!--v40)
              {
                goto LABEL_116;
              }
            }

            v43 = 0;
          }

          else
          {
LABEL_116:
            v41 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
            v43 = mlir::DenseElementsAttr::get(v41, v42, v71, v72);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v71);
          if ((v53 & 1) == 0)
          {
            v44 = v54;
            v54 = 0;
            if (v44)
            {
              (*(*v44 + 8))(v44);
            }
          }

          v15 = v43;
          if ((v56 & 1) == 0)
          {
            v45 = v57;
            v57 = 0;
            if (v45)
            {
              (*(*v45 + 8))(v45);
              v15 = v43;
            }
          }
        }

        else
        {
          v15 = 0;
        }

        if (v62 == 1 && (v59 & 1) == 0)
        {
          v35 = v60;
          v60 = 0;
          if (v35)
          {
            v36 = v15;
            (*(*v35 + 8))(v35);
            v15 = v36;
          }
        }

        if (v66 != 1)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v63)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v37 = v64;
        v64 = 0;
        if (!v37)
        {
          return v15 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v26 = v15;
        (*(*v37 + 8))(v37);
LABEL_61:
        v15 = v26;
        return v15 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

LABEL_87:
    v15 = 0;
    return v15 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v56 = *v14;
  v53 = v23;
  v25 = mlir::AffineMapAttr::getValue(&v56);
  if (v25 != mlir::AffineMapAttr::getValue(&v53))
  {
    goto LABEL_87;
  }

  mlir::IntegerAttr::getValue(&v56, &v63);
  mlir::IntegerAttr::getValue(&v53, &v59);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v71, &v63, &v59);
  if (v60 >= 0x41 && v59)
  {
    MEMORY[0x1AC55A040](v59, 0x1000C8000313F17);
  }

  if (v64 >= 0x41 && v63)
  {
    MEMORY[0x1AC55A040](v63, 0x1000C8000313F17);
  }

  if (v73 != 1)
  {
    goto LABEL_87;
  }

  v15 = mlir::IntegerAttr::get(v70, &v71);
  if (v73)
  {
LABEL_58:
    if (v72 < 0x41 || !v71)
    {
      return v15 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v26 = v15;
    MEMORY[0x1AC55A040](v71, 0x1000C8000313F17);
    goto LABEL_61;
  }

  return v15 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::AddUIExtendedOp::getShapeForUnroll(mlir::arith::AddUIExtendedOp *this@<X0>, uint64_t a2@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v3 = 0;
  }

  v14 = v3;
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 48) = 0;
    return;
  }

  Value = mlir::ArrayAttr::getValue(&v14);
  v6 = v4;
  __src = v17;
  v16 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v7 = v16;
    v8 = __src;
LABEL_9:
    memcpy(&v8[v7], Value, 8 * v6);
    v9 = v16;
    v10 = __src;
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = 0;
    v8 = v17;
    goto LABEL_9;
  }

  v9 = 0;
  v10 = v17;
LABEL_10:
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v11 = (v9 + v6);
  LODWORD(v16) = v11;
  if (v11 && &__src != a2)
  {
    if (v10 == v17)
    {
      v13 = v11;
      if (v11 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v11, 8), v13 = v16, v10 = __src, v16))
      {
        memcpy(*a2, v10, 8 * v13);
        v10 = __src;
      }

      *(a2 + 8) = v11;
    }

    else
    {
      *a2 = v10;
      v12 = HIDWORD(v16);
      *(a2 + 8) = v11;
      *(a2 + 12) = v12;
      __src = v17;
      HIDWORD(v16) = 0;
      v10 = v17;
    }

    LODWORD(v16) = 0;
  }

  *(a2 + 48) = 1;
  if (v10 != v17)
  {
    free(v10);
  }
}

unint64_t mlir::arith::AddUIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0) + 8);
  v77 = *(*(*a1 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v77);
  if (!DefiningOp)
  {
    goto LABEL_35;
  }

  v10 = DefiningOp;
  DWORD2(v91) = 1;
  *&v91 = 0;
  v80 = &v91;
  v83 = 0;
  v93 = &v83;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v93, DefiningOp))
  {
    v11 = *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    if (v13 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v15 = mlir::detail::constant_int_value_binder::match(&v80, v83);
      v16 = DWORD2(v91);
      if (v15)
      {
        if (DWORD2(v91) < 0x41)
        {
          v17 = v91 == 0;
          goto LABEL_28;
        }

        if (v16 - llvm::APInt::countLeadingZerosSlowCase(&v91) > 0x40)
        {
          if (v91)
          {
            MEMORY[0x1AC55A040](v91, 0x1000C8000313F17);
          }

          goto LABEL_35;
        }

        v17 = *v91 == 0;
      }

      else
      {
        v17 = 0;
        if (DWORD2(v91) < 0x41)
        {
          goto LABEL_28;
        }
      }

LABEL_23:
      if (!v91)
      {
        goto LABEL_28;
      }

      MEMORY[0x1AC55A040](v91, 0x1000C8000313F17);
      if (v17)
      {
        goto LABEL_29;
      }

LABEL_35:
      v25 = *(a2 + 40);
      v26 = *v25;
      if (*v25 && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_98;
      }

      v28 = (v25 + 1);
      v27 = v25[1];
      if (v27 && *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v26 = v25[1];
        goto LABEL_98;
      }

      if (v26)
      {
        *&v91 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v25);
        *(&v91 + 1) = v29;
        if (v91)
        {
          FunctionType = mlir::FunctionOpInterface::getFunctionType(&v91);
          result = *v28;
          if (*v28)
          {
            goto LABEL_42;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v91 = 0uLL;
      }

      FunctionType = 0;
      result = *v28;
      if (*v28)
      {
LABEL_42:
        result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
        *&v91 = result;
        *(&v91 + 1) = v31;
        if (!result)
        {
          return result;
        }

        goto LABEL_47;
      }

LABEL_46:
      v91 = result;
      if (!result)
      {
        return result;
      }

LABEL_47:
      v32 = mlir::FunctionOpInterface::getFunctionType(&v91);
      result = 0;
      if (!FunctionType || !v32 || v32 != FunctionType)
      {
        return result;
      }

      v90 = FunctionType;
      v33 = *v25;
      if (*v25 && *(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v26 = *v25;
        goto LABEL_98;
      }

      v34 = *v28;
      if (*v28)
      {
        v35 = *(*v34 + 136);
        if (v35 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v26 = *v28;
        }

        else
        {
          v26 = 0;
        }

        if (!v33 || v35 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          goto LABEL_98;
        }

        if (v35 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v80 = *v25;
          v77 = v34;
          Value = mlir::AffineMapAttr::getValue(&v80);
          if (Value == mlir::AffineMapAttr::getValue(&v77))
          {
            mlir::IntegerAttr::getValue(&v80, &v83);
            mlir::IntegerAttr::getValue(&v77, &v93);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v91, &v83, &v93);
            if (v94 >= 0x41 && v93)
            {
              MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
            }

            if (v84 >= 0x41 && v83)
            {
              MEMORY[0x1AC55A040](v83, 0x1000C8000313F17);
            }

            if (v92 == 1)
            {
              v26 = mlir::IntegerAttr::get(v90, &v91);
              if ((v92 & 1) == 0)
              {
                goto LABEL_98;
              }

LABEL_69:
              if (DWORD2(v91) >= 0x41 && v91)
              {
                MEMORY[0x1AC55A040](v91, 0x1000C8000313F17);
              }

              goto LABEL_98;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v25))
          {
            v37 = v33;
          }

          else
          {
            v37 = 0;
          }

          *&v91 = v37;
          if (v37 && mlir::DenseElementsAttr::isSplat(&v91) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v25 + 1))
          {
            v38 = v25[1];
            v80 = *v25;
            v77 = v38;
            v39 = mlir::ArrayAttr::getValue(&v80);
            if (v39 == mlir::ArrayAttr::getValue(&v77))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v80, &v83);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v77, &v93);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v91, &v83, &v93);
              if (v94 >= 0x41 && v93)
              {
                MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
              }

              if (v84 >= 0x41 && v83)
              {
                MEMORY[0x1AC55A040](v83, 0x1000C8000313F17);
              }

              if (v92 == 1)
              {
                v40 = llvm::cast<mlir::ShapedType,mlir::Type>(&v90);
                v26 = mlir::DenseElementsAttr::get(v40, v41, &v91, 1);
                if ((v92 & 1) == 0)
                {
                  goto LABEL_98;
                }

                goto LABEL_69;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v25) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v25 + 1))
          {
            v88 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v25);
            v89 = v42;
            v87[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v25 + 1);
            v87[1] = v43;
            Type = mlir::ElementsAttr::getType(&v88);
            if (Type == mlir::ElementsAttr::getType(v87))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v88, &v83);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v87, &v93);
              if (v86 == 1 && v96 == 1)
              {
                LOWORD(v80) = v83;
                if (v83 == 1)
                {
                  v81 = v84;
                }

                else
                {
                  (*(*v84 + 16))(&v81);
                }

                v82 = v85;
                LOWORD(v77) = v93;
                if (v93 == 1)
                {
                  v78 = v94;
                }

                else
                {
                  (*(*v94 + 16))(&v78);
                }

                v79 = v95;
                *&v91 = &v92;
                *(&v91 + 1) = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v88, v89);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&v91, NumElements);
                v58 = mlir::ElementsAttr::getNumElements(v88, v89);
                if (v58)
                {
                  v59 = v58;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v80, &v72);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v77, &v70);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v74, &v72, &v70);
                    if (v71 >= 0x41 && v70)
                    {
                      MEMORY[0x1AC55A040](v70, 0x1000C8000313F17);
                    }

                    if (v73 >= 0x41 && v72)
                    {
                      MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
                    }

                    if (v76 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v91, &v74);
                    if ((v76 & 1) != 0 && v75 >= 0x41 && v74)
                    {
                      MEMORY[0x1AC55A040](v74, 0x1000C8000313F17);
                    }

                    ++v82;
                    ++v79;
                    if (!--v59)
                    {
                      goto LABEL_136;
                    }
                  }

                  v26 = 0;
                }

                else
                {
LABEL_136:
                  v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&v90);
                  v26 = mlir::DenseElementsAttr::get(v60, v61, v91, DWORD2(v91));
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v91);
                if ((v77 & 1) == 0)
                {
                  v62 = v78;
                  v78 = 0;
                  if (v62)
                  {
                    (*(*v62 + 8))(v62);
                  }
                }

                if ((v80 & 1) == 0)
                {
                  v63 = v81;
                  v81 = 0;
                  if (v63)
                  {
                    (*(*v63 + 8))(v63);
                  }
                }
              }

              else
              {
                v26 = 0;
              }

              if (v96 == 1 && (v93 & 1) == 0)
              {
                v55 = v94;
                v94 = 0;
                if (v55)
                {
                  (*(*v55 + 8))(v55);
                }
              }

              if (v86 == 1 && (v83 & 1) == 0)
              {
                v56 = v84;
                v84 = 0;
                if (v56)
                {
                  (*(*v56 + 8))(v56);
                }
              }

LABEL_98:
              if (!v26)
              {
                return 0;
              }

              v93 = v26;
              v94 = **(a2 + 40);
              v45 = *v26;
              {
                v46 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
                v47 = *(v45 + 8);
                v48 = *(v45 + 16);
                if (!v48)
                {
                  goto LABEL_147;
                }
              }

              else
              {
                mlir::arith::AddUIExtendedOp::fold();
                v46 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
                v47 = *(v45 + 8);
                v48 = *(v45 + 16);
                if (!v48)
                {
                  goto LABEL_147;
                }
              }

              v49 = v47;
              v50 = v48;
              do
              {
                v51 = v50 >> 1;
                v52 = &v49[2 * (v50 >> 1)];
                v54 = *v52;
                v53 = v52 + 2;
                v50 += ~(v50 >> 1);
                if (v54 < v46)
                {
                  v49 = v53;
                }

                else
                {
                  v50 = v51;
                }
              }

              while (v50);
              if (v49 != &v47[2 * v48] && *v49 == v46)
              {
                v64 = v49[1];
LABEL_149:
                v80 = v26;
                v81 = v64;
                v77 = mlir::FunctionOpInterface::getFunctionType(&v80);
                Context = mlir::Attribute::getContext(&v77);
                v66 = mlir::IntegerType::get(Context, 1u, 0);
                v83 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v77);
                v84 = v67;
                if (v83)
                {
                  LOBYTE(v91) = 0;
                  v92 = 0;
                  v68 = mlir::ShapedType::cloneWith(&v83, &v91, v66);
                }

                else
                {
                  if (*(*v77 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
                  {
LABEL_153:
                    *&v91 = calculateUnsignedOverflow;
                    result = mlir::constFoldBinaryOpConditional<mlir::IntegerAttr,llvm::APInt,void,mlir::Attribute mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,void,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&)>(llvm::ArrayRef<mlir::Attribute>,mlir::Type,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&) &&)::{lambda(llvm::APInt,llvm::APInt)#1}>(&v93, 2, v66, &v91);
                    if (!result)
                    {
                      return result;
                    }

                    v20 = v26 & 0xFFFFFFFFFFFFFFFBLL;
                    v21 = *(a3 + 8);
                    if (v21 < *(a3 + 12))
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_155;
                  }

                  v68 = mlir::UnrankedTensorType::get(v66);
                }

                v66 = v68;
                goto LABEL_153;
              }

LABEL_147:
              v64 = 0;
              goto LABEL_149;
            }
          }
        }
      }

      v26 = 0;
      goto LABEL_98;
    }
  }

  v17 = 0;
  if (DWORD2(v91) >= 0x41)
  {
    goto LABEL_23;
  }

LABEL_28:
  if (!v17)
  {
    goto LABEL_35;
  }

LABEL_29:
  *&v91 = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::Builder::getZeroAttr(&v91, (v8 & 0xFFFFFFFFFFFFFFF8), v18);
  v20 = *(*(*a1 + 72) + 24) | 4;
  v21 = *(a3 + 8);
  if (v21 >= *(a3 + 12))
  {
LABEL_155:
    v69 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v21 + 1, 8);
    result = v69;
    LODWORD(v21) = *(a3 + 8);
  }

LABEL_30:
  *(*a3 + 8 * v21) = v20;
  v22 = *(a3 + 12);
  v23 = (*(a3 + 8) + 1);
  *(a3 + 8) = v23;
  v24 = result & 0xFFFFFFFFFFFFFFFBLL;
  if (v23 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v23 + 1, 8);
    LODWORD(v23) = *(a3 + 8);
  }

  *(*a3 + 8 * v23) = v24;
  ++*(a3 + 8);
  return 1;
}

uint64_t getI1SameShape(void *a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  v2 = mlir::IntegerType::get(Context, 1u, 0);
  v7[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
  v7[1] = v3;
  if (v7[0])
  {
    LOBYTE(v5) = 0;
    v6 = 0;
    return mlir::ShapedType::cloneWith(v7, &v5, v2);
  }

  else
  {
    result = v2;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return mlir::UnrankedTensorType::get(v2);
    }
  }

  return result;
}

uint64_t calculateUnsignedOverflow@<X0>(const llvm::APInt *a1@<X0>, const llvm::APInt *a2@<X1>, uint64_t a3@<X8>)
{
  result = llvm::APInt::compare(a1, a2);
  *(a3 + 8) = 1;
  *a3 = result >> 31;
  return result;
}

uint64_t mlir::arith::SubIOp::fold(uint64_t *a1, uint64_t a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8), v10);
    return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  v6 = *(*(a2 + 48) + 8);
  if (v6)
  {
    LODWORD(v78) = 1;
    Context = 0;
    p_Context = &Context;
    v7 = mlir::detail::constant_int_value_binder::match(&p_Context, v6);
    v8 = v78;
    if (v7)
    {
      if (v78 < 0x41)
      {
        v9 = Context == 0;
LABEL_11:
        v14 = *a1;
        if (v9)
        {
          v15 = *(*(v14 + 72) + 24);
          return v15 | 4;
        }

        v4 = *(*(v14 + 72) + 24);
        goto LABEL_15;
      }

      if (v8 - llvm::APInt::countLeadingZerosSlowCase(&Context) >= 0x41)
      {
        v9 = 0;
        v13 = Context;
        if (!Context)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = *Context == 0;
    }

    else
    {
      v9 = 0;
      if (v78 < 0x41)
      {
        goto LABEL_11;
      }
    }

    v13 = Context;
    if (!Context)
    {
      goto LABEL_11;
    }

LABEL_10:
    MEMORY[0x1AC55A040](v13, 0x1000C8000313F17);
    goto LABEL_11;
  }

LABEL_15:
  Context = v4;
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    goto LABEL_17;
  }

  v23 = *(*(*a1 + 72) + 56);
  v24 = *(DefiningOp + 72);
  v15 = *(v24 + 56);
  v25 = *(v24 + 24);
  if (v23 != v15)
  {
    if (v23 == v25)
    {
      return v15 | 4;
    }

LABEL_17:
    v17 = *(a2 + 48);
    ZeroAttr = *v17;
    if (*v17 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    v19 = v17 + 1;
    v18 = v17[1];
    if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = v17[1];
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (ZeroAttr)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      v78 = v20;
      if (Context)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&Context);
        ZeroAttr = *v19;
        if (*v19)
        {
          goto LABEL_24;
        }

LABEL_33:
        Context = ZeroAttr;
        v78 = 0;
        if (ZeroAttr)
        {
          goto LABEL_34;
        }

        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      Context = 0;
      v78 = 0;
    }

    FunctionType = 0;
    ZeroAttr = *v19;
    if (*v19)
    {
LABEL_24:
      ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      Context = ZeroAttr;
      v78 = v22;
      if (!ZeroAttr)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_34:
      v26 = mlir::FunctionOpInterface::getFunctionType(&Context);
      ZeroAttr = 0;
      if (!FunctionType || !v26 || v26 != FunctionType)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v76 = FunctionType;
      v27 = *v17;
      if (*v17 && *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        ZeroAttr = *v17;
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v28 = *v19;
      if (*v19)
      {
        v29 = *(*v28 + 136);
        if (v29 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          ZeroAttr = *v19;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (!v27 || v29 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v62 = *v17;
          v59 = v28;
          Value = mlir::AffineMapAttr::getValue(&v62);
          if (Value == mlir::AffineMapAttr::getValue(&v59))
          {
            mlir::IntegerAttr::getValue(&v62, &p_Context);
            mlir::IntegerAttr::getValue(&v59, &v65);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &p_Context, &v65);
            if (v66 >= 0x41 && v65)
            {
              MEMORY[0x1AC55A040](v65, 0x1000C8000313F17);
            }

            if (v70 >= 0x41 && p_Context)
            {
              MEMORY[0x1AC55A040](p_Context, 0x1000C8000313F17);
            }

            if (v79 == 1)
            {
              ZeroAttr = mlir::IntegerAttr::get(v76, &Context);
              if ((v79 & 1) == 0 || v78 < 0x41 || !Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v31 = ZeroAttr;
              v32 = Context;
LABEL_59:
              MEMORY[0x1AC55A040](v32, 0x1000C8000313F17);
LABEL_60:
              ZeroAttr = v31;
              return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v17))
          {
            v33 = v27;
          }

          else
          {
            v33 = 0;
          }

          Context = v33;
          if (v33 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v17 + 1))
          {
            v34 = v17[1];
            v62 = *v17;
            v59 = v34;
            v35 = mlir::ArrayAttr::getValue(&v62);
            if (v35 == mlir::ArrayAttr::getValue(&v59))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v62, &p_Context);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v59, &v65);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &p_Context, &v65);
              if (v66 >= 0x41 && v65)
              {
                MEMORY[0x1AC55A040](v65, 0x1000C8000313F17);
              }

              if (v70 >= 0x41 && p_Context)
              {
                MEMORY[0x1AC55A040](p_Context, 0x1000C8000313F17);
              }

              if (v79 == 1)
              {
                v36 = llvm::cast<mlir::ShapedType,mlir::Type>(&v76);
                ZeroAttr = mlir::DenseElementsAttr::get(v36, v37, &Context, 1);
                if ((v79 & 1) == 0 || v78 < 0x41)
                {
                  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
                }

                v31 = ZeroAttr;
                v32 = Context;
                if (!Context)
                {
                  goto LABEL_60;
                }

                goto LABEL_59;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v17) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v17 + 1))
          {
            v74 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17);
            v75 = v38;
            v73[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17 + 1);
            v73[1] = v39;
            Type = mlir::ElementsAttr::getType(&v74);
            if (Type == mlir::ElementsAttr::getType(v73))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v74, &p_Context);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v73, &v65);
              if (v72 == 1 && v68 == 1)
              {
                LOWORD(v62) = p_Context;
                if (p_Context == 1)
                {
                  v63 = v70;
                }

                else
                {
                  (*(*v70 + 16))(&v63);
                }

                v64 = v71;
                LOWORD(v59) = v65;
                if (v65 == 1)
                {
                  v60 = v66;
                }

                else
                {
                  (*(*v66 + 16))(&v60);
                }

                v61 = v67;
                Context = &v79;
                v78 = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v74, v75);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
                v42 = mlir::ElementsAttr::getNumElements(v74, v75);
                if (v42)
                {
                  v43 = v42;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v62, &v54);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v59, &v52);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v56, &v54, &v52);
                    if (v53 >= 0x41 && v52)
                    {
                      MEMORY[0x1AC55A040](v52, 0x1000C8000313F17);
                    }

                    if (v55 >= 0x41 && v54)
                    {
                      MEMORY[0x1AC55A040](v54, 0x1000C8000313F17);
                    }

                    if (v58 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v56);
                    if ((v58 & 1) != 0 && v57 >= 0x41 && v56)
                    {
                      MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
                    }

                    ++v64;
                    ++v61;
                    if (!--v43)
                    {
                      goto LABEL_111;
                    }
                  }

                  v46 = 0;
                }

                else
                {
LABEL_111:
                  v44 = llvm::cast<mlir::ShapedType,mlir::Type>(&v76);
                  v46 = mlir::DenseElementsAttr::get(v44, v45, Context, v78);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                if ((v59 & 1) == 0)
                {
                  v47 = v60;
                  v60 = 0;
                  if (v47)
                  {
                    (*(*v47 + 8))(v47);
                  }
                }

                if ((v62 & 1) == 0)
                {
                  v48 = v63;
                  v63 = 0;
                  if (v48)
                  {
                    (*(*v48 + 8))(v48);
                  }
                }

                ZeroAttr = v46;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (v68 == 1 && (v65 & 1) == 0)
              {
                v49 = v66;
                v66 = 0;
                if (v49)
                {
                  v50 = ZeroAttr;
                  (*(*v49 + 8))(v49);
                  ZeroAttr = v50;
                }
              }

              if (v72 != 1)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (p_Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v51 = v70;
              v70 = 0;
              if (!v51)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v31 = ZeroAttr;
              (*(*v51 + 8))(v51);
              goto LABEL_60;
            }
          }
        }
      }

      ZeroAttr = 0;
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_33;
  }

  return v25 | 4;
}

uint64_t mlir::arith::MulIOp::fold(uint64_t a1, uint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v74) = 1;
  v73 = 0;
  v63 = &v73;
  v6 = mlir::detail::constant_int_value_binder::match(&v63, v4);
  v7 = v74;
  if (v6)
  {
    if (v74 < 0x41)
    {
      v8 = v73 == 0;
      goto LABEL_11;
    }

    if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v73) > 0x40)
    {
      if (v73)
      {
        MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
      }

      goto LABEL_15;
    }

    v8 = *v73 == 0;
  }

  else
  {
    v8 = 0;
    if (v74 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!v73)
  {
LABEL_11:
    if (v8)
    {
      return *(*(*a1 + 72) + 56) | 4;
    }

    goto LABEL_15;
  }

  MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
  if (v8)
  {
    return *(*(*a1 + 72) + 56) | 4;
  }

LABEL_15:
  v3 = *(a2 + 48);
  v10 = v3[1];
  if (v10)
  {
    LODWORD(v74) = 1;
    v73 = 0;
    v63 = &v73;
    v11 = mlir::detail::constant_int_value_binder::match(&v63, v10);
    v12 = v74;
    if (v11)
    {
      if (v74 < 0x41)
      {
        v13 = v73 == 1;
        goto LABEL_22;
      }

      if (v12 - llvm::APInt::countLeadingZerosSlowCase(&v73) > 0x40)
      {
        if (v73)
        {
          MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
        }

LABEL_28:
        v3 = *(a2 + 48);
        goto LABEL_29;
      }

      v13 = *v73 == 1;
    }

    else
    {
      v13 = 0;
      if (v74 < 0x41)
      {
        goto LABEL_22;
      }
    }

    if (v73)
    {
      MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
    }

LABEL_22:
    if (v13)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_28;
  }

LABEL_29:
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v16 = v3 + 1;
  v15 = v3[1];
  if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v14 = v3[1];
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v14)
  {
    v73 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    v74 = v17;
    if (v73)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v73);
      v14 = *v16;
      if (*v16)
      {
        goto LABEL_36;
      }

LABEL_40:
      v73 = v14;
      v74 = 0;
      if (!v14)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
  }

  FunctionType = 0;
  v14 = *v16;
  if (!*v16)
  {
    goto LABEL_40;
  }

LABEL_36:
  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
  v73 = v14;
  v74 = v19;
  if (!v14)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_41:
  v20 = mlir::FunctionOpInterface::getFunctionType(&v73);
  v14 = 0;
  if (!FunctionType || !v20 || v20 != FunctionType)
  {
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v70 = FunctionType;
  v21 = *v3;
  if (!*v3 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v22 = *v16;
    if (*v16)
    {
      v23 = *(*v22 + 136);
      if (v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v21 || v23 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v14 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v53 = *v3;
        v50 = v22;
        Value = mlir::AffineMapAttr::getValue(&v53);
        if (Value == mlir::AffineMapAttr::getValue(&v50))
        {
          mlir::IntegerAttr::getValue(&v53, &v59);
          mlir::IntegerAttr::getValue(&v50, &v56);
          llvm::APInt::operator*(&v59, &v56, &v63);
          LODWORD(v74) = v64;
          v73 = v63;
          v75 = 1;
          if (v57 >= 0x41 && v56)
          {
            MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
          }

          if (v60 >= 0x41 && v59)
          {
            MEMORY[0x1AC55A040](v59, 0x1000C8000313F17);
          }

          v14 = mlir::IntegerAttr::get(v70, &v73);
          goto LABEL_80;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v25 = v21;
        }

        else
        {
          v25 = 0;
        }

        v73 = v25;
        if (v25 && mlir::DenseElementsAttr::isSplat(&v73) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v26 = v3[1];
          v53 = *v3;
          v50 = v26;
          v27 = mlir::ArrayAttr::getValue(&v53);
          if (v27 == mlir::ArrayAttr::getValue(&v50))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v59);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
            llvm::APInt::operator*(&v59, &v56, &v63);
            LODWORD(v74) = v64;
            v73 = v63;
            v75 = 1;
            if (v57 >= 0x41 && v56)
            {
              MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
            }

            if (v60 >= 0x41 && v59)
            {
              MEMORY[0x1AC55A040](v59, 0x1000C8000313F17);
            }

            v28 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
            v14 = mlir::DenseElementsAttr::get(v28, v29, &v73, 1);
LABEL_80:
            if ((v75 & 1) == 0 || v74 < 0x41 || !v73)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v14;
            MEMORY[0x1AC55A040](v73, 0x1000C8000313F17);
            goto LABEL_84;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v68 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v69 = v32;
          v67[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v67[1] = v33;
          Type = mlir::ElementsAttr::getType(&v68);
          if (Type == mlir::ElementsAttr::getType(v67))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v63);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(v67, &v59);
            if (v66 == 1 && v62 == 1)
            {
              LOWORD(v56) = v63;
              if (v63 == 1)
              {
                v57 = v64;
              }

              else
              {
                (*(*v64 + 16))(&v57);
              }

              v58 = v65;
              LOWORD(v53) = v59;
              if (v59 == 1)
              {
                v54 = v60;
              }

              else
              {
                (*(*v60 + 16))(&v54);
              }

              v55 = v61;
              v73 = &v75;
              v74 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v73, NumElements);
              v39 = mlir::ElementsAttr::getNumElements(v68, v69);
              if (v39)
              {
                v40 = v39;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v56, &v48);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v46);
                  llvm::APInt::operator*(&v48, &v46, &v71);
                  v51 = v72;
                  v50 = v71;
                  v52 = 1;
                  if (v47 >= 0x41 && v46)
                  {
                    MEMORY[0x1AC55A040](v46, 0x1000C8000313F17);
                  }

                  if (v49 >= 0x41 && v48)
                  {
                    MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
                  }

                  if (v52 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v73, &v50);
                  if ((v52 & 1) != 0 && v51 >= 0x41 && v50)
                  {
                    MEMORY[0x1AC55A040](v50, 0x1000C8000313F17);
                  }

                  ++v58;
                  ++v55;
                  if (!--v40)
                  {
                    goto LABEL_121;
                  }
                }

                v43 = 0;
              }

              else
              {
LABEL_121:
                v41 = llvm::cast<mlir::ShapedType,mlir::Type>(&v70);
                v43 = mlir::DenseElementsAttr::get(v41, v42, v73, v74);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v73);
              if ((v53 & 1) == 0)
              {
                v44 = v54;
                v54 = 0;
                if (v44)
                {
                  (*(*v44 + 8))(v44);
                }
              }

              v14 = v43;
              if ((v56 & 1) == 0)
              {
                v45 = v57;
                v57 = 0;
                if (v45)
                {
                  (*(*v45 + 8))(v45);
                  v14 = v43;
                }
              }
            }

            else
            {
              v14 = 0;
            }

            if (v62 == 1 && (v59 & 1) == 0)
            {
              v35 = v60;
              v60 = 0;
              if (v35)
              {
                v36 = v14;
                (*(*v35 + 8))(v35);
                v14 = v36;
              }
            }

            if (v66 != 1)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v63)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v37 = v64;
            v64 = 0;
            if (!v37)
            {
              return v14 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v14;
            (*(*v37 + 8))(v37);
LABEL_84:
            v14 = v31;
            return v14 & 0xFFFFFFFFFFFFFFFBLL;
          }
        }
      }
    }

    v14 = 0;
    return v14 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v14 = *v3;
  return v14 & 0xFFFFFFFFFFFFFFFBLL;
}

void mlir::arith::MulIOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, void *, void *), uint64_t a3)
{
  v39[4] = *MEMORY[0x1E69E9840];
  if (*(*(*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    if ((v6 = *(*a1 + 72), v7 = *(v6 + 24), v27 = *(v6 + 56), v35 = 0, v36 = &v35, v37 = v7, (DefiningOp = mlir::Value::getDefiningOp(&v37)) != 0) && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v36, DefiningOp) && (v9 = mlir::Value::getDefiningOp(&v27)) != 0 && (v37 = *(*(v9 + 48) + 8), AttrData = mlir::OpaqueAttr::getAttrData(&v37), v11 == 13) && (*AttrData == 0x762E726F74636576 ? (v12 = *(AttrData + 5) == 0x656C616373762E72) : (v12 = 0), v12) || (v13 = *(*a1 + 72), v14 = *(v13 + 56), v27 = *(v13 + 24), v36 = &v35, v37 = v14, (v15 = mlir::Value::getDefiningOp(&v37)) != 0) && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v36, v15) && (v16 = mlir::Value::getDefiningOp(&v27)) != 0 && (v37 = *(*(v16 + 48) + 8), v17 = mlir::OpaqueAttr::getAttrData(&v37), v18 == 13) && (*v17 == 0x762E726F74636576 ? (v19 = *(v17 + 5) == 0x656C616373762E72) : (v19 = 0), v19))
    {
      v37 = v39;
      v38 = xmmword_1A75A2980;
      v28 = 2;
      v32 = 0;
      v33 = 1;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v27 = &unk_1F1A36338;
      v34 = &v37;
      llvm::raw_ostream::SetBufferAndMode(&v27, 0, 0, 0);
      v20 = v31;
      if (v31 >= v30)
      {
        v21 = llvm::raw_ostream::write(&v27, 99);
      }

      else
      {
        ++v31;
        *v20 = 99;
        v21 = &v27;
      }

      Int = mlir::IntegerAttr::getInt(&v35);
      v23 = llvm::raw_ostream::operator<<(v21, Int);
      v24 = *(v23 + 4);
      if (*(v23 + 3) - v24 > 6uLL)
      {
        *(v24 + 3) = 1701601635;
        *v24 = 1668511327;
        *(v23 + 4) += 7;
      }

      else
      {
        llvm::raw_ostream::write(v23, "_vscale", 7uLL);
      }

      if (*(*a1 + 36))
      {
        v25 = *a1 - 16;
      }

      else
      {
        v25 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
      a2(a3, NextResultAtOffset, *v34, v34[1]);
      llvm::raw_ostream::~raw_ostream(&v27);
      if (v37 != v39)
      {
        free(v37);
      }
    }
  }
}

uint64_t mlir::arith::MulSIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 40);
  v6 = v5[1];
  if (!v6)
  {
LABEL_17:
    v14 = *v5;
    if (*v5 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    v16 = v5 + 1;
    v15 = v5[1];
    if (v15 && *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v5[1];
      goto LABEL_80;
    }

    if (v14)
    {
      v108 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5);
      v109 = v17;
      if (v108)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&v108);
        result = *v16;
        if (*v16)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v108 = 0;
      v109 = 0;
    }

    FunctionType = 0;
    result = *v16;
    if (*v16)
    {
LABEL_24:
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
      v108 = result;
      v109 = v20;
      if (!result)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    v108 = result;
    v109 = 0;
    if (!result)
    {
      return result;
    }

LABEL_29:
    v21 = mlir::FunctionOpInterface::getFunctionType(&v108);
    result = 0;
    if (!FunctionType || !v21 || v21 != FunctionType)
    {
      return result;
    }

    v105 = FunctionType;
    v22 = *v5;
    if (*v5 && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = *v5;
      goto LABEL_80;
    }

    v23 = *v16;
    if (*v16)
    {
      v24 = *(*v23 + 136);
      if (v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v14 = *v16;
      }

      else
      {
        v14 = 0;
      }

      if (!v22 || v24 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_80;
      }

      if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v87 = *v5;
        v84 = v23;
        Value = mlir::AffineMapAttr::getValue(&v87);
        if (Value == mlir::AffineMapAttr::getValue(&v84))
        {
          mlir::IntegerAttr::getValue(&v87, &v93);
          mlir::IntegerAttr::getValue(&v84, &v90);
          llvm::APInt::operator*(&v93, &v90, &v97);
          LODWORD(v109) = v98;
          v108 = v97;
          v110[0] = 1;
          if (v91 >= 0x41 && v90)
          {
            MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
          }

          if (v94 >= 0x41 && v93)
          {
            MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
          }

          v31 = mlir::IntegerAttr::get(v105, &v108);
          goto LABEL_68;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v5))
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        v108 = v26;
        if (v26 && mlir::DenseElementsAttr::isSplat(&v108) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v27 = v5[1];
          v87 = *v5;
          v84 = v27;
          v28 = mlir::ArrayAttr::getValue(&v87);
          if (v28 == mlir::ArrayAttr::getValue(&v84))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v87, &v93);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v84, &v90);
            llvm::APInt::operator*(&v93, &v90, &v97);
            LODWORD(v109) = v98;
            v108 = v97;
            v110[0] = 1;
            if (v91 >= 0x41 && v90)
            {
              MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
            }

            if (v94 >= 0x41 && v93)
            {
              MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
            }

            v29 = llvm::cast<mlir::ShapedType,mlir::Type>(&v105);
            v31 = mlir::DenseElementsAttr::get(v29, v30, &v108, 1);
LABEL_68:
            v14 = v31;
            if ((v110[0] & 1) != 0 && v109 >= 0x41 && v108)
            {
              MEMORY[0x1AC55A040](v108, 0x1000C8000313F17);
            }

            goto LABEL_80;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v103 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5);
          v104 = v33;
          v101 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5 + 1);
          v102 = v34;
          Type = mlir::ElementsAttr::getType(&v103);
          if (Type == mlir::ElementsAttr::getType(&v101))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v103, &v97);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v101, &v93);
            if (v100 == 1 && v96 == 1)
            {
              LOWORD(v90) = v97;
              if (v97 == 1)
              {
                v91 = v98;
              }

              else
              {
                (*(*v98 + 16))(&v91);
              }

              v92 = v99;
              LOWORD(v87) = v93;
              if (v93 == 1)
              {
                v88 = v94;
              }

              else
              {
                (*(*v94 + 16))(&v88);
              }

              v89 = v95;
              v108 = v110;
              v109 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v103, v104);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&v108, NumElements);
              v62 = mlir::ElementsAttr::getNumElements(v103, v104);
              if (v62)
              {
                v63 = v62;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v90, &v82);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v87, &v80);
                  llvm::APInt::operator*(&v82, &v80, &v106);
                  v85 = v107;
                  v84 = v106;
                  v86 = 1;
                  if (v81 >= 0x41 && v80)
                  {
                    MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
                  }

                  if (v83 >= 0x41 && v82)
                  {
                    MEMORY[0x1AC55A040](v82, 0x1000C8000313F17);
                  }

                  if (v86 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v108, &v84);
                  if ((v86 & 1) != 0 && v85 >= 0x41 && v84)
                  {
                    MEMORY[0x1AC55A040](v84, 0x1000C8000313F17);
                  }

                  ++v92;
                  ++v89;
                  if (!--v63)
                  {
                    goto LABEL_179;
                  }
                }

                v14 = 0;
              }

              else
              {
LABEL_179:
                v64 = llvm::cast<mlir::ShapedType,mlir::Type>(&v105);
                v14 = mlir::DenseElementsAttr::get(v64, v65, v108, v109);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v108);
              if ((v87 & 1) == 0)
              {
                v67 = v88;
                v88 = 0;
                if (v67)
                {
                  (*(*v67 + 8))(v67);
                }
              }

              if ((v90 & 1) == 0)
              {
                v68 = v91;
                v91 = 0;
                if (v68)
                {
                  (*(*v68 + 8))(v68);
                }
              }
            }

            else
            {
              v14 = 0;
            }

            if (v96 == 1 && (v93 & 1) == 0)
            {
              v59 = v94;
              v94 = 0;
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }

            if (v100 == 1 && (v97 & 1) == 0)
            {
              v60 = v98;
              v98 = 0;
              if (v60)
              {
                (*(*v60 + 8))(v60);
              }
            }

LABEL_80:
            if (!v14)
            {
              return 0;
            }

            v36 = *(a2 + 40);
            v37 = *v36;
            if (*v36 && *(*v37 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_144;
            }

            v39 = v36 + 1;
            v38 = v36[1];
            if (v38 && *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v37 = v36[1];
              goto LABEL_144;
            }

            if (v37)
            {
              v108 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v37);
              v109 = v40;
              if (v108)
              {
                v41 = mlir::FunctionOpInterface::getFunctionType(&v108);
                v37 = *v39;
                if (*v39)
                {
                  goto LABEL_88;
                }

                goto LABEL_93;
              }
            }

            else
            {
              v108 = 0;
              v109 = 0;
            }

            v41 = 0;
            v37 = *v39;
            if (*v39)
            {
LABEL_88:
              v37 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v37);
              v108 = v37;
              v109 = v42;
              if (!v37)
              {
                goto LABEL_144;
              }

              goto LABEL_94;
            }

LABEL_93:
            v108 = v37;
            v109 = 0;
            if (!v37)
            {
LABEL_144:
              v57 = v14 & 0xFFFFFFFFFFFFFFFBLL;
              v58 = *(a3 + 8);
              if (v58 >= *(a3 + 12))
              {
                v66 = v37;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v58 + 1, 8);
                v37 = v66;
                LODWORD(v58) = *(a3 + 8);
              }

              *(*a3 + 8 * v58) = v57;
              v12 = *(a3 + 12);
              v13 = (*(a3 + 8) + 1);
              *(a3 + 8) = v13;
              v10 = v37 & 0xFFFFFFFFFFFFFFFBLL;
              goto LABEL_147;
            }

LABEL_94:
            v43 = mlir::FunctionOpInterface::getFunctionType(&v108);
            v37 = 0;
            if (!v41 || !v43 || v43 != v41)
            {
              goto LABEL_144;
            }

            v105 = v41;
            v44 = *v36;
            if (*v36 && *(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v37 = *v36;
              goto LABEL_144;
            }

            v45 = *v39;
            if (*v39)
            {
              v46 = *(*v45 + 136);
              if (v46 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                v37 = *v39;
              }

              else
              {
                v37 = 0;
              }

              if (!v44 || v46 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_144;
              }

              if (v46 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v44 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v87 = *v36;
                v84 = v45;
                v47 = mlir::AffineMapAttr::getValue(&v87);
                if (v47 == mlir::AffineMapAttr::getValue(&v84))
                {
                  mlir::IntegerAttr::getValue(&v87, &v93);
                  mlir::IntegerAttr::getValue(&v84, &v90);
                  llvm::APIntOps::mulhs(&v97, &v93, &v90);
                  LODWORD(v109) = v98;
                  v108 = v97;
                  v110[0] = 1;
                  if (v91 >= 0x41 && v90)
                  {
                    MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
                  }

                  if (v94 >= 0x41 && v93)
                  {
                    MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
                  }

                  v37 = mlir::IntegerAttr::get(v105, &v108);
                  if ((v110[0] & 1) == 0)
                  {
                    goto LABEL_144;
                  }

                  goto LABEL_115;
                }
              }

              else
              {
                if (mlir::DenseElementsAttr::classof(*v36))
                {
                  v49 = v44;
                }

                else
                {
                  v49 = 0;
                }

                v108 = v49;
                if (v49 && mlir::DenseElementsAttr::isSplat(&v108) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v36 + 1))
                {
                  v50 = v36[1];
                  v87 = *v36;
                  v84 = v50;
                  v51 = mlir::ArrayAttr::getValue(&v87);
                  if (v51 == mlir::ArrayAttr::getValue(&v84))
                  {
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v87, &v93);
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v84, &v90);
                    llvm::APIntOps::mulhs(&v97, &v93, &v90);
                    LODWORD(v109) = v98;
                    v108 = v97;
                    v110[0] = 1;
                    if (v91 >= 0x41 && v90)
                    {
                      MEMORY[0x1AC55A040](v90, 0x1000C8000313F17);
                    }

                    if (v94 >= 0x41 && v93)
                    {
                      MEMORY[0x1AC55A040](v93, 0x1000C8000313F17);
                    }

                    v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v105);
                    v37 = mlir::DenseElementsAttr::get(v52, v53, &v108, 1);
                    if ((v110[0] & 1) == 0)
                    {
                      goto LABEL_144;
                    }

LABEL_115:
                    if (v109 < 0x41 || !v108)
                    {
                      goto LABEL_144;
                    }

                    v48 = v37;
                    MEMORY[0x1AC55A040](v108, 0x1000C8000313F17);
                    goto LABEL_118;
                  }
                }

                else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v36) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v36 + 1))
                {
                  v103 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v36);
                  v104 = v54;
                  v101 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v36 + 1);
                  v102 = v55;
                  v56 = mlir::ElementsAttr::getType(&v103);
                  if (v56 == mlir::ElementsAttr::getType(&v101))
                  {
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v103, &v97);
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v101, &v93);
                    if (v100 == 1 && v96 == 1)
                    {
                      LOWORD(v90) = v97;
                      if (v97 == 1)
                      {
                        v91 = v98;
                      }

                      else
                      {
                        (*(*v98 + 16))(&v91);
                      }

                      v92 = v99;
                      LOWORD(v87) = v93;
                      if (v93 == 1)
                      {
                        v88 = v94;
                      }

                      else
                      {
                        (*(*v94 + 16))(&v88);
                      }

                      v89 = v95;
                      v108 = v110;
                      v109 = 0x400000000;
                      v69 = mlir::ElementsAttr::getNumElements(v103, v104);
                      llvm::SmallVectorImpl<llvm::APInt>::reserve(&v108, v69);
                      v70 = mlir::ElementsAttr::getNumElements(v103, v104);
                      if (v70)
                      {
                        v71 = v70;
                        while (1)
                        {
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v90, &v82);
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v87, &v80);
                          llvm::APIntOps::mulhs(&v106, &v82, &v80);
                          v85 = v107;
                          v84 = v106;
                          v86 = 1;
                          if (v81 >= 0x41 && v80)
                          {
                            MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
                          }

                          if (v83 >= 0x41 && v82)
                          {
                            MEMORY[0x1AC55A040](v82, 0x1000C8000313F17);
                          }

                          if (v86 != 1)
                          {
                            break;
                          }

                          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v108, &v84);
                          if ((v86 & 1) != 0 && v85 >= 0x41 && v84)
                          {
                            MEMORY[0x1AC55A040](v84, 0x1000C8000313F17);
                          }

                          ++v92;
                          ++v89;
                          if (!--v71)
                          {
                            goto LABEL_205;
                          }
                        }

                        v74 = 0;
                      }

                      else
                      {
LABEL_205:
                        v72 = llvm::cast<mlir::ShapedType,mlir::Type>(&v105);
                        v74 = mlir::DenseElementsAttr::get(v72, v73, v108, v109);
                      }

                      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v108);
                      if ((v87 & 1) == 0)
                      {
                        v75 = v88;
                        v88 = 0;
                        if (v75)
                        {
                          (*(*v75 + 8))(v75);
                        }
                      }

                      if ((v90 & 1) == 0)
                      {
                        v76 = v91;
                        v91 = 0;
                        if (v76)
                        {
                          (*(*v76 + 8))(v76);
                        }
                      }

                      v37 = v74;
                    }

                    else
                    {
                      v37 = 0;
                    }

                    if (v96 == 1 && (v93 & 1) == 0)
                    {
                      v77 = v94;
                      v94 = 0;
                      if (v77)
                      {
                        v78 = v37;
                        (*(*v77 + 8))(v77);
                        v37 = v78;
                      }
                    }

                    if (v100 != 1)
                    {
                      goto LABEL_144;
                    }

                    if (v97)
                    {
                      goto LABEL_144;
                    }

                    v79 = v98;
                    v98 = 0;
                    if (!v79)
                    {
                      goto LABEL_144;
                    }

                    v48 = v37;
                    (*(*v79 + 8))(v79);
LABEL_118:
                    v37 = v48;
                    goto LABEL_144;
                  }
                }
              }
            }

            v37 = 0;
            goto LABEL_144;
          }
        }
      }
    }

    v14 = 0;
    goto LABEL_80;
  }

  LODWORD(v109) = 1;
  v108 = 0;
  v97 = &v108;
  v7 = mlir::detail::constant_int_value_binder::match(&v97, v6);
  v8 = v109;
  if (v7)
  {
    if (v109 < 0x41)
    {
      v9 = v108 == 0;
      goto LABEL_8;
    }

    if (v8 - llvm::APInt::countLeadingZerosSlowCase(&v108) > 0x40)
    {
      if (v108)
      {
        MEMORY[0x1AC55A040](v108, 0x1000C8000313F17);
      }

      goto LABEL_16;
    }

    v9 = *v108 == 0;
  }

  else
  {
    v9 = 0;
    if (v109 < 0x41)
    {
      goto LABEL_8;
    }
  }

  if (v108)
  {
    MEMORY[0x1AC55A040](v108, 0x1000C8000313F17);
  }

LABEL_8:
  if (!v9)
  {
LABEL_16:
    v5 = *(a2 + 40);
    goto LABEL_17;
  }

  v10 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
  v11 = *(a3 + 8);
  if (v11 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v11 + 1, 8);
    LODWORD(v11) = *(a3 + 8);
  }

  *(*a3 + 8 * v11) = v10;
  v12 = *(a3 + 12);
  v13 = (*(a3 + 8) + 1);
  *(a3 + 8) = v13;
LABEL_147:
  if (v13 >= v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v13 + 1, 8);
    LODWORD(v13) = *(a3 + 8);
  }

  *(*a3 + 8 * v13) = v10;
  ++*(a3 + 8);
  return 1;
}

uint64_t mlir::arith::MulUIExtendedOp::fold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 40);
  v6 = v5[1];
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v116) = 1;
  Context = 0;
  v104 = &Context;
  v8 = mlir::detail::constant_int_value_binder::match(&v104, v6);
  v9 = v116;
  if (!v8)
  {
    v10 = 0;
    if (v116 < 0x41)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  if (v116 < 0x41)
  {
    v10 = Context == 0;
    goto LABEL_20;
  }

  if (v9 - llvm::APInt::countLeadingZerosSlowCase(&Context) < 0x41)
  {
    v10 = *Context == 0;
LABEL_6:
    v11 = Context;
    if (Context)
    {
      goto LABEL_7;
    }

LABEL_20:
    v5 = *(a2 + 40);
    v12 = v5[1];
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_8:
    if (v12)
    {
      LODWORD(v116) = 1;
      Context = 0;
      v104 = &Context;
      v13 = mlir::detail::constant_int_value_binder::match(&v104, v12);
      v14 = v116;
      if (v13)
      {
        if (v116 < 0x41)
        {
          v15 = Context == 1;
          goto LABEL_17;
        }

        if (v14 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
        {
          if (Context)
          {
            MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
          }

LABEL_28:
          v5 = *(a2 + 40);
          goto LABEL_29;
        }

        v15 = *Context == 1;
      }

      else
      {
        v15 = 0;
        if (v116 < 0x41)
        {
          goto LABEL_17;
        }
      }

      if (Context)
      {
        MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
      }

LABEL_17:
      if (v15)
      {
        Context = mlir::Attribute::getContext((*a1 + 24));
        ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v16);
        v18 = *(*(*a1 + 72) + 24) | 4;
LABEL_157:
        v65 = *(a3 + 8);
        if (v65 >= *(a3 + 12))
        {
          v73 = ZeroAttr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v65 + 1, 8);
          ZeroAttr = v73;
          LODWORD(v65) = *(a3 + 8);
        }

        *(*a3 + 8 * v65) = v18;
        v21 = *(a3 + 12);
        v22 = (*(a3 + 8) + 1);
        *(a3 + 8) = v22;
        v19 = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_160;
      }

      goto LABEL_28;
    }

LABEL_29:
    v23 = *v5;
    if (*v5 && *(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_92;
    }

    v25 = v5 + 1;
    v24 = v5[1];
    if (v24 && *(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v23 = v5[1];
      goto LABEL_92;
    }

    if (v23)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5);
      v116 = v26;
      if (Context)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&Context);
        result = *v25;
        if (*v25)
        {
          goto LABEL_36;
        }

        goto LABEL_40;
      }
    }

    else
    {
      Context = 0;
      v116 = 0;
    }

    FunctionType = 0;
    result = *v25;
    if (*v25)
    {
LABEL_36:
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
      Context = result;
      v116 = v29;
      if (!result)
      {
        return result;
      }

      goto LABEL_41;
    }

LABEL_40:
    Context = result;
    v116 = 0;
    if (!result)
    {
      return result;
    }

LABEL_41:
    v30 = mlir::FunctionOpInterface::getFunctionType(&Context);
    result = 0;
    if (!FunctionType || !v30 || v30 != FunctionType)
    {
      return result;
    }

    v112 = FunctionType;
    v31 = *v5;
    if (*v5 && *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v23 = *v5;
      goto LABEL_92;
    }

    v32 = *v25;
    if (*v25)
    {
      v33 = *(*v32 + 136);
      if (v33 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v23 = *v25;
      }

      else
      {
        v23 = 0;
      }

      if (!v31 || v33 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_92;
      }

      if (v33 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v94 = *v5;
        v91 = v32;
        Value = mlir::AffineMapAttr::getValue(&v94);
        if (Value == mlir::AffineMapAttr::getValue(&v91))
        {
          mlir::IntegerAttr::getValue(&v94, &v100);
          mlir::IntegerAttr::getValue(&v91, &v97);
          llvm::APInt::operator*(&v100, &v97, &v104);
          LODWORD(v116) = v105;
          Context = v104;
          v117[0] = 1;
          if (v98 >= 0x41 && v97)
          {
            MEMORY[0x1AC55A040](v97, 0x1000C8000313F17);
          }

          if (v101 >= 0x41 && v100)
          {
            MEMORY[0x1AC55A040](v100, 0x1000C8000313F17);
          }

          v40 = mlir::IntegerAttr::get(v112, &Context);
          goto LABEL_80;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v5))
        {
          v35 = v31;
        }

        else
        {
          v35 = 0;
        }

        Context = v35;
        if (v35 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v36 = v5[1];
          v94 = *v5;
          v91 = v36;
          v37 = mlir::ArrayAttr::getValue(&v94);
          if (v37 == mlir::ArrayAttr::getValue(&v91))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v94, &v100);
            mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v91, &v97);
            llvm::APInt::operator*(&v100, &v97, &v104);
            LODWORD(v116) = v105;
            Context = v104;
            v117[0] = 1;
            if (v98 >= 0x41 && v97)
            {
              MEMORY[0x1AC55A040](v97, 0x1000C8000313F17);
            }

            if (v101 >= 0x41 && v100)
            {
              MEMORY[0x1AC55A040](v100, 0x1000C8000313F17);
            }

            v38 = llvm::cast<mlir::ShapedType,mlir::Type>(&v112);
            v40 = mlir::DenseElementsAttr::get(v38, v39, &Context, 1);
LABEL_80:
            v23 = v40;
            if ((v117[0] & 1) != 0 && v116 >= 0x41 && Context)
            {
              MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
            }

            goto LABEL_92;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v5 + 1))
        {
          v110 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5);
          v111 = v42;
          v108 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5 + 1);
          v109 = v43;
          Type = mlir::ElementsAttr::getType(&v110);
          if (Type == mlir::ElementsAttr::getType(&v108))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v110, &v104);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v108, &v100);
            if (v107 == 1 && v103 == 1)
            {
              LOWORD(v97) = v104;
              if (v104 == 1)
              {
                v98 = v105;
              }

              else
              {
                (*(*v105 + 16))(&v98);
              }

              v99 = v106;
              LOWORD(v94) = v100;
              if (v100 == 1)
              {
                v95 = v101;
              }

              else
              {
                (*(*v101 + 16))(&v95);
              }

              v96 = v102;
              Context = v117;
              v116 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v110, v111);
              llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
              v69 = mlir::ElementsAttr::getNumElements(v110, v111);
              if (v69)
              {
                v70 = v69;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v97, &v89);
                  mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v94, &v87);
                  llvm::APInt::operator*(&v89, &v87, &v113);
                  v92 = v114;
                  v91 = v113;
                  v93 = 1;
                  if (v88 >= 0x41 && v87)
                  {
                    MEMORY[0x1AC55A040](v87, 0x1000C8000313F17);
                  }

                  if (v90 >= 0x41 && v89)
                  {
                    MEMORY[0x1AC55A040](v89, 0x1000C8000313F17);
                  }

                  if (v93 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v91);
                  if ((v93 & 1) != 0 && v92 >= 0x41 && v91)
                  {
                    MEMORY[0x1AC55A040](v91, 0x1000C8000313F17);
                  }

                  ++v99;
                  ++v96;
                  if (!--v70)
                  {
                    goto LABEL_192;
                  }
                }

                v23 = 0;
              }

              else
              {
LABEL_192:
                v71 = llvm::cast<mlir::ShapedType,mlir::Type>(&v112);
                v23 = mlir::DenseElementsAttr::get(v71, v72, Context, v116);
              }

              llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
              if ((v94 & 1) == 0)
              {
                v74 = v95;
                v95 = 0;
                if (v74)
                {
                  (*(*v74 + 8))(v74);
                }
              }

              if ((v97 & 1) == 0)
              {
                v75 = v98;
                v98 = 0;
                if (v75)
                {
                  (*(*v75 + 8))(v75);
                }
              }
            }

            else
            {
              v23 = 0;
            }

            if (v103 == 1 && (v100 & 1) == 0)
            {
              v66 = v101;
              v101 = 0;
              if (v66)
              {
                (*(*v66 + 8))(v66);
              }
            }

            if (v107 == 1 && (v104 & 1) == 0)
            {
              v67 = v105;
              v105 = 0;
              if (v67)
              {
                (*(*v67 + 8))(v67);
              }
            }

LABEL_92:
            if (!v23)
            {
              return 0;
            }

            v45 = *(a2 + 40);
            ZeroAttr = *v45;
            if (*v45 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_156;
            }

            v47 = v45 + 1;
            v46 = v45[1];
            if (v46 && *(*v46 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              ZeroAttr = v45[1];
              goto LABEL_156;
            }

            if (ZeroAttr)
            {
              Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
              v116 = v48;
              if (Context)
              {
                v49 = mlir::FunctionOpInterface::getFunctionType(&Context);
                ZeroAttr = *v47;
                if (*v47)
                {
                  goto LABEL_100;
                }

                goto LABEL_105;
              }
            }

            else
            {
              Context = 0;
              v116 = 0;
            }

            v49 = 0;
            ZeroAttr = *v47;
            if (*v47)
            {
LABEL_100:
              ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
              Context = ZeroAttr;
              v116 = v50;
              if (!ZeroAttr)
              {
                goto LABEL_156;
              }

              goto LABEL_106;
            }

LABEL_105:
            Context = ZeroAttr;
            v116 = 0;
            if (!ZeroAttr)
            {
LABEL_156:
              v18 = v23 & 0xFFFFFFFFFFFFFFFBLL;
              goto LABEL_157;
            }

LABEL_106:
            v51 = mlir::FunctionOpInterface::getFunctionType(&Context);
            ZeroAttr = 0;
            if (!v49 || !v51 || v51 != v49)
            {
              goto LABEL_156;
            }

            v112 = v49;
            v52 = *v45;
            if (*v45 && *(*v52 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              ZeroAttr = *v45;
              goto LABEL_156;
            }

            v53 = *v47;
            if (*v47)
            {
              v54 = *(*v53 + 136);
              if (v54 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                ZeroAttr = *v47;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (!v52 || v54 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
                goto LABEL_156;
              }

              if (v54 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v52 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
              {
                v94 = *v45;
                v91 = v53;
                v55 = mlir::AffineMapAttr::getValue(&v94);
                if (v55 == mlir::AffineMapAttr::getValue(&v91))
                {
                  mlir::IntegerAttr::getValue(&v94, &v100);
                  mlir::IntegerAttr::getValue(&v91, &v97);
                  llvm::APIntOps::mulhu(&v104, &v100, &v97);
                  LODWORD(v116) = v105;
                  Context = v104;
                  v117[0] = 1;
                  if (v98 >= 0x41 && v97)
                  {
                    MEMORY[0x1AC55A040](v97, 0x1000C8000313F17);
                  }

                  if (v101 >= 0x41 && v100)
                  {
                    MEMORY[0x1AC55A040](v100, 0x1000C8000313F17);
                  }

                  ZeroAttr = mlir::IntegerAttr::get(v112, &Context);
                  if ((v117[0] & 1) == 0)
                  {
                    goto LABEL_156;
                  }

                  goto LABEL_127;
                }
              }

              else
              {
                if (mlir::DenseElementsAttr::classof(*v45))
                {
                  v57 = v52;
                }

                else
                {
                  v57 = 0;
                }

                Context = v57;
                if (v57 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v45 + 1))
                {
                  v58 = v45[1];
                  v94 = *v45;
                  v91 = v58;
                  v59 = mlir::ArrayAttr::getValue(&v94);
                  if (v59 == mlir::ArrayAttr::getValue(&v91))
                  {
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v94, &v100);
                    mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v91, &v97);
                    llvm::APIntOps::mulhu(&v104, &v100, &v97);
                    LODWORD(v116) = v105;
                    Context = v104;
                    v117[0] = 1;
                    if (v98 >= 0x41 && v97)
                    {
                      MEMORY[0x1AC55A040](v97, 0x1000C8000313F17);
                    }

                    if (v101 >= 0x41 && v100)
                    {
                      MEMORY[0x1AC55A040](v100, 0x1000C8000313F17);
                    }

                    v60 = llvm::cast<mlir::ShapedType,mlir::Type>(&v112);
                    ZeroAttr = mlir::DenseElementsAttr::get(v60, v61, &Context, 1);
                    if ((v117[0] & 1) == 0)
                    {
                      goto LABEL_156;
                    }

LABEL_127:
                    if (v116 < 0x41 || !Context)
                    {
                      goto LABEL_156;
                    }

                    v56 = ZeroAttr;
                    MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
                    goto LABEL_130;
                  }
                }

                else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v45) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v45 + 1))
                {
                  v110 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v45);
                  v111 = v62;
                  v108 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v45 + 1);
                  v109 = v63;
                  v64 = mlir::ElementsAttr::getType(&v110);
                  if (v64 == mlir::ElementsAttr::getType(&v108))
                  {
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v110, &v104);
                    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v108, &v100);
                    if (v107 == 1 && v103 == 1)
                    {
                      LOWORD(v97) = v104;
                      if (v104 == 1)
                      {
                        v98 = v105;
                      }

                      else
                      {
                        (*(*v105 + 16))(&v98);
                      }

                      v99 = v106;
                      LOWORD(v94) = v100;
                      if (v100 == 1)
                      {
                        v95 = v101;
                      }

                      else
                      {
                        (*(*v101 + 16))(&v95);
                      }

                      v96 = v102;
                      Context = v117;
                      v116 = 0x400000000;
                      v76 = mlir::ElementsAttr::getNumElements(v110, v111);
                      llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, v76);
                      v77 = mlir::ElementsAttr::getNumElements(v110, v111);
                      if (v77)
                      {
                        v78 = v77;
                        while (1)
                        {
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v97, &v89);
                          mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v94, &v87);
                          llvm::APIntOps::mulhu(&v113, &v89, &v87);
                          v92 = v114;
                          v91 = v113;
                          v93 = 1;
                          if (v88 >= 0x41 && v87)
                          {
                            MEMORY[0x1AC55A040](v87, 0x1000C8000313F17);
                          }

                          if (v90 >= 0x41 && v89)
                          {
                            MEMORY[0x1AC55A040](v89, 0x1000C8000313F17);
                          }

                          if (v93 != 1)
                          {
                            break;
                          }

                          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v91);
                          if ((v93 & 1) != 0 && v92 >= 0x41 && v91)
                          {
                            MEMORY[0x1AC55A040](v91, 0x1000C8000313F17);
                          }

                          ++v99;
                          ++v96;
                          if (!--v78)
                          {
                            goto LABEL_218;
                          }
                        }

                        v81 = 0;
                      }

                      else
                      {
LABEL_218:
                        v79 = llvm::cast<mlir::ShapedType,mlir::Type>(&v112);
                        v81 = mlir::DenseElementsAttr::get(v79, v80, Context, v116);
                      }

                      llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                      if ((v94 & 1) == 0)
                      {
                        v82 = v95;
                        v95 = 0;
                        if (v82)
                        {
                          (*(*v82 + 8))(v82);
                        }
                      }

                      if ((v97 & 1) == 0)
                      {
                        v83 = v98;
                        v98 = 0;
                        if (v83)
                        {
                          (*(*v83 + 8))(v83);
                        }
                      }

                      ZeroAttr = v81;
                    }

                    else
                    {
                      ZeroAttr = 0;
                    }

                    if (v103 == 1 && (v100 & 1) == 0)
                    {
                      v84 = v101;
                      v101 = 0;
                      if (v84)
                      {
                        v85 = ZeroAttr;
                        (*(*v84 + 8))(v84);
                        ZeroAttr = v85;
                      }
                    }

                    if (v107 != 1)
                    {
                      goto LABEL_156;
                    }

                    if (v104)
                    {
                      goto LABEL_156;
                    }

                    v86 = v105;
                    v105 = 0;
                    if (!v86)
                    {
                      goto LABEL_156;
                    }

                    v56 = ZeroAttr;
                    (*(*v86 + 8))(v86);
LABEL_130:
                    ZeroAttr = v56;
                    goto LABEL_156;
                  }
                }
              }
            }

            ZeroAttr = 0;
            goto LABEL_156;
          }
        }
      }
    }

    v23 = 0;
    goto LABEL_92;
  }

  v10 = 0;
  v11 = Context;
  if (!Context)
  {
    goto LABEL_20;
  }

LABEL_7:
  MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  v5 = *(a2 + 40);
  v12 = v5[1];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_21:
  v19 = v12 & 0xFFFFFFFFFFFFFFFBLL;
  v20 = *(a3 + 8);
  if (v20 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v20 + 1, 8);
    LODWORD(v20) = *(a3 + 8);
  }

  *(*a3 + 8 * v20) = v19;
  v21 = *(a3 + 12);
  v22 = (*(a3 + 8) + 1);
  *(a3 + 8) = v22;
LABEL_160:
  if (v22 >= v21)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v22 + 1, 8);
    LODWORD(v22) = *(a3 + 8);
  }

  *(*a3 + 8 * v22) = v19;
  ++*(a3 + 8);
  return 1;
}

unint64_t mlir::arith::DivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 1;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  FunctionType = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::FunctionOpInterface::getFunctionType(&v68);
  v11 = 0;
  if (!FunctionType || !v17 || v17 != FunctionType)
  {
    goto LABEL_80;
  }

  v67 = FunctionType;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      Value = mlir::AffineMapAttr::getValue(&v53);
      if (Value != mlir::AffineMapAttr::getValue(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        Type = mlir::ElementsAttr::getType(&v65);
        if (Type == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::ArrayAttr::getValue(&v53);
    if (v24 == mlir::ArrayAttr::getValue(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

mlir::Operation *mlir::arith::DivUIOp::getSpeculatability(mlir::arith::DivUIOp *this)
{
  v1 = *(*(*this + 72) + 56);
  v3 = mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  v4 = v1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return (mlir::detail::constant_int_range_predicate_matcher::match(&v3, result) & 1);
  }

  return result;
}

unint64_t mlir::arith::DivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 1;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  FunctionType = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::FunctionOpInterface::getFunctionType(&v68);
  v11 = 0;
  if (!FunctionType || !v17 || v17 != FunctionType)
  {
    goto LABEL_80;
  }

  v67 = FunctionType;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      Value = mlir::AffineMapAttr::getValue(&v53);
      if (Value != mlir::AffineMapAttr::getValue(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        Type = mlir::ElementsAttr::getType(&v65);
        if (Type == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::ArrayAttr::getValue(&v53);
    if (v24 == mlir::ArrayAttr::getValue(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

BOOL mlir::arith::DivSIOp::getSpeculatability(mlir::arith::DivSIOp *this)
{
  v1 = *(*(*this + 72) + 56);
  v6 = mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
  v7 = v1;
  DefiningOp = mlir::Value::getDefiningOp(&v7);
  result = 0;
  if (DefiningOp)
  {
    if (mlir::detail::constant_int_range_predicate_matcher::match(&v6, DefiningOp))
    {
      v5 = mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke;
      v7 = v1;
      v3 = mlir::Value::getDefiningOp(&v7);
      if (v3)
      {
        if (mlir::detail::constant_int_range_predicate_matcher::match(&v5, v3))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t mlir::arith::CeilDivUIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 1;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  FunctionType = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::FunctionOpInterface::getFunctionType(&v68);
  v11 = 0;
  if (!FunctionType || !v17 || v17 != FunctionType)
  {
    goto LABEL_80;
  }

  v67 = FunctionType;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      Value = mlir::AffineMapAttr::getValue(&v53);
      if (Value != mlir::AffineMapAttr::getValue(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        Type = mlir::ElementsAttr::getType(&v65);
        if (Type == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::ArrayAttr::getValue(&v53);
    if (v24 == mlir::ArrayAttr::getValue(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::CeilDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 1;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  FunctionType = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::FunctionOpInterface::getFunctionType(&v68);
  v11 = 0;
  if (!FunctionType || !v17 || v17 != FunctionType)
  {
    goto LABEL_80;
  }

  v67 = FunctionType;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      Value = mlir::AffineMapAttr::getValue(&v53);
      if (Value != mlir::AffineMapAttr::getValue(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        Type = mlir::ElementsAttr::getType(&v65);
        if (Type == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::ArrayAttr::getValue(&v53);
    if (v24 == mlir::ArrayAttr::getValue(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::FloorDivSIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 1;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  FunctionType = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::FunctionOpInterface::getFunctionType(&v68);
  v11 = 0;
  if (!FunctionType || !v17 || v17 != FunctionType)
  {
    goto LABEL_80;
  }

  v67 = FunctionType;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      Value = mlir::AffineMapAttr::getValue(&v53);
      if (Value != mlir::AffineMapAttr::getValue(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        Type = mlir::ElementsAttr::getType(&v65);
        if (Type == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x1AC55A040](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x1AC55A040](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::ArrayAttr::getValue(&v53);
    if (v24 == mlir::ArrayAttr::getValue(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x1AC55A040](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return 0;
  }

  else
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::RemUIOp::fold(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v70) = 1;
    Context = 0;
    v61 = &Context;
    v6 = mlir::detail::constant_int_value_binder::match(&v61, v4);
    v7 = v70;
    if (v6)
    {
      if (v70 < 0x41)
      {
        v8 = Context == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
      {
        if (Context)
        {
          MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *Context == 1;
    }

    else
    {
      v8 = 0;
      if (v70 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (Context)
    {
      MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      Context = mlir::Attribute::getContext((*a1 + 24));
      return mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8), v9) & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_14;
  }

LABEL_15:
  v43 = 0;
  v42 = &v43;
  v11 = *v3;
  if (*v3 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v12 = *v3;
    goto LABEL_80;
  }

  v13 = (v3 + 1);
  v12 = v3[1];
  if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v11)
  {
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v11);
    v70 = v14;
    if (Context)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&Context);
      v16 = *v13;
      if (*v13)
      {
        goto LABEL_22;
      }

LABEL_27:
      Context = v16;
      v70 = 0;
      if (!v16)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    Context = 0;
    v70 = 0;
  }

  FunctionType = 0;
  v16 = *v13;
  if (!*v13)
  {
    goto LABEL_27;
  }

LABEL_22:
  Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v16);
  v70 = v17;
  if (!Context)
  {
    goto LABEL_79;
  }

LABEL_28:
  v18 = mlir::FunctionOpInterface::getFunctionType(&Context);
  v12 = 0;
  if (!FunctionType || !v18 || v18 != FunctionType)
  {
    goto LABEL_80;
  }

  v68 = FunctionType;
  v19 = *v3;
  if (*v3 && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v12 = *v3;
    goto LABEL_80;
  }

  v20 = *v13;
  if (*v13)
  {
    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v12 = *v13;
    }

    else
    {
      v12 = 0;
    }

    if (!v19 || v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v54 = *v3;
      v51 = v20;
      Value = mlir::AffineMapAttr::getValue(&v54);
      if (Value != mlir::AffineMapAttr::getValue(&v51))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v54, &v61);
      mlir::IntegerAttr::getValue(&v51, &v57);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v42, &v61, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
      }

      if (v71 != 1)
      {
        goto LABEL_79;
      }

      v28 = mlir::IntegerAttr::get(v68, &Context);
LABEL_68:
      v12 = v28;
      if ((v71 & 1) != 0 && v70 >= 0x41 && Context)
      {
        MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    Context = v23;
    if (!v23 || !mlir::DenseElementsAttr::isSplat(&Context) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v66 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v67 = v30;
        v65[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v65[1] = v31;
        Type = mlir::ElementsAttr::getType(&v66);
        if (Type == mlir::ElementsAttr::getType(v65))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v66, &v61);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v65, &v57);
          if (v64 == 1 && v60 == 1)
          {
            LOWORD(v54) = v61;
            if (v61 == 1)
            {
              v55 = v62;
            }

            else
            {
              (*(*v62 + 16))(&v55);
            }

            v56 = v63;
            LOWORD(v51) = v57;
            if (v57 == 1)
            {
              v52 = v58;
            }

            else
            {
              (*(*v58 + 16))(&v52);
            }

            v53 = v59;
            Context = &v71;
            v70 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v66, v67);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
            v36 = mlir::ElementsAttr::getNumElements(v66, v67);
            if (v36)
            {
              v37 = v36;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v54, &v46);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v51, &v44);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v48, &v42, &v46, &v44);
                if (v45 >= 0x41 && v44)
                {
                  MEMORY[0x1AC55A040](v44, 0x1000C8000313F17);
                }

                if (v47 >= 0x41 && v46)
                {
                  MEMORY[0x1AC55A040](v46, 0x1000C8000313F17);
                }

                if (v50 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v48);
                if ((v50 & 1) != 0 && v49 >= 0x41 && v48)
                {
                  MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
                }

                ++v56;
                ++v53;
                if (!--v37)
                {
                  goto LABEL_110;
                }
              }

              v12 = 0;
            }

            else
            {
LABEL_110:
              v38 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
              v12 = mlir::DenseElementsAttr::get(v38, v39, Context, v70);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
            if ((v51 & 1) == 0)
            {
              v40 = v52;
              v52 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }

            if ((v54 & 1) == 0)
            {
              v41 = v55;
              v55 = 0;
              if (v41)
              {
                (*(*v41 + 8))(v41);
              }
            }
          }

          else
          {
            v12 = 0;
          }

          if (v60 == 1 && (v57 & 1) == 0)
          {
            v33 = v58;
            v58 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          if (v64 == 1 && (v61 & 1) == 0)
          {
            v34 = v62;
            v62 = 0;
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v24 = v3[1];
    v54 = *v3;
    v51 = v24;
    v25 = mlir::ArrayAttr::getValue(&v54);
    if (v25 == mlir::ArrayAttr::getValue(&v51))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v54, &v61);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v51, &v57);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v42, &v61, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
      }

      if (v71 == 1)
      {
        v26 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
        v28 = mlir::DenseElementsAttr::get(v26, v27, &Context, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v12 = 0;
LABEL_80:
  if (v43)
  {
    return 0;
  }

  else
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::RemSIOp::fold(uint64_t a1, uint64_t a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v70) = 1;
    Context = 0;
    v61 = &Context;
    v6 = mlir::detail::constant_int_value_binder::match(&v61, v4);
    v7 = v70;
    if (v6)
    {
      if (v70 < 0x41)
      {
        v8 = Context == 1;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
      {
        if (Context)
        {
          MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *Context == 1;
    }

    else
    {
      v8 = 0;
      if (v70 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (Context)
    {
      MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      Context = mlir::Attribute::getContext((*a1 + 24));
      return mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8), v9) & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_14;
  }

LABEL_15:
  v43 = 0;
  v42 = &v43;
  v11 = *v3;
  if (*v3 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v12 = *v3;
    goto LABEL_80;
  }

  v13 = (v3 + 1);
  v12 = v3[1];
  if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v11)
  {
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v11);
    v70 = v14;
    if (Context)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&Context);
      v16 = *v13;
      if (*v13)
      {
        goto LABEL_22;
      }

LABEL_27:
      Context = v16;
      v70 = 0;
      if (!v16)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    Context = 0;
    v70 = 0;
  }

  FunctionType = 0;
  v16 = *v13;
  if (!*v13)
  {
    goto LABEL_27;
  }

LABEL_22:
  Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v16);
  v70 = v17;
  if (!Context)
  {
    goto LABEL_79;
  }

LABEL_28:
  v18 = mlir::FunctionOpInterface::getFunctionType(&Context);
  v12 = 0;
  if (!FunctionType || !v18 || v18 != FunctionType)
  {
    goto LABEL_80;
  }

  v68 = FunctionType;
  v19 = *v3;
  if (*v3 && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v12 = *v3;
    goto LABEL_80;
  }

  v20 = *v13;
  if (*v13)
  {
    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v12 = *v13;
    }

    else
    {
      v12 = 0;
    }

    if (!v19 || v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v54 = *v3;
      v51 = v20;
      Value = mlir::AffineMapAttr::getValue(&v54);
      if (Value != mlir::AffineMapAttr::getValue(&v51))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v54, &v61);
      mlir::IntegerAttr::getValue(&v51, &v57);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v42, &v61, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
      }

      if (v71 != 1)
      {
        goto LABEL_79;
      }

      v28 = mlir::IntegerAttr::get(v68, &Context);
LABEL_68:
      v12 = v28;
      if ((v71 & 1) != 0 && v70 >= 0x41 && Context)
      {
        MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    Context = v23;
    if (!v23 || !mlir::DenseElementsAttr::isSplat(&Context) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v66 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v67 = v30;
        v65[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v65[1] = v31;
        Type = mlir::ElementsAttr::getType(&v66);
        if (Type == mlir::ElementsAttr::getType(v65))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v66, &v61);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v65, &v57);
          if (v64 == 1 && v60 == 1)
          {
            LOWORD(v54) = v61;
            if (v61 == 1)
            {
              v55 = v62;
            }

            else
            {
              (*(*v62 + 16))(&v55);
            }

            v56 = v63;
            LOWORD(v51) = v57;
            if (v57 == 1)
            {
              v52 = v58;
            }

            else
            {
              (*(*v58 + 16))(&v52);
            }

            v53 = v59;
            Context = &v71;
            v70 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v66, v67);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
            v36 = mlir::ElementsAttr::getNumElements(v66, v67);
            if (v36)
            {
              v37 = v36;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v54, &v46);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v51, &v44);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v48, &v42, &v46, &v44);
                if (v45 >= 0x41 && v44)
                {
                  MEMORY[0x1AC55A040](v44, 0x1000C8000313F17);
                }

                if (v47 >= 0x41 && v46)
                {
                  MEMORY[0x1AC55A040](v46, 0x1000C8000313F17);
                }

                if (v50 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v48);
                if ((v50 & 1) != 0 && v49 >= 0x41 && v48)
                {
                  MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
                }

                ++v56;
                ++v53;
                if (!--v37)
                {
                  goto LABEL_110;
                }
              }

              v12 = 0;
            }

            else
            {
LABEL_110:
              v38 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
              v12 = mlir::DenseElementsAttr::get(v38, v39, Context, v70);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
            if ((v51 & 1) == 0)
            {
              v40 = v52;
              v52 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }

            if ((v54 & 1) == 0)
            {
              v41 = v55;
              v55 = 0;
              if (v41)
              {
                (*(*v41 + 8))(v41);
              }
            }
          }

          else
          {
            v12 = 0;
          }

          if (v60 == 1 && (v57 & 1) == 0)
          {
            v33 = v58;
            v58 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          if (v64 == 1 && (v61 & 1) == 0)
          {
            v34 = v62;
            v62 = 0;
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v24 = v3[1];
    v54 = *v3;
    v51 = v24;
    v25 = mlir::ArrayAttr::getValue(&v54);
    if (v25 == mlir::ArrayAttr::getValue(&v51))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v54, &v61);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v51, &v57);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v42, &v61, &v57);
      if (v58 >= 0x41 && v57)
      {
        MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x1AC55A040](v61, 0x1000C8000313F17);
      }

      if (v71 == 1)
      {
        v26 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
        v28 = mlir::DenseElementsAttr::get(v26, v27, &Context, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v12 = 0;
LABEL_80:
  if (v43)
  {
    return 0;
  }

  else
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

unint64_t mlir::arith::AndIOp::fold(uint64_t *a1, uint64_t a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 40) + 8);
  if (!v4)
  {
    v63 = 1;
    v62 = 0;
    goto LABEL_21;
  }

  LODWORD(v90) = 1;
  Context = 0;
  v81 = &Context;
  v5 = mlir::detail::constant_int_value_binder::match(&v81, v4);
  v6 = v90;
  if (v5)
  {
    if (v90 < 0x41)
    {
      v7 = Context == 0;
      goto LABEL_12;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
    {
      if (Context)
      {
        MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
      }

      goto LABEL_16;
    }

    v7 = *Context == 0;
  }

  else
  {
    v7 = 0;
    if (v90 < 0x41)
    {
      goto LABEL_12;
    }
  }

  if (!Context)
  {
LABEL_12:
    if (v7)
    {
      return *(*(*a1 + 72) + 56) | 4;
    }

    goto LABEL_16;
  }

  MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
  if (v7)
  {
    return *(*(*a1 + 72) + 56) | 4;
  }

LABEL_16:
  v9 = *(*(a2 + 40) + 8);
  v63 = 1;
  v62 = 0;
  Context = &v62;
  if (v9 && mlir::detail::constant_int_value_binder::match(&Context, v9))
  {
    v10 = v63;
    if (v63)
    {
      if (v63 > 0x40)
      {
        if (llvm::APInt::countTrailingOnesSlowCase(&v62) != v10)
        {
          goto LABEL_21;
        }
      }

      else if (v62 != 0xFFFFFFFFFFFFFFFFLL >> -v63)
      {
        goto LABEL_21;
      }
    }

    result = *(*(*a1 + 72) + 24) | 4;
    goto LABEL_123;
  }

LABEL_21:
  v11 = *(*a1 + 72);
  v12 = *(v11 + 56);
  v81 = *(v11 + 24);
  v82 = &v62;
  v74 = v12;
  DefiningOp = mlir::Value::getDefiningOp(&v74);
  if (DefiningOp)
  {
    v77 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 2)
    {
      LOBYTE(v71) = 1;
      Context = &v71;
      v90 = &v77;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v81, &Context);
      if (v71 == 1)
      {
        v14 = v63;
        if (!v63)
        {
          goto LABEL_97;
        }

        if (v63 > 0x40)
        {
          if (llvm::APInt::countTrailingOnesSlowCase(&v62) == v14)
          {
            goto LABEL_97;
          }
        }

        else if (v62 == 0xFFFFFFFFFFFFFFFFLL >> -v63)
        {
          goto LABEL_97;
        }
      }
    }
  }

  v15 = *(*a1 + 72);
  v16 = *(v15 + 24);
  v81 = *(v15 + 56);
  v82 = &v62;
  v74 = v16;
  v17 = mlir::Value::getDefiningOp(&v74);
  if (v17)
  {
    v77 = v17;
    if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id && (*(v17 + 46) & 0x80) != 0 && *(v17 + 68) == 2)
    {
      LOBYTE(v71) = 1;
      Context = &v71;
      v90 = &v77;
      mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v81, &Context);
      if (v71 == 1)
      {
        v18 = v63;
        if (!v63)
        {
          goto LABEL_97;
        }

        if (v63 <= 0x40)
        {
          if (v62 != 0xFFFFFFFFFFFFFFFFLL >> -v63)
          {
            goto LABEL_41;
          }

LABEL_97:
          Context = mlir::Attribute::getContext((*a1 + 24));
          ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8), v41);
          goto LABEL_122;
        }

        if (llvm::APInt::countTrailingOnesSlowCase(&v62) == v18)
        {
          goto LABEL_97;
        }
      }
    }
  }

LABEL_41:
  v19 = *a1;
  Context = *(*(v19 + 72) + 24);
  v20 = mlir::Value::getDefiningOp(&Context);
  if (!v20)
  {
    v21 = *(v19 + 72);
    goto LABEL_47;
  }

  v21 = *(v19 + 72);
  if (*(*(v20 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id || (v22 = *(v21 + 56), v23 = *(v20 + 72), v22 != *(v23 + 24)) && v22 != *(v23 + 56))
  {
LABEL_47:
    Context = *(v21 + 56);
    v20 = mlir::Value::getDefiningOp(&Context);
    if (!v20)
    {
      goto LABEL_56;
    }

    if (*(*(v20 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
    {
      goto LABEL_56;
    }

    v24 = *(*(v19 + 72) + 24);
    v25 = *(v20 + 72);
    if (v24 != *(v25 + 24) && v24 != *(v25 + 56))
    {
      goto LABEL_56;
    }
  }

  if (*(v20 + 36))
  {
    v26 = v20 - 16;
  }

  else
  {
    v26 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v26, 0);
  if (NextResultAtOffset)
  {
    result = NextResultAtOffset | 4;
    goto LABEL_123;
  }

LABEL_56:
  v28 = *(a2 + 40);
  ZeroAttr = *v28;
  if (*v28 && *(*ZeroAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_122;
  }

  v31 = v28 + 1;
  v30 = v28[1];
  if (v30 && *(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    ZeroAttr = v28[1];
    goto LABEL_122;
  }

  if (ZeroAttr)
  {
    Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
    v90 = v32;
    if (Context)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&Context);
      ZeroAttr = *v31;
      if (*v31)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    }
  }

  else
  {
    Context = 0;
    v90 = 0;
  }

  FunctionType = 0;
  ZeroAttr = *v31;
  if (*v31)
  {
LABEL_63:
    ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
    Context = ZeroAttr;
    v90 = v34;
    if (!ZeroAttr)
    {
      goto LABEL_122;
    }

    goto LABEL_68;
  }

LABEL_67:
  Context = ZeroAttr;
  v90 = 0;
  if (!ZeroAttr)
  {
    goto LABEL_122;
  }

LABEL_68:
  v35 = mlir::FunctionOpInterface::getFunctionType(&Context);
  ZeroAttr = 0;
  if (!FunctionType || !v35 || v35 != FunctionType)
  {
    goto LABEL_122;
  }

  v88 = FunctionType;
  v36 = *v28;
  if (*v28 && *(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    ZeroAttr = *v28;
    goto LABEL_122;
  }

  v37 = *v31;
  if (!*v31)
  {
    goto LABEL_121;
  }

  v38 = *(*v37 + 136);
  if (v38 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    ZeroAttr = *v31;
  }

  else
  {
    ZeroAttr = 0;
  }

  if (!v36 || v38 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_122;
  }

  if (v38 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || *(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(*v28))
    {
      v42 = v36;
    }

    else
    {
      v42 = 0;
    }

    Context = v42;
    if (v42 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v28 + 1))
    {
      v43 = v28[1];
      v74 = *v28;
      v71 = v43;
      Value = mlir::ArrayAttr::getValue(&v74);
      if (Value == mlir::ArrayAttr::getValue(&v71))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v74, &v81);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v77);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v81, &v77);
        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x1AC55A040](v77, 0x1000C8000313F17);
        }

        if (v82 >= 0x41 && v81)
        {
          MEMORY[0x1AC55A040](v81, 0x1000C8000313F17);
        }

        if (v91 == 1)
        {
          v45 = llvm::cast<mlir::ShapedType,mlir::Type>(&v88);
          ZeroAttr = mlir::DenseElementsAttr::get(v45, v46, &Context, 1);
          if ((v91 & 1) == 0)
          {
            goto LABEL_122;
          }

          goto LABEL_90;
        }
      }
    }

    else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v28) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v28 + 1))
    {
      v86 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v28);
      v87 = v47;
      v85[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v28 + 1);
      v85[1] = v48;
      Type = mlir::ElementsAttr::getType(&v86);
      if (Type == mlir::ElementsAttr::getType(v85))
      {
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v86, &v81);
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(v85, &v77);
        if (v84 == 1 && v80 == 1)
        {
          LOWORD(v74) = v81;
          if (v81 == 1)
          {
            v75 = v82;
          }

          else
          {
            (*(*v82 + 16))(&v75);
          }

          v76 = v83;
          LOWORD(v71) = v77;
          if (v77 == 1)
          {
            v72 = v78;
          }

          else
          {
            (*(*v78 + 16))(&v72);
          }

          v73 = v79;
          Context = &v91;
          v90 = 0x400000000;
          NumElements = mlir::ElementsAttr::getNumElements(v86, v87);
          llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
          v52 = mlir::ElementsAttr::getNumElements(v86, v87);
          if (v52)
          {
            v53 = v52;
            while (1)
            {
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v74, &v66);
              mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v71, &v64);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v66, &v64);
              if (v65 >= 0x41 && v64)
              {
                MEMORY[0x1AC55A040](v64, 0x1000C8000313F17);
              }

              if (v67 >= 0x41 && v66)
              {
                MEMORY[0x1AC55A040](v66, 0x1000C8000313F17);
              }

              if (v70 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v68);
              if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
              {
                MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
              }

              ++v76;
              ++v73;
              if (!--v53)
              {
                goto LABEL_146;
              }
            }

            v56 = 0;
          }

          else
          {
LABEL_146:
            v54 = llvm::cast<mlir::ShapedType,mlir::Type>(&v88);
            v56 = mlir::DenseElementsAttr::get(v54, v55, Context, v90);
          }

          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
          if ((v71 & 1) == 0)
          {
            v57 = v72;
            v72 = 0;
            if (v57)
            {
              (*(*v57 + 8))(v57);
            }
          }

          if ((v74 & 1) == 0)
          {
            v58 = v75;
            v75 = 0;
            if (v58)
            {
              (*(*v58 + 8))(v58);
            }
          }

          ZeroAttr = v56;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (v80 == 1 && (v77 & 1) == 0)
        {
          v59 = v78;
          v78 = 0;
          if (v59)
          {
            v60 = ZeroAttr;
            (*(*v59 + 8))(v59);
            ZeroAttr = v60;
          }
        }

        if (v84 != 1)
        {
          goto LABEL_122;
        }

        if (v81)
        {
          goto LABEL_122;
        }

        v61 = v82;
        v82 = 0;
        if (!v61)
        {
          goto LABEL_122;
        }

        v40 = ZeroAttr;
        (*(*v61 + 8))(v61);
LABEL_93:
        ZeroAttr = v40;
        goto LABEL_122;
      }
    }

LABEL_121:
    ZeroAttr = 0;
    goto LABEL_122;
  }

  v74 = *v28;
  v71 = v37;
  v39 = mlir::AffineMapAttr::getValue(&v74);
  if (v39 != mlir::AffineMapAttr::getValue(&v71))
  {
    goto LABEL_121;
  }

  mlir::IntegerAttr::getValue(&v74, &v81);
  mlir::IntegerAttr::getValue(&v71, &v77);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v81, &v77);
  if (v78 >= 0x41 && v77)
  {
    MEMORY[0x1AC55A040](v77, 0x1000C8000313F17);
  }

  if (v82 >= 0x41 && v81)
  {
    MEMORY[0x1AC55A040](v81, 0x1000C8000313F17);
  }

  if (v91 != 1)
  {
    goto LABEL_121;
  }

  ZeroAttr = mlir::IntegerAttr::get(v88, &Context);
  if (v91)
  {
LABEL_90:
    if (v90 < 0x41 || !Context)
    {
      goto LABEL_122;
    }

    v40 = ZeroAttr;
    MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
    goto LABEL_93;
  }

LABEL_122:
  result = ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
LABEL_123:
  if (v63 >= 0x41)
  {
    if (v62)
    {
      v50 = result;
      MEMORY[0x1AC55A040](v62, 0x1000C8000313F17);
      return v50;
    }
  }

  return result;
}

unint64_t mlir::arith::OrIOp::fold(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x1E69E9840];
  LODWORD(v81) = 1;
  v80 = 0;
  v5 = *(*(a2 + 40) + 8);
  v72 = &v80;
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = mlir::detail::constant_int_value_binder::match(&v72, v5);
  v7 = v6;
  v8 = v81;
  if (v6)
  {
    if (v81 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase(&v80) != v8)
      {
        if (llvm::APInt::countTrailingOnesSlowCase(&v80) != v8)
        {
          if (v80)
          {
            MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
          }

          goto LABEL_16;
        }

LABEL_14:
        v2 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
        if (v8 < 0x41)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }
    }

    else if (v80)
    {
      if (v81 && v80 != (0xFFFFFFFFFFFFFFFFLL >> -v81))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v2 = *(*(*a1 + 72) + 24) | 4;
  }

  if (v8 < 0x41)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v80)
  {
    MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
  }

LABEL_15:
  if (v7)
  {
    return v2;
  }

LABEL_16:
  v54 = 1;
  v53 = 0;
  v9 = *(*a1 + 72);
  v10 = *(v9 + 56);
  v72 = *(v9 + 24);
  v73 = &v53;
  v65 = v10;
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (!DefiningOp)
  {
    goto LABEL_24;
  }

  v68 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    goto LABEL_24;
  }

  if ((*(DefiningOp + 46) & 0x80) == 0)
  {
    goto LABEL_24;
  }

  if (*(DefiningOp + 68) != 2)
  {
    goto LABEL_24;
  }

  LOBYTE(v62) = 1;
  v80 = &v62;
  v81 = &v68;
  mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v72, &v80);
  if (v62 != 1)
  {
    goto LABEL_24;
  }

  v12 = v54;
  if (!v54)
  {
    goto LABEL_91;
  }

  if (v54 <= 0x40)
  {
    if (v53 != 0xFFFFFFFFFFFFFFFFLL >> -v54)
    {
      goto LABEL_24;
    }

LABEL_91:
    v35 = *(*(*a1 + 72) + 56);
    goto LABEL_94;
  }

  if (llvm::APInt::countTrailingOnesSlowCase(&v53) == v12)
  {
    goto LABEL_91;
  }

LABEL_24:
  v13 = *(*a1 + 72);
  v14 = *(v13 + 24);
  v72 = *(v13 + 56);
  v73 = &v53;
  v65 = v14;
  v15 = mlir::Value::getDefiningOp(&v65);
  if (!v15 || (v68 = v15, *(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id) || (*(v15 + 46) & 0x80) == 0 || *(v15 + 68) != 2 || (LOBYTE(v62) = 1, v80 = &v62, v81 = &v68, mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v72, &v80), v62 != 1))
  {
LABEL_32:
    v17 = *(a2 + 40);
    v18 = *v17;
    if (*v17 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_107;
    }

    v20 = v17 + 1;
    v19 = v17[1];
    if (v19 && *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v18 = v17[1];
      goto LABEL_107;
    }

    if (v18)
    {
      v80 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v18);
      v81 = v21;
      if (v80)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&v80);
        v18 = *v20;
        if (*v20)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v80 = 0;
      v81 = 0;
    }

    FunctionType = 0;
    v18 = *v20;
    if (*v20)
    {
LABEL_39:
      v18 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v18);
      v80 = v18;
      v81 = v23;
      if (!v18)
      {
        goto LABEL_107;
      }

LABEL_44:
      v24 = mlir::FunctionOpInterface::getFunctionType(&v80);
      v18 = 0;
      if (!FunctionType || !v24 || v24 != FunctionType)
      {
        goto LABEL_107;
      }

      v79 = FunctionType;
      v25 = *v17;
      if (*v17 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v18 = *v17;
        goto LABEL_107;
      }

      v26 = *v20;
      if (*v20)
      {
        v27 = *(*v26 + 136);
        if (v27 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          v18 = *v20;
        }

        else
        {
          v18 = 0;
        }

        if (!v25 || v27 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          goto LABEL_107;
        }

        if (v27 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v65 = *v17;
          v62 = v26;
          Value = mlir::AffineMapAttr::getValue(&v65);
          if (Value == mlir::AffineMapAttr::getValue(&v62))
          {
            mlir::IntegerAttr::getValue(&v65, &v72);
            mlir::IntegerAttr::getValue(&v62, &v68);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v80, &v72, &v68);
            if (v69 >= 0x41 && v68)
            {
              MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
            }

            if (v73 >= 0x41 && v72)
            {
              MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
            }

            if (v82 == 1)
            {
              v18 = mlir::IntegerAttr::get(v79, &v80);
              if ((v82 & 1) == 0)
              {
                goto LABEL_107;
              }

LABEL_66:
              if (v81 >= 0x41 && v80)
              {
                v29 = v18;
                MEMORY[0x1AC55A040](v80, 0x1000C8000313F17);
LABEL_69:
                v18 = v29;
                goto LABEL_107;
              }

              goto LABEL_107;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v17))
          {
            v30 = v25;
          }

          else
          {
            v30 = 0;
          }

          v80 = v30;
          if (v30 && mlir::DenseElementsAttr::isSplat(&v80) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v17 + 1))
          {
            v31 = v17[1];
            v65 = *v17;
            v62 = v31;
            v32 = mlir::ArrayAttr::getValue(&v65);
            if (v32 == mlir::ArrayAttr::getValue(&v62))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v65, &v72);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v62, &v68);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v80, &v72, &v68);
              if (v69 >= 0x41 && v68)
              {
                MEMORY[0x1AC55A040](v68, 0x1000C8000313F17);
              }

              if (v73 >= 0x41 && v72)
              {
                MEMORY[0x1AC55A040](v72, 0x1000C8000313F17);
              }

              if (v82 == 1)
              {
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v79);
                v18 = mlir::DenseElementsAttr::get(v33, v34, &v80, 1);
                if ((v82 & 1) == 0)
                {
                  goto LABEL_107;
                }

                goto LABEL_66;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v17) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v17 + 1))
          {
            v77 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17);
            v78 = v38;
            v76[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17 + 1);
            v76[1] = v39;
            Type = mlir::ElementsAttr::getType(&v77);
            if (Type == mlir::ElementsAttr::getType(v76))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v77, &v72);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v76, &v68);
              if (v75 == 1 && v71 == 1)
              {
                LOWORD(v65) = v72;
                if (v72 == 1)
                {
                  v66 = v73;
                }

                else
                {
                  (*(*v73 + 16))(&v66);
                }

                v67 = v74;
                LOWORD(v62) = v68;
                if (v68 == 1)
                {
                  v63 = v69;
                }

                else
                {
                  (*(*v69 + 16))(&v63);
                }

                v64 = v70;
                v80 = &v82;
                v81 = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v77, v78);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&v80, NumElements);
                v46 = mlir::ElementsAttr::getNumElements(v77, v78);
                if (v46)
                {
                  v47 = v46;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v65, &v57);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v62, &v55);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v59, &v57, &v55);
                    if (v56 >= 0x41 && v55)
                    {
                      MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
                    }

                    if (v58 >= 0x41 && v57)
                    {
                      MEMORY[0x1AC55A040](v57, 0x1000C8000313F17);
                    }

                    if (v61 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v80, &v59);
                    if ((v61 & 1) != 0 && v60 >= 0x41 && v59)
                    {
                      MEMORY[0x1AC55A040](v59, 0x1000C8000313F17);
                    }

                    ++v67;
                    ++v64;
                    if (!--v47)
                    {
                      goto LABEL_138;
                    }
                  }

                  v50 = 0;
                }

                else
                {
LABEL_138:
                  v48 = llvm::cast<mlir::ShapedType,mlir::Type>(&v79);
                  v50 = mlir::DenseElementsAttr::get(v48, v49, v80, v81);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v80);
                if ((v62 & 1) == 0)
                {
                  v51 = v63;
                  v63 = 0;
                  if (v51)
                  {
                    (*(*v51 + 8))(v51);
                  }
                }

                v18 = v50;
                if ((v65 & 1) == 0)
                {
                  v52 = v66;
                  v66 = 0;
                  if (v52)
                  {
                    (*(*v52 + 8))(v52);
                    v18 = v50;
                  }
                }
              }

              else
              {
                v18 = 0;
              }

              if (v71 == 1 && (v68 & 1) == 0)
              {
                v42 = v69;
                v69 = 0;
                if (v42)
                {
                  v43 = v18;
                  (*(*v42 + 8))(v42);
                  v18 = v43;
                }
              }

              if (v75 == 1 && (v72 & 1) == 0)
              {
                v44 = v73;
                v73 = 0;
                if (v44)
                {
                  v29 = v18;
                  (*(*v44 + 8))(v44);
                  goto LABEL_69;
                }
              }

LABEL_107:
              v2 = v18 & 0xFFFFFFFFFFFFFFFBLL;
              if (v54 < 0x41)
              {
                return v2;
              }

              goto LABEL_108;
            }
          }
        }
      }

      v18 = 0;
      goto LABEL_107;
    }

LABEL_43:
    v80 = v18;
    v81 = 0;
    if (!v18)
    {
      goto LABEL_107;
    }

    goto LABEL_44;
  }

  v16 = v54;
  if (v54)
  {
    if (v54 > 0x40)
    {
      if (llvm::APInt::countTrailingOnesSlowCase(&v53) != v16)
      {
        goto LABEL_32;
      }
    }

    else if (v53 != 0xFFFFFFFFFFFFFFFFLL >> -v54)
    {
      goto LABEL_32;
    }
  }

  v35 = *(*(*a1 + 72) + 24);
LABEL_94:
  v80 = v35;
  v36 = mlir::Value::getDefiningOp(&v80);
  if (*(*(v36 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v2 = *(*(v37 + 72) + 56) | 4;
  if (v54 >= 0x41)
  {
LABEL_108:
    if (v53)
    {
      MEMORY[0x1AC55A040](v53, 0x1000C8000313F17);
    }
  }

  return v2;
}

uint64_t mlir::arith::XOrIOp::fold(uint64_t *a1, uint64_t a2)
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = *(*(a2 + 40) + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  LODWORD(v80) = 1;
  Context = 0;
  v71 = &Context;
  v5 = mlir::detail::constant_int_value_binder::match(&v71, v4);
  v6 = v80;
  if (v5)
  {
    if (v80 < 0x41)
    {
      v7 = Context == 0;
      goto LABEL_11;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&Context) > 0x40)
    {
      if (Context)
      {
        MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
      }

      goto LABEL_15;
    }

    v7 = *Context == 0;
  }

  else
  {
    v7 = 0;
    if (v80 < 0x41)
    {
      goto LABEL_11;
    }
  }

  if (!Context)
  {
LABEL_11:
    if (v7)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_15;
  }

  MEMORY[0x1AC55A040](Context, 0x1000C8000313F17);
  if (v7)
  {
    return *(*(*a1 + 72) + 24) | 4;
  }

LABEL_15:
  v9 = *(*a1 + 72);
  if (*(v9 + 24) == *(v9 + 56))
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    ZeroAttr = mlir::Builder::getZeroAttr(&Context, (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8), v16);
    return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
  }

  Context = *(v9 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&Context);
  if (DefiningOp)
  {
    v11 = *a1;
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v12 = *(DefiningOp + 72);
      v13 = *(v12 + 56);
      v14 = *(*(v11 + 72) + 56);
      v15 = *(v12 + 24);
      if (v13 == v14)
      {
        return v15 | 4;
      }

      if (v15 == v14)
      {
        return v13 | 4;
      }
    }
  }

  else
  {
    v11 = *a1;
  }

  Context = *(*(v11 + 72) + 56);
  v18 = mlir::Value::getDefiningOp(&Context);
  if (v18 && *(*(v18 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v25 = *(v18 + 72);
    v26 = *(v25 + 56);
    v27 = *(*(*a1 + 72) + 24);
    v13 = *(v25 + 24);
    if (v26 == v27)
    {
      return v13 | 4;
    }

    if (v13 == v27)
    {
      return v26 | 4;
    }
  }

  v19 = *(a2 + 40);
  ZeroAttr = *v19;
  if (!*v19 || *(*ZeroAttr + 136) != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v21 = v19 + 1;
    v20 = v19[1];
    if (v20 && *(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      ZeroAttr = v19[1];
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (ZeroAttr)
    {
      Context = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      v80 = v22;
      if (Context)
      {
        FunctionType = mlir::FunctionOpInterface::getFunctionType(&Context);
        ZeroAttr = *v21;
        if (*v21)
        {
          goto LABEL_32;
        }

LABEL_39:
        Context = ZeroAttr;
        v80 = 0;
        if (ZeroAttr)
        {
          goto LABEL_40;
        }

        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    else
    {
      Context = 0;
      v80 = 0;
    }

    FunctionType = 0;
    ZeroAttr = *v21;
    if (*v21)
    {
LABEL_32:
      ZeroAttr = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(ZeroAttr);
      Context = ZeroAttr;
      v80 = v24;
      if (!ZeroAttr)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_40:
      v28 = mlir::FunctionOpInterface::getFunctionType(&Context);
      ZeroAttr = 0;
      if (!FunctionType || !v28 || v28 != FunctionType)
      {
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v78 = FunctionType;
      v29 = *v19;
      if (*v19 && *(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        ZeroAttr = *v19;
        return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
      }

      v30 = *v21;
      if (*v21)
      {
        v31 = *(*v30 + 136);
        if (v31 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          ZeroAttr = *v21;
        }

        else
        {
          ZeroAttr = 0;
        }

        if (!v29 || v31 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
          return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
        }

        if (v31 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v64 = *v19;
          v61 = v30;
          Value = mlir::AffineMapAttr::getValue(&v64);
          if (Value == mlir::AffineMapAttr::getValue(&v61))
          {
            mlir::IntegerAttr::getValue(&v64, &v71);
            mlir::IntegerAttr::getValue(&v61, &v67);
            mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v71, &v67);
            if (v68 >= 0x41 && v67)
            {
              MEMORY[0x1AC55A040](v67, 0x1000C8000313F17);
            }

            if (v72 >= 0x41 && v71)
            {
              MEMORY[0x1AC55A040](v71, 0x1000C8000313F17);
            }

            if (v81 == 1)
            {
              ZeroAttr = mlir::IntegerAttr::get(v78, &Context);
              if ((v81 & 1) == 0 || v80 < 0x41 || !Context)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v33 = ZeroAttr;
              v34 = Context;
LABEL_65:
              MEMORY[0x1AC55A040](v34, 0x1000C8000313F17);
LABEL_66:
              ZeroAttr = v33;
              return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
            }
          }
        }

        else
        {
          if (mlir::DenseElementsAttr::classof(*v19))
          {
            v35 = v29;
          }

          else
          {
            v35 = 0;
          }

          Context = v35;
          if (v35 && mlir::DenseElementsAttr::isSplat(&Context) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v19 + 1))
          {
            v36 = v19[1];
            v64 = *v19;
            v61 = v36;
            v37 = mlir::ArrayAttr::getValue(&v64);
            if (v37 == mlir::ArrayAttr::getValue(&v61))
            {
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v64, &v71);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v61, &v67);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&Context, &v71, &v67);
              if (v68 >= 0x41 && v67)
              {
                MEMORY[0x1AC55A040](v67, 0x1000C8000313F17);
              }

              if (v72 >= 0x41 && v71)
              {
                MEMORY[0x1AC55A040](v71, 0x1000C8000313F17);
              }

              if (v81 == 1)
              {
                v38 = llvm::cast<mlir::ShapedType,mlir::Type>(&v78);
                ZeroAttr = mlir::DenseElementsAttr::get(v38, v39, &Context, 1);
                if ((v81 & 1) == 0 || v80 < 0x41)
                {
                  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
                }

                v33 = ZeroAttr;
                v34 = Context;
                if (!Context)
                {
                  goto LABEL_66;
                }

                goto LABEL_65;
              }
            }
          }

          else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v19) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v19 + 1))
          {
            v76 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v19);
            v77 = v40;
            v75[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v19 + 1);
            v75[1] = v41;
            Type = mlir::ElementsAttr::getType(&v76);
            if (Type == mlir::ElementsAttr::getType(v75))
            {
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v76, &v71);
              mlir::ElementsAttr::try_value_begin<llvm::APInt>(v75, &v67);
              if (v74 == 1 && v70 == 1)
              {
                LOWORD(v64) = v71;
                if (v71 == 1)
                {
                  v65 = v72;
                }

                else
                {
                  (*(*v72 + 16))(&v65);
                }

                v66 = v73;
                LOWORD(v61) = v67;
                if (v67 == 1)
                {
                  v62 = v68;
                }

                else
                {
                  (*(*v68 + 16))(&v62);
                }

                v63 = v69;
                Context = &v81;
                v80 = 0x400000000;
                NumElements = mlir::ElementsAttr::getNumElements(v76, v77);
                llvm::SmallVectorImpl<llvm::APInt>::reserve(&Context, NumElements);
                v44 = mlir::ElementsAttr::getNumElements(v76, v77);
                if (v44)
                {
                  v45 = v44;
                  while (1)
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v64, &v56);
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v61, &v54);
                    mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v58, &v56, &v54);
                    if (v55 >= 0x41 && v54)
                    {
                      MEMORY[0x1AC55A040](v54, 0x1000C8000313F17);
                    }

                    if (v57 >= 0x41 && v56)
                    {
                      MEMORY[0x1AC55A040](v56, 0x1000C8000313F17);
                    }

                    if (v60 != 1)
                    {
                      break;
                    }

                    llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&Context, &v58);
                    if ((v60 & 1) != 0 && v59 >= 0x41 && v58)
                    {
                      MEMORY[0x1AC55A040](v58, 0x1000C8000313F17);
                    }

                    ++v66;
                    ++v63;
                    if (!--v45)
                    {
                      goto LABEL_117;
                    }
                  }

                  v48 = 0;
                }

                else
                {
LABEL_117:
                  v46 = llvm::cast<mlir::ShapedType,mlir::Type>(&v78);
                  v48 = mlir::DenseElementsAttr::get(v46, v47, Context, v80);
                }

                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&Context);
                if ((v61 & 1) == 0)
                {
                  v49 = v62;
                  v62 = 0;
                  if (v49)
                  {
                    (*(*v49 + 8))(v49);
                  }
                }

                if ((v64 & 1) == 0)
                {
                  v50 = v65;
                  v65 = 0;
                  if (v50)
                  {
                    (*(*v50 + 8))(v50);
                  }
                }

                ZeroAttr = v48;
              }

              else
              {
                ZeroAttr = 0;
              }

              if (v70 == 1 && (v67 & 1) == 0)
              {
                v51 = v68;
                v68 = 0;
                if (v51)
                {
                  v52 = ZeroAttr;
                  (*(*v51 + 8))(v51);
                  ZeroAttr = v52;
                }
              }

              if (v74 != 1)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (v71)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v53 = v72;
              v72 = 0;
              if (!v53)
              {
                return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
              }

              v33 = ZeroAttr;
              (*(*v53 + 8))(v53);
              goto LABEL_66;
            }
          }
        }
      }

      ZeroAttr = 0;
      return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_39;
  }

  return ZeroAttr & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::NegFOp::fold(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v69 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v69);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return *(*(DefiningOp + 72) + 24) | 4;
  }

  v4 = *(a2 + 48);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(*v5 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      if (v6 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v7 = v5;
        }

        else
        {
          v7 = 0;
        }

        v69 = v7;
        if (v7 && mlir::DenseElementsAttr::isSplat(&v69))
        {
          v58 = *v4;
          mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v58, &v66);
          mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(&v69, &v66);
          v8 = v67[0];
          v10 = llvm::APFloatBase::PPCDoubleDouble(v9);
          if (v10 == v8)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v67);
            if (v72 == 1)
            {
LABEL_32:
              Value = mlir::ArrayAttr::getValue(&v58);
              v5 = mlir::DenseElementsAttr::get(Value, v27, &v69, 1);
              if ((v72 & 1) == 0)
              {
                return v5 & 0xFFFFFFFFFFFFFFFBLL;
              }

              if (v10 == v70)
              {
                goto LABEL_34;
              }

              goto LABEL_30;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v67);
            if (v72 == 1)
            {
              goto LABEL_32;
            }
          }

LABEL_38:
          v5 = 0;
          return v5 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v12 = **v4;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_38;
          }
        }

        else
        {
          mlir::arith::ConstantOp::verify();
          v13 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_38;
          }
        }

        v16 = v14;
        v17 = v15;
        do
        {
          v18 = v17 >> 1;
          v19 = &v16[2 * (v17 >> 1)];
          v21 = *v19;
          v20 = v19 + 2;
          v17 += ~(v17 >> 1);
          if (v21 < v13)
          {
            v16 = v20;
          }

          else
          {
            v17 = v18;
          }
        }

        while (v17);
        if (v16 == &v14[2 * v15] || *v16 != v13 || !v16[1])
        {
          goto LABEL_38;
        }

        v28 = *v4;
        if (!*v4)
        {
          goto LABEL_54;
        }

        v29 = *v28;
        {
          v30 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          if (v32)
          {
            goto LABEL_44;
          }
        }

        else
        {
          mlir::arith::ConstantOp::verify();
          v30 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          if (v32)
          {
LABEL_44:
            v33 = v31;
            v34 = v32;
            do
            {
              v35 = v34 >> 1;
              v36 = &v33[2 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 2;
              v34 += ~(v34 >> 1);
              if (v38 < v30)
              {
                v33 = v37;
              }

              else
              {
                v34 = v35;
              }
            }

            while (v34);
LABEL_52:
            if (v33 != &v31[2 * v32] && *v33 == v30)
            {
              v39 = v33[1];
LABEL_55:
              v62 = v28;
              v63 = v39;
              mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v62, &v58);
              if (v61 == 1)
              {
                v55 = v58;
                if (v58 == 1)
                {
                  v56 = v59;
                }

                else
                {
                  (*(*v59 + 16))(&v56);
                }

                v57 = v60;
                v69 = &v71;
                v70 = 0x100000000;
                NumElements = mlir::ElementsAttr::getNumElements(v62, v63);
                llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v69, NumElements);
                v41 = mlir::ElementsAttr::getNumElements(v62, v63);
                if (v41)
                {
                  v42 = v41;
                  v43 = v57;
                  do
                  {
                    if (HIBYTE(v55))
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = v43;
                    }

                    if (v55 == 1)
                    {
                      v45 = v56 + 32 * v44;
                      v47 = *(v45 + 1);
                      v46 = (v45 + 8);
                      if (llvm::APFloatBase::PPCDoubleDouble(v56) == v47)
                      {
                        llvm::detail::DoubleAPFloat::DoubleAPFloat(v65, v46);
                      }

                      else
                      {
                        llvm::detail::IEEEFloat::IEEEFloat(v65, v46);
                      }
                    }

                    else
                    {
                      (*(*v56 + 24))(&v64);
                    }

                    mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(&v66, &v64);
                    v48 = v65[0];
                    v50 = llvm::APFloatBase::PPCDoubleDouble(v49);
                    if (v50 == v48)
                    {
                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v65);
                      if (v68 != 1)
                      {
LABEL_79:
                        v5 = 0;
                        goto LABEL_80;
                      }
                    }

                    else
                    {
                      llvm::detail::IEEEFloat::~IEEEFloat(v65);
                      if (v68 != 1)
                      {
                        goto LABEL_79;
                      }
                    }

                    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, &v66);
                    if (v68)
                    {
                      if (v50 == v67[0])
                      {
                        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v67);
                      }

                      else
                      {
                        llvm::detail::IEEEFloat::~IEEEFloat(v67);
                      }
                    }

                    v43 = ++v57;
                    --v42;
                  }

                  while (v42);
                }

                ShapedType = mlir::ElementsAttr::getShapedType(&v62);
                v5 = mlir::DenseElementsAttr::get(ShapedType, v52, v69, v70);
LABEL_80:
                llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v69);
                if ((v55 & 1) == 0)
                {
                  v53 = v56;
                  v56 = 0;
                  if (v53)
                  {
                    (*(*v53 + 8))(v53);
                  }
                }

                if ((v61 & 1) != 0 && (v58 & 1) == 0)
                {
                  v54 = v59;
                  v59 = 0;
                  if (v54)
                  {
                    (*(*v54 + 8))(v54);
                  }
                }

                return v5 & 0xFFFFFFFFFFFFFFFBLL;
              }

              goto LABEL_38;
            }

LABEL_54:
            v39 = 0;
            goto LABEL_55;
          }
        }

        v32 = 0;
        v33 = v31;
        goto LABEL_52;
      }

      v58 = *v4;
      mlir::FloatAttr::getValue(&v66, &v58);
      mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(&v69, &v66);
      v22 = v67[0];
      v24 = llvm::APFloatBase::PPCDoubleDouble(v23);
      if (v24 == v22)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v67);
        if (v72 != 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v67);
        if (v72 != 1)
        {
          goto LABEL_38;
        }
      }

      v25 = mlir::AffineMapAttr::getValue(&v58);
      v5 = mlir::FloatAttr::get(v25, &v69);
      if (v72)
      {
        if (v24 == v70)
        {
LABEL_34:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v70);
          return v5 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_30:
        llvm::detail::IEEEFloat::~IEEEFloat(&v70);
      }
    }
  }

  return v5 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::AddFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v58 = mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v59 = v10;
    if (v58)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v58);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v58 = v7;
      v59 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  FunctionType = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v58 = v7;
  v59 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::FunctionOpInterface::getFunctionType(&v58);
  v7 = 0;
  if (!FunctionType || !v13 || v13 != FunctionType)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = FunctionType;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(v56, &v46);
          mlir::FloatAttr::getValue(&v62, v55);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
          llvm::APFloat::~APFloat(&v62);
          llvm::APFloat::~APFloat(v56);
          if (v61 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v58);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v58 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, &v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
            llvm::APFloat::~APFloat(&v62);
            llvm::APFloat::~APFloat(v56);
            if (v61 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v58, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, &v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v65 == 1 && v49 == 1)
            {
              v43 = v62;
              if (v62 == 1)
              {
                v44 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v44);
              }

              v45 = v64;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v57 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43 & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v65 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v63;
            v63 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::SubFOp::fold(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v58 = mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v58, v4))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v3 = *(a2 + 48);
  }

  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = v3 + 1;
  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = v3[1];
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v7)
  {
    v58 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
    v59 = v10;
    if (v58)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v58);
      v7 = *v9;
      if (*v9)
      {
        goto LABEL_12;
      }

LABEL_16:
      v58 = v7;
      v59 = 0;
      if (!v7)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  FunctionType = 0;
  v7 = *v9;
  if (!*v9)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
  v58 = v7;
  v59 = v12;
  if (!v7)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_17:
  v13 = mlir::FunctionOpInterface::getFunctionType(&v58);
  v7 = 0;
  if (!FunctionType || !v13 || v13 != FunctionType)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v53 = FunctionType;
  v14 = *v3;
  if (*v3 && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v7 = *v3;
  }

  else
  {
    v15 = *v9;
    if (*v9)
    {
      v16 = *(*v15 + 136);
      if (v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v7 = *v9;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 || v16 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v46 = *v3;
        v55[0] = v15;
        Value = mlir::AffineMapAttr::getValue(&v46);
        if (Value == mlir::AffineMapAttr::getValue(v55))
        {
          mlir::FloatAttr::getValue(v56, &v46);
          mlir::FloatAttr::getValue(&v62, v55);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
          llvm::APFloat::~APFloat(&v62);
          llvm::APFloat::~APFloat(v56);
          if (v61 == 1)
          {
            v23 = mlir::FloatAttr::get(v53, &v58);
            goto LABEL_46;
          }

LABEL_56:
          v25 = 0;
          goto LABEL_57;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v3))
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        v58 = v18;
        if (v18 && mlir::DenseElementsAttr::isSplat(&v58) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v19 = v3[1];
          v46 = *v3;
          v55[0] = v19;
          v20 = mlir::ArrayAttr::getValue(&v46);
          if (v20 == mlir::ArrayAttr::getValue(v55))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v46, v56);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v55, &v62);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v58, v56, &v62);
            llvm::APFloat::~APFloat(&v62);
            llvm::APFloat::~APFloat(v56);
            if (v61 == 1)
            {
              v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
              v23 = mlir::DenseElementsAttr::get(v21, v22, &v58, 1);
LABEL_46:
              v25 = v23;
LABEL_57:
              std::optional<llvm::APFloat>::~optional(&v58);
LABEL_58:
              v7 = v25;
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            goto LABEL_56;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
        {
          v51 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
          v52 = v26;
          v50[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
          v50[1] = v27;
          Type = mlir::ElementsAttr::getType(&v51);
          if (Type == mlir::ElementsAttr::getType(v50))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v51, &v62);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v50, &v46);
            if (v65 == 1 && v49 == 1)
            {
              v43 = v62;
              if (v62 == 1)
              {
                v44 = v63;
              }

              else
              {
                (*(*v63 + 16))(&v44);
              }

              v45 = v64;
              v40 = v46;
              if (v46 == 1)
              {
                v41 = v47;
              }

              else
              {
                (*(*v47 + 16))(&v41);
              }

              v42 = v48;
              v58 = &v60;
              v59 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v51, v52);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v58, NumElements);
              v33 = mlir::ElementsAttr::getNumElements(v51, v52);
              if (v33)
              {
                v34 = v33;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v43, v55);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v40, v54);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v56, v55, v54);
                  llvm::APFloat::~APFloat(v54);
                  llvm::APFloat::~APFloat(v55);
                  if (v57 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v58, v56);
                  std::optional<llvm::APFloat>::~optional(v56);
                  ++v45;
                  ++v42;
                  if (!--v34)
                  {
                    goto LABEL_76;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v56);
                v37 = 0;
              }

              else
              {
LABEL_76:
                v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v53);
                v37 = mlir::DenseElementsAttr::get(v35, v36, v58, v59);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v58);
              if ((v40 & 1) == 0)
              {
                v38 = v41;
                v41 = 0;
                if (v38)
                {
                  (*(*v38 + 8))(v38);
                }
              }

              v7 = v37;
              if ((v43 & 1) == 0)
              {
                v39 = v44;
                v44 = 0;
                if (v39)
                {
                  (*(*v39 + 8))(v39);
                  v7 = v37;
                }
              }
            }

            else
            {
              v7 = 0;
            }

            if (v49 == 1 && (v46 & 1) == 0)
            {
              v29 = v47;
              v47 = 0;
              if (v29)
              {
                v30 = v7;
                (*(*v29 + 8))(v29);
                v7 = v30;
              }
            }

            if (v65 != 1)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v62)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v31 = v63;
            v63 = 0;
            if (!v31)
            {
              return v7 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v25 = v7;
            (*(*v31 + 8))(v31);
            goto LABEL_58;
          }
        }
      }
    }

    v7 = 0;
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::MaximumFOp::fold(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    return v3 | 4;
  }

  v4 = *(a2 + 48);
  v5 = v4[1];
  v59 = mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (v5)
  {
    if (mlir::detail::constant_float_predicate_matcher::match(&v59, v5))
    {
      v3 = *(*(*a1 + 72) + 24);
      return v3 | 4;
    }

    v4 = *(a2 + 48);
  }

  v9 = *v4;
  if (*v4 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v11 = v4 + 1;
  v10 = v4[1];
  if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v4[1];
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v9)
  {
    v59 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
    v60 = v12;
    if (v59)
    {
      FunctionType = mlir::FunctionOpInterface::getFunctionType(&v59);
      v9 = *v11;
      if (*v11)
      {
        goto LABEL_14;
      }

LABEL_18:
      v59 = v9;
      v60 = 0;
      if (!v9)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  FunctionType = 0;
  v9 = *v11;
  if (!*v11)
  {
    goto LABEL_18;
  }

LABEL_14:
  v9 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v9);
  v59 = v9;
  v60 = v14;
  if (!v9)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_19:
  v15 = mlir::FunctionOpInterface::getFunctionType(&v59);
  v9 = 0;
  if (!FunctionType || !v15 || v15 != FunctionType)
  {
    return v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v54 = FunctionType;
  v16 = *v4;
  if (*v4 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v4;
  }

  else
  {
    v17 = *v11;
    if (*v11)
    {
      v18 = *(*v17 + 136);
      if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v9 = *v11;
      }

      else
      {
        v9 = 0;
      }

      if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        return v9 & 0xFFFFFFFFFFFFFFFBLL;
      }

      if (v18 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        v47 = *v4;
        v56[0] = v17;
        Value = mlir::AffineMapAttr::getValue(&v47);
        if (Value == mlir::AffineMapAttr::getValue(v56))
        {
          mlir::FloatAttr::getValue(v57, &v47);
          mlir::FloatAttr::getValue(&v63, v56);
          mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v59, v57, &v63);
          llvm::APFloat::~APFloat(&v63);
          llvm::APFloat::~APFloat(v57);
          if (v62 == 1)
          {
            v20 = mlir::FloatAttr::get(v54, &v59);
LABEL_35:
            v21 = v20;
LABEL_57:
            std::optional<llvm::APFloat>::~optional(&v59);
LABEL_58:
            v9 = v21;
            return v9 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if (mlir::DenseElementsAttr::classof(*v4))
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        v59 = v22;
        if (v22 && mlir::DenseElementsAttr::isSplat(&v59) && llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v23 = v4[1];
          v47 = *v4;
          v56[0] = v23;
          v24 = mlir::ArrayAttr::getValue(&v47);
          if (v24 == mlir::ArrayAttr::getValue(v56))
          {
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v47, v57);
            mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v56, &v63);
            mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v59, v57, &v63);
            llvm::APFloat::~APFloat(&v63);
            llvm::APFloat::~APFloat(v57);
            if (v62 == 1)
            {
              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
              v20 = mlir::DenseElementsAttr::get(v25, v26, &v59, 1);
              goto LABEL_35;
            }

LABEL_56:
            v21 = 0;
            goto LABEL_57;
          }
        }

        else if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v4 + 1))
        {
          v52 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4);
          v53 = v27;
          v51[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v4 + 1);
          v51[1] = v28;
          Type = mlir::ElementsAttr::getType(&v52);
          if (Type == mlir::ElementsAttr::getType(v51))
          {
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v52, &v63);
            mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v51, &v47);
            if (v66 == 1 && v50 == 1)
            {
              v44 = v63;
              if (v63 == 1)
              {
                v45 = v64;
              }

              else
              {
                (*(*v64 + 16))(&v45);
              }

              v46 = v65;
              v41 = v47;
              if (v47 == 1)
              {
                v42 = v48;
              }

              else
              {
                (*(*v48 + 16))(&v42);
              }

              v43 = v49;
              v59 = &v61;
              v60 = 0x400000000;
              NumElements = mlir::ElementsAttr::getNumElements(v52, v53);
              llvm::SmallVectorImpl<llvm::APFloat>::reserve(&v59, NumElements);
              v31 = mlir::ElementsAttr::getNumElements(v52, v53);
              if (v31)
              {
                v32 = v31;
                while (1)
                {
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v44, v56);
                  mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*(&v41, v55);
                  mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v57, v56, v55);
                  llvm::APFloat::~APFloat(v55);
                  llvm::APFloat::~APFloat(v56);
                  if (v58 != 1)
                  {
                    break;
                  }

                  llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v59, v57);
                  std::optional<llvm::APFloat>::~optional(v57);
                  ++v46;
                  ++v43;
                  if (!--v32)
                  {
                    goto LABEL_68;
                  }
                }

                std::optional<llvm::APFloat>::~optional(v57);
                v35 = 0;
              }

              else
              {
LABEL_68:
                v33 = llvm::cast<mlir::ShapedType,mlir::Type>(&v54);
                v35 = mlir::DenseElementsAttr::get(v33, v34, v59, v60);
              }

              llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(&v59);
              if ((v41 & 1) == 0)
              {
                v36 = v42;
                v42 = 0;
                if (v36)
                {
                  (*(*v36 + 8))(v36);
                }
              }

              if ((v44 & 1) == 0)
              {
                v37 = v45;
                v45 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
                }
              }

              v9 = v35;
            }

            else
            {
              v9 = 0;
            }

            if (v50 == 1 && (v47 & 1) == 0)
            {
              v38 = v48;
              v48 = 0;
              if (v38)
              {
                v39 = v9;
                (*(*v38 + 8))(v38);
                v9 = v39;
              }
            }

            if (v66 != 1)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            if (v63)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v40 = v64;
            v64 = 0;
            if (!v40)
            {
              return v9 & 0xFFFFFFFFFFFFFFFBLL;
            }

            v21 = v9;
            (*(*v40 + 8))(v40);
            goto LABEL_58;
          }
        }
      }
    }

    v9 = 0;
  }

  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}