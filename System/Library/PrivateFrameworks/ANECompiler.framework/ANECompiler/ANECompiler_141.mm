void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & 0xFFFFFFFFFFFFFFF8);
  v4 = *(a2 + 72);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    *v5 = *v4;
    if (v6)
    {
      *(v6 + 8) = v5;
    }
  }

  v4[3] = v3;
  v7 = *v3;
  *v4 = *v3;
  v4[1] = v3;
  if (v7)
  {
    *(v7 + 8) = v4;
  }

  *v3 = v4;
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

uint64_t mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    Values = mlir::SparseElementsAttr::getValues(&v25);
    if (!Values)
    {
      return 0;
    }

    {
      v24 = Values;
      mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v5 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>();
    v3 = v21;
    a1 = v22;
    v5 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>();
    v18 = v23;
  }

  v19 = *(v4 + 485);
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::CallOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallOpInterface]";
  v6 = 71;
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v27;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  v22 = v1;
  v28 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v1 = v22;
  a1 = v28;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v23 = v1;
  v29 = a1;
  v18 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v18;
  v1 = v23;
  a1 = v29;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

LABEL_30:
    v25 = v1;
    v31 = a1;
    v16 = v3;
    v20 = v2;
    v13 = v4;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v4 = v13;
    v3 = v16;
    v2 = v20;
    v1 = v25;
    a1 = v31;
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_31;
  }

LABEL_29:
  v24 = v1;
  v30 = a1;
  v15 = v3;
  v19 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v3 = v15;
  v2 = v19;
  v1 = v24;
  a1 = v30;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_31:
  v26 = v1;
  v32 = a1;
  v17 = v3;
  v21 = v2;
  v12 = v5;
  v14 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v5 = v12;
  v4 = v14;
  v3 = v17;
  v2 = v21;
  v1 = v26;
  a1 = v32;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::VariadicResults<Empty>]";
  v6 = 87;
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

const char *llvm::getTypeName<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallOpInterface::Trait<Empty>]";
  v6 = 85;
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

BOOL mlir::Op<mlir::func::CallIndirectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::func::CallIndirectOp::verifyInvariantsImpl(&v5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 6 && (*a3 == 1819042147 ? (v7 = *(a3 + 4) == 25957) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v13);
  if (v8 == 6 && *result == 1819042147 && *(result + 4) == 25957)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v14 = v11;
      if (v11)
      {
        result = mlir::OpaqueAttr::getAttrData(&v14);
        if (v12)
        {
          v11 = 0;
        }

        else
        {
          v11 = a4;
        }
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "callee", 6uLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::CallOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::func::CallOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::CallOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::writeProperties;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(a1);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::verifySymbolUses;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x800407D3415B1uLL);
  v3 = v2;
  *v2 = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee;
  v2[1] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setCalleeFromCallable;
  v2[2] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperands;
  v2[3] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getArgOperandsMutable;
  v2[4] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable;
  v2[5] = mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallIndirectOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

unint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::getCallableForCallee(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 47) || (result = mlir::Operation::getInherentAttr(a2, "callee", 6), (v4 & 1) == 0))
  {
    result = mlir::DictionaryAttr::get(a2 + 56, "callee", 6uLL);
  }

  if (result)
  {
    if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      result &= ~4uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::setCalleeFromCallable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "callee";
  v7[1] = 6;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallableInTable(uint64_t a1, mlir::SymbolTable *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v4 = a3;
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
    a3 = v4;
    a2 = InterfaceFor;
  }

  return mlir::call_interface_impl::resolveCallable(v3, a2, a3);
}

uint64_t mlir::detail::CallOpInterfaceInterfaceTraits::Model<mlir::func::CallOp>::resolveCallable(uint64_t a1, mlir::SymbolTable *InterfaceFor)
{
  v2 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::CallOpInterface,mlir::detail::CallOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::call_interface_impl::resolveCallable(v2, InterfaceFor, 0);
}

void mlir::Operation::setAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[9] = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (*(a1 + 47) && (AttrData = mlir::OpaqueAttr::getAttrData(&v9), mlir::Operation::getInherentAttr(a1, AttrData, v6), (v7 & 1) != 0))
  {
    mlir::Operation::setInherentAttr(a1, v9, a3);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v10, *(a1 + 56));
    if (mlir::NamedAttrList::set(v10, v9, a3) != a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v10, Context);
    }

    if (v10[0] != v11)
    {
      free(v10[0]);
    }
  }
}

const char *llvm::getTypeName<mlir::SymbolUserOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolUserOpInterface]";
  v6 = 77;
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

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::CallOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::CallOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::MemRefsNormalizable<Empty>]";
  v6 = 91;
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

const char *llvm::getTypeName<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolUserOpInterface::Trait<Empty>]";
  v6 = 91;
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

BOOL mlir::Op<mlir::func::CallOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::func::CallOp::verifyInvariantsImpl(&v5);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 5 && (*a3 == 1970037110 ? (v7 = *(a3 + 4) == 101) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v13);
  if (v8 == 5 && *result == 1970037110 && *(result + 4) == 101)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v14 = v11;
      if (v11)
      {
        result = mlir::OpaqueAttr::getAttrData(&v14);
        if (v12)
        {
          v11 = 0;
        }

        else
        {
          v11 = a4;
        }
      }

      *(v10 + 64) = v11;
    }

    else
    {
      *(v10 + 64) = 0;
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "value", 5uLL, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::arith::ConstantOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::func::ConstantOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::writeProperties;
  {
    v11 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ConstantOp>::getSpeculatability;
  {
    v12 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getEffects;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v7);
  v8 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v8 = mlir::detail::SymbolUserOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::verifySymbolUses;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  *v9 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmResultNames;
  v9[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockArgumentNames;
  v9[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getAsmBlockNames;
  v9[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::ConstantOp>::getDefaultDialect;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
  }

  v10 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

uint64_t mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::foldSingleResultHook<mlir::func::ConstantOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v6 = a1 + 64;
  v7 = *(a1 + 44);
  v8 = v7 & 0x7FFFFF;
  if ((v7 & 0x7FFFFF) != 0)
  {
    v9 = ((a1 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  mlir::ValueRange::ValueRange(v14, v9, v8);
  v10 = *(v6 + 16 * ((*(a1 + 44) >> 23) & 1));
  if (v10 < 8)
  {
    return 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFBLL;
  v12 = *(a4 + 8);
  if (v12 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v12 + 1, 8);
    LODWORD(v12) = *(a4 + 8);
  }

  *(*a4 + 8 * v12) = v11;
  ++*(a4 + 8);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::SymbolUserOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolUserOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::func::ConstantOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::func::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::func::ConstantOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::hasTrait()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v3);
  v1 = v4;
  if (v4 >= 8)
  {
    if ((v4 & 4) != 0)
    {
      v2 = result;
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v2;
    }

    if ((v1 & 2) == 0)
    {
      llvm::deallocate_buffer(v3[0], v3[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::func::FuncOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  mlir::func::FuncOp::populateInherentAttrs(Context, v6, a3);
}

double mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v4;
    *(a3 + 16) = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    *&v4 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return *&v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::func::FuncOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::func::FuncOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2)
  {
    return 0;
  }

  if (a3[1] != a2[1])
  {
    return 0;
  }

  if (a3[2] != a2[2])
  {
    return 0;
  }

  if (a3[3] == a2[3])
  {
    return a3[4] == a2[4];
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::CallOp>,mlir::OpTrait::VariadicResults<mlir::func::CallOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::CallOp>,mlir::OpTrait::VariadicOperands<mlir::func::CallOp>,mlir::OpTrait::OpInvariants<mlir::func::CallOp>,mlir::BytecodeOpInterface::Trait<mlir::func::CallOp>,mlir::CallOpInterface::Trait<mlir::func::CallOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::CallOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::CallOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(a1);
  v4 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
  v5 = v4;
  *v4 = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmResultNames;
  v4[1] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockArgumentNames;
  v4[2] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getAsmBlockNames;
  v4[3] = mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getDefaultDialect;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1));
  (*(*a3 + 24))(a3, v4[8]);
  (*(*a3 + 16))(a3, v4[9]);
  (*(*a3 + 24))(a3, v4[10]);
  (*(*a3 + 16))(a3, v4[11]);
  v5 = v4[12];
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v3 = v2;
  *v2 = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getNameAttr;
  v2[1] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setName;
  v2[2] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getVisibility;
  v2[3] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isNested;
  v2[4] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPrivate;
  v2[5] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isPublic;
  v2[6] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setVisibility;
  v2[7] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setNested;
  v2[8] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPrivate;
  v2[9] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setPublic;
  v2[10] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getSymbolUses;
  v2[11] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::symbolKnownUseEmpty;
  v2[12] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::replaceAllSymbolUses;
  v2[13] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isOptionalSymbol;
  v2[14] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::canDiscardOnUseEmpty;
  v2[15] = mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::isDeclaration;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

void mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v8 = 261;
  v7[0] = "sym_name";
  v7[1] = 8;
  v6 = mlir::StringAttr::get(Context, v7);
  mlir::Operation::setAttr(a2, v6, a3);
}

const char *llvm::getTypeName<mlir::SymbolOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolOpInterface]";
  v6 = 73;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x800404C0E4D0CuLL);
  v3 = v2;
  *v2 = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion;
  v2[1] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes;
  v2[2] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes;
  v2[3] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgAttrsAttr;
  v2[4] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResAttrsAttr;
  v2[5] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setArgAttrsAttr;
  v2[6] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setResAttrsAttr;
  v2[7] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeArgAttrsAttr;
  v2[8] = mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::removeResAttrsAttr;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

unint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getCallableRegion(uint64_t a1, uint64_t a2)
{
  v2 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v2 == v2)
  {
    return 0;
  }

  else
  {
    return ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getArgumentTypes(uint64_t a1, uint64_t a2)
{
  Value = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::FunctionType::getInputs(&Value);
}

uint64_t mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getResultTypes(uint64_t a1, uint64_t a2)
{
  Value = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::FunctionType::getResults(&Value);
}

const char *llvm::getTypeName<mlir::CallableOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallableOpInterface]";
  v6 = 75;
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

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0xE004091171B8EuLL);
  *v2 = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::getFunctionType;
  v2[1] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::setFunctionTypeAttr;
  v2[2] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith;
  v2[3] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyBody;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::verifyType;
  mlir::detail::FunctionOpInterfaceInterfaceTraits::Concept::initializeInterfaceConcept(v2, a1);
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v3 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Concept::initializeInterfaceConcept(uint64_t result, uint64_t a2)
{
  {
    v2 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
    v3 = *a2;
    v4 = *(a2 + 8);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = a2;
    v22 = result;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    a2 = v20;
    result = v22;
    v2 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface,void>::resolveTypeID(void)::id;
    v3 = *v20;
    v4 = *(v20 + 8);
    if (!v4)
    {
      goto LABEL_13;
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
  if (v5 == &v3[2 * v4] || *v5 != v2)
  {
LABEL_13:
    *(result + 40) = 0;
    {
      goto LABEL_14;
    }

LABEL_23:
    v21 = a2;
    v23 = result;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>>();
    result = v23;
    v11 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;
    v12 = *v21;
    v13 = *(v21 + 8);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_26:
    *(result + 48) = 0;
    return result;
  }

  *(result + 40) = v5[1];
  {
    goto LABEL_23;
  }

LABEL_14:
  v11 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface,void>::resolveTypeID(void)::id;
  v12 = *a2;
  v13 = *(a2 + 8);
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_26;
  }

  *(result + 48) = v14[1];
  return result;
}

uint64_t mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::func::FuncOp>::cloneTypeWith(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Value = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&Value);
  return mlir::FunctionType::clone(&Value, a3, a4, a5, a6);
}

BOOL mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::verifyBody(uint64_t **a1)
{
  v90 = *MEMORY[0x1E69E9840];
  v1 = *(*a1 + 11);
  v2 = &(*a1)[2 * ((v1 >> 23) & 1) + 8];
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10));
  if (*v3 == v3)
  {
    return 1;
  }

  Value = *(v2 + 8);
  Value = mlir::AffineMapAttr::getValue(&Value);
  Inputs = mlir::FunctionType::getInputs(&Value);
  v7 = v6;
  v8 = *(((&(*a1)[2 * ((*(*a1 + 11) >> 23) & 1) + 8] + ((*(*a1 + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 + 48;
  v10 = *(v9 + 48);
  if (((*(v11 + 8) - v10) >> 3) != v6)
  {
    v73[0] = "entry block must have ";
    v74 = 259;
    mlir::OpState::emitOpError(a1, v73, &Value);
    if (Value)
    {
      v75 = 5;
      v76 = v7;
      v15 = &v75;
      v16 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v66 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v16 = v80;
          v15 = (v80 + v66);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v15 = &v75;
          v16 = v80;
        }
      }

      v17 = &v16[24 * v81];
      v18 = *v15;
      *(v17 + 2) = *(v15 + 2);
      *v17 = v18;
      v19 = ++v81;
      if (Value)
      {
        v75 = 3;
        v76 = " arguments to match function signature";
        v77 = 38;
        v20 = &v75;
        v21 = v80;
        if (v19 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v19 > &v75)
          {
            v67 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v19 + 1, 24);
            v21 = v80;
            v20 = (v80 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v19 + 1, 24);
            v20 = &v75;
            v21 = v80;
          }
        }

        v22 = &v21[24 * v81];
        v23 = *v20;
        *(v22 + 2) = *(v20 + 2);
        *v22 = v23;
        ++v81;
      }
    }

    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v89 != 1)
    {
      return v14;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v87;
      v26 = __p;
      if (v87 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v87 = v24;
      operator delete(v26);
    }

    v27 = v84;
    if (v84)
    {
      v28 = v85;
      v29 = v84;
      if (v85 != v84)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
          }
        }

        while (v28 != v27);
        v29 = v84;
      }

      v85 = v27;
      operator delete(v29);
    }

    v64 = v80;
    if (v80 == v83)
    {
      return v14;
    }

LABEL_64:
    free(v64);
    return v14;
  }

  if (!v6)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(*(v10 + 8 * v12) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(Inputs + 8 * v12) != v13)
    {
      break;
    }

    if (v6 == ++v12)
    {
      return 1;
    }
  }

  v73[0] = "type of entry block argument #";
  v74 = 259;
  v32 = Inputs;
  mlir::OpState::emitOpError(a1, v73, &Value);
  if (Value)
  {
    v75 = 5;
    v76 = v12;
    v33 = &v75;
    v34 = v80;
    if (v81 >= v82)
    {
      if (v80 <= &v75 && v80 + 24 * v81 > &v75)
      {
        v68 = &v75 - v80;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
        v34 = v80;
        v33 = (v80 + v68);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
        v33 = &v75;
        v34 = v80;
      }
    }

    v35 = &v34[24 * v81];
    v36 = *v33;
    *(v35 + 2) = *(v33 + 2);
    *v35 = v36;
    ++v81;
    if (Value)
    {
      mlir::Diagnostic::operator<<(v79, 40);
      if (Value)
      {
        v37 = &v75;
        mlir::DiagnosticArgument::DiagnosticArgument(&v75, v13);
        v38 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v69 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v38 = v80;
            v37 = (v80 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v37 = &v75;
            v38 = v80;
          }
        }

        v39 = v32;
        v40 = &v38[24 * v81];
        v41 = *v37;
        *(v40 + 2) = *(v37 + 2);
        *v40 = v41;
        v42 = ++v81;
        if (Value)
        {
          v75 = 3;
          v76 = ") must match the type of the corresponding argument in ";
          v77 = 55;
          v43 = &v75;
          v44 = v80;
          if (v42 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v42 > &v75)
            {
              v70 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v42 + 1, 24);
              v44 = v80;
              v43 = (v80 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v42 + 1, 24);
              v43 = &v75;
              v44 = v80;
            }

            v39 = v32;
          }

          v45 = &v44[24 * v81];
          v46 = *v43;
          *(v45 + 2) = *(v43 + 2);
          *v45 = v46;
          v47 = ++v81;
          if (Value)
          {
            v75 = 3;
            v76 = "function signature(";
            v77 = 19;
            v48 = &v75;
            v49 = v80;
            if (v47 >= v82)
            {
              if (v80 <= &v75 && v80 + 24 * v47 > &v75)
              {
                v71 = &v75 - v80;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v47 + 1, 24);
                v49 = v80;
                v48 = (v80 + v71);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v47 + 1, 24);
                v48 = &v75;
                v49 = v80;
              }

              v39 = v32;
            }

            v50 = &v49[24 * v81];
            v51 = *v48;
            *(v50 + 2) = *(v48 + 2);
            *v50 = v51;
            ++v81;
            if (Value)
            {
              v52 = &v75;
              mlir::DiagnosticArgument::DiagnosticArgument(&v75, *(v39 + 8 * v12));
              v53 = v80;
              if (v81 >= v82)
              {
                if (v80 <= &v75 && v80 + 24 * v81 > &v75)
                {
                  v72 = &v75 - v80;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
                  v53 = v80;
                  v52 = (v80 + v72);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
                  v52 = &v75;
                  v53 = v80;
                }
              }

              v54 = &v53[24 * v81];
              v55 = *v52;
              *(v54 + 2) = *(v52 + 2);
              *v54 = v55;
              ++v81;
              if (Value)
              {
                mlir::Diagnostic::operator<<(v79, 41);
              }
            }
          }
        }
      }
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v89)
  {
    if (v88 != &v89)
    {
      free(v88);
    }

    v56 = __p;
    if (__p)
    {
      v57 = v87;
      v58 = __p;
      if (v87 != __p)
      {
        do
        {
          v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v87 = v56;
      operator delete(v58);
    }

    v59 = v84;
    if (v84)
    {
      v60 = v85;
      v61 = v84;
      if (v85 != v84)
      {
        do
        {
          v63 = *--v60;
          v62 = v63;
          *v60 = 0;
          if (v63)
          {
            MEMORY[0x1AC55A040](v62, 0x1000C8077774924);
          }
        }

        while (v60 != v59);
        v61 = v84;
      }

      v85 = v59;
      operator delete(v61);
    }

    v64 = v80;
    if (v80 != v83)
    {
      goto LABEL_64;
    }
  }

  return v14;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneRegion<Empty>]";
  v6 = 81;
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

const char *llvm::getTypeName<mlir::OpTrait::AffineScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AffineScope>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AffineScope<Empty>]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AutomaticAllocationScope<Empty>]";
  v6 = 96;
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

