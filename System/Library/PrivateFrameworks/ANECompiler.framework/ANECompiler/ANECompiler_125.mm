uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(void *a1, char **a2)
{
  v3 = *(*a2[1] + 72);
  v4 = a1 + 1;
  v5 = **a2;
  if (*a1 != *(v3 + 24))
  {
    v5 = 0;
  }

  **a2 = v5;
  v13 = *(v3 + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    v7 = result;
    v12 = &v13;
    v13 = 0;
    result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, result);
    if (result)
    {
      v8 = *(*(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        result = mlir::detail::constant_int_value_binder::match(v4, v13);
      }

      else
      {
        result = 0;
      }
    }
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, const llvm::APInt *a2, const llvm::APInt *a3)
{
  v3 = *(a2 + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v4 = *a3 & *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, const llvm::APInt *a2, const llvm::APInt *a3)
{
  v3 = *(a2 + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v4 = *a3 | *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t result, const llvm::APInt *a2, const llvm::APInt *a3)
{
  v3 = *(a2 + 2);
  v6 = v3;
  if (v3 > 0x40)
  {
    llvm::APInt::initSlowCase(&v5, a2);
  }

  v4 = *a3 ^ *a2;
  *(result + 8) = v3;
  *result = v4;
  *(result + 16) = 1;
  return result;
}

void anonymous namespace::XOrINotCmpI::~XOrINotCmpI(_anonymous_namespace_::XOrINotCmpI *this)
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

uint64_t anonymous namespace::XOrINotCmpI::matchAndRewrite(_anonymous_namespace_::XOrINotCmpI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    v6 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(v7))
      {
        v8 = *(v6 + 24);
LABEL_27:
        (*(*v7 + 88))(v7, v8, v9, v18);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (!*(DefiningOp + 47) || (InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, "predicate", 9), (v11 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(v6 + 56, "predicate", 9uLL);
    }

    if (!InherentAttr || (mlir::arith::CmpIPredicateAttr::classof(InherentAttr) & 1) == 0)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(v7))
      {
        v8 = *(v6 + 24);
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if ((*(v6 + 46) & 0x80) != 0)
    {
      v12 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_19;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v12 + 1, 8);
    LODWORD(v12) = v20;
LABEL_19:
    v19[v12] = v6;
    LODWORD(v20) = v20 + 1;
    v18[0] = *(*(v4 + 9) + 56);
    v13 = mlir::Value::getDefiningOp(v18);
    if (v13)
    {
      v14 = v13;
      {
        v15 = v20;
        if (v20 >= HIDWORD(v20))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
          v15 = v20;
        }

        v19[v15] = v14;
        LODWORD(v20) = v20 + 1;
        v16 = *(v19[1] + 24);
        v18[0] = *(*v19 + 24);
        v18[1] = v16;
        mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
      }
    }

    else
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(v7))
      {
        v8 = *(v4 + 3);
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(v7))
  {
    v8 = *(v4 + 3);
    goto LABEL_27;
  }

LABEL_28:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

uint64_t anonymous namespace::static_dag_matcher_12(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v12);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, DefiningOp) & 1) != 0)
  {
    v5 = v10;
    v12[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'constant attribute 1'";
    v12[1] = 169;
    IntegerType = mlir::Builder::getIntegerType((a1 + 8), 1);
    if (mlir::Builder::getIntegerAttr(a1 + 8, IntegerType, 1) == v5)
    {
      return 1;
    }

    else
    {
      v11 = v12;
      v9 = *(a1 + 16);
      if (v9)
      {
        if (instruction::util::IsTasklet(v9))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8 && instruction::util::IsTasklet(v8))
    {
    }

    return 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::CmpIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicateAttr,mlir::Value &,mlir::Value &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::CmpIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::CmpIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "expected op 'arith.cmpi' to have attribute 'predicate' of type '::mlir::arith::CmpIPredicateAttr'";
  v13 = 97;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrINotCmpI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_12(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization4(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(const char ***a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v14 = 261;
  v13[0] = v3;
  v13[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v13);
  v5 = *(v4 + 16);
  v15 = 3;
  v16 = ": constant attribute 1";
  v17 = 22;
  v6 = *(v4 + 24);
  v7 = &v15;
  if (v6 >= *(v4 + 28))
  {
    if (v5 <= &v15 && v5 + 24 * v6 > &v15)
    {
      v11 = &v15 - v5;
      v12 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, (v4 + 32), v6 + 1, 24);
      v4 = v12;
      v5 = *(v12 + 16);
      v7 = &v11[v5];
    }

    else
    {
      v10 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, (v4 + 32), v6 + 1, 24);
      v4 = v10;
      v5 = *(v10 + 16);
      v7 = &v15;
    }
  }

  v8 = (v5 + 24 * *(v4 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(v4 + 24);
  return result;
}

void anonymous namespace::XOrIOfExtUI::~XOrIOfExtUI(_anonymous_namespace_::XOrIOfExtUI *this)
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

uint64_t anonymous namespace::XOrIOfExtUI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && instruction::util::IsTasklet(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::XOrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_8(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_9(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::XOrIOfExtSI::~XOrIOfExtSI(_anonymous_namespace_::XOrIOfExtSI *this)
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

uint64_t anonymous namespace::XOrIOfExtSI::matchAndRewrite(_anonymous_namespace_::XOrIOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && instruction::util::IsTasklet(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_6(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_7(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::XOrIOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldUnaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::NegFOp::fold(mlir::arith::NegFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat)#1}::operator()(llvm::APFloatBase *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 8);
  v4 = *(a2 + 8);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v5 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v7, v3);
    if (v5 != v7.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::changeSign(&v7);
      v6 = (a1 + 8);
      if (v5 != v7.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v6, &v7);
      *(a1 + 32) = 1;
      if (v5 != v7.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v7);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v7, v3);
    if (v5 != v7.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::changeSign(&v7);
  v6 = (a1 + 8);
  if (v5 == v7.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v6, &v7);
  *(a1 + 32) = 1;
  if (v5 == v7.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v7);
}

_BYTE *std::optional<llvm::APFloat>::~optional(_BYTE *result)
{
  if (result[32] == 1)
  {
    v1 = result;
    v2 = (result + 8);
    v3 = *(result + 1);
    if (llvm::APFloatBase::PPCDoubleDouble(result) == v3)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v2);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v2);
    }

    return v1;
  }

  return result;
}

llvm::detail::IEEEFloat *mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>@<X0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::DenseElementsAttr::tryGetFloatValues(v8, a1);
  v7[0] = v8[0];
  v7[1] = v8[1];
  v7[2] = v9;
  v7[3] = v10;
  v7[4] = v11;
  v7[5] = v12;
  v3 = mlir::DenseElementsAttr::IntElementIterator::operator*(v8, v7);
  v4 = v9;
  if (llvm::APFloatBase::PPCDoubleDouble(v3) == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v4, v7);
  }

  result = llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v4, v7, v5);
  if (DWORD2(v7[0]) >= 0x41)
  {
    result = *&v7[0];
    if (*&v7[0])
    {
      return MEMORY[0x1AC55A040](*&v7[0], 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::SmallVectorImpl<llvm::APFloat>::reserve(_DWORD *a1, unint64_t a2)
{
  if (a1[3] < a2)
  {
    v8[5] = v2;
    v8[6] = v3;
    v8[0] = 0;
    v5 = a1 + 4;
    v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, a2, 32, v8);
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::moveElementsForGrow(a1, v6);
    v7 = v8[0];
    if (*a1 != v5)
    {
      free(*a1);
    }

    *a1 = v6;
    a1[3] = v7;
  }
}

void *mlir::detail::ElementsAttrIterator<llvm::APFloat>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1) == 0;
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (*a1 == 1)
  {
    v9 = v4 + 32 * v7;
    v11 = *(v9 + 1);
    v10 = (v9 + 8);
    if (llvm::APFloatBase::PPCDoubleDouble(v4) == v11)
    {

      return llvm::detail::DoubleAPFloat::DoubleAPFloat((a2 + 8), v10);
    }

    else
    {

      return llvm::detail::IEEEFloat::IEEEFloat((a2 + 8), v10);
    }
  }

  else
  {
    v13 = *(*v4 + 24);

    return v13();
  }
}

void *llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(llvm::APFloatBase *a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 <= a2 && v5 + 32 * v4 > a2)
    {
      v11 = a2 - v5;
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
      v2 = *a1 + v11;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(a1, v4 + 1);
      v5 = *a1;
    }
  }

  v6 = v5 + 32 * *(a1 + 2);
  v8 = *(v2 + 8);
  v7 = (v2 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {
    result = llvm::detail::DoubleAPFloat::DoubleAPFloat((v6 + 8), v7);
  }

  else
  {
    result = llvm::detail::IEEEFloat::IEEEFloat((v6 + 8), v7);
  }

  ++*(a1 + 2);
  return result;
}

llvm::APFloatBase *llvm::SmallVector<llvm::APFloat,1u>::~SmallVector(llvm::APFloatBase *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v5 = &v2[32 * v3 - 24];
    v6 = -32 * v3;
    do
    {
      while (v4 == *v5)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
        v5 = (v7 - 32);
        v6 += 32;
        if (!v6)
        {
          goto LABEL_6;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v5);
      v5 = (v8 - 32);
      v6 += 32;
    }

    while (v6);
LABEL_6:
    v2 = *a1;
  }

  if (v2 != a1 + 16)
  {
    free(v2);
  }

  return a1;
}

const char *llvm::getTypeName<llvm::APFloat>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::APFloat]";
  v6 = 63;
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

uint64_t mlir::detail::constant_float_predicate_matcher::match(llvm::APFloatBase *a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = llvm::APFloatBase::Bogus(a1);
  v7 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v7 == v4)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v4);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v12, v4, v5, v6);
  v10 = v11;
  if (!mlir::detail::constant_float_value_binder::match(&v10, a2))
  {
    v8 = 0;
    if (v7 != v12[0])
    {
      goto LABEL_4;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v12);
    return v8;
  }

  v8 = (*a1)(v11);
  if (v7 == v12[0])
  {
    goto LABEL_8;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v12);
  return v8;
}