const char *llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SymbolOpInterface::Trait<Empty>]";
  v6 = 87;
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

const char *llvm::getTypeName<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CallableOpInterface::Trait<Empty>]";
  v6 = 89;
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

const char *llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface::Trait<Empty>]";
  v6 = 89;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::func::FuncOp,mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v10 = *(*(*(a2 + 48) + 96) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v10);
  mlir::function_interface_impl::printFunctionOp(a3, a2, InterfaceFor, 0, AttrData, v9, **(*(a2 + 48) + 96), *(*(*(a2 + 48) + 96) + 16));
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::OneRegion<mlir::func::FuncOp>,mlir::OpTrait::ZeroResults<mlir::func::FuncOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::FuncOp>,mlir::OpTrait::ZeroOperands<mlir::func::FuncOp>,mlir::OpTrait::OpInvariants<mlir::func::FuncOp>,mlir::BytecodeOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::AffineScope<mlir::func::FuncOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::func::FuncOp>,mlir::SymbolOpInterface::Trait<mlir::func::FuncOp>,mlir::CallableOpInterface::Trait<mlir::func::FuncOp>,mlir::FunctionOpInterface::Trait<mlir::func::FuncOp>,mlir::OpTrait::IsIsolatedFromAbove<mlir::func::FuncOp>,mlir::OpAsmOpInterface::Trait<mlir::func::FuncOp>>(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (v8 = a1, mlir::func::FuncOp::verifyInvariantsImpl(&v8)) && mlir::detail::SymbolOpInterfaceTrait<mlir::func::FuncOp>::verifyTrait(a1, v6))
  {
    return mlir::function_interface_impl::verifyTrait<mlir::func::FuncOp>(a1);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::detail::SymbolOpInterfaceTrait<mlir::func::FuncOp>::verifyTrait(uint64_t a1, mlir::Operation *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = a1;
  if ((mlir::detail::verifySymbol(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = (((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  if (*v4 == v4 && !mlir::SymbolTable::getSymbolVisibility(a1, v3))
  {
    v24[0] = "symbol declaration cannot have public visibility";
    v25 = 259;
    mlir::OpState::emitOpError(&v26, v24, v27);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v9 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v9;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v9;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v33;
        v20 = __p;
        if (v33 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v33 = v18;
        operator delete(v20);
        result = v9;
      }

      v13 = v30;
      if (!v30)
      {
        goto LABEL_47;
      }

      v21 = v31;
      v15 = v30;
      if (v31 == v30)
      {
        goto LABEL_46;
      }

      do
      {
        v23 = *--v21;
        v22 = v23;
        *v21 = 0;
        if (v23)
        {
          MEMORY[0x1AC55A040](v22, 0x1000C8077774924);
        }
      }

      while (v21 != v13);
      goto LABEL_45;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      return 1;
    }

    ParentOp = mlir::Block::getParentOp(v5);
    if (!ParentOp)
    {
      return 1;
    }

    v7 = ParentOp;
    {
      mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef();
    }

    if (((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) != 0 || *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      return 1;
    }

    v24[0] = "symbol's parent must have the SymbolTable trait";
    v25 = 259;
    mlir::OpState::emitOpError(&v26, v24, v27);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v9 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v9;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v9;
      }

      v10 = __p;
      if (__p)
      {
        v11 = v33;
        v12 = __p;
        if (v33 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v33 = v10;
        operator delete(v12);
        result = v9;
      }

      v13 = v30;
      if (!v30)
      {
        goto LABEL_47;
      }

      v14 = v31;
      v15 = v30;
      if (v31 == v30)
      {
LABEL_46:
        v31 = v13;
        operator delete(v15);
        result = v9;
LABEL_47:
        if (v28 != &v29)
        {
          free(v28);
          return v9;
        }

        return result;
      }

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
LABEL_45:
      v15 = v30;
      goto LABEL_46;
    }
  }

  return result;
}

BOOL mlir::function_interface_impl::verifyTrait<mlir::func::FuncOp>(uint64_t a1)
{
  v173 = *MEMORY[0x1E69E9840];
  v159 = a1;
  v1 = (*(a1 + 44) >> 23) & 1;
  v158 = *(a1 + 64 + 16 * v1);
  if (v158)
  {
    v162[0] = *(a1 + 64 + 16 * v1 + 8);
    v162[0] = mlir::AffineMapAttr::getValue(v162);
    mlir::FunctionType::getInputs(v162);
    v3 = v2;
    mlir::ArrayAttr::getValue(&v158);
    if (v4 != v3)
    {
      v157 = 257;
      mlir::OpState::emitOpError(&v159, v156, v162);
      if (v162[0])
      {
        LODWORD(v160) = 3;
        *(&v160 + 1) = "expects argument attribute array to have the same number of elements as the number of function arguments, got ";
        v161 = 110;
        v30 = &v160;
        v31 = v163;
        if (v164 >= v165)
        {
          if (v163 <= &v160 && v163 + 24 * v164 > &v160)
          {
            v141 = &v160 - v163;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v31 = v163;
            v30 = v163 + v141;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v30 = &v160;
            v31 = v163;
          }
        }

        v32 = &v31[24 * v164];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        ++v164;
      }

      mlir::ArrayAttr::getValue(&v158);
      if (v162[0])
      {
        LODWORD(v160) = 5;
        *(&v160 + 1) = v34;
        v35 = &v160;
        v36 = v163;
        if (v164 >= v165)
        {
          if (v163 <= &v160 && v163 + 24 * v164 > &v160)
          {
            v142 = &v160 - v163;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v36 = v163;
            v35 = v163 + v142;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v35 = &v160;
            v36 = v163;
          }
        }

        v37 = &v36[24 * v164];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        v39 = ++v164;
        if (v162[0])
        {
          LODWORD(v160) = 3;
          *(&v160 + 1) = ", but expected ";
          v161 = 15;
          v40 = &v160;
          v41 = v163;
          if (v39 >= v165)
          {
            if (v163 <= &v160 && v163 + 24 * v39 > &v160)
            {
              v143 = &v160 - v163;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v39 + 1, 24);
              v41 = v163;
              v40 = v163 + v143;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v39 + 1, 24);
              v40 = &v160;
              v41 = v163;
            }
          }

          v42 = &v41[24 * v164];
          v43 = *v40;
          *(v42 + 2) = *(v40 + 2);
          *v42 = v43;
          v44 = ++v164;
          if (v162[0])
          {
            LODWORD(v160) = 5;
            *(&v160 + 1) = v3;
            v45 = &v160;
            v46 = v163;
            if (v44 >= v165)
            {
              if (v163 <= &v160 && v163 + 24 * v44 > &v160)
              {
                v146 = &v160 - v163;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v44 + 1, 24);
                v46 = v163;
                v45 = v163 + v146;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v44 + 1, 24);
                v45 = &v160;
                v46 = v163;
              }
            }

            v47 = &v46[24 * v164];
            v48 = *v45;
            *(v47 + 2) = *(v45 + 2);
            *v47 = v48;
            ++v164;
          }
        }
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
      if (v162[0])
      {
        mlir::InFlightDiagnostic::report(v162);
      }

      if (v172 == 1)
      {
        if (v171 != &v172)
        {
          free(v171);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v170;
          v51 = __p;
          if (v170 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v170 = v49;
          operator delete(v51);
        }

        v52 = v167;
        if (!v167)
        {
          goto LABEL_192;
        }

        v53 = v168;
        v54 = v167;
        if (v168 == v167)
        {
          goto LABEL_191;
        }

        do
        {
          v56 = *--v53;
          v55 = v56;
          *v53 = 0;
          if (v56)
          {
            MEMORY[0x1AC55A040](v55, 0x1000C8077774924);
          }
        }

        while (v53 != v52);
        goto LABEL_190;
      }

      return v29;
    }

    if (v3)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(mlir::ArrayAttr::getValue(&v158) + 8 * v5);
        if (!v6)
        {
          v155 = 0;
LABEL_141:
          v157 = 257;
          mlir::OpState::emitOpError(&v159, v156, v162);
          if (v162[0])
          {
            LODWORD(v160) = 3;
            v161 = 71;
            v100 = &v160;
            v101 = v163;
            if (v164 >= v165)
            {
              if (v163 <= &v160 && v163 + 24 * v164 > &v160)
              {
                v149 = &v160 - v163;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v101 = v163;
                v100 = v163 + v149;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v100 = &v160;
                v101 = v163;
              }
            }

            v102 = &v101[24 * v164];
            v103 = *v100;
            *(v102 + 2) = *(v100 + 2);
            *v102 = v103;
            ++v164;
          }

          Value = mlir::ArrayAttr::getValue(&v158);
          if (v162[0])
          {
            v105 = &v160;
            mlir::DiagnosticArgument::DiagnosticArgument(&v160, *(Value + 8 * v5));
            v106 = v163;
            if (v164 >= v165)
            {
              if (v163 <= &v160 && v163 + 24 * v164 > &v160)
              {
                v150 = &v160 - v163;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v106 = v163;
                v105 = v163 + v150;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v105 = &v160;
                v106 = v163;
              }
            }

            v107 = &v106[24 * v164];
            v108 = *v105;
            *(v107 + 2) = *(v105 + 2);
            *v107 = v108;
            v109 = ++v164;
            if (v162[0])
            {
              LODWORD(v160) = 3;
              v161 = 1;
              v110 = &v160;
              v111 = v163;
              if (v109 >= v165)
              {
                if (v163 <= &v160 && v163 + 24 * v109 > &v160)
                {
                  v151 = &v160 - v163;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v109 + 1, 24);
                  v111 = v163;
                  v110 = v163 + v151;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v109 + 1, 24);
                  v110 = &v160;
                  v111 = v163;
                }
              }

              v112 = &v111[24 * v164];
              v113 = *v110;
              *(v112 + 2) = *(v110 + 2);
              *v112 = v113;
              ++v164;
            }
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
          if (v162[0])
          {
            mlir::InFlightDiagnostic::report(v162);
          }

          if (v172 != 1)
          {
            return v29;
          }

          if (v171 != &v172)
          {
            free(v171);
          }

          v114 = __p;
          if (__p)
          {
            v115 = v170;
            v116 = __p;
            if (v170 != __p)
            {
              do
              {
                v115 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v115 - 1);
              }

              while (v115 != v114);
              v116 = __p;
            }

            v170 = v114;
            operator delete(v116);
          }

          v52 = v167;
          if (!v167)
          {
            goto LABEL_192;
          }

          v117 = v168;
          v54 = v167;
          if (v168 == v167)
          {
            goto LABEL_191;
          }

          do
          {
            v119 = *--v117;
            v118 = v119;
            *v117 = 0;
            if (v119)
            {
              MEMORY[0x1AC55A040](v118, 0x1000C8077774924);
            }
          }

          while (v117 != v52);
          goto LABEL_190;
        }

        if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v6 = 0;
        }

        v155 = v6;
        if (!v6)
        {
          goto LABEL_141;
        }

        v7 = mlir::AffineMapAttr::getValue(&v155);
        v8 = mlir::DictionaryAttr::end(&v155);
        if (v7 != v8)
        {
          break;
        }

LABEL_18:
        if (++v5 == v3)
        {
          goto LABEL_19;
        }
      }

      v9 = v8;
      while (1)
      {
        v160 = *v7;
        v162[0] = ZinCompressedFootprintInfo::GetCompressedBytes(&v160);
        AttrData = mlir::OpaqueAttr::getAttrData(v162);
        if (!v11)
        {
          break;
        }

        v12 = AttrData;
        v13 = memchr(AttrData, 46, v11);
        if (!v13 || v13 - v12 == -1)
        {
          break;
        }

        NameDialect = mlir::NamedAttribute::getNameDialect(&v160);
        if (NameDialect && ((*(*NameDialect + 80))(NameDialect, v159, 0, v5, v160, *(&v160 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v7 == v9)
        {
          goto LABEL_18;
        }
      }

      v156[0] = "arguments may only have dialect attributes";
      v157 = 259;
      mlir::OpState::emitOpError(&v159, v156, v162);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
      if (v162[0])
      {
        mlir::InFlightDiagnostic::report(v162);
      }

      if (v172 != 1)
      {
        return v29;
      }

      if (v171 != &v172)
      {
        free(v171);
      }

      v82 = __p;
      if (__p)
      {
        v83 = v170;
        v84 = __p;
        if (v170 != __p)
        {
          do
          {
            v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
          }

          while (v83 != v82);
          v84 = __p;
        }

        v170 = v82;
        operator delete(v84);
      }

      v52 = v167;
      if (!v167)
      {
        goto LABEL_192;
      }

      v85 = v168;
      v54 = v167;
      if (v168 == v167)
      {
        goto LABEL_191;
      }

      do
      {
        v87 = *--v85;
        v86 = v87;
        *v85 = 0;
        if (v87)
        {
          MEMORY[0x1AC55A040](v86, 0x1000C8077774924);
        }
      }

      while (v85 != v52);
      goto LABEL_190;
    }
  }

LABEL_19:
  v15 = &v159[2 * ((*(v159 + 11) >> 23) & 1) + 8];
  v158 = v15[2];
  if (v158)
  {
    v162[0] = v15[1];
    v162[0] = mlir::AffineMapAttr::getValue(v162);
    mlir::FunctionType::getResults(v162);
    v17 = v16;
    mlir::ArrayAttr::getValue(&v158);
    if (v18 != v17)
    {
      v157 = 257;
      mlir::OpState::emitOpError(&v159, v156, v162);
      if (v162[0])
      {
        LODWORD(v160) = 3;
        *(&v160 + 1) = "expects result attribute array to have the same number of elements as the number of function results, got ";
        v161 = 106;
        v57 = &v160;
        v58 = v163;
        if (v164 >= v165)
        {
          if (v163 <= &v160 && v163 + 24 * v164 > &v160)
          {
            v144 = &v160 - v163;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v58 = v163;
            v57 = v163 + v144;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v57 = &v160;
            v58 = v163;
          }
        }

        v59 = &v58[24 * v164];
        v60 = *v57;
        *(v59 + 2) = *(v57 + 2);
        *v59 = v60;
        ++v164;
      }

      mlir::ArrayAttr::getValue(&v158);
      if (v162[0])
      {
        LODWORD(v160) = 5;
        *(&v160 + 1) = v61;
        v62 = &v160;
        v63 = v163;
        if (v164 >= v165)
        {
          if (v163 <= &v160 && v163 + 24 * v164 > &v160)
          {
            v145 = &v160 - v163;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v63 = v163;
            v62 = v163 + v145;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
            v62 = &v160;
            v63 = v163;
          }
        }

        v64 = &v63[24 * v164];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        v66 = ++v164;
        if (v162[0])
        {
          LODWORD(v160) = 3;
          *(&v160 + 1) = ", but expected ";
          v161 = 15;
          v67 = &v160;
          v68 = v163;
          if (v66 >= v165)
          {
            if (v163 <= &v160 && v163 + 24 * v66 > &v160)
            {
              v147 = &v160 - v163;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v66 + 1, 24);
              v68 = v163;
              v67 = v163 + v147;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v66 + 1, 24);
              v67 = &v160;
              v68 = v163;
            }
          }

          v69 = &v68[24 * v164];
          v70 = *v67;
          *(v69 + 2) = *(v67 + 2);
          *v69 = v70;
          v71 = ++v164;
          if (v162[0])
          {
            LODWORD(v160) = 5;
            *(&v160 + 1) = v17;
            v72 = &v160;
            v73 = v163;
            if (v71 >= v165)
            {
              if (v163 <= &v160 && v163 + 24 * v71 > &v160)
              {
                v148 = &v160 - v163;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v71 + 1, 24);
                v73 = v163;
                v72 = v163 + v148;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v71 + 1, 24);
                v72 = &v160;
                v73 = v163;
              }
            }

            v74 = &v73[24 * v164];
            v75 = *v72;
            *(v74 + 2) = *(v72 + 2);
            *v74 = v75;
            ++v164;
          }
        }
      }

      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
      if (v162[0])
      {
        mlir::InFlightDiagnostic::report(v162);
      }

      if (v172 == 1)
      {
        if (v171 != &v172)
        {
          free(v171);
        }

        v76 = __p;
        if (__p)
        {
          v77 = v170;
          v78 = __p;
          if (v170 != __p)
          {
            do
            {
              v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
            }

            while (v77 != v76);
            v78 = __p;
          }

          v170 = v76;
          operator delete(v78);
        }

        v52 = v167;
        if (!v167)
        {
          goto LABEL_192;
        }

        v79 = v168;
        v54 = v167;
        if (v168 == v167)
        {
          goto LABEL_191;
        }

        do
        {
          v81 = *--v79;
          v80 = v81;
          *v79 = 0;
          if (v81)
          {
            MEMORY[0x1AC55A040](v80, 0x1000C8077774924);
          }
        }

        while (v79 != v52);
        goto LABEL_190;
      }

      return v29;
    }

    if (v17)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(mlir::ArrayAttr::getValue(&v158) + 8 * v19);
        if (!v20)
        {
          v155 = 0;
LABEL_166:
          v157 = 257;
          mlir::OpState::emitOpError(&v159, v156, v162);
          if (v162[0])
          {
            LODWORD(v160) = 3;
            v161 = 69;
            v120 = &v160;
            v121 = v163;
            if (v164 >= v165)
            {
              if (v163 <= &v160 && v163 + 24 * v164 > &v160)
              {
                v152 = &v160 - v163;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v121 = v163;
                v120 = v163 + v152;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v120 = &v160;
                v121 = v163;
              }
            }

            v122 = &v121[24 * v164];
            v123 = *v120;
            *(v122 + 2) = *(v120 + 2);
            *v122 = v123;
            ++v164;
          }

          v124 = mlir::ArrayAttr::getValue(&v158);
          if (v162[0])
          {
            v125 = &v160;
            mlir::DiagnosticArgument::DiagnosticArgument(&v160, *(v124 + 8 * v19));
            v126 = v163;
            if (v164 >= v165)
            {
              if (v163 <= &v160 && v163 + 24 * v164 > &v160)
              {
                v153 = &v160 - v163;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v126 = v163;
                v125 = v163 + v153;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v164 + 1, 24);
                v125 = &v160;
                v126 = v163;
              }
            }

            v127 = &v126[24 * v164];
            v128 = *v125;
            *(v127 + 2) = *(v125 + 2);
            *v127 = v128;
            v129 = ++v164;
            if (v162[0])
            {
              LODWORD(v160) = 3;
              v161 = 1;
              v130 = &v160;
              v131 = v163;
              if (v129 >= v165)
              {
                if (v163 <= &v160 && v163 + 24 * v129 > &v160)
                {
                  v154 = &v160 - v163;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v129 + 1, 24);
                  v131 = v163;
                  v130 = v163 + v154;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v166, v129 + 1, 24);
                  v130 = &v160;
                  v131 = v163;
                }
              }

              v132 = &v131[24 * v164];
              v133 = *v130;
              *(v132 + 2) = *(v130 + 2);
              *v132 = v133;
              ++v164;
            }
          }

          v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
          if (v162[0])
          {
            mlir::InFlightDiagnostic::report(v162);
          }

          if (v172 != 1)
          {
            return v29;
          }

          if (v171 != &v172)
          {
            free(v171);
          }

          v134 = __p;
          if (__p)
          {
            v135 = v170;
            v136 = __p;
            if (v170 != __p)
            {
              do
              {
                v135 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v135 - 1);
              }

              while (v135 != v134);
              v136 = __p;
            }

            v170 = v134;
            operator delete(v136);
          }

          v52 = v167;
          if (!v167)
          {
            goto LABEL_192;
          }

          v137 = v168;
          v54 = v167;
          if (v168 == v167)
          {
            goto LABEL_191;
          }

          do
          {
            v139 = *--v137;
            v138 = v139;
            *v137 = 0;
            if (v139)
            {
              MEMORY[0x1AC55A040](v138, 0x1000C8077774924);
            }
          }

          while (v137 != v52);
          goto LABEL_190;
        }

        if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v20 = 0;
        }

        v155 = v20;
        if (!v20)
        {
          goto LABEL_166;
        }

        v21 = mlir::AffineMapAttr::getValue(&v155);
        v22 = mlir::DictionaryAttr::end(&v155);
        if (v21 != v22)
        {
          break;
        }

LABEL_36:
        if (++v19 == v17)
        {
          goto LABEL_37;
        }
      }

      v23 = v22;
      while (1)
      {
        v160 = *v21;
        v162[0] = ZinCompressedFootprintInfo::GetCompressedBytes(&v160);
        v24 = mlir::OpaqueAttr::getAttrData(v162);
        if (!v25)
        {
          break;
        }

        v26 = v24;
        v27 = memchr(v24, 46, v25);
        if (!v27 || v27 - v26 == -1)
        {
          break;
        }

        v28 = mlir::NamedAttribute::getNameDialect(&v160);
        if (v28 && ((*(*v28 + 88))(v28, v159, 0, v19, v160, *(&v160 + 1)) & 1) == 0)
        {
          return 0;
        }

        if (++v21 == v23)
        {
          goto LABEL_36;
        }
      }

      v156[0] = "results may only have dialect attributes";
      v157 = 259;
      mlir::OpState::emitOpError(&v159, v156, v162);
      v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
      if (v162[0])
      {
        mlir::InFlightDiagnostic::report(v162);
      }

      if (v172 != 1)
      {
        return v29;
      }

      if (v171 != &v172)
      {
        free(v171);
      }

      v94 = __p;
      if (__p)
      {
        v95 = v170;
        v96 = __p;
        if (v170 != __p)
        {
          do
          {
            v95 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v95 - 1);
          }

          while (v95 != v94);
          v96 = __p;
        }

        v170 = v94;
        operator delete(v96);
      }

      v52 = v167;
      if (!v167)
      {
        goto LABEL_192;
      }

      v97 = v168;
      v54 = v167;
      if (v168 == v167)
      {
        goto LABEL_191;
      }

      do
      {
        v99 = *--v97;
        v98 = v99;
        *v97 = 0;
        if (v99)
        {
          MEMORY[0x1AC55A040](v98, 0x1000C8077774924);
        }
      }

      while (v97 != v52);
      goto LABEL_190;
    }
  }