llvm::APFloatBase *llvm::APFloat::APFloat(llvm::APFloatBase *a1, void *a2)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 1, a2, v4, v5);
  return a1;
}

uint64_t mlir::detail::constant_float_value_binder::match(uint64_t *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v19[0] = v5;
  if (v4)
  {
    mlir::FloatAttr::getValue(&v20, v19);
    v15 = llvm::APFloat::Storage::operator=((v2 + 8), v21);
    v16 = v21[0].n128_u64[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v16)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v21);
    }

    return 1;
  }

  else
  {
    v6 = a2;
    if (mlir::DenseElementsAttr::classof(a2))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v20 = v7;
    if (v7)
    {
      v7 = mlir::DenseElementsAttr::isSplat(&v20) ? v6 : 0;
      v18 = v7;
      if (v7)
      {
        mlir::ArrayAttr::getValue(&v18);
        ZinMirCacheTensors::ZinMirCacheTensors(&v20, v18, 0);
        v6 = v18;
        NumElements = mlir::DenseElementsAttr::getNumElements(&v18);
        ZinMirCacheTensors::ZinMirCacheTensors(v19, v6, NumElements);
        v9 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v20);
        v10 = *(*v9 + 136);
        v11 = v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        LODWORD(v6) = v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id;
        if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v19[0] = v12;
        if (v11)
        {
          mlir::FloatAttr::getValue(&v20, v19);
          v13 = llvm::APFloat::Storage::operator=((v2 + 8), v21);
          v14 = v21[0].n128_u64[0];
          if (llvm::APFloatBase::PPCDoubleDouble(v13) == v14)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(v21);
          }
        }

        LODWORD(v7) = 1;
      }
    }

    return v7 & v6;
  }
}

llvm::APFloatBase *llvm::APFloat::Storage::operator=(llvm::APFloatBase *a1, __n128 *a2)
{
  v4 = *a1;
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = a2->n128_u64[0];
  if (v5 != v4 && v5 != v6)
  {
    llvm::detail::IEEEFloat::operator=(a1, a2);
    return a1;
  }

  if (v5 != v4)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v8 = v5;
    llvm::detail::IEEEFloat::~IEEEFloat(a1);
    v9 = a1;
    if (v8 == a2->n128_u64[0])
    {
      goto LABEL_17;
    }

LABEL_14:
    llvm::detail::IEEEFloat::IEEEFloat(v9, a2);
    return a1;
  }

  if (v4 == v6)
  {
    if (a1 == a2)
    {
      return a1;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
  }

  else
  {
    if (a1 == a2)
    {
      return a1;
    }

    v11 = v5;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(a1);
    v9 = a1;
    if (v11 != a2->n128_u64[0])
    {
      goto LABEL_14;
    }
  }

LABEL_17:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, a2);
  return a1;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::add(&v11, v9, 1, v8);
      v10 = (a1 + 8);
      if (v7 != v11.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, &v11);
      *(a1 + 32) = 1;
      if (v7 != v11.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::add(&v11, v9, 1);
  v10 = (a1 + 8);
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v10, &v11);
  *(a1 + 32) = 1;
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::subtract(&v11, v9, 1, v8);
      v10 = (a1 + 8);
      if (v7 != v11.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, &v11);
      *(a1 + 32) = 1;
      if (v7 != v11.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::subtract(&v11, v9, 1);
  v10 = (a1 + 8);
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v10, &v11);
  *(a1 + 32) = 1;
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = llvm::maximum(&v7, this, a3);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

uint64_t *llvm::maximum@<X0>(uint64_t *__return_ptr a1@<X8>, llvm *this@<X0>, const llvm::APFloat *a3@<X1>)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  v8 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v8 == v7)
  {
    if ((*(*(this + 2) + 28) & 7) == 1)
    {
      v14 = a1 + 1;
      v12 = v6;

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v12);
    }
  }

  else if ((*(this + 28) & 7) == 1)
  {
    v11 = (a1 + 1);
    v12 = v6;

    return llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
  }

  v12 = (a3 + 8);
  v15 = *(a3 + 1);
  if (v8 != v15)
  {
    if ((*(a3 + 28) & 7) == 1)
    {
LABEL_39:
      v11 = (a1 + 1);

      return llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
    }

    goto LABEL_14;
  }

  if ((*(*(a3 + 2) + 28) & 7) != 1)
  {
LABEL_14:
    v16 = *(this + 2);
    if (v8 != v7)
    {
      v16 = this;
    }

    v17 = *(v16 + 28);
    if ((v17 & 7) == 3 && (v8 != v15 ? (v18 = a3) : (v18 = *(a3 + 2)), (v19 = *(v18 + 28), (v19 & 7) == 3) && ((v17 >> 3) & 1) != (v19 & 8) >> 3))
    {
      if ((v17 & 8) != 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = this;
      }

      v21 = *(v20 + 1);
      v12 = (v20 + 8);
      if (v8 != v21)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v22 = v8;
      if (v8 == v7)
      {
        if (llvm::detail::DoubleAPFloat::compare(v6, v12, v9, v10))
        {
          v25 = this;
        }

        else
        {
          v25 = a3;
        }

        v26 = *(v25 + 1);
        v12 = (v25 + 8);
        if (v22 != v26)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (llvm::detail::IEEEFloat::compare(v6, v12, v9, v10))
        {
          v23 = this;
        }

        else
        {
          v23 = a3;
        }

        v24 = *(v23 + 1);
        v12 = (v23 + 8);
        if (v22 != v24)
        {
          goto LABEL_39;
        }
      }
    }
  }

  v14 = a1 + 1;

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v12);
}

BOOL llvm::APFloat::operator<(llvm::APFloatBase *a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 1);
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v8 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v8, v6, v7) == 0;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v8, v6, v7) == 0;
  }
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result <= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = llvm::minimum(&v7, this, a3);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