LABEL_37:
  if ((*(v159 + 11) & 0x7FFFFF) == 1)
  {
    return mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::verifyBody(&v159);
  }

  v156[0] = "expects one region";
  v157 = 259;
  mlir::OpState::emitOpError(&v159, v156, v162);
  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v162);
  if (v162[0])
  {
    mlir::InFlightDiagnostic::report(v162);
  }

  if (v172 == 1)
  {
    if (v171 != &v172)
    {
      free(v171);
    }

    v88 = __p;
    if (__p)
    {
      v89 = v170;
      v90 = __p;
      if (v170 != __p)
      {
        do
        {
          v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
        }

        while (v89 != v88);
        v90 = __p;
      }

      v170 = v88;
      operator delete(v90);
    }

    v52 = v167;
    if (!v167)
    {
      goto LABEL_192;
    }

    v91 = v168;
    v54 = v167;
    if (v168 == v167)
    {
LABEL_191:
      v168 = v52;
      operator delete(v54);
LABEL_192:
      if (v163 != v166)
      {
        free(v163);
      }

      return v29;
    }

    do
    {
      v93 = *--v91;
      v92 = v93;
      *v91 = 0;
      if (v93)
      {
        MEMORY[0x1AC55A040](v92, 0x1000C8077774924);
      }
    }

    while (v91 != v52);
LABEL_190:
    v54 = v167;
    goto LABEL_191;
  }

  return v29;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F1A05E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::hasTrait()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v8);
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::printAssembly()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v4);
  v2 = v5;
  if (v5 >= 8)
  {
    if ((v5 & 4) != 0)
    {
      if ((v5 & 2) != 0)
      {
        v3 = v4;
      }

      else
      {
        v3 = v4[0];
      }

      result = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v4[0], v4[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::verifyRegionInvariants()
{
  v7 = *MEMORY[0x1E69E9840];
  v5[0] = mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v6 = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v5);
  v2 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v3 = v5[0];
      if ((v6 & 2) != 0)
      {
        v3 = v5;
      }

      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))(v3, v1);
      result = v4;
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::func::ReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  (a5)(v23, a6, a2, a3, a4);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ReturnOp>,mlir::OpTrait::ZeroResults<mlir::func::ReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ReturnOp>,mlir::OpTrait::VariadicOperands<mlir::func::ReturnOp>,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>,mlir::OpTrait::OpInvariants<mlir::func::ReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::MemRefsNormalizable<mlir::func::ReturnOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::func::ReturnOp>,mlir::OpTrait::ReturnLike<mlir::func::ReturnOp>,mlir::OpTrait::IsTerminator<mlir::func::ReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::func::ReturnOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getEffects;
  {
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::func::ConstantOp>,mlir::OpTrait::OneResult<mlir::func::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::func::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::func::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::func::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::func::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::func::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::func::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::func::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::func::ConstantOp>,mlir::SymbolUserOpInterface::Trait<mlir::func::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::func::ConstantOp>>();
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v4);
  v5 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v5 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getMutableSuccessorOperands;
  v5[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions;
  {
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::func::ReturnOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v104 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v104;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  v92 = v1;
  v105 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v1 = v92;
  a1 = v105;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  v93 = v1;
  v106 = a1;
  v81 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v81;
  v1 = v93;
  a1 = v106;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  v94 = v1;
  v107 = a1;
  v71 = v3;
  v82 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v3 = v71;
  v2 = v82;
  v1 = v94;
  a1 = v107;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v95 = v1;
  v108 = a1;
  v72 = v3;
  v83 = v2;
  v62 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v62;
  v3 = v72;
  v2 = v83;
  v1 = v95;
  a1 = v108;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v96 = v1;
  v109 = a1;
  v73 = v3;
  v84 = v2;
  v54 = v5;
  v63 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v54;
  v4 = v63;
  v3 = v73;
  v2 = v84;
  v1 = v96;
  a1 = v109;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v97 = v1;
  v110 = a1;
  v74 = v3;
  v85 = v2;
  v55 = v5;
  v64 = v4;
  v47 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v6 = v47;
  v5 = v55;
  v4 = v64;
  v3 = v74;
  v2 = v85;
  v1 = v97;
  a1 = v110;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v98 = v1;
  v111 = a1;
  v75 = v3;
  v86 = v2;
  v56 = v5;
  v65 = v4;
  v41 = v7;
  v48 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v7 = v41;
  v6 = v48;
  v5 = v56;
  v4 = v65;
  v3 = v75;
  v2 = v86;
  v1 = v98;
  a1 = v111;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v99 = v1;
  v112 = a1;
  v76 = v3;
  v87 = v2;
  v57 = v5;
  v66 = v4;
  v42 = v7;
  v49 = v6;
  v36 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::SymbolUserOpInterface::Trait,mlir::OpAsmOpInterface::Trait>();
  v8 = v36;
  v7 = v42;
  v6 = v49;
  v5 = v57;
  v4 = v66;
  v3 = v76;
  v2 = v87;
  v1 = v99;
  a1 = v112;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v100 = v1;
  v113 = a1;
  v77 = v3;
  v88 = v2;
  v58 = v5;
  v67 = v4;
  v43 = v7;
  v50 = v6;
  v32 = v9;
  v37 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::CallOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::SymbolUserOpInterface::Trait>();
  v9 = v32;
  v8 = v37;
  v7 = v43;
  v6 = v50;
  v5 = v58;
  v4 = v67;
  v3 = v77;
  v2 = v88;
  v1 = v100;
  a1 = v113;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::MemRefsNormalizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::MemRefsNormalizable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

LABEL_65:
    v102 = v1;
    v115 = a1;
    v79 = v3;
    v90 = v2;
    v60 = v5;
    v69 = v4;
    v45 = v7;
    v52 = v6;
    v34 = v9;
    v39 = v8;
    v27 = v11;
    v30 = v10;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v11 = v27;
    v10 = v30;
    v9 = v34;
    v8 = v39;
    v7 = v45;
    v6 = v52;
    v5 = v60;
    v4 = v69;
    v3 = v79;
    v2 = v90;
    v1 = v102;
    a1 = v115;
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_66;
  }

LABEL_64:
  v101 = v1;
  v114 = a1;
  v78 = v3;
  v89 = v2;
  v59 = v5;
  v68 = v4;
  v44 = v7;
  v51 = v6;
  v33 = v9;
  v38 = v8;
  v29 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v10 = v29;
  v9 = v33;
  v8 = v38;
  v7 = v44;
  v6 = v51;
  v5 = v59;
  v4 = v68;
  v3 = v78;
  v2 = v89;
  v1 = v101;
  a1 = v114;
  v11 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_65;
  }

LABEL_13:
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_66:
  v103 = v1;
  v116 = a1;
  v80 = v3;
  v91 = v2;
  v61 = v5;
  v70 = v4;
  v46 = v7;
  v53 = v6;
  v35 = v9;
  v40 = v8;
  v28 = v11;
  v31 = v10;
  v26 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v12 = v26;
  v11 = v28;
  v10 = v31;
  v9 = v35;
  v8 = v40;
  v7 = v46;
  v6 = v53;
  v5 = v61;
  v4 = v70;
  v3 = v80;
  v2 = v91;
  v1 = v103;
  a1 = v116;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<Empty>]";
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

const char *llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchTerminatorOpInterface::Trait<Empty>]";
  v6 = 103;
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

const char *llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ReturnLike<Empty>]";
  v6 = 82;
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

uint64_t mlir::Op<mlir::func::ReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) & 1) == 0 || !mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>::verifyTrait(a1) || (mlir::OpTrait::impl::verifyIsTerminator(a1, v5) & 1) == 0)
  {
    return 0;
  }

  v7 = a1;
  return mlir::func::ReturnOp::verify(&v7) & 1;
}

BOOL mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl<mlir::func::ReturnOp>::verifyTrait(mlir::Block **a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a1[2])
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(a1[2]);
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::func::FuncOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "func.func";
    v35 = 9;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "func.func";
    v35 = 9;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
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

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x1AC55A040](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t *llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  if (result != a2)
  {
    v28 = v5;
    v29 = v6;
    v27 = 262;
    v11 = result[1];
    v24 = *result;
    v25 = v11;
    v12 = result;
    result = mlir::Diagnostic::operator<<(a3, &v24);
    for (i = v12 + 2; i != a2; result = mlir::Diagnostic::operator<<(a3, &v24))
    {
      v14 = *a5;
      if (*a5)
      {
        v15 = strlen(*a5);
        LODWORD(v24) = 3;
        v25 = v14;
        v26 = v15;
        v16 = *(a4 + 24);
        v17 = *(a4 + 16);
        if (v16 < *(a4 + 28))
        {
          goto LABEL_7;
        }
      }

      else
      {
        LODWORD(v24) = 3;
        v25 = 0;
        v26 = 0;
        v16 = *(a4 + 24);
        v17 = *(a4 + 16);
        if (v16 < *(a4 + 28))
        {
          goto LABEL_7;
        }
      }

      if (v17 <= &v24 && v17 + 24 * v16 > &v24)
      {
        v23 = &v24 - v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, (a4 + 32), v16 + 1, 24);
        v17 = *(a4 + 16);
        v18 = &v23[v17];
        goto LABEL_8;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a4 + 16, (a4 + 32), v16 + 1, 24);
      v17 = *(a4 + 16);
LABEL_7:
      v18 = &v24;
LABEL_8:
      v19 = v17 + 24 * *(a4 + 24);
      v20 = *v18;
      *(v19 + 16) = v18[2];
      *v19 = v20;
      ++*(a4 + 24);
      v27 = 262;
      v21 = *i;
      v22 = i[1];
      i += 2;
      v24 = v21;
      v25 = v22;
    }
  }

  return result;
}

__n128 llvm::interleave<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(mlir::ValueTypeRange<mlir::ResultRange> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<mlir::ValueTypeRange<mlir::ResultRange>>(mlir::ValueTypeRange<mlir::ResultRange> const&,char const*)::{lambda(void)#1},void>(mlir::detail::OpResultImpl *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char **a7)
{
  if (a2 != a4)
  {
    v41 = v7;
    v42 = v8;
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(a1, a2);
    v16 = &v38;
    mlir::DiagnosticArgument::DiagnosticArgument(&v38, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    v18 = (a5 + 16);
    v17 = *(a5 + 16);
    v19 = *(a5 + 24);
    if (v19 >= *(a5 + 28))
    {
      if (v17 <= &v38 && v17 + 24 * v19 > &v38)
      {
        v37 = &v38 - v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v19 + 1, 24);
        v17 = *(a5 + 16);
        v16 = &v37[v17];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v19 + 1, 24);
        v17 = *(a5 + 16);
        v16 = &v38;
      }
    }

    v20 = (v17 + 24 * *(a5 + 24));
    result = *v16;
    v20[1].n128_u64[0] = v16[1].n128_u64[0];
    *v20 = result;
    ++*(a5 + 24);
    for (i = a2 + 1; a4 != i; ++i)
    {
      v23 = *a7;
      if (*a7)
      {
        v24 = strlen(*a7);
        v38 = 3;
        v39 = v23;
        v40 = v24;
        v25 = *(a6 + 24);
        v26 = *(a6 + 16);
        if (v25 < *(a6 + 28))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v38 = 3;
        v39 = 0;
        v40 = 0;
        v25 = *(a6 + 24);
        v26 = *(a6 + 16);
        if (v25 < *(a6 + 28))
        {
          goto LABEL_9;
        }
      }

      if (v26 <= &v38 && v26 + 24 * v25 > &v38)
      {
        v35 = &v38 - v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 16, (a6 + 32), v25 + 1, 24);
        v26 = *(a6 + 16);
        v27 = &v35[v26];
        goto LABEL_10;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a6 + 16, (a6 + 32), v25 + 1, 24);
      v26 = *(a6 + 16);
LABEL_9:
      v27 = &v38;
LABEL_10:
      v28 = v26 + 24 * *(a6 + 24);
      v29 = *v27;
      *(v28 + 16) = *(v27 + 2);
      *v28 = v29;
      ++*(a6 + 24);
      v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(a1, i);
      v31 = &v38;
      mlir::DiagnosticArgument::DiagnosticArgument(&v38, *(v30 + 8) & 0xFFFFFFFFFFFFFFF8);
      v32 = *(a5 + 24);
      v33 = *(a5 + 16);
      if (v32 >= *(a5 + 28))
      {
        if (v33 <= &v38 && v33 + 24 * v32 > &v38)
        {
          v36 = &v38 - v33;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v32 + 1, 24);
          v33 = *v18;
          v31 = &v36[*v18];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a5 + 16, (a5 + 32), v32 + 1, 24);
          v33 = *v18;
          v31 = &v38;
        }
      }

      v34 = (v33 + 24 * *(a5 + 24));
      result = *v31;
      v34[1].n128_u64[0] = v31[1].n128_u64[0];
      *v34 = result;
      ++*(a5 + 24);
    }
  }

  return result;
}

uint64_t mlir::detail::constant_op_binder<mlir::SymbolRefAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

ZinIrHalH13g *mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a2;
  Context = mlir::Attribute::getContext(&v21);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::func::CallOp,mlir::SymbolRefAttr &,mlir::ValueTypeRange<mlir::ResultRange>,mlir::OperandRange>(v22, &v24, v23);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  NextResultAtOffset = *a4;
  v15 = a4[1];
  v16 = a4[3];
  if (v15)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v15);
  }

  mlir::ValueRange::ValueRange(&v24, NextResultAtOffset, v16 - v15);
  mlir::TypeRange::TypeRange(v23, v24, v25);
  v17 = mlir::ValueRange::ValueRange(&v24, *a5, a5[1]);
  mlir::func::CallOp::build(v17, v22, v13, v23[0], v23[1], v24, v25);
  v18 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v18 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::func::CallOp,void>::id)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v19;
}

uint64_t llvm::function_ref<mlir::Type ()(mlir::Builder &,llvm::ArrayRef<mlir::Type>,llvm::ArrayRef<mlir::Type>,mlir::function_interface_impl::VariadicFlag,std::string &)>::callback_fn<mlir::func::FuncOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  mlir::ValueRange::ValueRange(v10, a5, a6);
  return mlir::Builder::getFunctionType(a2, v11[0], v11[1], v10[0], v10[1]);
}

void *mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void mlir::RewritePatternSet::add<mlir::func::CallIndirectOp>(llvm::LogicalResult (*)(mlir::func::CallIndirectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::func::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::CallOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

BOOL mlir::AsmParser::parseAttribute<mlir::FlatSymbolRefAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v23 = 0;
  if (((*(*a1 + 440))(a1, &v23, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v23;
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v24[0] = v8;
  if (v8)
  {
    mlir::OpaqueAttr::getAttrData(v24);
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    *a2 = v10;
    if (v10)
    {
      return 1;
    }
  }

  else
  {
    *a2 = 0;
  }

  v21 = "invalid kind of attribute specified";
  v22 = 259;
  (*(*a1 + 24))(v24, a1, v6, &v21);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v30;
      v14 = __p;
      if (v30 != __p)
      {
        do
        {
          v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v30 = v12;
      operator delete(v14);
    }

    v15 = v27;
    if (v27)
    {
      v16 = v28;
      v17 = v27;
      if (v28 != v27)
      {
        do
        {
          v19 = *--v16;
          v18 = v19;
          *v16 = 0;
          if (v19)
          {
            MEMORY[0x1AC55A040](v18, 0x1000C8077774924);
          }
        }

        while (v16 != v15);
        v17 = v27;
      }

      v28 = v15;
      operator delete(v17);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v11;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::CallOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

llvm::raw_ostream *mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
    v7 = a2[1];
    v10 = a2[3];
    if (v7 == v10 || v7 + 1 != v10)
    {
LABEL_20:
      v20 = *(v5 + 4);
      if (v20 >= *(v5 + 3))
      {
        result = llvm::raw_ostream::write(v5, 40);
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(v5 + 4) = v20 + 1;
        *v20 = 40;
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
LABEL_25:
          v26 = *(v5 + 4);
          if (v26 >= *(v5 + 3))
          {

            return llvm::raw_ostream::write(v5, 41);
          }

          else
          {
            *(v5 + 4) = v26 + 1;
            *v26 = 41;
          }

          return result;
        }
      }

      v23 = *a2;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v21);
      result = (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v21 + 1; v22 != i; ++i)
      {
        v28 = (*(*a1 + 16))(a1);
        v29 = v28[4];
        if (v28[3] - v29 > 1uLL)
        {
          *v29 = 8236;
          v28[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, i);
        result = (*(*a1 + 32))(a1, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      goto LABEL_25;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
    v7 = a2[1];
    v8 = a2[3];
    if (v7 == v8 || v7 + 1 != v8)
    {
      goto LABEL_20;
    }
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, v7);
  if (*(*(*(result + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_20;
  }

  v12 = a2[1];
  v13 = a2[3];
  if (v12 != v13)
  {
    v14 = *a2;
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
    result = (*(*a1 + 32))(a1, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
    for (j = v12 + 1; v13 != j; ++j)
    {
      v18 = (*(*a1 + 16))(a1);
      v19 = v18[4];
      if (v18[3] - v19 > 1uLL)
      {
        *v19 = 8236;
        v18[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, j);
      result = (*(*a1 + 32))(a1, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

const char *llvm::getTypeName<mlir::func::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 110;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::func::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(void *a1@<X0>, uint64_t a2@<X8>)
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC55A070);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::func::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::func::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::func::detail::FuncOpGenericAdaptorBase::Properties]";
  v6 = 106;
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

__n128 OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int a24)
{
  v26 = (v24 + 24 * a24);
  result = *v25;
  v26[1].n128_u64[0] = v25[1].n128_u64[0];
  *v26 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_3_7@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_6@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *(result + 32) = a2 + 1;
  *a2 = 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = v2;
  ++*(result + 32);
  return result;
}

void OUTLINED_FUNCTION_10_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, va, a1 + 1, 24);
}

__n128 OUTLINED_FUNCTION_14_3@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v18 = (a1 + 24 * a17);
  result = *v17;
  v18[1].n128_u64[0] = v17[1].n128_u64[0];
  *v18 = result;
  return result;
}

void OUTLINED_FUNCTION_32_2(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2 + 1, 24);
}

void *OUTLINED_FUNCTION_41_0()
{

  return llvm::raw_ostream::write(v0, v1, 2uLL);
}

void OUTLINED_FUNCTION_42_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v25 + 24, va, v24 + 1, 24);
}

void OUTLINED_FUNCTION_43_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  llvm::SmallVectorBase<unsigned int>::grow_pod(v17 + 24, va, a1 + 1, 24);
}

void OUTLINED_FUNCTION_44_0(uint64_t a1, void *a2)
{

  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, v2 + 1, 24);
}

uint64_t mlir::function_interface_impl::getArgAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 24))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

uint64_t mlir::function_interface_impl::getResultAttrDict(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = (*(*(a2 + 48) + 32))();
  v5 = result;
  if (result)
  {
    return *(mlir::ArrayAttr::getValue(&v5) + 8 * a3);
  }

  return result;
}

void mlir::function_interface_impl::setAllArgAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[8] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x800000000;
  v8 = (8 * a4) >> 3;
  if (v8 < 9)
  {
    v9 = 0;
    v10 = v24;
    v11 = 8 * a4;
    if (!a4)
    {
LABEL_3:
      v12 = v9 + (v11 >> 3);
      LODWORD(v23) = v9 + (v11 >> 3);
      if (!v23)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v8, 8);
    v9 = v23;
    v10 = v22;
    v11 = 8 * a4;
    if (!a4)
    {
      goto LABEL_3;
    }
  }

  v13 = &v10[v9];
  v14 = v11;
  do
  {
    v15 = *a3;
    if (!*a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v15 = mlir::DictionaryAttr::get(Context, 0, 0);
    }

    *v13++ = v15;
    ++a3;
    v14 -= 8;
  }

  while (v14);
  v10 = v22;
  v12 = v23 + (v11 >> 3);
  LODWORD(v23) = v23 + (v11 >> 3);
  if (!v23)
  {
LABEL_14:
    (*(*(a2 + 48) + 56))();
    v19 = v22;
    if (v22 == v24)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_11:
  v17 = 8 * v12;
  v18 = v10;
  while (1)
  {
    v21 = *v18;
    if (mlir::AffineBinaryOpExpr::getLHS(&v21))
    {
      break;
    }

    ++v18;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v20 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v20, v10, v12);
  (*(*(a2 + 48) + 40))();
  v19 = v22;
  if (v22 != v24)
  {
LABEL_15:
    free(v19);
  }
}

void mlir::function_interface_impl::setAllResultAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24[8] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v23 = 0x800000000;
  v8 = (8 * a4) >> 3;
  if (v8 < 9)
  {
    v9 = 0;
    v10 = v24;
    v11 = 8 * a4;
    if (!a4)
    {
LABEL_3:
      v12 = v9 + (v11 >> 3);
      LODWORD(v23) = v9 + (v11 >> 3);
      if (!v23)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v8, 8);
    v9 = v23;
    v10 = v22;
    v11 = 8 * a4;
    if (!a4)
    {
      goto LABEL_3;
    }
  }

  v13 = &v10[v9];
  v14 = v11;
  do
  {
    v15 = *a3;
    if (!*a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      v15 = mlir::DictionaryAttr::get(Context, 0, 0);
    }

    *v13++ = v15;
    ++a3;
    v14 -= 8;
  }

  while (v14);
  v10 = v22;
  v12 = v23 + (v11 >> 3);
  LODWORD(v23) = v23 + (v11 >> 3);
  if (!v23)
  {
LABEL_14:
    (*(*(a2 + 48) + 64))();
    v19 = v22;
    if (v22 == v24)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_11:
  v17 = 8 * v12;
  v18 = v10;
  while (1)
  {
    v21 = *v18;
    if (mlir::AffineBinaryOpExpr::getLHS(&v21))
    {
      break;
    }

    ++v18;
    v17 -= 8;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v20 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v20, v10, v12);
  (*(*(a2 + 48) + 48))();
  v19 = v22;
  if (v22 != v24)
  {
LABEL_15:
    free(v19);
  }
}

void setArgResAttrDict<true>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v48[8] = *MEMORY[0x1E69E9840];
  v45 = a5;
  v44 = (*(*(a2 + 48) + 24))();
  if (!v44)
  {
    if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
    {
      return;
    }

    Context = mlir::Attribute::getContext((a1 + 24));
    v19 = mlir::DictionaryAttr::get(Context, 0, 0);
    v20 = v19;
    v46 = v48;
    HIDWORD(v47) = 8;
    if (a3 >= 9)
    {
      LODWORD(v47) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, a3, 8);
      v21 = v46;
      v22 = a3 & 0xFFFFFFFC;
      v23 = a3 & 3;
      v24 = vdupq_n_s64(v20);
      v25 = (v46 + 16);
      v26 = a3 & 0xFFFFFFFC;
      do
      {
        v25[-1] = v24;
        *v25 = v24;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if ((a3 & 0xFFFFFFFC) != a3)
      {
        do
        {
          v21[v22++] = v20;
          --v23;
        }

        while (v23);
      }

LABEL_54:
      LODWORD(v47) = a3;
      v21[a4] = v45;
      v43 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v43, v46, v47);
      (*(*(a2 + 48) + 40))();
      v28 = v46;
      if (v46 == v48)
      {
        return;
      }

      goto LABEL_55;
    }

    if (!a3)
    {
      goto LABEL_53;
    }

    v36 = vdupq_n_s64(a3 - 1);
    v37 = a3 + 1;
    v38 = vmovn_s64(vcgeq_u64(v36, xmmword_1A7598670));
    if (v38.i8[0])
    {
      v48[0] = v19;
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
LABEL_33:
        if (v39 == 2)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v48[1] = v19;
    if (v39 == 2)
    {
      goto LABEL_53;
    }

LABEL_37:
    v40 = vmovn_s64(vcgtq_u64(v36, xmmword_1A75989F0));
    if (v40.i8[0])
    {
      v48[2] = v19;
      if ((v40.i8[4] & 1) == 0)
      {
LABEL_39:
        if (v39 == 4)
        {
          goto LABEL_53;
        }

LABEL_43:
        v41 = vmovn_s64(vcgtq_u64(v36, xmmword_1A75DA400));
        if (v41.i8[0])
        {
          v48[4] = v19;
          if ((v41.i8[4] & 1) == 0)
          {
LABEL_45:
            if (v39 == 6)
            {
              goto LABEL_53;
            }

LABEL_49:
            v42 = vmovn_s64(vcgtq_u64(v36, xmmword_1A75DA6A0));
            if (v42.i8[0])
            {
              v48[6] = v19;
            }

            if (v42.i8[4])
            {
              v48[7] = v19;
            }

            goto LABEL_53;
          }
        }

        else if ((v41.i8[4] & 1) == 0)
        {
          goto LABEL_45;
        }

        v48[5] = v19;
        if (v39 != 6)
        {
          goto LABEL_49;
        }

LABEL_53:
        v21 = v48;
        goto LABEL_54;
      }
    }

    else if ((v40.i8[4] & 1) == 0)
    {
      goto LABEL_39;
    }

    v48[3] = v19;
    if (v39 == 4)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  Value = mlir::ArrayAttr::getValue(&v44);
  if (*(Value + 8 * a4) == v45)
  {
    return;
  }

  v10 = a4;
  v11 = mlir::ArrayAttr::getValue(&v44);
  v13 = v12;
  if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
  {
    if (v13 >= a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = v13;
    }

    if (v29)
    {
      v30 = 8 * v29;
      v31 = v11;
      while (1)
      {
        v46 = *v31;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v31;
        v30 -= 8;
        if (!v30)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v32 = a4 + 1;
      if (v13 == v32)
      {
LABEL_29:
        (*(*(a2 + 48) + 56))();
        return;
      }

      v33 = v32;
      v34 = &v11[v33];
      v35 = 8 * v13 - v33 * 8;
      while (1)
      {
        v46 = *v34;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v46 = v48;
  v47 = 0x800000000;
  v14 = (8 * v13) >> 3;
  if (v14 < 9)
  {
    v15 = 0;
    v16 = v48;
    v17 = 8 * v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v14, 8);
  v15 = v47;
  v16 = v46;
  v17 = 8 * v13;
  if (v13)
  {
LABEL_15:
    memcpy(&v16[v15], v11, v17);
    v15 = v47;
    v16 = v46;
  }

LABEL_16:
  LODWORD(v47) = v15 + (v17 >> 3);
  v16[v10] = v45;
  v27 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v27, v46, v47);
  (*(*(a2 + 48) + 40))();
  v28 = v46;
  if (v46 != v48)
  {
LABEL_55:
    free(v28);
  }
}

void mlir::function_interface_impl::setArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 8))();
  v9 = v8;
  if (!a4)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    a4 = mlir::DictionaryAttr::get(Context, 0, 0);
  }

  setArgResAttrDict<true>(a1, a2, v9, a3, a4);
}

void setArgResAttrDict<false>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v48[8] = *MEMORY[0x1E69E9840];
  v45 = a5;
  v44 = (*(*(a2 + 48) + 32))();
  if (!v44)
  {
    if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
    {
      return;
    }

    Context = mlir::Attribute::getContext((a1 + 24));
    v19 = mlir::DictionaryAttr::get(Context, 0, 0);
    v20 = v19;
    v46 = v48;
    HIDWORD(v47) = 8;
    if (a3 >= 9)
    {
      LODWORD(v47) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, a3, 8);
      v21 = v46;
      v22 = a3 & 0xFFFFFFFC;
      v23 = a3 & 3;
      v24 = vdupq_n_s64(v20);
      v25 = (v46 + 16);
      v26 = a3 & 0xFFFFFFFC;
      do
      {
        v25[-1] = v24;
        *v25 = v24;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if ((a3 & 0xFFFFFFFC) != a3)
      {
        do
        {
          v21[v22++] = v20;
          --v23;
        }

        while (v23);
      }

LABEL_54:
      LODWORD(v47) = a3;
      v21[a4] = v45;
      v43 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v43, v46, v47);
      (*(*(a2 + 48) + 48))();
      v28 = v46;
      if (v46 == v48)
      {
        return;
      }

      goto LABEL_55;
    }

    if (!a3)
    {
      goto LABEL_53;
    }

    v36 = vdupq_n_s64(a3 - 1);
    v37 = a3 + 1;
    v38 = vmovn_s64(vcgeq_u64(v36, xmmword_1A7598670));
    if (v38.i8[0])
    {
      v48[0] = v19;
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
LABEL_33:
        if (v39 == 2)
        {
          goto LABEL_53;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v39 = v37 & 0x1E;
      if ((v38.i8[4] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v48[1] = v19;
    if (v39 == 2)
    {
      goto LABEL_53;
    }

LABEL_37:
    v40 = vmovn_s64(vcgtq_u64(v36, xmmword_1A75989F0));
    if (v40.i8[0])
    {
      v48[2] = v19;
      if ((v40.i8[4] & 1) == 0)
      {
LABEL_39:
        if (v39 == 4)
        {
          goto LABEL_53;
        }

LABEL_43:
        v41 = vmovn_s64(vcgtq_u64(v36, xmmword_1A75DA400));
        if (v41.i8[0])
        {
          v48[4] = v19;
          if ((v41.i8[4] & 1) == 0)
          {
LABEL_45:
            if (v39 == 6)
            {
              goto LABEL_53;
            }

LABEL_49:
            v42 = vmovn_s64(vcgtq_u64(v36, xmmword_1A75DA6A0));
            if (v42.i8[0])
            {
              v48[6] = v19;
            }

            if (v42.i8[4])
            {
              v48[7] = v19;
            }

            goto LABEL_53;
          }
        }

        else if ((v41.i8[4] & 1) == 0)
        {
          goto LABEL_45;
        }

        v48[5] = v19;
        if (v39 != 6)
        {
          goto LABEL_49;
        }

LABEL_53:
        v21 = v48;
        goto LABEL_54;
      }
    }

    else if ((v40.i8[4] & 1) == 0)
    {
      goto LABEL_39;
    }

    v48[3] = v19;
    if (v39 == 4)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  Value = mlir::ArrayAttr::getValue(&v44);
  if (*(Value + 8 * a4) == v45)
  {
    return;
  }

  v10 = a4;
  v11 = mlir::ArrayAttr::getValue(&v44);
  v13 = v12;
  if (!mlir::AffineBinaryOpExpr::getLHS(&v45))
  {
    if (v13 >= a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = v13;
    }

    if (v29)
    {
      v30 = 8 * v29;
      v31 = v11;
      while (1)
      {
        v46 = *v31;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v31;
        v30 -= 8;
        if (!v30)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v32 = a4 + 1;
      if (v13 == v32)
      {
LABEL_29:
        (*(*(a2 + 48) + 64))();
        return;
      }

      v33 = v32;
      v34 = &v11[v33];
      v35 = 8 * v13 - v33 * 8;
      while (1)
      {
        v46 = *v34;
        if (mlir::AffineBinaryOpExpr::getLHS(&v46))
        {
          break;
        }

        ++v34;
        v35 -= 8;
        if (!v35)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v46 = v48;
  v47 = 0x800000000;
  v14 = (8 * v13) >> 3;
  if (v14 < 9)
  {
    v15 = 0;
    v16 = v48;
    v17 = 8 * v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v48, v14, 8);
  v15 = v47;
  v16 = v46;
  v17 = 8 * v13;
  if (v13)
  {
LABEL_15:
    memcpy(&v16[v15], v11, v17);
    v15 = v47;
    v16 = v46;
  }

LABEL_16:
  LODWORD(v47) = v15 + (v17 >> 3);
  v16[v10] = v45;
  v27 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v27, v46, v47);
  (*(*(a2 + 48) + 48))();
  v28 = v46;
  if (v46 != v48)
  {
LABEL_55:
    free(v28);
  }
}

void mlir::function_interface_impl::setResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  if (!a4)
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    a4 = mlir::DictionaryAttr::get(Context, 0, 0);
  }

  setArgResAttrDict<false>(a1, a2, v9, a3, a4);
}

void mlir::function_interface_impl::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73[6] = *MEMORY[0x1E69E9840];
  (*(*(a2 + 48) + 8))();
  v7 = v6;
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  v10 = mlir::TypeAttr::get(a3);
  (*(a2 + 8))(a2, a1, v10);
  (*(*(a2 + 48) + 8))();
  LODWORD(v12) = v11;
  (*(*(a2 + 48) + 16))();
  LODWORD(v14) = v13;
  Context = mlir::Attribute::getContext((a1 + 24));
  v16 = mlir::DictionaryAttr::get(Context, 0, 0);
  if (v7 == v12)
  {
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v69 = (*(*(a2 + 48) + 24))();
  if (!v69)
  {
    goto LABEL_13;
  }

  if (v12 < v7)
  {
    Value = mlir::ArrayAttr::getValue(&v69);
    if (v18 >= v12)
    {
      v12 = v12;
    }

    else
    {
      v12 = v18;
    }

    if (v18)
    {
      v19 = Value;
      v20 = 8 * v12;
      v21 = Value;
      while (1)
      {
        v71 = *v21;
        if (mlir::AffineBinaryOpExpr::getLHS(&v71))
        {
          break;
        }

        ++v21;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_12;
        }
      }

      v53 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v53, v19, v12);
      (*(*(a2 + 48) + 40))();
      goto LABEL_13;
    }

LABEL_12:
    (*(*(a2 + 48) + 56))();
    goto LABEL_13;
  }

  v27 = mlir::ArrayAttr::getValue(&v69);
  v28 = mlir::ArrayAttr::getValue(&v69);
  v30 = (v28 + 8 * v29);
  v71 = v73;
  v72 = 0x600000000;
  v31 = (v30 - v27) >> 3;
  if (v31 < 7)
  {
    v32 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v31, 8);
    v32 = v72;
  }

  if (v30 != v27)
  {
    memcpy(v71 + 8 * v32, v27, v30 - v27);
    v32 = v72;
  }

  v39 = v32 + ((v30 - v27) >> 3);
  LODWORD(v72) = v39;
  v40 = v12;
  if (v39 == v12)
  {
LABEL_36:
    v41 = v71;
    v42 = v71 + 8 * v40;
    v43 = v71;
    goto LABEL_37;
  }

  if (v39 > v12)
  {
    LODWORD(v72) = v12;
    goto LABEL_36;
  }

  v55 = v12 - v39;
  if (HIDWORD(v72) < v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v12, 8);
    v39 = v72;
    v41 = v71;
    if (!v55)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v41 = v71;
    if (!v55)
    {
      goto LABEL_65;
    }
  }

  v56 = &v41[v39];
  v57 = v56;
  v58 = v55;
  if (v55 < 4)
  {
    goto LABEL_82;
  }

  v57 = v56 + (v55 & 0xFFFFFFFFFFFFFFFCLL);
  v58 = v55 & 3;
  v59 = vdupq_n_s64(v16);
  v60 = v56 + 1;
  v61 = v55 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v60[-1] = v59;
    *v60 = v59;
    v60 += 2;
    v61 -= 4;
  }

  while (v61);
  if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_82:
    do
    {
      *v57++ = v16;
      --v58;
    }

    while (v58);
  }

LABEL_65:
  v40 = (v39 + v55);
  LODWORD(v72) = v39 + v55;
  if (!(v39 + v55))
  {
LABEL_39:
    (*(*(a2 + 48) + 56))();
    v44 = v71;
    if (v71 == v73)
    {
      goto LABEL_13;
    }

LABEL_53:
    free(v44);
    goto LABEL_13;
  }

  v42 = &v41[v40];
  v43 = v41;
LABEL_37:
  while (1)
  {
    v70 = *v43;
    if (mlir::AffineBinaryOpExpr::getLHS(&v70))
    {
      break;
    }

    if (++v43 == v42)
    {
      goto LABEL_39;
    }
  }

  v51 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v51, v41, v40);
  (*(*(a2 + 48) + 40))();
  v44 = v71;
  if (v71 != v73)
  {
    goto LABEL_53;
  }