uint64_t *llvm::minimum@<X0>(uint64_t *__return_ptr a1@<X8>, llvm *this@<X0>, const llvm::APFloat *a3@<X1>)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  v8 = llvm::APFloatBase::PPCDoubleDouble(this);
  if (v8 == v7)
  {
    if ((*(*(this + 2) + 28) & 7) == 1)
    {
      v14 = a1 + 1;
      v12 = v6;

      return llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v12);
    }
  }

  else if ((*(this + 28) & 7) == 1)
  {
    v11 = (a1 + 1);
    v12 = v6;

    return llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
  }

  v12 = (a3 + 8);
  v15 = *(a3 + 1);
  if (v8 != v15)
  {
    if ((*(a3 + 28) & 7) == 1)
    {
LABEL_38:
      v11 = (a1 + 1);

      return llvm::detail::IEEEFloat::IEEEFloat(v11, v12);
    }

    goto LABEL_14;
  }

  if ((*(*(a3 + 2) + 28) & 7) != 1)
  {
LABEL_14:
    v16 = *(this + 2);
    if (v8 != v7)
    {
      v16 = this;
    }

    v17 = *(v16 + 28);
    if ((v17 & 7) != 3)
    {
      goto LABEL_28;
    }

    v18 = *(a3 + 2);
    if (v8 != v15)
    {
      v18 = a3;
    }

    v19 = *(v18 + 28);
    if ((v19 & 7) == 3 && ((v17 >> 3) & 1) != (v19 & 8) >> 3)
    {
      if ((v17 & 8) != 0)
      {
        v20 = this;
      }

      else
      {
        v20 = a3;
      }

      v21 = *(v20 + 1);
      v12 = (v20 + 8);
      if (v8 != v21)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_28:
      v22 = v8;
      if (v8 == v15)
      {
        if (llvm::detail::DoubleAPFloat::compare((a3 + 8), v6, v9, v10))
        {
          v25 = this;
        }

        else
        {
          v25 = a3;
        }

        v26 = *(v25 + 1);
        v12 = (v25 + 8);
        if (v22 != v26)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (llvm::detail::IEEEFloat::compare((a3 + 8), v6, v9, v10))
        {
          v23 = this;
        }

        else
        {
          v23 = a3;
        }

        v24 = *(v23 + 1);
        v12 = (v23 + 8);
        if (v22 != v24)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v14 = a1 + 1;

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v14, v12);
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(uint64_t a1, llvm *this, llvm::APFloat *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = llvm::minnum(&v7, this, a3);
  v5 = v8.n128_u64[0];
  v6 = llvm::APFloatBase::PPCDoubleDouble(v4);
  if (v6 == v5)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), &v8);
    *(a1 + 32) = 1;
    if (v6 != v8.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1 + 8, &v8);
  *(a1 + 32) = 1;
  if (v6 == v8.n128_u64[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(&v8);
}

uint64_t *llvm::minnum@<X0>(uint64_t *__return_ptr a1@<X8>, llvm *this@<X0>, const llvm::APFloat *a3@<X1>)
{
  v6 = (this + 8);
  v7 = *(this + 1);
  v8 = llvm::APFloatBase::PPCDoubleDouble(this);
  v11 = *(this + 2);
  if (v8 != v7)
  {
    v11 = this;
  }

  v12 = *(v11 + 28);
  if ((v12 & 7) == 1)
  {
    v14 = *(a3 + 1);
    v13 = (a3 + 8);
    if (v8 != v14)
    {
      v15 = (a1 + 1);
      v16 = v13;

      return llvm::detail::IEEEFloat::IEEEFloat(v15, v16);
    }

    v24 = a1 + 1;
    v16 = v13;

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(v24, v16);
  }

  v18 = *(a3 + 1);
  v19 = *(a3 + 2);
  if (v8 != v18)
  {
    v19 = a3;
  }

  v20 = *(v19 + 28);
  if ((v20 & 7) != 1)
  {
    v21 = (v12 & 7) == 3 && (v20 & 7) == 3;
    if (v21 && ((v12 >> 3) & 1) != (v20 & 8) >> 3)
    {
      if ((v12 & 8) != 0)
      {
        v22 = this;
      }

      else
      {
        v22 = a3;
      }

      v23 = *(v22 + 1);
      v16 = (v22 + 8);
      if (v8 == v23)
      {
        goto LABEL_25;
      }

LABEL_44:
      v15 = (a1 + 1);

      return llvm::detail::IEEEFloat::IEEEFloat(v15, v16);
    }

    v25 = v8;
    if (v8 == v18)
    {
      if (llvm::detail::DoubleAPFloat::compare((a3 + 8), v6, v9, v10))
      {
        v28 = this;
      }

      else
      {
        v28 = a3;
      }

      v29 = *(v28 + 1);
      v16 = (v28 + 8);
      if (v25 != v29)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (llvm::detail::IEEEFloat::compare((a3 + 8), v6, v9, v10))
      {
        v26 = this;
      }

      else
      {
        v26 = a3;
      }

      v27 = *(v26 + 1);
      v16 = (v26 + 8);
      if (v25 != v27)
      {
        goto LABEL_44;
      }
    }

LABEL_25:
    v24 = a1 + 1;

    return llvm::detail::DoubleAPFloat::DoubleAPFloat(v24, v16);
  }

  if (v8 != v7)
  {
    v15 = (a1 + 1);
    v16 = v6;

    return llvm::detail::IEEEFloat::IEEEFloat(v15, v16);
  }

  v24 = a1 + 1;
  v16 = v6;

  return llvm::detail::DoubleAPFloat::DoubleAPFloat(v24, v16);
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compareSigned(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

uint64_t mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  result = llvm::APInt::compare(this, a3);
  if (result >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = this;
  }

  v8 = *(v7 + 2);
  v10[2] = v8;
  if (v8 >= 0x41)
  {
    llvm::APInt::initSlowCase(v10, v7);
  }

  v9 = *v7;
  *(a1 + 8) = v8;
  *a1 = v9;
  *(a1 + 16) = 1;
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 == v6)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
LABEL_3:
      llvm::detail::IEEEFloat::multiply(&v11, v9, 1, v8);
      v10 = (a1 + 8);
      if (v7 != v11.n128_u64[0])
      {
        goto LABEL_4;
      }

LABEL_9:
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, &v11);
      *(a1 + 32) = 1;
      if (v7 != v11.n128_u64[0])
      {
        goto LABEL_5;
      }

LABEL_10:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
      return;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
      goto LABEL_3;
    }
  }

  llvm::detail::DoubleAPFloat::multiply(&v11, v9, 1, v8);
  v10 = (a1 + 8);
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_4:
  llvm::detail::IEEEFloat::IEEEFloat(v10, &v11);
  *(a1 + 32) = 1;
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
}

void anonymous namespace::MulFOfNegF::~MulFOfNegF(_anonymous_namespace_::MulFOfNegF *this)
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

uint64_t anonymous namespace::MulFOfNegF::matchAndRewrite(_anonymous_namespace_::MulFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v23[0] = v5;
  v23[1] = v6;
  v22[0] = v5;
  v22[1] = v6;
  v25 = v27;
  v27[0] = a2;
  v26 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v24[0] = *(*(v7 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v24);
  if (!DefiningOp)
  {
    v17 = *(a3 + 2);
    if (!v17 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v18 = *(v7 + 3);
LABEL_28:
    (*(*v17 + 88))(v17, v18, v19, v24);
    goto LABEL_29;
  }

  v9 = DefiningOp;
  {
    goto LABEL_29;
  }

  v10 = v26;
  if (v26 >= HIDWORD(v26))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
    v10 = v26;
  }

  v25[v10] = v9;
  LODWORD(v26) = v26 + 1;
  v24[0] = *(*(v7 + 9) + 56);
  v11 = mlir::Value::getDefiningOp(v24);
  if (!v11)
  {
    v17 = *(a3 + 2);
    if (!v17 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v18 = *(v7 + 3);
    goto LABEL_28;
  }

  v12 = v11;
  {
    v13 = v26;
    if (v26 >= HIDWORD(v26))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
      v13 = v26;
    }

    v25[v13] = v12;
    LODWORD(v26) = v26 + 1;
    if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "fastmath", 8), (v15 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "fastmath", 8uLL);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
    }

    if ((*(*(v23[0] + 24) + 8) ^ *(*(v22[0] + 24) + 8)) < 8)
    {
      v16 = *(v25[1] + 24);
      v24[0] = *(*v25 + 24);
      v24[1] = v16;
      v24[2] = *(v25[2] + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v24, 3, 0);
    }

    v21 = *(a3 + 2);
    if (v21 && instruction::util::IsTasklet(v21))
    {
    }
  }

LABEL_29:
  if (v25 != v27)
  {
    free(v25);
  }

  return 0;
}

uint64_t anonymous namespace::static_dag_matcher_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return v6[1];
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (instruction::util::IsTasklet(*(a1 + 16)))
      {
      }
    }

    return 0;
  }
}

uint64_t anonymous namespace::static_dag_matcher_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
    return v6[1];
  }

  else
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      if (instruction::util::IsTasklet(*(a1 + 16)))
      {
      }
    }

    return 0;
  }
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::MulFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::MulFOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_10(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::NegFOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_11(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::NegFOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 != v6)
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v11, v5);
    v9 = (a3 + 8);
    if (v7 != v11.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::divide(&v11, v9, 1, v8);
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v11, v5);
  v9 = (a3 + 8);
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::divide(&v11, v9, 1, v8);
  v10 = (a1 + 8);
  if (v7 == v11.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v10, &v11);
    *(a1 + 32) = 1;
    if (v7 != v11.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v10, &v11);
  *(a1 + 32) = 1;
  if (v7 == v11.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v11);
}

void anonymous namespace::DivFOfNegF::~DivFOfNegF(_anonymous_namespace_::DivFOfNegF *this)
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