LABEL_13:
  if (v9 == v14)
  {
    return;
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v69 = (*(*(a2 + 48) + 32))();
  if (!v69)
  {
    return;
  }

  if (v14 < v9)
  {
    v22 = mlir::ArrayAttr::getValue(&v69);
    if (v23 >= v14)
    {
      v14 = v14;
    }

    else
    {
      v14 = v23;
    }

    if (v23)
    {
      v24 = v22;
      v25 = 8 * v14;
      v26 = v22;
      while (1)
      {
        v71 = *v26;
        if (mlir::AffineBinaryOpExpr::getLHS(&v71))
        {
          break;
        }

        ++v26;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      v54 = mlir::Attribute::getContext((a1 + 24));
      mlir::ArrayAttr::get(v54, v24, v14);
      (*(*(a2 + 48) + 48))();
      return;
    }

LABEL_24:
    (*(*(a2 + 48) + 64))();
    return;
  }

  v33 = mlir::ArrayAttr::getValue(&v69);
  v34 = mlir::ArrayAttr::getValue(&v69);
  v36 = (v34 + 8 * v35);
  v71 = v73;
  v72 = 0x600000000;
  v37 = (v36 - v33) >> 3;
  if (v37 < 7)
  {
    v38 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v37, 8);
    v38 = v72;
  }

  if (v36 != v33)
  {
    memcpy(v71 + 8 * v38, v33, v36 - v33);
    v38 = v72;
  }

  v45 = v38 + ((v36 - v33) >> 3);
  LODWORD(v72) = v45;
  v46 = v14;
  if (v45 == v14)
  {
LABEL_47:
    v47 = v71;
    v48 = v71 + 8 * v46;
    v49 = v71;
    goto LABEL_48;
  }

  if (v45 > v14)
  {
    LODWORD(v72) = v14;
    goto LABEL_47;
  }

  v62 = v14 - v45;
  if (HIDWORD(v72) < v14)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v14, 8);
    v45 = v72;
    v47 = v71;
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v47 = v71;
    if (!v62)
    {
      goto LABEL_74;
    }
  }

  v63 = &v47[v45];
  v64 = v63;
  v65 = v62;
  if (v62 < 4)
  {
    goto LABEL_83;
  }

  v64 = v63 + (v62 & 0xFFFFFFFFFFFFFFFCLL);
  v65 = v62 & 3;
  v66 = vdupq_n_s64(v16);
  v67 = v63 + 1;
  v68 = v62 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v67[-1] = v66;
    *v67 = v66;
    v67 += 2;
    v68 -= 4;
  }

  while (v68);
  if (v62 != (v62 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_83:
    do
    {
      *v64++ = v16;
      --v65;
    }

    while (v65);
  }

LABEL_74:
  v46 = (v45 + v62);
  LODWORD(v72) = v45 + v62;
  if (!(v45 + v62))
  {
LABEL_50:
    (*(*(a2 + 48) + 64))();
    v50 = v71;
    if (v71 == v73)
    {
      return;
    }

LABEL_55:
    free(v50);
    return;
  }

  v48 = &v47[v46];
  v49 = v47;
LABEL_48:
  while (1)
  {
    v70 = *v49;
    if (mlir::AffineBinaryOpExpr::getLHS(&v70))
    {
      break;
    }

    if (++v49 == v48)
    {
      goto LABEL_50;
    }
  }

  v52 = mlir::Attribute::getContext((a1 + 24));
  mlir::ArrayAttr::get(v52, v47, v46);
  (*(*(a2 + 48) + 48))();
  v50 = v71;
  if (v71 != v73)
  {
    goto LABEL_55;
  }
}

uint64_t mlir::function_interface_impl::parseFunctionSignature(_BYTE *a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v17 = a2;
  *a4 = 0;
  v13 = a4;
  v14 = a1;
  v15 = &v17;
  v16 = a3;
  if (((*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>, &v13, 0, 0) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    return 1;
  }

  if ((*(*a1 + 288))(a1))
  {
    if ((*(*a1 + 304))(a1))
    {
      return 1;
    }

    v13 = a5;
    v14 = a6;
    v15 = a1;
    if ((*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionResultList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>, &v13, 0, 0))
    {
      return (*(*a1 + 296))(a1);
    }

    return 0;
  }

  v13 = 0;
  if (((*(*a1 + 536))(a1, &v13) & 1) == 0)
  {
    return 0;
  }

  v10 = v13;
  v11 = *(a5 + 8);
  if (v11 >= *(a5 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, (a5 + 16), v11 + 1, 8);
    LODWORD(v11) = *(a5 + 8);
  }

  *(*a5 + 8 * v11) = v10;
  ++*(a5 + 8);
  v12 = *(a6 + 8);
  if (v12 >= *(a6 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(a6);
  }

  else
  {
    *(*a6 + 8 * v12) = 0;
    *(a6 + 8) = v12 + 1;
  }

  return 1;
}

mlir::DictionaryAttr **mlir::function_interface_impl::addArgAndResultAttrs(mlir::DictionaryAttr **result, uint64_t a2, uint64_t *a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = result;
  v31[6] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v14 = a3;
    v15 = 8 * a4;
    v16 = 8 * a4;
    v17 = a3;
    while (1)
    {
      v29 = *v17;
      if (v29)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v29);
        if (result)
        {
          break;
        }
      }

      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v18) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      DictionaryAttr = *v14;
      if (!*v14)
      {
        DictionaryAttr = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v18) = v30;
      }

      if (v18 >= HIDWORD(v30))
      {
        v20 = DictionaryAttr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v18 + 1, 8);
        DictionaryAttr = v20;
        LODWORD(v18) = v30;
      }

      *(v29 + v18) = DictionaryAttr;
      v18 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++v14;
      v15 -= 8;
    }

    while (v15);
    ArrayAttr = mlir::Builder::getArrayAttr(v12, v29, v18);
    if (v29 != v31)
    {
      free(v29);
    }

    ZinMirCacheTensors::ZinMirCacheTensors(&v29, a7, ArrayAttr);
    result = mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

LABEL_15:
  if (a6)
  {
    v22 = 8 * a6;
    v23 = 8 * a6;
    for (i = a5; ; ++i)
    {
      v29 = *i;
      if (v29)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v29);
        if (result)
        {
          break;
        }
      }

      v23 -= 8;
      if (!v23)
      {
        return result;
      }
    }

    LODWORD(v25) = 0;
    v29 = v31;
    v30 = 0x600000000;
    do
    {
      v26 = *a5;
      if (!*a5)
      {
        v26 = mlir::Builder::getDictionaryAttr(v12, 0, 0);
        LODWORD(v25) = v30;
      }

      if (v25 >= HIDWORD(v30))
      {
        v27 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v25 + 1, 8);
        v26 = v27;
        LODWORD(v25) = v30;
      }

      *(v29 + v25) = v26;
      v25 = (v30 + 1);
      LODWORD(v30) = v30 + 1;
      ++a5;
      v22 -= 8;
    }

    while (v22);
    v28 = mlir::Builder::getArrayAttr(v12, v29, v25);
    if (v29 != v31)
    {
      free(v29);
    }

    ZinMirCacheTensors::ZinMirCacheTensors(&v29, a8, v28);
    return mlir::NamedAttrList::push_back(a2 + 112, v29, v30);
  }

  return result;
}

BOOL mlir::function_interface_impl::parseFunctionOp(mlir::AsmParser *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void *, void, void *, void, void, void **), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v116[8] = *MEMORY[0x1E69E9840];
  v82 = a4;
  v114 = v116;
  v115 = 0x100000000;
  v111 = v113;
  v112 = 0x600000000;
  v108 = v110;
  v109 = 0x600000000;
  v14 = (*(*a1 + 32))(a1);
  mlir::impl::parseOptionalVisibilityKeyword(a1, a2 + 112);
  v81 = 0;
  if (mlir::AsmParser::parseSymbolName(a1, &v81))
  {
    v73 = a8;
    mlir::NamedAttrList::append(a2 + 112, "sym_name", 8uLL, v81);
    v15 = (*(*a1 + 40))(a1);
    v80 = 0;
    v16 = 0;
    if ((mlir::function_interface_impl::parseFunctionSignature(a1, a3, &v114, &v80, &v108, &v111) & 1) == 0)
    {
      goto LABEL_60;
    }

    v77 = 0;
    v78 = 0;
    v79 = 0;
    v105 = v107;
    v106 = 0x600000000;
    v17 = v115;
    if (v115 < 7)
    {
      v18 = 0;
      if (!v115)
      {
        goto LABEL_13;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v107, v115, 8);
      v17 = v115;
      v18 = v106;
      if (!v115)
      {
        goto LABEL_13;
      }
    }

    v20 = (v114 + 32);
    v21 = v17 << 6;
    do
    {
      v22 = *v20;
      if (v18 >= HIDWORD(v106))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v105, v107, v18 + 1, 8);
        v18 = v106;
      }

      *(v105 + v18) = v22;
      v18 = v106 + 1;
      LODWORD(v106) = v106 + 1;
      v20 += 8;
      v21 -= 64;
    }

    while (v21);