uint64_t anonymous namespace::DivFOfNegF::matchAndRewrite(_anonymous_namespace_::DivFOfNegF *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 9);
    v6 = *(a2 + 17);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v23[0] = v5;
  v23[1] = v6;
  v22[0] = v5;
  v22[1] = v6;
  v25 = v27;
  v27[0] = a2;
  v26 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v24[0] = *(*(v7 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v24);
  if (!DefiningOp)
  {
    v17 = *(a3 + 2);
    if (!v17 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v18 = *(v7 + 3);
LABEL_28:
    (*(*v17 + 88))(v17, v18, v19, v24);
    goto LABEL_29;
  }

  v9 = DefiningOp;
  {
    goto LABEL_29;
  }

  v10 = v26;
  if (v26 >= HIDWORD(v26))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
    v10 = v26;
  }

  v25[v10] = v9;
  LODWORD(v26) = v26 + 1;
  v24[0] = *(*(v7 + 9) + 56);
  v11 = mlir::Value::getDefiningOp(v24);
  if (!v11)
  {
    v17 = *(a3 + 2);
    if (!v17 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_29;
    }

    v18 = *(v7 + 3);
    goto LABEL_28;
  }

  v12 = v11;
  {
    v13 = v26;
    if (v26 >= HIDWORD(v26))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
      v13 = v26;
    }

    v25[v13] = v12;
    LODWORD(v26) = v26 + 1;
    if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "fastmath", 8), (v15 & 1) == 0))
    {
      InherentAttr = mlir::DictionaryAttr::get(a2 + 56, "fastmath", 8uLL);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      mlir::arith::FastMathFlagsAttr::get(*(a3 + 1), 0);
    }

    if ((*(*(v23[0] + 24) + 8) ^ *(*(v22[0] + 24) + 8)) < 8)
    {
      v16 = *(v25[1] + 24);
      v24[0] = *(*v25 + 24);
      v24[1] = v16;
      v24[2] = *(v25[2] + 24);
      mlir::Builder::getFusedLoc(a3 + 1, v24, 3, 0);
    }

    v21 = *(a3 + 2);
    if (v21 && instruction::util::IsTasklet(v21))
    {
    }
  }

LABEL_29:
  if (v25 != v27)
  {
    free(v25);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::DivFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::DivFOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::DivFOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::DivFOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::DivFOfNegF::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v7 != v6)
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v12, v5);
    v10 = (a3 + 8);
    if (v7 != v12.n128_u64[0])
    {
      goto LABEL_3;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::mod(&v12, v10, v8, v9);
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, v5);
  v10 = (a3 + 8);
  if (v7 == v12.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_3:
  llvm::detail::IEEEFloat::mod(&v12, v10, v8, v9);
  v11 = (a1 + 8);
  if (v7 == v12.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v11, &v12);
    *(a1 + 32) = 1;
    if (v7 != v12.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
    return;
  }

  llvm::detail::IEEEFloat::IEEEFloat(v11, &v12);
  *(a1 + 32) = 1;
  if (v7 == v12.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
}

void *llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
    }
  }

  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  return result;
}

void *getTypeIfLike<mlir::IntegerType>(uint64_t *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v15 = v1;
    v16 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v16;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v15 + 8);
    v4 = *(v15 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v12 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_22:
  result = mlir::getElementTypeOrSelf(a1);
  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  return result;
}

void anonymous namespace::ExtSIOfExtUI::~ExtSIOfExtUI(_anonymous_namespace_::ExtSIOfExtUI *this)
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

uint64_t anonymous namespace::ExtSIOfExtUI::matchAndRewrite(_anonymous_namespace_::ExtSIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (instruction::util::IsTasklet(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    v15[v11] = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(v15[1] + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && instruction::util::IsTasklet(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::ExtSIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(llvm::APFloatBase *a1, void **a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = (a3 + 8);
  v8 = *(a3 + 8);
  v9 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v16, v7);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(&v16, v7);
  }

  v10 = *a2;
  v14 = 0;
  v11 = llvm::APFloat::convert(v15, v10, 1u, &v14);
  if (v14 || v11)
  {
    v17 = 0;
    v19 = 0;
    if (v9 != v16.n128_u64[0])
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v9 == v16.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v18, &v16);
    v19 = 1;
    if (v9 != v16.n128_u64[0])
    {
      goto LABEL_13;
    }

LABEL_8:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v16);
    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v18, &v16);
  v19 = 1;
  if (v9 == v16.n128_u64[0])
  {
    goto LABEL_8;
  }

LABEL_13:
  llvm::detail::IEEEFloat::~IEEEFloat(&v16);
  if ((v19 & 1) == 0)
  {
LABEL_9:
    *a4 = 0;
    v12 = (a1 + 8);
    v13 = v7;
    if (v9 == *v7)
    {
      goto LABEL_10;
    }

LABEL_15:
    llvm::detail::IEEEFloat::IEEEFloat(v12, v13);
    if (v19 != 1)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_14:
  v12 = (a1 + 8);
  v13 = &v18;
  if (v9 != v18.n128_u64[0])
  {
    goto LABEL_15;
  }

LABEL_10:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v12, v13);
  if (v19 != 1)
  {
    return;
  }

LABEL_16:
  if (v9 == v18.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v18);
  }
}

void *getTypeIfLike<mlir::FloatType>(uint64_t *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v32 = v1;
    v33 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v33;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v32 + 8);
    v4 = *(v32 + 16);
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v12 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_22:
  result = mlir::getElementTypeOrSelf(a1);
  v15 = *(*result + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  return result;
}

void anonymous namespace::TruncIExtSIToExtSI::~TruncIExtSIToExtSI(_anonymous_namespace_::TruncIExtSIToExtSI *this)
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

uint64_t anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(_anonymous_namespace_::TruncIExtSIToExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v31 = v33;
  v33[0] = a2;
  v32 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v30[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v30);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v30);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = *(DefiningOp + 72);
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    v29 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v12 + 1, 8);
    DefiningOp = v29;
    LODWORD(v12) = v32;
LABEL_15:
    v31[v12] = DefiningOp;
    LODWORD(v32) = v32 + 1;
    if (*(DefiningOp + 36))
    {
      v13 = DefiningOp - 16;
    }

    else
    {
      v13 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v30);
    }

    else
    {
      IntOrFloatBitWidth = -1;
    }

    if (*(v5 + 9))
    {
      v16 = v5 - 16;
    }

    else
    {
      v16 = 0;
    }

    v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(v30))
      {
        goto LABEL_38;
      }
    }

    else if (IntOrFloatBitWidth <= -1)
    {
      goto LABEL_38;
    }

    if (*(v5 + 9))
    {
      v18 = v5 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30) && mlir::Type::getIntOrFloatBitWidth(v30))
    {
      if (*(v5 + 9))
      {
        v20 = v5 - 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
      v30[0] = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v22 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v22 = -1;
      }

      v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v27 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v27 = -1;
      }

      if (v22 > v27)
      {
        v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v30))
        {
          if (mlir::Type::getIntOrFloatBitWidth(v30))
          {
            v28 = *(v31[1] + 24);
            v30[0] = *(*v31 + 24);
            v30[1] = v28;
            mlir::Builder::getFusedLoc(a3 + 1, v30, 2, 0);
          }
        }
      }

      v23 = *(a3 + 2);
      if (!v23 || !instruction::util::IsTasklet(v23))
      {
        goto LABEL_42;
      }

      v24 = *(a2 + 3);
LABEL_41:
      (*(*v23 + 88))(v23, v24, v25, v30);
      goto LABEL_42;
    }

LABEL_38:
    v23 = *(a3 + 2);
    if (!v23 || !instruction::util::IsTasklet(v23))
    {
      goto LABEL_42;
    }

    v24 = *(a2 + 3);
    goto LABEL_41;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_42:
  if (v31 != v33)
  {
    free(v31);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'ext, tr' failed to satisfy constraint: ''";
  v13 = 51;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtSIToExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x' failed to satisfy constraint: ''";
  v13 = 49;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIExtUIToExtUI::~TruncIExtUIToExtUI(_anonymous_namespace_::TruncIExtUIToExtUI *this)
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

uint64_t anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(_anonymous_namespace_::TruncIExtUIToExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v31 = v33;
  v33[0] = a2;
  v32 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v30[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v30);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v30);
          goto LABEL_42;
        }
      }

      goto LABEL_42;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = *(DefiningOp + 72);
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v12 = v32;
      if (v32 < HIDWORD(v32))
      {
        goto LABEL_15;
      }
    }

    v29 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v12 + 1, 8);
    DefiningOp = v29;
    LODWORD(v12) = v32;