LABEL_13:
    v23 = a5(a6, v14, v105, v18, v108, v109, v80, &v77);
    if (v23)
    {
      v24 = v82;
      v25 = mlir::TypeAttr::get(v23);
      ZinMirCacheTensors::ZinMirCacheTensors(&v92, v24, v25);
      mlir::NamedAttrList::push_back(a2 + 112, v92, v93);
      __src = v89;
      v88 = 0x400000000;
      v91 = 4;
      v26 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 496))(a1, &__src))
      {
        AttrData = mlir::OpaqueAttr::getAttrData(&v82);
        v29 = v28;
        v30 = "sym_visibility";
        v31 = 14;
        if (!mlir::NamedAttrList::get(&__src, "sym_visibility", 0xEuLL))
        {
          v30 = "sym_name";
          v31 = 8;
          if (!mlir::NamedAttrList::get(&__src, "sym_name", 8uLL))
          {
            if (!mlir::NamedAttrList::get(&__src, AttrData, v29))
            {
              v58 = __src;
              v59 = v88;
              *(a2 + 192) = 0;
              v60 = *(a2 + 120);
              if (v60 + v59 > *(a2 + 124))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v60 + v59, 16);
                LODWORD(v60) = *(a2 + 120);
              }

              if (v59)
              {
                memcpy((*(a2 + 112) + 16 * v60), v58, 16 * v59);
                LODWORD(v60) = *(a2 + 120);
              }

              *(a2 + 120) = v60 + v59;
              v61 = v111;
              v62 = v112;
              v92 = &v94;
              v93 = 0x600000000;
              if (v115)
              {
                LODWORD(v63) = 0;
                v64 = v115 << 6;
                v65 = (v114 + 40);
                do
                {
                  v66 = *v65;
                  if (v63 >= HIDWORD(v93))
                  {
                    v67 = v61;
                    v68 = v62;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, &v94, v63 + 1, 8);
                    v62 = v68;
                    v61 = v67;
                    LODWORD(v63) = v93;
                  }

                  *(v92 + v63) = v66;
                  v63 = (v93 + 1);
                  LODWORD(v93) = v93 + 1;
                  v65 += 8;
                  v64 -= 64;
                }

                while (v64);
                v69 = v92;
              }

              else
              {
                v63 = 0;
                v69 = &v94;
              }

              mlir::function_interface_impl::addArgAndResultAttrs(v14, a2, v69, v63, v61, v62, a7, v73);
              if (v92 != &v94)
              {
                free(v92);
              }

              mlir::OperationState::addRegion(a2);
            }

            v30 = AttrData;
            v31 = v29;
          }
        }

        v75 = "'";
        v76 = 259;
        (*(*a1 + 24))(&v92, a1, v26, &v75);
        if (v92)
        {
          v86 = 261;
          v83 = v30;
          v84 = v31;
          mlir::Diagnostic::operator<<(&v93, &v83);
          if (v92)
          {
            LODWORD(v83) = 3;
            v84 = "' is an inferred attribute and should not be specified in the explicit attribute dictionary";
            v85 = 91;
            v32 = &v83;
            v33 = v95;
            if (v96 >= v97)
            {
              if (v95 <= &v83 && v95 + 24 * v96 > &v83)
              {
                v72 = &v83 - v95;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                v33 = v95;
                v32 = (v95 + v72);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
                v32 = &v83;
                v33 = v95;
              }
            }

            v34 = &v33[24 * v96];
            v35 = *v32;
            *(v34 + 2) = v32[2];
            *v34 = v35;
            ++v96;
          }
        }

        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
        if (v92)
        {
          mlir::InFlightDiagnostic::report(&v92);
        }

        if (v104 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v93);
        }
      }

      else
      {
        v16 = 0;
      }

      if (__src != v89)
      {
        free(__src);
      }

      v56 = v105;
      if (v105 == v107)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v86 = 257;
      (*(*a1 + 24))(&v92, a1, v15, &v83);
      if (v92)
      {
        LODWORD(__src) = 3;
        v88 = "failed to construct function type";
        v89[0] = 33;
        p_src = &__src;
        v37 = v95;
        if (v96 >= v97)
        {
          if (v95 <= &__src && v95 + 24 * v96 > &__src)
          {
            v70 = &__src - v95;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
            v37 = v95;
            p_src = (v95 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
            p_src = &__src;
            v37 = v95;
          }
        }

        v38 = &v37[24 * v96];
        v39 = *p_src;
        *(v38 + 2) = p_src[2];
        *v38 = v39;
        ++v96;
        if (v92)
        {
          v40 = HIBYTE(v79);
          if (v79 < 0)
          {
            v40 = v78;
          }

          v41 = v40 == 0;
          v42 = 2 * (v40 != 0);
          v43 = ": ";
          if (v41)
          {
            v43 = "";
          }

          LODWORD(__src) = 3;
          v88 = v43;
          v89[0] = v42;
          v44 = &__src;
          v45 = v95;
          if (v96 >= v97)
          {
            if (v95 <= &__src && v95 + 24 * v96 > &__src)
            {
              v71 = &__src - v95;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v45 = v95;
              v44 = (v95 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v44 = &__src;
              v45 = v95;
            }
          }

          v46 = &v45[24 * v96];
          v47 = *v44;
          *(v46 + 2) = v44[2];
          *v46 = v47;
          ++v96;
          if (v92)
          {
            v90 = 260;
            __src = &v77;
            mlir::Diagnostic::operator<<(&v93, &__src);
          }
        }
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v48 = __p;
        if (__p)
        {
          v49 = v102;
          v50 = __p;
          if (v102 != __p)
          {
            do
            {
              v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
            }

            while (v49 != v48);
            v50 = __p;
          }

          v102 = v48;
          operator delete(v50);
        }

        v51 = v99;
        if (v99)
        {
          v52 = v100;
          v53 = v99;
          if (v100 != v99)
          {
            do
            {
              v55 = *--v52;
              v54 = v55;
              *v52 = 0;
              if (v55)
              {
                MEMORY[0x1AC55A040](v54, 0x1000C8077774924);
              }
            }

            while (v52 != v51);
            v53 = v99;
          }

          v100 = v51;
          operator delete(v53);
        }

        if (v95 != v98)
        {
          free(v95);
        }
      }

      v56 = v105;
      if (v105 == v107)
      {
        goto LABEL_58;
      }
    }

    free(v56);
LABEL_58:
    if (SHIBYTE(v79) < 0)
    {
      operator delete(v77);
    }

LABEL_60:
    v19 = v108;
    if (v108 == v110)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v16 = 0;
  v19 = v108;
  if (v108 != v110)
  {
LABEL_61:
    free(v19);
  }

LABEL_62:
  if (v111 != v113)
  {
    free(v111);
  }

  if (v114 != v116)
  {
    free(v114);
  }

  return v16;
}

llvm::raw_ostream *mlir::function_interface_impl::printFunctionSignature(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void *a7, uint64_t a8)
{
  v60[0] = a2;
  v60[1] = a3;
  v14 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  v15 = *v14;
  v16 = (*(*a1 + 16))(a1);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 40);
    ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v60);
    v59 = ArgAttrsAttr;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 40;
    ArgAttrsAttr = mlir::FunctionOpInterface::getArgAttrsAttr(v60);
    v59 = ArgAttrsAttr;
    v19 = a5;
    if (!a5)
    {
      goto LABEL_23;
    }
  }

  if (v15 != v14)
  {
    if (ArgAttrsAttr)
    {
      v62 = *mlir::ArrayAttr::getValue(&v59);
      Value = mlir::ArrayAttr::getValue(&v62);
      v22 = v21;
    }

    else
    {
      v22 = 0;
      Value = 0;
    }

    v30 = v14[1];
    if (v30)
    {
      v31 = v30 - 8;
    }

    else
    {
      v31 = 0;
    }

    (*(*a1 + 152))(a1, **(v31 + 48), Value, v22, 0);
    if (v19 == 1)
    {
      goto LABEL_23;
    }

    v34 = 1;
    while (1)
    {
      v40 = (*(*a1 + 16))(a1);
      v41 = v40[4];
      if (v40[3] - v41 > 1uLL)
      {
        *v41 = 8236;
        v40[4] += 2;
        if (!v59)
        {
          goto LABEL_36;
        }
      }

      else
      {
        llvm::raw_ostream::write(v40, ", ", 2uLL);
        if (!v59)
        {
LABEL_36:
          v37 = 0;
          v35 = 0;
          goto LABEL_30;
        }
      }

      v62 = *(mlir::ArrayAttr::getValue(&v59) + 8 * v34);
      v35 = mlir::ArrayAttr::getValue(&v62);
      v37 = v36;
LABEL_30:
      v38 = v14[1];
      if (v38)
      {
        v39 = v38 - 8;
      }

      else
      {
        v39 = 0;
      }

      (*(*a1 + 152))(a1, *(*(v39 + 48) + 8 * v34++), v35, v37, 0);
      if (v19 == v34)
      {
        goto LABEL_23;
      }
    }
  }

  (*(*a1 + 32))(a1, *a4);
  if (v59)
  {
    v62 = *mlir::ArrayAttr::getValue(&v59);
    v23 = mlir::ArrayAttr::getValue(&v62);
    (*(*a1 + 192))(a1, v23, v24, 0, 0);
  }

  if (v19 != 1)
  {
    for (i = 1; i != v19; ++i)
    {
      v26 = (*(*a1 + 16))(a1);
      v27 = v26[4];
      if (v26[3] - v27 >= 2uLL)
      {
        *v27 = 8236;
        v26[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, ", ", 2uLL);
      }

      (*(*a1 + 32))(a1, a4[i]);
      if (v59)
      {
        v62 = *(mlir::ArrayAttr::getValue(&v59) + 8 * i);
        v28 = mlir::ArrayAttr::getValue(&v62);
        (*(*a1 + 192))(a1, v28, v29, 0, 0);
      }
    }
  }

LABEL_23:
  if (a6)
  {
    if (a5)
    {
      v32 = (*(*a1 + 16))(a1);
      v33 = v32[4];
      if (v32[3] - v33 > 1uLL)
      {
        *v33 = 8236;
        v32[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v32, ", ", 2uLL);
      }
    }

    v42 = (*(*a1 + 16))(a1);
    v43 = v42[4];
    if ((v42[3] - v43) > 2)
    {
      *(v43 + 2) = 46;
      *v43 = 11822;
      v42[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v42, "...", 3uLL);
    }
  }

  result = (*(*a1 + 16))(a1);
  v45 = *(result + 4);
  if (v45 >= *(result + 3))
  {
    result = llvm::raw_ostream::write(result, 41);
    if (!a8)
    {
      return result;
    }
  }

  else
  {
    *(result + 4) = v45 + 1;
    *v45 = 41;
    if (!a8)
    {
      return result;
    }
  }

  v46 = (*(*a1 + 16))(a1);
  v47 = v46[4];
  if (v46[3] - v47 > 3uLL)
  {
    *v47 = 540945696;
    v46[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v46, " -> ", 4uLL);
  }

  ResAttrsAttr = mlir::FunctionOpInterface::getResAttrsAttr(v60);
  v61 = ResAttrsAttr;
  v49 = (*(*a1 + 16))(a1);
  if (a8 != 1 || *(**a7 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id || ResAttrsAttr && (v62 = *mlir::ArrayAttr::getValue(&v61), mlir::AffineBinaryOpExpr::getLHS(&v62)))
  {
    v50 = *(v49 + 4);
    if (v50 >= *(v49 + 3))
    {
      llvm::raw_ostream::write(v49, 40);
    }

    else
    {
      *(v49 + 4) = v50 + 1;
      *v50 = 40;
    }

    v51 = 1;
  }

  else
  {
    v51 = 0;
  }

  result = (*(*a1 + 32))(a1, *a7);
  if (v61)
  {
    v62 = *mlir::ArrayAttr::getValue(&v61);
    v52 = mlir::ArrayAttr::getValue(&v62);
    result = (*(*a1 + 192))(a1, v52, v53, 0, 0);
  }

  if (a8 != 1)
  {
    v55 = 1;
    do
    {
      v56 = *(v49 + 4);
      if (*(v49 + 3) - v56 > 1uLL)
      {
        *v56 = 8236;
        *(v49 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v49, ", ", 2uLL);
      }

      result = (*(*a1 + 32))(a1, a7[v55]);
      if (v61)
      {
        v62 = *(mlir::ArrayAttr::getValue(&v61) + 8 * v55);
        v57 = mlir::ArrayAttr::getValue(&v62);
        result = (*(*a1 + 192))(a1, v57, v58, 0, 0);
      }

      ++v55;
    }

    while (a8 != v55);
  }

  if (v51)
  {
    v54 = *(v49 + 4);
    if (v54 >= *(v49 + 3))
    {
      return llvm::raw_ostream::write(v49, 41);
    }

    else
    {
      *(v49 + 4) = v54 + 1;
      *v54 = 41;
    }
  }

  return result;
}

void mlir::function_interface_impl::printFunctionAttributes(uint64_t a1, mlir::Operation *a2, const void *a3, uint64_t a4)
{
  v16[16] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v16[0] = "sym_name";
  v16[1] = 8;
  v15 = 0x800000001;
  v8 = ((16 * a4) >> 4) + 1;
  if (v8 < 9)
  {
    v9 = 1;
    v10 = 16 * a4;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v8, 16);
  v9 = v15;
  v10 = 16 * a4;
  if (a4)
  {
LABEL_5:
    memcpy(v14 + 16 * v9, a3, v10);
    v9 = v15;
  }

LABEL_6:
  LODWORD(v15) = v9 + (v10 >> 4);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a1 + 200))(a1, Value, v12, v14, v15);
  if (v14 != v16)
  {
    free(v14);
  }
}

void mlir::function_interface_impl::printFunctionOp(uint64_t a1, unsigned int *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[8] = *MEMORY[0x1E69E9840];
  v46 = a2;
  v47 = a3;
  v44 = a8;
  v45 = a7;
  if (!*(a2 + 47) || (InherentAttr = mlir::Operation::getInherentAttr(a2, "sym_name", 8), (v14 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get((a2 + 14), "sym_name", 8uLL);
  }

  if (InherentAttr)
  {
    if (*(*InherentAttr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v15 = InherentAttr;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v48[0] = v15;
  AttrData = mlir::OpaqueAttr::getAttrData(v48);
  v18 = v17;
  v19 = (*(*a1 + 16))(a1);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
    if (!*(a2 + 47))
    {
LABEL_14:
      v21 = mlir::DictionaryAttr::get((a2 + 14), "sym_visibility", 0xEuLL);
      goto LABEL_15;
    }
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
    if (!*(a2 + 47))
    {
      goto LABEL_14;
    }
  }

  v21 = mlir::Operation::getInherentAttr(a2, "sym_visibility", 14);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v21)
  {
    v23 = *(*v21 + 136);
    v24 = v23 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id;
    v25 = v23 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id ? v21 : 0;
    v48[0] = v25;
    if (v24)
    {
      v26 = mlir::OpaqueAttr::getAttrData(v48);
      v28 = v27;
      v29 = (*(*a1 + 16))(a1);
      if (v28 <= *(v29 + 24) - *(v29 + 32))
      {
        if (v28)
        {
          v30 = v29;
          memcpy(*(v29 + 32), v26, v28);
          *(v30 + 32) += v28;
        }
      }

      else
      {
        llvm::raw_ostream::write(v29, v26, v28);
      }

      v31 = (*(*a1 + 16))(a1);
      v32 = *(v31 + 4);
      if (v32 >= *(v31 + 3))
      {
        llvm::raw_ostream::write(v31, 32);
      }

      else
      {
        *(v31 + 4) = v32 + 1;
        *v32 = 32;
      }
    }
  }

  (*(*a1 + 88))(a1, AttrData, v18);
  ArgumentTypes = mlir::FunctionOpInterface::getArgumentTypes(&v46);
  v35 = v34;
  ResultTypes = mlir::FunctionOpInterface::getResultTypes(&v46);
  mlir::function_interface_impl::printFunctionSignature(a1, v46, v47, ArgumentTypes, v35, a4, ResultTypes, v37);
  v38 = v46;
  v48[0] = "sym_visibility";
  v48[1] = 14;
  v48[2] = a5;
  v48[3] = a6;
  v48[4] = mlir::OpaqueAttr::getAttrData(&v45);
  v48[5] = v39;
  v48[6] = mlir::OpaqueAttr::getAttrData(&v44);
  v48[7] = v40;
  mlir::function_interface_impl::printFunctionAttributes(a1, v38, v48, 4);
  v41 = (((&v46[4 * ((v46[11] >> 23) & 1) + 17] + ((v46[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v46[10]);
  if (*v41 != v41)
  {
    v42 = (*(*a1 + 16))(a1);
    v43 = *(v42 + 4);
    if (v43 >= *(v42 + 3))
    {
      llvm::raw_ostream::write(v42, 32);
    }

    else
    {
      *(v42 + 4) = v43 + 1;
      *v43 = 32;
    }

    (*(*a1 + 224))(a1, v41, 0, 1, 0);
  }
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (**a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = (*(*v2 + 40))(v2);
    v37[0] = "variadic arguments must be in the end of the argument list";
    LOWORD(v38) = 259;
    (*(*v2 + 24))(&v41, v2, v3, v37);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
    if (v41)
    {
      mlir::InFlightDiagnostic::report(&v41);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v49;
        v7 = __p;
        if (v49 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v49 = v5;
        operator delete(v7);
      }

      v8 = v46;
      if (!v46)
      {
        goto LABEL_57;
      }

      v9 = v47;
      v10 = v46;
      if (v47 == v46)
      {
LABEL_56:
        v47 = v8;
        operator delete(v10);
LABEL_57:
        if (v44 != v45)
        {
          free(v44);
        }

        return v4;
      }

      do
      {
        v12 = *--v9;
        v11 = v12;
        *v9 = 0;
        if (v12)
        {
          MEMORY[0x1AC55A040](v11, 0x1000C8077774924);
        }
      }

      while (v9 != v8);
LABEL_55:
      v10 = v46;
      goto LABEL_56;
    }

    return v4;
  }

  if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
  {
    v13 = *a1;
    v4 = 1;
    *v13 = 1;
    return v4;
  }

  memset(v37, 0, 24);
  v40[8] = 0;
  v38 = 0;
  Dictionary = 0;
  v40[0] = 0;
  v14 = (*(**(a1 + 8) + 760))();
  if ((v14 & 0x100) != 0)
  {
    if (v14)
    {
      v23 = *(a1 + 24);
      v24 = *(v23 + 2);
      if (v24 && !*(*v23 + (v24 << 6) - 48))
      {
        (*(**(a1 + 8) + 24))(&v41);
        v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
        if (v41)
        {
          mlir::InFlightDiagnostic::report(&v41);
        }

        if (v51 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v42);
        }

        return v4;
      }

LABEL_53:
      v26 = *v23;
      v27 = v37;
      if (v24 >= *(v23 + 3))
      {
        v33 = v23;
        v34 = v24;
        v35 = v26 + (v24 << 6) > v37;
        if (v26 <= v37 && v35)
        {
          v36 = v37 - v26;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v33, v33 + 2, v34 + 1, 64);
          v23 = v33;
          v26 = *v33;
          v27 = &v36[*v33];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v33, v33 + 2, v34 + 1, 64);
          v23 = v33;
          v26 = *v33;
          v27 = v37;
        }
      }

      v28 = (v26 + (*(v23 + 2) << 6));
      v29 = *v27;
      v30 = *(v27 + 1);
      v31 = *(v27 + 3);
      v28[2] = *(v27 + 2);
      v28[3] = v31;
      *v28 = v29;
      v28[1] = v30;
      ++*(v23 + 2);
      return 1;
    }

    return 0;
  }

  v37[0] = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v15 = *(a1 + 24);
  v16 = *(v15 + 8);
  if (!v16 || !*(*v15 + (v16 << 6) - 48))
  {
    v41 = &v43;
    v42 = 0x400000000;
    v45[5] = 4;
    if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v38) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), &v41) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), v40))
    {
      Context = mlir::AsmParser::getContext(*(a1 + 8));
      Dictionary = mlir::NamedAttrList::getDictionary(&v41, Context);
      if (v41 != &v43)
      {
        free(v41);
      }

      v23 = *(a1 + 24);
      LODWORD(v24) = *(v23 + 2);
      goto LABEL_53;
    }

    if (v41 != &v43)
    {
      free(v41);
    }

    return 0;
  }

  (*(**(a1 + 8) + 24))(&v41);
  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v49;
      v19 = __p;
      if (v49 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v49 = v17;
      operator delete(v19);
    }

    v8 = v46;
    if (!v46)
    {
      goto LABEL_57;
    }

    v20 = v47;
    v10 = v46;
    if (v47 == v46)
    {
      goto LABEL_56;
    }

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

    while (v20 != v8);
    goto LABEL_55;
  }

  return v4;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    v4 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v1 + 1, 8);
    a1 = v4;
    LODWORD(v1) = *(v4 + 8);
  }

  *(*a1 + 8 * v1) = 0;
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  return *a1 + 8 * v2 - 8;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionResultList(mlir::OpAsmParser &,llvm::SmallVectorImpl<mlir::Type> &,llvm::SmallVectorImpl<mlir::DictionaryAttr> &)::$_0>(uint64_t a1)
{
  v11[9] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v2 + 2);
  if (v3 >= *(v2 + 3))
  {
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v2);
    v4 = *(a1 + 8);
    v5 = *(v4 + 8);
    if (v5 < *(v4 + 12))
    {
      goto LABEL_3;
    }

LABEL_12:
    llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::growAndEmplaceBack<>(v4);
    goto LABEL_4;
  }

  *(*v2 + 8 * v3) = 0;
  *(v2 + 2) = v3 + 1;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    goto LABEL_12;
  }

LABEL_3:
  *(*v4 + 8 * v5) = 0;
  *(v4 + 8) = v5 + 1;
LABEL_4:
  v10[0] = v11;
  v10[1] = 0x400000000;
  v11[8] = 4;
  if ((*(**(a1 + 16) + 536))(*(a1 + 16), **a1 + 8 * *(*a1 + 8) - 8) & 1) != 0 && ((*(**(a1 + 16) + 488))(*(a1 + 16), v10))
  {
    Context = mlir::AsmParser::getContext(*(a1 + 16));
    *(**(a1 + 8) + 8 * *(*(a1 + 8) + 8) - 8) = mlir::NamedAttrList::getDictionary(v10, Context);
    v7 = 1;
    v8 = v10[0];
    if (v10[0] == v11)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = v10[0];
  if (v10[0] != v11)
  {
LABEL_9:
    free(v8);
  }

  return v7;
}

BOOL mlir::AsmParser::parseSymbolName(mlir::AsmParser *this, mlir::StringAttr *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((*(*this + 528))(this, a2))
  {
    return 1;
  }

  v4 = (*(*this + 40))(this);
  v20 = 257;
  (*(*this + 24))(v24, this, v4, v19);
  if (v24[0])
  {
    v21 = 3;
    v22 = "expected valid '@'-identifier for symbol name";
    v23 = 45;
    v5 = &v21;
    v6 = v25;
    if (v26 >= v27)
    {
      if (v25 <= &v21 && v25 + 24 * v26 > &v21)
      {
        v18 = &v21 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v6 = v25;
        v5 = (v25 + v18);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v5 = &v21;
        v6 = v25;
      }
    }

    v7 = &v6[24 * v26];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v26;
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v32;
      v11 = __p;
      if (v32 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v32 = v9;
      operator delete(v11);
    }

    v12 = v29;
    if (v29)
    {
      v13 = v30;
      v14 = v29;
      if (v30 != v29)
      {
        do
        {
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x1AC55A040](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v29;
      }

      v30 = v12;
      operator delete(v14);
    }

    if (v25 != v28)
    {
      free(v25);
    }
  }

  return v3;
}

void mlir::ub::UBDialect::UBDialect(mlir::ub::UBDialect *this, mlir::MLIRContext *a2)
{
  v2 = mlir::Dialect::Dialect(this, "ub", 2, a2, &mlir::detail::TypeIDResolver<mlir::ub::UBDialect,void>::id);
  *v2 = &unk_1F19FBFB8;
  mlir::ub::UBDialect::initialize(v2);
}

void sub_1A6B83FB4()
{

  JUMPOUT(0x1AC55A070);
}

ZinIrHalH13g *mlir::ub::UBDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t ***a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if ((*a3)[17] == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ub::UBDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v44 = a2;
  v5 = (*(*a2 + 40))(a2);
  BYTE2(v48) = 0;
  v46 = 0;
  v47 = 0;
  v45 = v5;
  LOBYTE(v48) = 0;
  if (((*(*a2 + 640))(a2, &v46) & 1) == 0)
  {
    SingletonImpl = 0;
    LOWORD(v48) = 256;
    if ((v48 & 0x10000) != 0)
    {
      v40 = "poison";
    }

    else
    {
      BYTE2(v48) = 1;
    }

    goto LABEL_15;
  }

  v40 = "poison";
  v41 = 6;
  if ((v48 & 0x10000) != 0)
  {
    SingletonImpl = 0;
LABEL_15:
    v7 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v7 = v47;
  if (v47)
  {
    if (v47 == 6 && *v46 == 1936289648 && *(v46 + 4) == 28271)
    {
      Context = mlir::AsmParser::getContext(a2);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      SingletonImpl = mlir::StorageUniquer::getSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
      LOBYTE(v48) = SingletonImpl != 0;
      *(&v48 + 1) = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v44 + 648))(v44, &v40, 1);
    if ((v48 & 0x10000) != 0)
    {
      v7 = 0;
      v11 = 0;
      SingletonImpl = 0;
      goto LABEL_16;
    }

    v7 = v47;
  }

  SingletonImpl = 0;
  v11 = v46;
  LOWORD(v48) = 0;
  BYTE2(v48) = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v44) & 0x100) == 0)
  {
    v39 = 257;
    (*(*a2 + 24))(&v44, a2, v4, v38);
    if (v44)
    {
      LODWORD(v40) = 3;
      v42 = 19;
      v12 = &v40;
      v13 = v47;
      if (v48 >= v49)
      {
        if (v47 <= &v40 && v47 + 24 * v48 > &v40)
        {
          v35 = &v40 - v47;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v13 = v47;
          v12 = (v47 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
          v12 = &v40;
          v13 = v47;
        }
      }

      v14 = &v13[24 * v48];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      ++v48;
      if (v44)
      {
        v43 = 261;
        v40 = v11;
        v41 = v7;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (v44)
        {
          LODWORD(v40) = 3;
          v42 = 14;
          v16 = &v40;
          v17 = v47;
          if (v48 >= v49)
          {
            if (v47 <= &v40 && v47 + 24 * v48 > &v40)
            {
              v36 = &v40 - v47;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v17 = v47;
              v16 = (v47 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
              v16 = &v40;
              v17 = v47;
            }
          }

          v18 = &v17[24 * v48];
          v19 = *v16;
          *(v18 + 2) = v16[2];
          *v18 = v19;
          ++v48;
          if (v44)
          {
            v20 = *(a1 + 8);
            v21 = *(a1 + 16);
            v43 = 261;
            v40 = v20;
            v41 = v21;
            mlir::Diagnostic::operator<<(&v45, &v40);
            if (v44)
            {
              LODWORD(v40) = 3;
              v42 = 1;
              v22 = &v40;
              v23 = v47;
              if (v48 >= v49)
              {
                if (v47 <= &v40 && v47 + 24 * v48 > &v40)
                {
                  v37 = &v40 - v47;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v23 = v47;
                  v22 = (v47 + v37);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v50, v48 + 1, 24);
                  v22 = &v40;
                  v23 = v47;
                }
              }

              v24 = &v23[24 * v48];
              v25 = *v22;
              *(v24 + 2) = v22[2];
              *v24 = v25;
              ++v48;
              if (v44)
              {
                mlir::InFlightDiagnostic::report(&v44);
              }
            }
          }
        }
      }
    }

    if (v56 == 1)
    {
      if (v55 != &v56)
      {
        free(v55);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v54;
        v28 = __p;
        if (v54 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v54 = v26;
        operator delete(v28);
      }

      v29 = v51;
      if (v51)
      {
        v30 = v52;
        v31 = v51;
        if (v52 != v51)
        {
          do
          {
            v33 = *--v30;
            v32 = v33;
            *v30 = 0;
            if (v33)
            {
              MEMORY[0x1AC55A040](v32, 0x1000C8077774924);
            }
          }

          while (v30 != v29);
          v31 = v51;
        }

        v52 = v29;
        operator delete(v31);
      }

      if (v47 != v50)
      {
        free(v47);
      }
    }

    return 0;
  }

  return SingletonImpl;
}