LABEL_15:
    v31[v12] = DefiningOp;
    LODWORD(v32) = v32 + 1;
    if (*(DefiningOp + 36))
    {
      v13 = DefiningOp - 16;
    }

    else
    {
      v13 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v30);
    }

    else
    {
      IntOrFloatBitWidth = -1;
    }

    if (*(v5 + 9))
    {
      v16 = v5 - 16;
    }

    else
    {
      v16 = 0;
    }

    v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30))
    {
      if (IntOrFloatBitWidth <= mlir::Type::getIntOrFloatBitWidth(v30))
      {
        goto LABEL_38;
      }
    }

    else if (IntOrFloatBitWidth <= -1)
    {
      goto LABEL_38;
    }

    if (*(v5 + 9))
    {
      v18 = v5 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
    v30[0] = mlir::getElementTypeOrSelf((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (mlir::Type::isIntOrFloat(v30) && mlir::Type::getIntOrFloatBitWidth(v30))
    {
      if (*(v5 + 9))
      {
        v20 = v5 - 16;
      }

      else
      {
        v20 = 0;
      }

      v21 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0);
      v30[0] = mlir::getElementTypeOrSelf((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v22 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v22 = -1;
      }

      v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(v30))
      {
        v27 = mlir::Type::getIntOrFloatBitWidth(v30);
      }

      else
      {
        v27 = -1;
      }

      if (v22 > v27)
      {
        v30[0] = mlir::getElementTypeOrSelf((*(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
        if (mlir::Type::isIntOrFloat(v30))
        {
          if (mlir::Type::getIntOrFloatBitWidth(v30))
          {
            v28 = *(v31[1] + 24);
            v30[0] = *(*v31 + 24);
            v30[1] = v28;
            mlir::Builder::getFusedLoc(a3 + 1, v30, 2, 0);
          }
        }
      }

      v23 = *(a3 + 2);
      if (!v23 || !instruction::util::IsTasklet(v23))
      {
        goto LABEL_42;
      }

      v24 = *(a2 + 3);
LABEL_41:
      (*(*v23 + 88))(v23, v24, v25, v30);
      goto LABEL_42;
    }

LABEL_38:
    v23 = *(a3 + 2);
    if (!v23 || !instruction::util::IsTasklet(v23))
    {
      goto LABEL_42;
    }

    v24 = *(a2 + 3);
    goto LABEL_41;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_42:
  if (v31 != v33)
  {
    free(v31);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ExtUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'ext, tr' failed to satisfy constraint: ''";
  v13 = 51;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIExtUIToExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x' failed to satisfy constraint: ''";
  v13 = 49;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrSIToTrunciShrUI::~TruncIShrSIToTrunciShrUI(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this)
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

uint64_t anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(_anonymous_namespace_::TruncIShrSIToTrunciShrUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50 = v52;
  v52[0] = a2;
  v51 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRSIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_12:
        v11 = v10;
        v12 = *(*v8 + 88);
        v13 = &ElementTypeOrSelf;
LABEL_13:
        v12(v8, v9, v11, v13);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v15 = *(DefiningOp + 72);
    ElementTypeOrSelf = *(v15 + 56);
    v16 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
    if (!v16)
    {
      v8 = *(a3 + 2);
      if (v8 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v17 = v16;
    v47 = 0;
    v48 = &v47;
    ElementTypeOrSelf = (v16 - 16);
    v18 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
    if (!v18 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v48, v18) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v17 + 24);
        v12 = *(*v8 + 88);
        v13 = &ElementTypeOrSelf;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v19 = v47;
    ElementTypeOrSelf = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'TypedAttr instance'";
    v45 = 167;
    v20 = *v47;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    else
    {
      mlir::arith::AddUIExtendedOp::fold();
      v21 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    v24 = v22;
    v25 = v23;
    do
    {
      v26 = v25 >> 1;
      v27 = &v24[2 * (v25 >> 1)];
      v29 = *v27;
      v28 = v27 + 2;
      v25 += ~(v25 >> 1);
      if (v29 < v21)
      {
        v24 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
    if (v24 != &v22[2 * v23] && *v24 == v21 && v24[1])
    {
      v30 = v51;
      if (v51 >= HIDWORD(v51))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v51 + 1, 8);
        v30 = v51;
      }

      v50[v30] = v17;
      v31 = (v51 + 1);
      LODWORD(v51) = v31;
      if (v31 >= HIDWORD(v51))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v31 + 1, 8);
        LODWORD(v31) = v51;
      }

      v50[v31] = v7;
      LODWORD(v51) = v51 + 1;
      LODWORD(v45) = 1;
      ElementTypeOrSelf = 0;
      v48 = &ElementTypeOrSelf;
      if (!v19)
      {
        goto LABEL_80;
      }

      if ((mlir::detail::constant_int_value_binder::match(&v48, v19) & 1) == 0)
      {
        if (v45 >= 0x41 && ElementTypeOrSelf)
        {
          MEMORY[0x1AC55A040](ElementTypeOrSelf, 0x1000C8000313F17);
        }

        goto LABEL_80;
      }

      v42 = v45;
      v43 = ElementTypeOrSelf;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v15 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
      }

      else
      {
        IntOrFloatBitWidth = -1;
      }

      v41 = IntOrFloatBitWidth;
      if (*(v5 + 9))
      {
        v33 = v5 - 16;
      }

      else
      {
        v33 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
      {
        v35 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
      }

      else
      {
        v35 = -1;
      }

      LODWORD(v49) = 1;
      v48 = 0;
      ElementTypeOrSelf = &v48;
      if (mlir::detail::constant_int_value_binder::match(&ElementTypeOrSelf, v19))
      {
        LODWORD(v45) = v49;
        ElementTypeOrSelf = v48;
        LOBYTE(v46) = 1;
      }

      else
      {
        LOBYTE(ElementTypeOrSelf) = 0;
        LOBYTE(v46) = 0;
        if (v49 >= 0x41 && v48)
        {
          MEMORY[0x1AC55A040](v48, 0x1000C8000313F17);
        }
      }

      v36 = v45;
      if (v45 >= 0x41)
      {
        if (v36 - llvm::APInt::countLeadingZerosSlowCase(&ElementTypeOrSelf) > 0x40)
        {
          v38 = 1;
          goto LABEL_71;
        }

        p_ElementTypeOrSelf = ElementTypeOrSelf;
      }

      else
      {
        p_ElementTypeOrSelf = &ElementTypeOrSelf;
      }

      v38 = *p_ElementTypeOrSelf != v41 - v35;
LABEL_71:
      if (v36 >= 0x41 && (v46 & 1) != 0 && ElementTypeOrSelf)
      {
        MEMORY[0x1AC55A040](ElementTypeOrSelf, 0x1000C8000313F17);
      }

      if (v42 >= 0x41 && v43)
      {
        MEMORY[0x1AC55A040](v43, 0x1000C8000313F17);
        if (!v38)
        {
          goto LABEL_78;
        }
      }

      else if (!v38)
      {
LABEL_78:
        v39 = *(v50[1] + 24);
        ElementTypeOrSelf = *(*v50 + 24);
        v45 = v39;
        mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 2, 0);
      }

LABEL_80:
      v40 = *(a3 + 2);
      if (v40 && instruction::util::IsTasklet(v40))
      {
      }

      goto LABEL_14;
    }

LABEL_38:
    v48 = &ElementTypeOrSelf;
    v8 = *(a3 + 2);
    if (v8 && instruction::util::IsTasklet(*(a3 + 2)))
    {
      v9 = *(v17 + 24);
      v12 = *(*v8 + 88);
      v13 = &v48;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = *(a3 + 2);
  if (v8 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_14:
  if (v50 != v52)
  {
    free(v50);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ShRUIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
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

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::TruncIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ShRSIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op2->getResult(0), ::mlir::m_Constant(&arg2_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization5(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(const char ***a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v14 = 261;
  v13[0] = v3;
  v13[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v13);
  v5 = *(v4 + 16);
  v15 = 3;
  v16 = ": TypedAttr instance";
  v17 = 20;
  v6 = *(v4 + 24);
  v7 = &v15;
  if (v6 >= *(v4 + 28))
  {
    if (v5 <= &v15 && v5 + 24 * v6 > &v15)
    {
      v11 = &v15 - v5;
      v12 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, (v4 + 32), v6 + 1, 24);
      v4 = v12;
      v5 = *(v12 + 16);
      v7 = &v11[v5];
    }

    else
    {
      v10 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, (v4 + 32), v6 + 1, 24);
      v4 = v10;
      v5 = *(v10 + 16);
      v7 = &v15;
    }
  }

  v8 = (v5 + 24 * *(v4 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(v4 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrSIToTrunciShrUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, tr, c0' failed to satisfy constraint: ''";
  v13 = 53;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrUIMulIToMulSIExtended::~TruncIShrUIMulIToMulSIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this)
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

uint64_t anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulSIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64 = v66;
  v66[0] = a2;
  v65 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v13)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  v14 = v13;
  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(v13 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v15)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!instruction::util::IsTasklet(v8))
    {
      goto LABEL_13;
    }

    v9 = *(v16 + 24);
    goto LABEL_12;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v17 = *(v15 + 72);
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = 0;
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  v45 = v15;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v18 + 1, 8);
  v15 = v45;
  LODWORD(v18) = v65;
LABEL_35:
  *(v64 + v18) = v15;
  LODWORD(v65) = v65 + 1;
  ElementTypeOrSelf = *(*(v14 + 72) + 56);
  v19 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v19)
  {
    v20 = v19;
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
      {
        goto LABEL_13;
      }

      v9 = *(v20 + 24);
      goto LABEL_12;
    }

    if ((*(v19 + 46) & 0x80) != 0)
    {
      v21 = *(v19 + 72);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(v14, "overflowFlags", 13);
    if (v23)
    {
LABEL_45:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      v24 = v65;
      if (v65 >= HIDWORD(v65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
        v24 = v65;
      }

      *(v64 + v24) = v14;
      LODWORD(v65) = v65 + 1;
      ElementTypeOrSelf = *(*(v7 + 72) + 56);
      v25 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
      if (v25)
      {
        v26 = v25;
        v56 = &p_ElementTypeOrSelf;
        p_ElementTypeOrSelf = 0;
        ElementTypeOrSelf = (v25 - 16);
        v27 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
        if (v27 && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v56, v27) & 1) != 0)
        {
          v28 = p_ElementTypeOrSelf;
          v29 = v65;
          if (v65 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
            v29 = v65;
          }

          *(v64 + v29) = v26;
          v30 = (v65 + 1);
          LODWORD(v65) = v30;
          if (v30 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v30 + 1, 8);
            LODWORD(v30) = v65;
          }

          *(v64 + v30) = v7;
          LODWORD(v65) = v65 + 1;
          if (*(v5 + 9))
          {
            v31 = v5 - 16;
          }

          else
          {
            v31 = 0;
          }

          v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if ((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32 && (*(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32)
          {
            if (*(v14 + 36))
            {
              v33 = v14 - 16;
            }

            else
            {
              v33 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              IntOrFloatBitWidth = -1;
            }

            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              v39 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              v39 = -1;
            }

            if (IntOrFloatBitWidth > v39)
            {
              ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
              {
                if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf))
                {
                  LODWORD(v60) = 1;
                  ElementTypeOrSelf = 0;
                  p_ElementTypeOrSelf = &ElementTypeOrSelf;
                  if (v28)
                  {
                    v40 = mlir::detail::constant_int_value_binder::match(&p_ElementTypeOrSelf, v28);
                    v41 = v60;
                    if (v40)
                    {
                      v55 = ElementTypeOrSelf;
                      if (*(v14 + 36))
                      {
                        v42 = v14 - 16;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v43 + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v44 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v44 = -1;
                      }

                      v54 = v44;
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v46 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v46 = -1;
                      }

                      LODWORD(v58) = 1;
                      p_ElementTypeOrSelf = 0;
                      ElementTypeOrSelf = &p_ElementTypeOrSelf;
                      v47 = mlir::detail::constant_int_value_binder::match(&ElementTypeOrSelf, v28);
                      if (v47)
                      {
                        LODWORD(v60) = v58;
                        ElementTypeOrSelf = p_ElementTypeOrSelf;
                        LOBYTE(v61) = 1;
                      }

                      else
                      {
                        LOBYTE(ElementTypeOrSelf) = 0;
                        LOBYTE(v61) = 0;
                        if (v58 >= 0x41 && p_ElementTypeOrSelf)
                        {
                          MEMORY[0x1AC55A040](p_ElementTypeOrSelf, 0x1000C8000313F17);
                        }
                      }

                      v48 = v60;
                      if (v60 >= 0x41)
                      {
                        if (v48 - llvm::APInt::countLeadingZerosSlowCase(&ElementTypeOrSelf) > 0x40)
                        {
                          v50 = 1;
LABEL_114:
                          v51 = v47 ^ 1;
                          if (v48 < 0x41)
                          {
                            v51 = 1;
                          }

                          if ((v51 & 1) == 0 && ElementTypeOrSelf)
                          {
                            MEMORY[0x1AC55A040](ElementTypeOrSelf, 0x1000C8000313F17);
                          }

                          if (v41 >= 0x41 && v55)
                          {
                            MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
                            if (!v50)
                            {
                              goto LABEL_122;
                            }
                          }

                          else if (!v50)
                          {
LABEL_122:
                            v52 = *(*(v64 + 1) + 24);
                            ElementTypeOrSelf = *(*v64 + 24);
                            v60 = v52;
                            v53 = *(*(v64 + 3) + 24);
                            v61 = *(*(v64 + 2) + 24);
                            v62 = v53;
                            v63 = *(*(v64 + 4) + 24);
                            mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 5, 0);
                          }

                          goto LABEL_124;
                        }

                        v49 = ElementTypeOrSelf;
                      }

                      else
                      {
                        v49 = &ElementTypeOrSelf;
                      }

                      v50 = *v49 != v54 - v46;
                      goto LABEL_114;
                    }

                    if (v60 >= 0x41 && ElementTypeOrSelf)
                    {
                      MEMORY[0x1AC55A040](ElementTypeOrSelf, 0x1000C8000313F17);
                    }
                  }

LABEL_124:
                  v36 = *(a3 + 2);
                  if (!v36 || !instruction::util::IsTasklet(v36))
                  {
                    goto LABEL_13;
                  }

                  v37 = *(a2 + 3);
                  goto LABEL_93;
                }
              }
            }

            v36 = *(a3 + 2);
            if (!v36 || !instruction::util::IsTasklet(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

          else
          {
            v36 = *(a3 + 2);
            if (!v36 || !instruction::util::IsTasklet(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

LABEL_93:
          (*(*v36 + 88))(v36, v37, v38, &ElementTypeOrSelf);
          goto LABEL_13;
        }

        v8 = *(a3 + 2);
        if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v26 + 24);
      }

      else
      {
        v8 = *(a3 + 2);
        if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v7 + 24);
      }

LABEL_12:
      (*(*v8 + 88))(v8, v9, v10, &ElementTypeOrSelf);
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

LABEL_44:
    InherentAttr = mlir::DictionaryAttr::get(v14 + 56, "overflowFlags", 0xDuLL);
    goto LABEL_45;
  }

LABEL_14:
  if (v64 != v66)
  {
    free(v64);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && instruction::util::IsTasklet(a1))
  {
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulSIExtendedOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MulSIExtendedOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ShRUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x, y' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulSIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x, c0' failed to satisfy constraint: ''";
  v13 = 54;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::TruncIShrUIMulIToMulUIExtended::~TruncIShrUIMulIToMulUIExtended(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this)
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

uint64_t anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(_anonymous_namespace_::TruncIShrUIMulIToMulUIExtended *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v66[4] = *MEMORY[0x1E69E9840];
  v64 = v66;
  v66[0] = a2;
  v65 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  ElementTypeOrSelf = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ShRUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(DefiningOp + 72) + 24);
  v13 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v13)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v7 + 24);
    goto LABEL_12;
  }

  v14 = v13;
  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  ElementTypeOrSelf = *(*(v13 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (!v15)
  {
    v8 = *(a3 + 2);
    if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
    {
      goto LABEL_13;
    }

    v9 = *(v14 + 24);
    goto LABEL_12;
  }

  if (*(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    v8 = *(a3 + 2);
    if (!v8)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!instruction::util::IsTasklet(v8))
    {
      goto LABEL_13;
    }

    v9 = *(v16 + 24);
    goto LABEL_12;
  }

  if ((*(v15 + 46) & 0x80) != 0)
  {
    v17 = *(v15 + 72);
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = 0;
    v18 = v65;
    if (v65 < HIDWORD(v65))
    {
      goto LABEL_35;
    }
  }

  v45 = v15;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v18 + 1, 8);
  v15 = v45;
  LODWORD(v18) = v65;
LABEL_35:
  *(v64 + v18) = v15;
  LODWORD(v65) = v65 + 1;
  ElementTypeOrSelf = *(*(v14 + 72) + 56);
  v19 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
  if (v19)
  {
    v20 = v19;
    if (*(*(v19 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
      {
        goto LABEL_13;
      }

      v9 = *(v20 + 24);
      goto LABEL_12;
    }

    if ((*(v19 + 46) & 0x80) != 0)
    {
      v21 = *(v19 + 72);
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v64, v19);
      if (!*(v14 + 47))
      {
        goto LABEL_44;
      }
    }

    InherentAttr = mlir::Operation::getInherentAttr(v14, "overflowFlags", 13);
    if (v23)
    {
LABEL_45:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      v24 = v65;
      if (v65 >= HIDWORD(v65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
        v24 = v65;
      }

      *(v64 + v24) = v14;
      LODWORD(v65) = v65 + 1;
      ElementTypeOrSelf = *(*(v7 + 72) + 56);
      v25 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
      if (v25)
      {
        v26 = v25;
        v56 = &p_ElementTypeOrSelf;
        p_ElementTypeOrSelf = 0;
        ElementTypeOrSelf = (v25 - 16);
        v27 = mlir::Value::getDefiningOp(&ElementTypeOrSelf);
        if (v27 && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v56, v27) & 1) != 0)
        {
          v28 = p_ElementTypeOrSelf;
          v29 = v65;
          if (v65 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v65 + 1, 8);
            v29 = v65;
          }

          *(v64 + v29) = v26;
          v30 = (v65 + 1);
          LODWORD(v65) = v30;
          if (v30 >= HIDWORD(v65))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v30 + 1, 8);
            LODWORD(v30) = v65;
          }

          *(v64 + v30) = v7;
          LODWORD(v65) = v65 + 1;
          if (*(v5 + 9))
          {
            v31 = v5 - 16;
          }

          else
          {
            v31 = 0;
          }

          v32 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
          if ((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32 && (*(*(v21 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) == v32)
          {
            if (*(v14 + 36))
            {
              v33 = v14 - 16;
            }

            else
            {
              v33 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, 0);
            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              IntOrFloatBitWidth = -1;
            }

            ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
            if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
            {
              v39 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
            }

            else
            {
              v39 = -1;
            }

            if (IntOrFloatBitWidth > v39)
            {
              ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
              if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
              {
                if (mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf))
                {
                  LODWORD(v60) = 1;
                  ElementTypeOrSelf = 0;
                  p_ElementTypeOrSelf = &ElementTypeOrSelf;
                  if (v28)
                  {
                    v40 = mlir::detail::constant_int_value_binder::match(&p_ElementTypeOrSelf, v28);
                    v41 = v60;
                    if (v40)
                    {
                      v55 = ElementTypeOrSelf;
                      if (*(v14 + 36))
                      {
                        v42 = v14 - 16;
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v43 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v43 + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v44 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v44 = -1;
                      }

                      v54 = v44;
                      ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(v17 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
                      if (mlir::Type::isIntOrFloat(&ElementTypeOrSelf))
                      {
                        v46 = mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf);
                      }

                      else
                      {
                        v46 = -1;
                      }

                      LODWORD(v58) = 1;
                      p_ElementTypeOrSelf = 0;
                      ElementTypeOrSelf = &p_ElementTypeOrSelf;
                      v47 = mlir::detail::constant_int_value_binder::match(&ElementTypeOrSelf, v28);
                      if (v47)
                      {
                        LODWORD(v60) = v58;
                        ElementTypeOrSelf = p_ElementTypeOrSelf;
                        LOBYTE(v61) = 1;
                      }

                      else
                      {
                        LOBYTE(ElementTypeOrSelf) = 0;
                        LOBYTE(v61) = 0;
                        if (v58 >= 0x41 && p_ElementTypeOrSelf)
                        {
                          MEMORY[0x1AC55A040](p_ElementTypeOrSelf, 0x1000C8000313F17);
                        }
                      }

                      v48 = v60;
                      if (v60 >= 0x41)
                      {
                        if (v48 - llvm::APInt::countLeadingZerosSlowCase(&ElementTypeOrSelf) > 0x40)
                        {
                          v50 = 1;
LABEL_114:
                          v51 = v47 ^ 1;
                          if (v48 < 0x41)
                          {
                            v51 = 1;
                          }

                          if ((v51 & 1) == 0 && ElementTypeOrSelf)
                          {
                            MEMORY[0x1AC55A040](ElementTypeOrSelf, 0x1000C8000313F17);
                          }

                          if (v41 >= 0x41 && v55)
                          {
                            MEMORY[0x1AC55A040](v55, 0x1000C8000313F17);
                            if (!v50)
                            {
                              goto LABEL_122;
                            }
                          }

                          else if (!v50)
                          {
LABEL_122:
                            v52 = *(*(v64 + 1) + 24);
                            ElementTypeOrSelf = *(*v64 + 24);
                            v60 = v52;
                            v53 = *(*(v64 + 3) + 24);
                            v61 = *(*(v64 + 2) + 24);
                            v62 = v53;
                            v63 = *(*(v64 + 4) + 24);
                            mlir::Builder::getFusedLoc(a3 + 1, &ElementTypeOrSelf, 5, 0);
                          }

                          goto LABEL_124;
                        }

                        v49 = ElementTypeOrSelf;
                      }

                      else
                      {
                        v49 = &ElementTypeOrSelf;
                      }

                      v50 = *v49 != v54 - v46;
                      goto LABEL_114;
                    }

                    if (v60 >= 0x41 && ElementTypeOrSelf)
                    {
                      MEMORY[0x1AC55A040](ElementTypeOrSelf, 0x1000C8000313F17);
                    }
                  }

LABEL_124:
                  v36 = *(a3 + 2);
                  if (!v36 || !instruction::util::IsTasklet(v36))
                  {
                    goto LABEL_13;
                  }

                  v37 = *(a2 + 3);
                  goto LABEL_93;
                }
              }
            }

            v36 = *(a3 + 2);
            if (!v36 || !instruction::util::IsTasklet(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

          else
          {
            v36 = *(a3 + 2);
            if (!v36 || !instruction::util::IsTasklet(v36))
            {
              goto LABEL_13;
            }

            v37 = *(a2 + 3);
          }

LABEL_93:
          (*(*v36 + 88))(v36, v37, v38, &ElementTypeOrSelf);
          goto LABEL_13;
        }

        v8 = *(a3 + 2);
        if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v26 + 24);
      }

      else
      {
        v8 = *(a3 + 2);
        if (!v8 || !instruction::util::IsTasklet(*(a3 + 2)))
        {
          goto LABEL_13;
        }

        v9 = *(v7 + 24);
      }

LABEL_12:
      (*(*v8 + 88))(v8, v9, v10, &ElementTypeOrSelf);
LABEL_13:
      v11 = 0;
      goto LABEL_14;
    }

LABEL_44:
    InherentAttr = mlir::DictionaryAttr::get(v14 + 56, "overflowFlags", 0xDuLL);
    goto LABEL_45;
  }

LABEL_14:
  if (v64 != v66)
  {
    free(v64);
  }

  return v11;
}

uint64_t mlir::RewriterBase::notifyMatchFailure<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && instruction::util::IsTasklet(a1))
  {
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[38] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulUIExtendedOp,mlir::Value &,mlir::Value &>(v18, v17, v16);
  }

  mlir::OperationState::OperationState(v18, a2, v9);
  mlir::arith::MulSIExtendedOp::build(v11, v18, *a3, *a4);
  v12 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulUIExtendedOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v13;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::ShRUIOp type";
  v13 = 44;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp2 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#5}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#6}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp2";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#7}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#8}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'tr, x, y' failed to satisfy constraint: ''";
  v13 = 52;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#9}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::TruncIShrUIMulIToMulUIExtended::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#10}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'mul, x, c0' failed to satisfy constraint: ''";
  v13 = 54;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(llvm::APFloatBase *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = *(**a2 + 16 * ((*(**a2 + 44) >> 23) & 1) + 72);
  if (!v21)
  {
    LOBYTE(v9) = 1;
    v10 = (a3 + 8);
    v13 = *(a3 + 8);
    v12 = llvm::APFloatBase::PPCDoubleDouble(a1);
    if (v12 != v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v20, v10);
    goto LABEL_6;
  }

  Int = mlir::IntegerAttr::getInt(&v21);
  v9 = 0x400020301uLL >> (8 * Int);
  v11 = *(a3 + 8);
  v10 = (a3 + 8);
  v12 = llvm::APFloatBase::PPCDoubleDouble(Int);
  if (v12 == v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  llvm::detail::IEEEFloat::IEEEFloat(&v20, v10);
LABEL_6:
  v14 = a2[1];
  v18 = 0;
  v15 = llvm::APFloat::convert(v19, v14, v9, &v18);
  if (v18 || v15)
  {
    LOBYTE(v21) = 0;
    v23 = 0;
    if (v12 != v20.n128_u64[0])
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v12 == v20.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v22, &v20);
    v23 = 1;
    if (v12 != v20.n128_u64[0])
    {
      goto LABEL_15;
    }

LABEL_10:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v20);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v22, &v20);
  v23 = 1;
  if (v12 == v20.n128_u64[0])
  {
    goto LABEL_10;
  }

LABEL_15:
  llvm::detail::IEEEFloat::~IEEEFloat(&v20);
  if ((v23 & 1) == 0)
  {
LABEL_11:
    *a4 = 0;
    v16 = (a1 + 8);
    v17 = v10;
    if (v12 == *v10)
    {
      goto LABEL_12;
    }

LABEL_17:
    llvm::detail::IEEEFloat::IEEEFloat(v16, v17);
    if (v23 != 1)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_16:
  v16 = (a1 + 8);
  v17 = &v22;
  if (v12 != v22.n128_u64[0])
  {
    goto LABEL_17;
  }

LABEL_12:
  llvm::detail::DoubleAPFloat::DoubleAPFloat(v16, v17);
  if (v23 != 1)
  {
    return;
  }

LABEL_18:
  if (v12 == v22.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }
}

void anonymous namespace::AndOfExtUI::~AndOfExtUI(_anonymous_namespace_::AndOfExtUI *this)
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

uint64_t anonymous namespace::AndOfExtUI::matchAndRewrite(_anonymous_namespace_::AndOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && instruction::util::IsTasklet(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AndIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AndOfExtSI::~AndOfExtSI(_anonymous_namespace_::AndOfExtSI *this)
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

uint64_t anonymous namespace::AndOfExtSI::matchAndRewrite(_anonymous_namespace_::AndOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && instruction::util::IsTasklet(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AndOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::OrOfExtUI::~OrOfExtUI(_anonymous_namespace_::OrOfExtUI *this)
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

uint64_t anonymous namespace::OrOfExtUI::matchAndRewrite(_anonymous_namespace_::OrOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && instruction::util::IsTasklet(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::OrIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AndIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::OrOfExtSI::~OrOfExtSI(_anonymous_namespace_::OrOfExtSI *this)
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

uint64_t anonymous namespace::OrOfExtSI::matchAndRewrite(_anonymous_namespace_::OrOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v23 = v25;
  v25[0] = a2;
  v24 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v22[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v22);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v22);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      v13 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_18;
      }
    }

    v20 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13 + 1, 8);
    DefiningOp = v20;
    LODWORD(v13) = v24;
LABEL_18:
    v23[v13] = DefiningOp;
    LODWORD(v24) = v24 + 1;
    v22[0] = *(*(v5 + 9) + 56);
    v14 = mlir::Value::getDefiningOp(v22);
    if (!v14)
    {
      v7 = *(a3 + 2);
      if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
      {
        v9 = *(v5 + 3);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v15 = v14;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v15 + 24);
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    if ((*(v14 + 46) & 0x80) != 0)
    {
      v16 = *(v14 + 72);
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
LABEL_28:
        v23[v17] = v14;
        LODWORD(v24) = v24 + 1;
        if ((*(*(v16 + 24) + 8) ^ *(*(v12 + 24) + 8)) < 8)
        {
          v18 = *(v23[1] + 24);
          v22[0] = *(*v23 + 24);
          v22[1] = v18;
          v22[2] = *(v23[2] + 24);
          mlir::Builder::getFusedLoc(a3 + 1, v22, 3, 0);
        }

        v19 = *(a3 + 2);
        if (v19 && instruction::util::IsTasklet(v19))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
      v17 = v24;
      if (v24 < HIDWORD(v24))
      {
        goto LABEL_28;
      }
    }

    v21 = v14;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v17 + 1, 8);
    v14 = v21;
    LODWORD(v17) = v24;
    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v23 != v25)
  {
    free(v23);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::OrOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'x, y' failed to satisfy constraint: ''";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v13 = a2;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v13);
  Width = mlir::FloatType::getWidth(&v13);
  v12 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, 0, 0);
  }

  v11 = 0;
  v8 = llvm::APFloatBase::PPCDoubleDouble(Width);
  if (v8 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), FloatSemantics, &v11);
  }

  llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), FloatSemantics, &v11, v7);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  }

  v9 = (a1 + 8);
  if (v8 == *(a1 + 8))
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(v9, a3, 0);
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(v9, a3, 0, 1);
}

uint64_t llvm::APFloat::convertFromAPInt(llvm::APFloatBase *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = (a1 + 8);
  v8 = *(a1 + 1);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v8)
  {

    llvm::detail::DoubleAPFloat::convertFromAPInt(v7, a2, v5);
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(v7, a2, v5, a4);
}

uint64_t mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v13 = a2;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v13);
  Width = mlir::FloatType::getWidth(&v13);
  v12 = Width;
  if (Width > 0x40)
  {
    llvm::APInt::initSlowCase(&v11, 0, 0);
  }

  v11 = 0;
  v8 = llvm::APFloatBase::PPCDoubleDouble(Width);
  if (v8 == FloatSemantics)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a1 + 8), FloatSemantics, &v11);
  }

  llvm::detail::IEEEFloat::IEEEFloat((a1 + 8), FloatSemantics, &v11, v7);
  if (v12 >= 0x41 && v11)
  {
    MEMORY[0x1AC55A040](v11, 0x1000C8000313F17);
  }

  v9 = (a1 + 8);
  if (v8 == *(a1 + 8))
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt(v9, a3, 1);
  }

  return llvm::detail::IEEEFloat::convertFromAPInt(v9, a3, 1, 1);
}

void anonymous namespace::IndexCastOfIndexCast::~IndexCastOfIndexCast(_anonymous_namespace_::IndexCastOfIndexCast *this)
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

uint64_t anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(_anonymous_namespace_::IndexCastOfIndexCast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v18[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v18);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
LABEL_18:
        *(v19 + v13) = DefiningOp;
        LODWORD(v20) = v20 + 1;
        if (*(v5 + 9))
        {
          v14 = v5 - 16;
        }

        else
        {
          v14 = 0;
        }

        if ((*(*(v12 + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8)) < 8)
        {
          v15 = *(*(v19 + 1) + 24);
          v18[0] = *(*v19 + 24);
          v18[1] = v15;
          mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
        }

        v16 = *(a3 + 2);
        if (v16 && instruction::util::IsTasklet(v16))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    v17 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v13 + 1, 8);
    DefiningOp = v17;
    LODWORD(v13) = v20;
    goto LABEL_18;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::IndexCastOp type";
  v13 = 48;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfIndexCast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastOfExtSI::~IndexCastOfExtSI(_anonymous_namespace_::IndexCastOfExtSI *this)
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

uint64_t anonymous namespace::IndexCastOfExtSI::matchAndRewrite(_anonymous_namespace_::IndexCastOfExtSI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (instruction::util::IsTasklet(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    v15[v11] = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(v15[1] + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && instruction::util::IsTasklet(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastOfExtSI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastUIOfIndexCastUI::~IndexCastUIOfIndexCastUI(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this)
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

uint64_t anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfIndexCastUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v18[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7)
      {
        v8 = DefiningOp;
        if (instruction::util::IsTasklet(v7))
        {
          v9 = *(v8 + 24);
LABEL_12:
          (*(*v7 + 88))(v7, v9, v10, v18);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
LABEL_18:
        *(v19 + v13) = DefiningOp;
        LODWORD(v20) = v20 + 1;
        if (*(v5 + 9))
        {
          v14 = v5 - 16;
        }

        else
        {
          v14 = 0;
        }

        if ((*(*(v12 + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8)) < 8)
        {
          v15 = *(*(v19 + 1) + 24);
          v18[0] = *(*v19 + 24);
          v18[1] = v15;
          mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
        }

        v16 = *(a3 + 2);
        if (v16 && instruction::util::IsTasklet(v16))
        {
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
      v13 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_18;
      }
    }

    v17 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v13 + 1, 8);
    DefiningOp = v17;
    LODWORD(v13) = v20;
    goto LABEL_18;
  }

  v7 = *(a3 + 2);
  if (v7 && instruction::util::IsTasklet(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::IndexCastUIOp type";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfIndexCastUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res, x' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::IndexCastUIOfExtUI::~IndexCastUIOfExtUI(_anonymous_namespace_::IndexCastUIOfExtUI *this)
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

uint64_t anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(_anonymous_namespace_::IndexCastUIOfExtUI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (instruction::util::IsTasklet(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    v15[v11] = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(v15[1] + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && instruction::util::IsTasklet(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::arith::IndexCastUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::IndexCastUIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastUIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::IndexCastUIOfExtUI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::BitcastOfBitcast::~BitcastOfBitcast(_anonymous_namespace_::BitcastOfBitcast *this)
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

uint64_t anonymous namespace::BitcastOfBitcast::matchAndRewrite(_anonymous_namespace_::BitcastOfBitcast *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v17[0] = a2;
  v16 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v14[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v14);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::BitcastOp,void>::id)
    {
      v6 = *(a3 + 2);
      if (v6)
      {
        v7 = DefiningOp;
        if (instruction::util::IsTasklet(v6))
        {
          v8 = *(v7 + 24);
LABEL_12:
          (*(*v6 + 88))(v6, v8, v9, v14);
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = v16;
      if (v16 < HIDWORD(v16))
      {
        goto LABEL_18;
      }
    }

    v13 = DefiningOp;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11 + 1, 8);
    DefiningOp = v13;
    LODWORD(v11) = v16;
LABEL_18:
    *(v15 + v11) = DefiningOp;
    LODWORD(v16) = v16 + 1;
    v12 = *(*(v15 + 1) + 24);
    v14[0] = *(*v15 + 24);
    v14[1] = v12;
    mlir::Builder::getFusedLoc(a3 + 1, v14, 2, 0);
  }

  v6 = *(a3 + 2);
  if (v6 && instruction::util::IsTasklet(v6))
  {
    v8 = *(v4 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v15 != v17)
  {
    free(v15);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::BitcastOfBitcast::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, (a2 + 32), v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}