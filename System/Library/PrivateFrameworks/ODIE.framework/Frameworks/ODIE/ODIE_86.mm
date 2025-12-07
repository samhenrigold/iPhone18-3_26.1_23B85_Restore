uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v18, 1uLL);
  *v18 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
  v23 = v19;
  v21[0] = v16;
  v21[1] = v15;
  if (!llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
  {
    v22 = "tensor.dim";
    v23 = 10;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::DimOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14 = a2;
  v15[0] = v7;
  v15[1] = v8;
  v16 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17 = v11;
  v18 = v10;
  v19 = a3;
  v20 = a4;
  v12 = mlir::tensor::DimOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[12] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23488))
  {
    v8 = llvm::getTypeName<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>();
    qword_27FC23480 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC23488);
  }

  v10[9] = qword_27FC23480;
  v10[10] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[11] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[139];
}

uint64_t llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>();
    unk_27FC1B470 = v1;
  }

  return llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<Empty>]";
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

uint64_t llvm::getTypeName<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC234A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234A0))
  {
    qword_27FC23490 = llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>();
    *algn_27FC23498 = v1;
    __cxa_guard_release(&qword_27FC234A0);
  }

  return qword_27FC23490;
}

const char *llvm::detail::getTypeNameImpl<mlir::ShapedDimOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ShapedDimOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedDimOpInterface::Trait<Empty>]";
  v6 = 102;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::DimOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::DimOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ShapedDimOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v8 = a1, mlir::tensor::DimOp::verifyInvariantsImpl(&v8)))
  {
    v6 = mlir::detail::verifyShapedDimOpInterface(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::EmptyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::EmptyOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::EmptyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (v7 = a1, mlir::tensor::EmptyOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::tensor::EmptyOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ExpandShapeOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::ExpandShapeOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ExpandShapeOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "expanded", 8);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::ExpandShapeOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::ExpandShapeOp::fold(&v11, v12);
  if (v9 < 8 || (a2 - 16) == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ExpandShapeOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ExpandShapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) != 0 && (v7 = a1, mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::ExpandShapeOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "extracted", 9);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::tensor::ExtractOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "tensor.extract";
      v22 = 14;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14 = a2;
  v15[0] = v7;
  v15[1] = v8;
  v16 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17 = v11;
  v18 = v10;
  v19 = a3;
  v20 = a4;
  v12 = mlir::tensor::ExtractOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ExtractOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::ExtractOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) != 0 && (v7 = a1, mlir::tensor::ExtractOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::ExtractOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ExtractSliceOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "extracted_slice", 15);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = *(a2 + 16 * ((v2 >> 23) & 1) + 88);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * v3;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (*(v3 + 92) + *(v3 + 88));
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (v3[24] + v3[23] + v3[22]);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
  v5 = 8 * a3;
  do
  {
    v6 = *v4++;
    if (v6 == 0x8000000000000000)
    {
      ++v3;
    }

    v5 -= 8;
  }

  while (v5);
  return (v3 + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
    v5 = 8 * a3;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
    v7 = (v3 + 1);
  }

  else
  {
    v7 = 1;
  }

  return *(*(a2 + 72) + 32 * v7 + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getDynamicSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicSize(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicSize + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicStride = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicStride(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicStride + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ExtractSliceOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

uint64_t mlir::tensor::ExtractSliceOp::getODSOperands(mlir::tensor::ExtractSliceOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(mlir::tensor::ExtractSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(a1, 1u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(mlir::tensor::ExtractSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(a1, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(mlir::tensor::ExtractSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(a1, 3u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicSize(mlir::tensor::ExtractSliceOp *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 24);
    v4 = 8 * a2;
    do
    {
      v5 = *v3++;
      if (v5 == 0x8000000000000000)
      {
        ++v2;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = v2 + 1;
  }

  else
  {
    v6 = 1;
  }

  mlir::tensor::ExtractSliceOp::getODSOperands(a1, 1u);
  return (v6 + v7);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicStride(mlir::tensor::ExtractSliceOp *this, unsigned int a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 24);
    v5 = 8 * a2;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
  }

  mlir::tensor::ExtractSliceOp::getODSOperands(this, 1u);
  v8 = v7;
  mlir::tensor::ExtractSliceOp::getODSOperands(this, 2u);
  return (v8 + v9 + v3 + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::isSameAs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5)
{
  v9 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v9, InterfaceFor, a2, a3, a4, a5);
}

uint64_t mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::hasUnitStride(mlir::tensor::ExtractSliceOp *a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(a1, &v9);
  v1 = v9;
  if (v10)
  {
    v2 = 8 * v10 - 8;
    do
    {
      v3 = *v1++;
      v4 = mlir::getConstantIntValue(v3) == 1;
      v6 = v5 & v4;
      v7 = v6 != 1 || v2 == 0;
      v2 -= 8;
    }

    while (!v7);
    v1 = v9;
  }

  else
  {
    v6 = 1;
  }

  if (v1 != v11)
  {
    free(v1);
  }

  return v6;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>();
      mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[149];
}

uint64_t llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>()
{
  {
    llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface>();
    unk_27FC1B4C0 = v1;
  }

  return llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface]";
  v6 = 98;
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

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::ExtractSliceOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::ExtractSliceOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[13] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC234B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234B0))
  {
    v1 = llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>();
    qword_27FC234A8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC234B0);
  }

  return qword_27FC234A8;
}

uint64_t llvm::getTypeName<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC234C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234C8))
  {
    qword_27FC234B8 = llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>();
    unk_27FC234C0 = v1;
    __cxa_guard_release(&qword_27FC234C8);
  }

  return qword_27FC234B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OffsetSizeAndStrideOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ExtractSliceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ExtractSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) != 0 && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5) && (v8 = a1, mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(&v8)) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::verifyTrait(a1)))
  {
    v8 = a1;
    v6 = mlir::tensor::ExtractSliceOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::verifyTrait(void ***a1)
{
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::FromElementsOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::FromElementsOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "from_elements", 13);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14 = a2;
  v15[0] = v7;
  v15[1] = v8;
  v16 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17 = v11;
  v18 = v10;
  v19 = a3;
  v20 = a4;
  v12 = mlir::tensor::FromElementsOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::FromElementsOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::FromElementsOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    v7 = a1;
    return mlir::tensor::FromElementsOp::verifyInvariantsImpl(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::GatherOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::GatherOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::GatherOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "gather", 6);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::GatherOpGenericAdaptorBase::GatherOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::GatherOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::GatherOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::GatherOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v7 = a1, mlir::tensor::GatherOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::GatherOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::GenerateOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::GenerateOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "generated", 9);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC234D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234D8))
  {
    v1 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>();
    qword_27FC234D0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC234D8);
  }

  return qword_27FC234D0;
}

uint64_t llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC234F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC234F0))
  {
    qword_27FC234E0 = llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>();
    *algn_27FC234E8 = v1;
    __cxa_guard_release(&qword_27FC234F0);
  }

  return qword_27FC234E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<Empty>]";
  v6 = 142;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::GenerateOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4))
  {
    return 0;
  }

  v5 = *(a1 + 11);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) == 0)
  {
LABEL_19:
    v19 = a1;
    if (!mlir::tensor::GenerateOp::verifyInvariantsImpl(&v19))
    {
      return 0;
    }

    v19 = a1;
    return mlir::tensor::GenerateOp::verify(&v19);
  }

  v7 = 0;
  v8 = (((a1 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
  while (1)
  {
    if (v8 == *v8)
    {
      goto LABEL_10;
    }

    v9 = v8[1];
    if (v8 == v9 || v8 != *(v9 + 8))
    {
      break;
    }

    if (*(v9 + 24) == v9 + 24)
    {
      v17 = 257;
      mlir::Operation::emitOpError(&v19, a1, v16);
      if (v19)
      {
        mlir::Diagnostic::operator<<<26ul>(v20, "expects a non-empty block");
      }

      v13 = v20[192];
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
      if (v13)
      {
        return 0;
      }

      goto LABEL_19;
    }

LABEL_10:
    ++v7;
    v8 += 3;
    if (v6 == v7)
    {
      goto LABEL_19;
    }
  }

  v18 = v7;
  v16[0] = "expects region #";
  v17 = 259;
  mlir::Operation::emitOpError(&v19, a1, v16);
  v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v18);
  v11 = v10;
  if (*v10)
  {
    mlir::Diagnostic::operator<<<23ul>((v10 + 1), " to have 0 or 1 blocks");
  }

  v12 = *(v11 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  if (v12 != 1)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t mlir::Op<mlir::tensor::GenerateOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::ReifyRankedShapedTypeOpInterface::Trait>::verifyRegionInvariants(mlir::Operation *a1)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11);
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) != 0)
  {
    v3 = (((a1 + 16 * ((v1 >> 23) & 1) + ((v1 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    do
    {
      if (v3 != *v3)
      {
        v4 = v3[1];
        if (v4)
        {
          v5 = v4 - 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = *(*(v5 + 32) + 48);
        if (*(v6 + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
        {
          v10 = 1283;
          v9[0] = "expects regions to end with '";
          v9[2] = "tensor.yield";
          v9[3] = 12;
          v11[0] = v9;
          v11[2] = "', found '";
          v12 = 770;
          v7 = *(v6 + 8);
          v13 = v11;
          v14 = *(v7 + 16);
          v15 = 1282;
          v16[0] = &v13;
          v16[2] = "'";
          v17 = 770;
          mlir::Operation::emitOpError(&v18, a1, v16);
          mlir::Diagnostic::attachNote(v19, 0, 0);
        }
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v18 = a1;
  return mlir::tensor::GenerateOp::verifyRegions(&v18) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "inserted", 8);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  v3 = *(a1 + 72) + 32 * mlir::tensor::InsertOp::getODSOperandIndexAndLength(&v7, 1u);
  v4 = *(v3 + 16);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = (v3 - v5) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::tensor::InsertOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "tensor.insert";
      v22 = 13;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 48);
  v14[0] = *(a2 + 56);
  v14[1] = v7;
  v15 = 1;
  v8 = *(a2 + 44);
  v9 = v8 & 0x7FFFFF;
  if ((v8 & 0x7FFFFF) != 0)
  {
    v10 = ((a2 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v16 = v10;
  v17 = v9;
  v18 = a3;
  v19 = a4;
  v11 = mlir::tensor::InsertOp::fold(v13, v14);
  if (v11 < 8 || a2 - 16 == (v11 & ((v11 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v11 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v11);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[12] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[11] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::InsertOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) != 0 && (v7 = a1, (mlir::tensor::InsertOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::InsertOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Op<mlir::tensor::InsertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::InsertSliceOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32) && *(a3 + 40) == *(a2 + 40);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "inserted_slice", 14);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72) + 32 * *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 88);
  v3 = *(v2 + 16);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = (v2 - v4) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getArrayAttrMaxRanks(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 36))
  {
    v2 = a2 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *((*(v2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v3 | (v3 << 32);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (*(v3 + 92) + *(v3 + 88));
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (v3[24] + v3[23] + v3[22]);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = *(a2 + 16 * ((v2 >> 23) & 1) + 88);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * vaddvq_s32(v3);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 2;
  }

  v3 = 0;
  v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
  v5 = 8 * a3;
  do
  {
    v6 = *v4++;
    if (v6 == 0x8000000000000000)
    {
      ++v3;
    }

    v5 -= 8;
  }

  while (v5);
  return (v3 + 2);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
    v5 = 8 * a3;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
    v7 = (v3 + 2);
  }

  else
  {
    v7 = 2;
  }

  return *(*(a2 + 72) + 32 * v7 + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDynamicSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicSize(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicSize + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicStride = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicStride(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicStride + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 1;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

uint64_t mlir::tensor::InsertSliceOp::getODSOperands(mlir::tensor::InsertSliceOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = (v6 + v3);
      --v5;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    v7 = *(*this + 72);
  }

  else
  {
    v7 = 0;
  }

  return v7 + 32 * v3;
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(mlir::tensor::InsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(mlir::tensor::InsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 3u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(mlir::tensor::InsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 4u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicSize(mlir::tensor::InsertSliceOp *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 24);
    v4 = 8 * a2;
    do
    {
      v5 = *v3++;
      if (v5 == 0x8000000000000000)
      {
        ++v2;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = v2 + 2;
  }

  else
  {
    v6 = 2;
  }

  mlir::tensor::InsertSliceOp::getODSOperands(a1, 2u);
  return (v6 + v7);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getIndexOfDynamicStride(mlir::tensor::InsertSliceOp *this, unsigned int a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 24);
    v5 = 8 * a2;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
  }

  mlir::tensor::InsertSliceOp::getODSOperands(this, 2u);
  v8 = v7;
  mlir::tensor::InsertSliceOp::getODSOperands(this, 3u);
  return (v8 + v9 + v3 + 2);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::isSameAs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void), uint64_t a5)
{
  v9 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v9, InterfaceFor, a2, a3, a4, a5);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::tensor::InsertSliceOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "tensor.insert_slice";
      v22 = 19;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::InsertSliceOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::InsertSliceOp::fold(&v11);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[16] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[15] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 15);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::InsertSliceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) != 0 && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5) && (v15 = a1, (mlir::tensor::InsertSliceOp::verifyInvariantsImpl(&v15)) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::verifyTrait(a1)))
  {
    v15 = a1;
    v13 = mlir::tensor::InsertSliceOp::verify(&v15, v6, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::verifyTrait(void ***a1)
{
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::Op<mlir::tensor::InsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PackOp>::compareProperties(uint64_t a1, void *a2, void *a3)
{
  if (*a3 != *a2 || a3[1] != a2[1] || a3[2] != a2[2])
  {
    return 0;
  }

  return a3[3] == a2[3] && a3[4] == a2[4];
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "pack", 4);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72) + 32 * *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 88);
  v3 = *(v2 + 16);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = (v2 - v4) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::tensor::RelayoutOpInterface>();
      mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[162];
}

uint64_t llvm::getTypeName<mlir::tensor::RelayoutOpInterface>()
{
  {
    llvm::getTypeName<mlir::tensor::RelayoutOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface>();
    *algn_27FC1B528 = v1;
  }

  return llvm::getTypeName<mlir::tensor::RelayoutOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::RelayoutOpInterface]";
  v6 = 95;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::tensor::PackOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "tensor.pack";
      v22 = 11;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::PackOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::PackOpGenericAdaptorBase::PackOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::PackOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[15] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[14] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 14);
  return v5 == a2;
}

uint64_t mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23500))
  {
    v1 = llvm::getTypeName<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>();
    qword_27FC234F8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23500);
  }

  return qword_27FC234F8;
}

uint64_t llvm::getTypeName<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23518))
  {
    qword_27FC23508 = llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>();
    unk_27FC23510 = v1;
    __cxa_guard_release(&qword_27FC23518);
  }

  return qword_27FC23508;
}

const char *llvm::detail::getTypeNameImpl<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::tensor::RelayoutOpInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::PackOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) != 0 && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5) && (v8 = a1, mlir::tensor::PackOp::verifyInvariantsImpl(&v8))))
  {
    v8 = a1;
    v6 = mlir::tensor::PackOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::Op<mlir::tensor::PackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::PadOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::PadOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "padded", 6);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::PadOpGenericAdaptorBase::PadOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::PadOp::fold(&v11);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[13] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::PadOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyOneRegion(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = (*(a1 + 46) & 0x80) != 0 ? *(a1 + 68) : 0;
  if (!mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5))
  {
    goto LABEL_25;
  }

  v6 = *(a1 + 44);
  v7 = v6 & 0x7FFFFF;
  if ((v6 & 0x7FFFFF) == 0)
  {
LABEL_23:
    v20 = a1;
    if (!mlir::tensor::PadOp::verifyInvariantsImpl(&v20))
    {
      goto LABEL_25;
    }

    v20 = a1;
    v15 = mlir::tensor::PadOp::verify(&v20);
    return v15 & 1;
  }

  v8 = 0;
  v9 = (((a1 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40));
  while (1)
  {
    if (v9 == *v9)
    {
      goto LABEL_14;
    }

    v10 = v9[1];
    if (v9 == v10 || v9 != *(v10 + 8))
    {
      break;
    }

    if (*(v10 + 24) == v10 + 24)
    {
      v18 = 257;
      mlir::Operation::emitOpError(&v20, a1, v17);
      if (v20)
      {
        mlir::Diagnostic::operator<<<26ul>(v21, "expects a non-empty block");
      }

      v14 = v21[192];
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
      if (v14)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_14:
    ++v8;
    v9 += 3;
    if (v7 == v8)
    {
      goto LABEL_23;
    }
  }

  v19 = v8;
  v17[0] = "expects region #";
  v18 = 259;
  mlir::Operation::emitOpError(&v20, a1, v17);
  v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v20, &v19);
  v12 = v11;
  if (*v11)
  {
    mlir::Diagnostic::operator<<<23ul>((v11 + 1), " to have 0 or 1 blocks");
  }

  v13 = *(v12 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  if (v13 != 1)
  {
    goto LABEL_23;
  }

LABEL_25:
  v15 = 0;
  return v15 & 1;
}

uint64_t mlir::Op<mlir::tensor::PadOp,mlir::OpTrait::OneRegion,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::tensor::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants(mlir::Operation *a1)
{
  v19[25] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 11);
  v2 = v1 & 0x7FFFFF;
  if ((v1 & 0x7FFFFF) != 0)
  {
    v3 = (((a1 + 16 * ((v1 >> 23) & 1) + ((v1 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 10));
    do
    {
      if (v3 != *v3)
      {
        v4 = v3[1];
        if (v4)
        {
          v5 = v4 - 8;
        }

        else
        {
          v5 = 0;
        }

        v6 = *(*(v5 + 32) + 48);
        if (*(v6 + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
        {
          v10 = 1283;
          v9[0] = "expects regions to end with '";
          v9[2] = "tensor.yield";
          v9[3] = 12;
          v11[0] = v9;
          v11[2] = "', found '";
          v12 = 770;
          v7 = *(v6 + 8);
          v13 = v11;
          v14 = *(v7 + 16);
          v15 = 1282;
          v16[0] = &v13;
          v16[2] = "'";
          v17 = 770;
          mlir::Operation::emitOpError(&v18, a1, v16);
          mlir::Diagnostic::attachNote(v19, 0, 0);
        }
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  v18 = a1;
  return mlir::tensor::PadOp::verifyRegions(&v18) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

double mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::initProperties(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    v5 = a4[2];
    a3[1] = a4[1];
    a3[2] = v5;
    *a3 = v4;
  }

  else
  {
    *&v4 = 0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return *&v4;
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::tensor::ParallelInsertSliceOp>::compareProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 != *a2 || *(a3 + 8) != *(a2 + 8) || *(a3 + 16) != *(a2 + 16))
  {
    return 0;
  }

  return *(a3 + 24) == *(a2 + 24) && *(a3 + 32) == *(a2 + 32) && *(a3 + 40) == *(a2 + 40);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getOffsets(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = a2 + 16 * ((v2 >> 23) & 1);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (*(v3 + 92) + *(v3 + 88));
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getSizes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = (a2 + 16 * ((v2 >> 23) & 1));
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * (v3[24] + v3[23] + v3[22]);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getStrides(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = *(a2 + 16 * ((v2 >> 23) & 1) + 88);
  if ((v2 & 0x800000) != 0)
  {
    v4 = *(a2 + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * vaddvq_s32(v3);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
  v5 = 8 * a3;
  do
  {
    v6 = *v4++;
    if (v6 == 0x8000000000000000)
    {
      ++v3;
    }

    v5 -= 8;
  }

  while (v5);
  return (v3 + 1);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getDynamicOffset(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v3 = 0;
    v4 = *(*(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) + 24);
    v5 = 8 * a3;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
    v7 = (v3 + 1);
  }

  else
  {
    v7 = 1;
  }

  return *(*(a2 + 72) + 32 * v7 + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getDynamicSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicSize(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicSize + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::getDynamicStride(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a2;
  IndexOfDynamicStride = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicStride(&v5, a3);
  return *(*(v5 + 72) + 32 * IndexOfDynamicStride + 24);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::isSameAs(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), uint64_t a6)
{
  v10 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::detail::sameOffsetsSizesAndStrides(v10, InterfaceFor, a3, a4, a5, a6);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::hasUnitStride(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 1;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits::Model<mlir::tensor::ParallelInsertSliceOp>::hasZeroOffset(uint64_t a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v10 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(&v10, &v11);
  v2 = v11;
  if (v12)
  {
    v3 = 8 * v12 - 8;
    do
    {
      v4 = *v2++;
      v5 = mlir::getConstantIntValue(v4) == 0;
      v7 = v6 & v5;
      v8 = v7 != 1 || v3 == 0;
      v3 -= 8;
    }

    while (!v8);
    v2 = v11;
  }

  else
  {
    v7 = 1;
  }

  if (v2 != v13)
  {
    free(v2);
  }

  return v7;
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedOffsets(mlir::tensor::ParallelInsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 2u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedSizes(mlir::tensor::ParallelInsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 3u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

void mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getMixedStrides(mlir::tensor::ParallelInsertSliceOp *a1@<X0>, void *a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(*a1 + 24) + 32);
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32) >> 3;
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 4u);
  mlir::getMixedValues(v5, v6, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v8, v3, &v9);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v10)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, &v9);
  }

  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicSize(mlir::tensor::ParallelInsertSliceOp *a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = *(*(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72) + 24);
    v4 = 8 * a2;
    do
    {
      v5 = *v3++;
      if (v5 == 0x8000000000000000)
      {
        ++v2;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = v2 + 1;
  }

  else
  {
    v6 = 1;
  }

  mlir::tensor::ParallelInsertSliceOp::getODSOperands(a1, 2u);
  return (v6 + v7);
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::getIndexOfDynamicStride(mlir::tensor::ParallelInsertSliceOp *this, unsigned int a2)
{
  v3 = 0;
  if (a2)
  {
    v4 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) + 24);
    v5 = 8 * a2;
    do
    {
      v6 = *v4++;
      if (v6 == 0x8000000000000000)
      {
        ++v3;
      }

      v5 -= 8;
    }

    while (v5);
  }

  mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 2u);
  v8 = v7;
  mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 3u);
  return (v8 + v9 + v3 + 1);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OffsetSizeAndStrideOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OffsetSizeAndStrideOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[7] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 7);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ParallelInsertSliceOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ParallelInsertSliceOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OffsetSizeAndStrideOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) != 0 && ((*(a1 + 46) & 0x80) == 0 ? (v5 = 0) : (v5 = *(a1 + 68)), mlir::OpTrait::impl::verifyValueSizeAttr(a1, "operandSegmentSizes", 0x13uLL, "operand", 7, v5) && (v8 = a1, (mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl(&v8)) && (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::verifyTrait(a1)))
  {
    v8 = a1;
    v6 = mlir::tensor::ParallelInsertSliceOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ParallelInsertSliceOp>::verifyTrait(void ***a1)
{
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  return mlir::detail::verifyOffsetSizeAndStrideOp(a1, InterfaceFor);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::RankOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::RankOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  **a11 = *(*a1 + 472);
  return 1;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::RankOp>::refineReturnTypes(uint64_t a1, void **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x400000000;
  v14 = 1;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&v18, 1uLL);
  *v18 = *(*a1 + 472);
  v15 = *(a11 + 8);
  v16 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
  v22 = (v18 & 0xFFFFFFFFFFFFFFF9 | 2);
  v23 = v19;
  v21[0] = v16;
  v21[1] = v15;
  if (!llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v22, v21))
  {
    v22 = "tensor.rank";
    v23 = 11;
    v14 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, a3, "'", &v22, "' op inferred type(s) ", &v18, " are incompatible with return type(s) of operation ", a11);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  return v14;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::RankOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v9[0] = a2;
  v7 = mlir::tensor::RankOp::fold(v9);
  if (v7 < 8 || a2 - 16 == (v7 & ((v7 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v7 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v7);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::RankOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::RankOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    v8 = a1;
    return mlir::tensor::RankOp::verifyInvariantsImpl(&v8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ReshapeOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ReshapeOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "reshape", 7);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14 = a2;
  v15[0] = v7;
  v15[1] = v8;
  v16 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17 = v11;
  v18 = v10;
  v19 = a3;
  v20 = a4;
  v12 = mlir::tensor::ReshapeOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[9] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 9);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ReshapeOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ReshapeOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && (v7 = a1, mlir::tensor::ReshapeOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::tensor::ReshapeOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::ScatterOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 16))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::ScatterOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "scatter", 7);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::ScatterOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::ScatterOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && (v7 = a1, mlir::tensor::ScatterOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::tensor::ScatterOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::SplatOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  v14 = a2;
  v15[0] = v7;
  v15[1] = v8;
  v16 = 1;
  v9 = *(a2 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a2 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v17 = v11;
  v18 = v10;
  v19 = a3;
  v20 = a4;
  v12 = mlir::tensor::SplatOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[10] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::SplatOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::tensor::SplatOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpAsmOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 1) & 1) != 0 && (v7 = a1, mlir::tensor::SplatOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    return mlir::tensor::SplatOp::verify(&v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 16) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::tensor::UnPackOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getAsmResultNames(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a4)
{
  if (*(a2 + 36))
  {
    v4 = a2 - 16;
  }

  else
  {
    v4 = 0;
  }

  return a3(a4, v4, "unpack", 6);
}

double mlir::detail::DestinationStyleOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::getDpsInitsMutable@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  v3 = *(a1 + 72) + 32 * mlir::tensor::UnPackOp::getODSOperandIndexAndLength(&v7, 1u);
  v4 = *(v3 + 16);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = (v3 - v5) >> 5;
  *(a2 + 12) = 1;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::tensor::UnPackOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
  {
    v13 = *(a11 + 8);
    v14 = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v21 = (v17 & 0xFFFFFFFFFFFFFFF9 | 2);
    v22 = v18;
    v20[0] = v14;
    v20[1] = v13;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(&v21, v20))
    {
      v15 = 1;
    }

    else
    {
      v21 = "tensor.unpack";
      v22 = 13;
      v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v11, "'", &v21, "' op inferred type(s) ", &v17, " are incompatible with return type(s) of operation ", a11);
    }
  }

  else
  {
    v15 = 0;
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return v15;
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::tensor::UnPackOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::tensor::detail::UnPackOpGenericAdaptorBase::UnPackOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::tensor::UnPackOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::tensor::RelayoutOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::tensor::RelayoutOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[13] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 13);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::UnPackOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) != 0 && (v7 = a1, (mlir::tensor::UnPackOp::verifyInvariantsImpl(&v7)))
  {
    v7 = a1;
    v5 = mlir::tensor::UnPackOp::verify(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t mlir::Op<mlir::tensor::UnPackOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::RankedTensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::ReifyRankedShapedTypeOpInterface::Trait,mlir::tensor::RelayoutOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants(mlir::detail *a1, mlir::Operation *a2)
{
  if (mlir::detail::verifyDestinationStyleOpInterface(a1, a2))
  {
    v4 = mlir::detail::verifyInferredResultTypes(a1, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(*(a2 + 56) + 8), *(*(a2 + 56) + 8) + 16 * *(*(a2 + 56) + 16), a3, a4);
  if (v5)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::tensor::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v8[25] = *MEMORY[0x277D85DE8];
  a5(&v7, a6, a2, a3, a4);
  if (v7)
  {
    mlir::Diagnostic::operator<<<43ul>(v8, "this operation does not support properties");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v7);
  return 0;
}

double mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getMutableSuccessorOperands@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v2 = *(a1 + 68);
  }

  else
  {
    v2 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v2;
  *(a2 + 16) = a2 + 32;
  *&result = 0x100000000;
  *(a2 + 24) = 0x100000000;
  return result;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::tensor::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(v2 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v3 && *(v3 + 16))
    {
      InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(*(v3 + 16));
    }

    else
    {
      InterfaceFor = 0;
    }
  }

  else
  {
    InterfaceFor = 0;
  }

  v5 = *(InterfaceFor + 16);

  return v5();
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[12] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC23528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23528))
  {
    v8 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>();
    qword_27FC23520 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC23528);
  }

  v10[4] = qword_27FC23520;
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[11] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 11);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC23540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23540))
  {
    qword_27FC23530 = llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>();
    *algn_27FC23538 = v1;
    __cxa_guard_release(&qword_27FC23540);
  }

  return qword_27FC23530;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::tensor::GenerateOp, mlir::tensor::PadOp>::Impl<Empty>]";
  v6 = 146;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::tensor::YieldOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::tensor::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::tensor::GenerateOp,mlir::tensor::PadOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = *(a1 + 2);
  if (v7)
  {
    v8 = *(v7 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(*(v9 + 48) + 16);
        if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::tensor::PadOp,void>::id)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v16 = 257;
  mlir::Operation::emitOpError(&v20, a1, v15);
  if (v20)
  {
    mlir::Diagnostic::operator<<<19ul>(v21, "expects parent op ");
    if (v20)
    {
      v17 = "to be one of '";
      v19 = 259;
      mlir::Diagnostic::operator<<(v21, &v17);
      if (v20)
      {
        v19 = 262;
        v17 = "tensor.generate";
        v18 = 15;
        mlir::Diagnostic::operator<<(v21, &v17);
        v17 = ", ";
        v19 = 259;
        mlir::Diagnostic::operator<<(v21, &v17);
        v19 = 262;
        v17 = "tensor.pad";
        v18 = 10;
        mlir::Diagnostic::operator<<(v21, &v17);
        if (v20)
        {
          mlir::Diagnostic::operator<<<2ul>(v21, "'");
        }
      }
    }
  }

  v12 = v21[192];
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  if ((v12 & 1) == 0)
  {
LABEL_20:
    IsTerminator = mlir::OpTrait::impl::verifyIsTerminator(a1, v6);
  }

  else
  {
LABEL_18:
    IsTerminator = 0;
  }

  return IsTerminator & 1;
}

uint64_t anonymous namespace::TensorInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::transform::FindPayloadReplacementOpInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23550))
  {
    PayloadReplacementOp = llvm::getTypeName<mlir::transform::FindPayloadReplacementOpInterface>();
    qword_27FC23548 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(PayloadReplacementOp, v2);
    __cxa_guard_release(&qword_27FC23550);
  }

  return qword_27FC23548;
}

uint64_t llvm::getTypeName<mlir::transform::FindPayloadReplacementOpInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23568))
  {
    qword_27FC23558 = llvm::detail::getTypeNameImpl<mlir::transform::FindPayloadReplacementOpInterface>();
    unk_27FC23560 = v1;
    __cxa_guard_release(&qword_27FC23568);
  }

  return qword_27FC23558;
}

const char *llvm::detail::getTypeNameImpl<mlir::transform::FindPayloadReplacementOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::transform::FindPayloadReplacementOpInterface]";
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

uint64_t mlir::detail::TypeIDResolver<mlir::TilingInterface,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC23578, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23578))
  {
    v1 = llvm::getTypeName<mlir::TilingInterface>();
    qword_27FC23570 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC23578);
  }

  return qword_27FC23570;
}

uint64_t llvm::getTypeName<mlir::TilingInterface>()
{
  if ((atomic_load_explicit(&qword_27FC23590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC23590))
  {
    qword_27FC23580 = llvm::detail::getTypeNameImpl<mlir::TilingInterface>();
    *algn_27FC23588 = v1;
    __cxa_guard_release(&qword_27FC23590);
  }

  return qword_27FC23580;
}

const char *llvm::detail::getTypeNameImpl<mlir::TilingInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TilingInterface]";
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

mlir::Operation *mlir::tensor::TensorDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, _DWORD *a4, uint64_t a5)
{
  v11 = a4;
  result = mlir::arith::ConstantOp::materialize(a2, a3, a4, a5);
  if (!result)
  {
    if (mlir::complex::ConstantOp::isBuildableWith(a3, a4))
    {
      v10 = a3;
      return mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(a2, a5, &v11, &v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

mlir::Operation *mlir::OpBuilder::create<mlir::complex::ConstantOp,mlir::Type &,mlir::ArrayAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::complex::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v8;
  v14[2] = &v15;
  v14[3] = 0x400000000;
  v16[0] = v17;
  v16[1] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  v9 = *a4;
  v13 = *a3;
  *mlir::OperationState::getOrAddProperties<mlir::complex::detail::ConstantOpGenericAdaptorBase::Properties>(v14) = v9;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v16, &v13, v14);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v11;
}

unint64_t mlir::tensor::getMixedSize(char ***a1, uint64_t a2, uint64_t a3, mlir::OperationState *a4)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v4 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = v12;
  v11 = 0x600000000;
  v5 = *(*(v4 + 8) + 8 * a4);
  if (v5 == 0x8000000000000000)
  {
    v6 = mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, a2, &v9, &v8) | 4;
  }

  else
  {
    v6 = mlir::Builder::getIndexAttr(a1, v5) & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v10 != v12)
  {
    free(v10);
  }

  return v6;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(char ***a1, uint64_t a2, uint64_t *a3, mlir::OperationState **a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6[0] = v7;
  v6[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a1, v6, a2, a3, a4);
  v4 = *v6[0];
  if (v6[0] != v7)
  {
    free(v6[0]);
  }

  return v4;
}

void mlir::tensor::getMixedSizes(char ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 8) & 0xFFFFFFFFFFFFFFF8;
  *a4 = a4 + 2;
  a4[1] = 0x600000000;
  if (*(v5 + 16) >= 1)
  {
    v9 = 0;
    do
    {
      MixedSize = mlir::tensor::getMixedSize(a1, a2, a3, v9);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a4, MixedSize);
      v9 = (v9 + 1);
    }

    while (v9 < *(v5 + 16));
  }
}

BOOL mlir::tensor::isSameTypeWithoutEncoding(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      return 0;
    }

    v6 = *(a1 + 16);
    if (v6 != *(a2 + 16) || memcmp(*(a1 + 8), *(a2 + 8), 8 * v6))
    {
      return 0;
    }

    return *(a1 + 24) == *(a2 + 24);
  }

  else
  {
    return a1 == a2;
  }
}

BOOL mlir::tensor::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v26[7] = v4;
    v26[8] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(*v10 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    if (v13)
    {
      v17 = v16 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }

    v18 = *(*v13 + 136);
    if (v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v20 = 3;
    }

    else
    {
      if (v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v19 = 0;
        goto LABEL_25;
      }

      v20 = 1;
    }

    v19 = v13[v20];
LABEL_25:
    v26[0] = v19;
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v26);
    v22 = *(*v16 + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v24 = 3;
    }

    else
    {
      if (v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v23 = 0;
        goto LABEL_31;
      }

      v24 = 1;
    }

    v23 = v16[v24];
LABEL_31:
    v26[0] = v23;
    if (IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(v26))
    {
      return mlir::verifyCompatibleShape(v13, v16);
    }

    return 0;
  }

  return v7;
}

uint64_t mlir::tensor::preservesStaticInformation(void *a1, void *a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  if (v2[3] != v3[3])
  {
    return 0;
  }

  v5 = v2[2];
  if (v5 != v3[2] || v2[4] != v3[4])
  {
    return 0;
  }

  if (v5)
  {
    v7 = v2[1];
    v8 = v3[1];
    v9 = 8 * v5 - 8;
    result = 1;
    while (1)
    {
      v10 = v9;
      if (*v7 != 0x8000000000000000 && *v8 == 0x8000000000000000)
      {
        break;
      }

      ++v7;
      ++v8;
      v9 -= 8;
      if (!v10)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

void mlir::tensor::getUpdatedOperandsAfterCastOpFolding(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28[0] = a2;
  v28[1] = a3;
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v7 = *(a2 + 68);
    if (v7 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 2, v7, 8);
      if ((*(a2 + 46) & 0x80) == 0)
      {
        return;
      }

      LODWORD(v7) = *(a2 + 68);
    }

    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 72);
      v10 = (v9 + 24);
      for (i = 32 * v7; i; i -= 32)
      {
        v12 = *v10;
        if ((~*(*v10 + 8) & 7) != 0)
        {
          v13 = *v10;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v14 = *(v13 + 8) & 7;
          if (v14 == 6)
          {
            v15 = v13 + 24 * *(v13 + 16) + 120;
            if (!v15)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v15 = v13 + 16 * v14 + 16;
          }

          if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
          {
            v16 = *(v15 + 72);
            v18 = *(v16 + 24);
            v17 = (v16 + 24);
            if (mlir::tensor::preservesStaticInformation((*(v15 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v18 + 8) & 0xFFFFFFFFFFFFFFF8)))
            {
              v19 = v17;
            }

            else
            {
              v19 = v10;
            }

            v12 = *v19;
          }
        }

LABEL_20:
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a1, v12);
        DpsInits = mlir::DestinationStyleOpInterface::getDpsInits(v28);
        if (v21)
        {
          v22 = *(v10 - 1);
          if ((*(v22 + 46) & 0x80) != 0)
          {
            v23 = *(v22 + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = (v9 - v23) >> 5;
          v25 = *(DpsInits + 16);
          if ((*(v25 + 46) & 0x80) != 0)
          {
            v26 = *(v25 + 72);
            if (v24 >= ((DpsInits - v26) >> 5))
            {
              goto LABEL_25;
            }
          }

          else if (v24 >= (DpsInits >> 5))
          {
            v26 = 0;
LABEL_25:
            if (v21 + ((DpsInits - v26) >> 5) > v24)
            {
              v27 = *(*(*a1 + 8 * *(a1 + 2) - 8) + 8) & 0xFFFFFFFFFFFFFFF8;
              if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
              {
                *(*a4 + 8 * v8++) = v27;
              }
            }
          }
        }

        v9 += 32;
        v10 += 4;
      }
    }
  }
}

BOOL mlir::tensor::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = *(*v7 + 136);
    if (v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v8 + 136);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    if (v11)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }

    v16 = *(*v11 + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = 3;
    }

    else
    {
      if (v16 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v17 = 0;
        goto LABEL_25;
      }

      v18 = 1;
    }

    v17 = v11[v18];
LABEL_25:
    v19 = *(*v14 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v21 = 3;
    }

    else
    {
      if (v19 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v20 = 0;
        goto LABEL_31;
      }

      v21 = 1;
    }

    v20 = v14[v21];
LABEL_31:
    if (v17 == v20)
    {
      return mlir::verifyCompatibleShape(v11, v14);
    }

    return 0;
  }

  return v5;
}

BOOL mlir::tensor::ConcatOp::verify(mlir::Operation **this)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(v2 + 46) & 0x80) == 0 || (v3 = *(v2 + 17), !v3))
  {
    v58 = "requires at least one input";
    v60[8] = 259;
    mlir::Operation::emitOpError(&v61, v2, &v58);
    v36 = (v64 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
    return v36;
  }

  LODWORD(v4) = 0;
  v58 = v60;
  v59 = 0x600000000;
  v5 = *(v2 + 9) + 24;
  do
  {
    v6 = *(*v5 + 8);
    if (v4 >= HIDWORD(v59))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v60, v4 + 1, 8);
      LODWORD(v4) = v59;
    }

    *(v58 + v4) = v6 & 0xFFFFFFFFFFFFFFF8;
    v4 = (v59 + 1);
    LODWORD(v59) = v59 + 1;
    v5 += 32;
    --v3;
  }

  while (v3);
  v7 = *this;
  if (*(*this + 9))
  {
    v8 = *this - 16;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(v8 + 1) & 0xFFFFFFFFFFFFFFF8);
  v52 = v9;
  v10 = v9[2];
  if (v4)
  {
    v11 = v58;
    v12 = 8 * v4;
    v13 = v12;
    v14 = v58;
    do
    {
      if (*(*v14 + 16) != v10)
      {
        v37 = "rank of concatenated inputs must match result rank";
        goto LABEL_50;
      }

      v14 += 8;
      v13 -= 8;
    }

    while (v13);
    while (v9[3] == *(*v11 + 24))
    {
      v11 += 8;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    v37 = "inputs and result element type must match";
LABEL_50:
    v54 = v37;
    v57 = 259;
  }

  else
  {
LABEL_16:
    Dim = mlir::tensor::ConcatOp::getDim(v7);
    if (Dim < v10)
    {
      v16 = Dim;
      v54 = v56;
      v55 = 0x600000000;
      llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v54, v10);
      v17 = v58;
      v18 = v59;
      if (v10 >= 1)
      {
        v19 = 0;
        v20 = v54;
        do
        {
          if (v19 != v16)
          {
            if (v18)
            {
              v21 = 0;
              v22 = 8 * v18;
              v23 = v17;
              v24 = 1;
              while (1)
              {
                v25 = *(*(*v23 + 8) + 8 * v19);
                if (v24)
                {
                  if (v25 != 0x8000000000000000)
                  {
                    v21 = *(*(*v23 + 8) + 8 * v19);
                    v24 = 0;
                  }
                }

                else if (v25 != 0x8000000000000000 && v21 != v25)
                {
                  v50[0] = "static concatenation size mismatch along ";
                  v51 = 259;
                  mlir::Operation::emitOpError(&v61, *this, v50);
                  if (v61)
                  {
                    mlir::Diagnostic::operator<<<28ul>(&v61 + 8, "non-concatenated dimension ");
                    if (v61)
                    {
                      LODWORD(v53[0]) = 2;
                      v53[1] = v19;
                      v39 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v62, v53, 1);
                      v40 = v62 + 24 * v63;
                      v41 = *v39;
                      *(v40 + 16) = *(v39 + 16);
                      *v40 = v41;
                      ++v63;
                    }
                  }

                  goto LABEL_58;
                }

                ++v23;
                v22 -= 8;
                if (!v22)
                {
                  if (v24)
                  {
                    v21 = 0x8000000000000000;
                  }

                  goto LABEL_35;
                }
              }
            }

            v21 = 0x8000000000000000;
LABEL_35:
            v20[v19] = v21;
          }

          ++v19;
        }

        while (v19 != v10);
      }

      if (v18)
      {
        v27 = 0;
        v28 = 0;
        v29 = 8 * v18;
        v30 = v17;
        do
        {
          v31 = *v30++;
          v32 = *(*(v31 + 8) + 8 * v16);
          v33 = v32 == 0x8000000000000000;
          v34 = v32 + v27;
          v28 |= v33;
          if (v28)
          {
            v27 = 0;
          }

          else
          {
            v27 = v34;
          }

          v29 -= 8;
        }

        while (v29);
        v35 = 0x8000000000000000;
        if ((v28 & 1) == 0)
        {
          v35 = v34;
        }
      }

      else
      {
        v35 = 0;
      }

      v42 = v54;
      *(v54 + v16) = v35;
      v43 = *(*v17 + 24);
      *&v61 = v42;
      *(&v61 + 1) = v55;
      v50[0] = v43;
      v53[0] = 0;
      v44 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v43 + 32), &v61, v50, v53);
      v53[0] = v44;
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = *(v44 + 8);
        v47 = v9[1];
        v48 = 8 * v45;
        while (*v46 == 0x8000000000000000 || *v47 == 0x8000000000000000 || *v46 == *v47)
        {
          ++v46;
          ++v47;
          v48 -= 8;
          if (!v48)
          {
            goto LABEL_69;
          }
        }

        v50[0] = "result type ";
        v51 = 259;
        mlir::Operation::emitOpError(&v61, *this, v50);
        if (v61)
        {
          mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v61 + 8, &v52);
          if (v61)
          {
            mlir::Diagnostic::operator<<<31ul>(&v61 + 8, "does not match inferred shape ");
            if (v61)
            {
              mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v61 + 8, v53);
              if (v61)
              {
                mlir::Diagnostic::operator<<<14ul>(&v61 + 8, " static sizes");
              }
            }
          }
        }

LABEL_58:
        v36 = (v64 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
      }

      else
      {
LABEL_69:
        v36 = 1;
      }

      if (v54 != v56)
      {
        free(v54);
      }

      goto LABEL_52;
    }

    v54 = "concatenation dim must be less than the tensor rank";
    v57 = 259;
    v7 = *this;
  }

  mlir::Operation::emitOpError(&v61, v7, &v54);
  v36 = (v64 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
LABEL_52:
  if (v58 != v60)
  {
    free(v58);
  }

  return v36;
}

uint64_t mlir::tensor::ConcatOp::getDim(mlir::tensor::ConcatOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (*(v1 + 24) > 0x40u)
  {
    operator new[]();
  }

  return *(v1 + 16);
}

mlir::Operation *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v15[0] = a2;
  v15[1] = v8;
  v16[0] = &v17;
  v16[1] = 0x400000000;
  v18[0] = v19;
  v18[1] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  v9 = *a3;
  v13 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, &v13, 0, &v13, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v18, &__src, v15);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

uint64_t mlir::tensor::ConcatOp::reifyResultShapes(uint64_t *a1, mlir::OpBuilder *a2, void **a3)
{
  v101[8] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if ((*(v5 + 46) & 0x80) != 0)
  {
    v6 = *(v5 + 68);
    v7 = *(v5 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v6 = 0;
    v7 = 2;
  }

  v89[0] = v7;
  v89[1] = v6;
  Dim = mlir::tensor::ConcatOp::getDim(v5);
  v83 = Dim;
  v93 = v7;
  v94 = 0;
  v95 = v7;
  v96 = v6;
  mlir::TypeRange::TypeRange<mlir::ValueRange>(&v87, &v93);
  v10 = v87;
  v9 = v88;
  __src = v92;
  v91 = 0x400000000;
  if (v88 < 5)
  {
    v11 = 0;
    v12 = v92;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v92, v88, 8);
    v11 = v91;
    v12 = __src;
  }

  v13 = 0;
  v14 = &v12[v11];
  do
  {
    v14[v13] = mlir::TypeRange::dereference_iterator(v10, v13);
    ++v13;
  }

  while (v9 != v13);
  v15 = *__src;
  LODWORD(v91) = v91 + v9;
  v16 = *(v15 + 16);
  v93 = &v95;
  v94 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v93, v16);
  v18 = __src;
  v19 = v91;
  v20 = 8 * v91;
  if (v16 >= 1)
  {
    v21 = 0;
    v22 = v93;
    do
    {
      if (v21 != Dim)
      {
        if (v19)
        {
          v23 = 0;
          v24 = v20;
          v25 = v18;
          v26 = 1;
          do
          {
            v27 = *(*(*v25 + 8) + 8 * v21);
            if (v26)
            {
              if (v27 != 0x8000000000000000)
              {
                v26 = 0;
                v23 = *(*(*v25 + 8) + 8 * v21);
              }
            }

            else if (v27 != 0x8000000000000000 && v23 != v27)
            {
              v26 = 0;
              v23 = v17;
            }

            ++v25;
            v17 = v23;
            v24 -= 8;
          }

          while (v24);
          if (v26)
          {
            v29 = 0x8000000000000000;
          }

          else
          {
            v29 = v23;
          }

          v17 = v23;
        }

        else
        {
          v29 = 0x8000000000000000;
        }

        v22[v21] = v29;
      }

      v21 = (v21 + 1);
    }

    while (v21 != v16);
  }

  if (v19)
  {
    v30 = 0;
    v31 = 0;
    v32 = v18;
    v33 = a1;
    do
    {
      v34 = *v32++;
      v35 = *(*(v34 + 8) + 8 * Dim);
      v36 = v35 == 0x8000000000000000;
      v37 = v35 + v31;
      v30 |= v36;
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v37;
      }

      v20 -= 8;
    }

    while (v20);
    v38 = 0x8000000000000000;
    if ((v30 & 1) == 0)
    {
      v38 = v37;
    }
  }

  else
  {
    v38 = 0;
    v33 = a1;
  }

  v39 = v93;
  *(v93 + Dim) = v38;
  v40 = *(*v18 + 24);
  *&v86 = v39;
  *(&v86 + 1) = v94;
  v84 = 0;
  v85 = v40;
  v82 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v40 + 32), &v86, &v85, &v84);
  if (v93 != &v95)
  {
    free(v93);
  }

  if (__src != v92)
  {
    free(__src);
  }

  v41 = v89[0] & 0xFFFFFFFFFFFFFFF8;
  if ((v89[0] & 6) != 0 || !v41)
  {
    if ((v89[0] & 6) == 2 && v41)
    {
      v41 = *(v41 + 24);
    }
  }

  else
  {
    v41 = *v41;
  }

  v87 = v41;
  v42 = *((*(*v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v93 = &v95;
  v94 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(&v93, v42);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, &v93);
  if (v93 != &v95)
  {
    free(v93);
  }

  if (v42 >= 1)
  {
    v43 = 0;
    while (Dim == v43)
    {
LABEL_74:
      v43 = (v43 + 1);
      if (v42 == v43)
      {
        goto LABEL_75;
      }
    }

    v44 = *(*((*(*v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * v43);
    if (v44 == 0x8000000000000000)
    {
      v45 = *(*(v82 + 8) + 8 * v43);
      if (v45 == 0x8000000000000000)
      {
        v46 = a3;
        if ((~*(v41 + 8) & 7) != 0)
        {
          v47 = v41;
        }

        else
        {
          v47 = 0;
        }

        v48 = v41 + 32;
        if (!v47)
        {
          goto LABEL_67;
        }

        v49 = *(v47 + 8) & 7;
        if (v49 == 6)
        {
          v48 = v41 + 32;
          v50 = v47 + 24 * *(v47 + 16) + 120;
          if (!v50)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v50 = v47 + 16 * v49 + 16;
        }

        v48 = v50 + 24;
LABEL_67:
        v54 = *v48;
        v55 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(***v48 + 32));
        v93 = v54;
        v94 = v55;
        v95 = v97;
        v96 = 0x400000000;
        v97[4] = v98;
        v97[5] = 0x400000000;
        v98[4] = v99;
        v98[5] = 0x400000000;
        v99[8] = 4;
        v99[9] = v100;
        v99[10] = 0x100000000;
        v100[1] = v101;
        v100[2] = 0x100000000;
        v101[1] = 0;
        v101[2] = 0;
        v101[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v101[4] = 0;
        v101[6] = 0;
        __src = v43;
        v56 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a2, v54, &__src);
        mlir::tensor::DimOp::build(a2, &v93, v41, v56 - 16);
        v57 = mlir::Operation::create(&v93);
        mlir::OpBuilder::insert(a2, v57);
        v58 = *(*(v57 + 6) + 16);
        mlir::OperationState::~OperationState(&v93);
        if (v58 == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
        {
          v59 = v57;
        }

        else
        {
          v59 = 0;
        }

        v60 = *(v59 + 9);
        v51 = (v59 - 16) | 4;
        if (!v60)
        {
          v51 = 4;
        }

        a3 = v46;
        v33 = a1;
        goto LABEL_73;
      }

      v52 = *(*v33 + 24);
      IndexAttr = mlir::Builder::getIndexAttr(a2, v45);
      v51 = mlir::getValueOrCreateConstantIndexOp(a2, v52, IndexAttr & 0xFFFFFFFFFFFFFFFBLL) | 4;
    }

    else
    {
      v51 = mlir::Builder::getIndexAttr(a2, v44) & 0xFFFFFFFFFFFFFFFBLL;
    }

LABEL_73:
    *(**a3 + 8 * v43) = v51;
    goto LABEL_74;
  }

LABEL_75:
  v61 = *(*((*(*v33 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * Dim);
  if (v61 != 0x8000000000000000)
  {
    *(**a3 + 8 * Dim) = mlir::Builder::getIndexAttr(a2, v61) & 0xFFFFFFFFFFFFFFFBLL;
    return 1;
  }

  AffineDimOrSymbol = getAffineDimOrSymbol(6u, 0, *a2);
  v85 = AffineDimOrSymbol;
  if ((~*(v41 + 8) & 7) != 0)
  {
    v63 = v41;
  }

  else
  {
    v63 = 0;
  }

  if (!v63)
  {
    goto LABEL_82;
  }

  v64 = *(v63 + 8) & 7;
  if (v64 != 6)
  {
    v65 = v63 + 16 * v64 + 16;
    goto LABEL_85;
  }

  v65 = v63 + 24 * *(v63 + 16) + 120;
  if (v65)
  {
LABEL_85:
    v66 = (v65 + 24);
    goto LABEL_86;
  }

LABEL_82:
  v66 = (v41 + 32);
LABEL_86:
  __src = (mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a2, *v66, &v87, &v83) | 4);
  v93 = &v95;
  v94 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&v93, &__src, &v91);
  v67 = mlir::ValueRange::offset_base(v89, 1);
  __src = 0;
  v91 = v67;
  v92[0] = 0;
  if (v6 != 1)
  {
    v68 = 1;
    while (1)
    {
      v69 = mlir::ValueRange::dereference_iterator(&v91, v68 - 1);
      *&v86 = v68 - 1;
      *(&v86 + 1) = v69;
      v70 = getAffineDimOrSymbol(6u, v68, *a2);
      v85 = mlir::AffineExpr::operator+(&v85, v70, v71);
      if ((~*(*(&v86 + 1) + 8) & 7) != 0)
      {
        v72 = *(&v86 + 1);
      }

      else
      {
        v72 = 0;
      }

      if (v72)
      {
        v73 = *(v72 + 8) & 7;
        if (v73 != 6)
        {
          v74 = v72 + 16 * v73 + 16;
LABEL_96:
          v75 = (v74 + 24);
          goto LABEL_97;
        }

        v74 = v72 + 24 * *(v72 + 16) + 120;
        if (v74)
        {
          goto LABEL_96;
        }
      }

      v75 = (*(&v86 + 1) + 32);
LABEL_97:
      v76 = mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(a2, *v75, &v86 + 1, &v83);
      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v93, v76 | 4);
      __src = v68;
      v92[0] = v68++;
      if (v6 == v68)
      {
        AffineDimOrSymbol = v85;
        break;
      }
    }
  }

  v77 = *(*a1 + 24);
  ComposedFoldedAffineApply = mlir::affine::makeComposedFoldedAffineApply(a2, v77, AffineDimOrSymbol, v93, v94);
  ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp(a2, v77, ComposedFoldedAffineApply);
  *(**a3 + 8 * v83) = ConstantIndexOp | 4;
  if (v93 != &v95)
  {
    free(v93);
  }

  return 1;
}

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6)
  {
    if (v5)
    {

      llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a1, v6, a3);
    }

    else
    {
      v8 = (*a1 + (v4 << 6) - 64);
      v9 = (a2 << 6) - (v4 << 6);
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
      *(a1 + 8) = a2;
    }
  }
}

uint64_t mlir::tensor::ConcatOp::fold(uint64_t *a1)
{
  v1 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0 || *(v1 + 68) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 72) & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v3 + 8);
  v6 = *(v1 + 36);
  v7 = v1 - 16;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v7 + 8) ^ v5;
  if (v8 > 7 || v2 == 0)
  {
    return 4 * (v8 < 8);
  }

  else
  {
    return *(v2 + 24) | 4;
  }
}

mlir::Operation *mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, mlir::OperationState **a3)
{
  v15[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(a1, *(**a2 + 32));
  v10[0] = a2;
  v10[1] = v6;
  v10[2] = v11;
  v10[3] = 0x400000000;
  v11[4] = v12;
  v11[5] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[8] = 4;
  v13[9] = v14;
  v13[10] = 0x100000000;
  v14[1] = v15;
  v14[2] = 0x100000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v15[4] = 0;
  v15[6] = 0;
  mlir::arith::ConstantIndexOp::build(a1, v10, *a3);
  v7 = mlir::Operation::create(v10);
  mlir::OpBuilder::insert(a1, v7);
  if (v7 && *(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    if (*(*(*(v7 - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v10);
  return v8;
}

void mlir::tensor::DimOp::build(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v8, 0, &v8, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 2, &v7, 0, &v7, 1);
  __src = v11;
  v10 = 0x200000000;
  v6 = *a1;
  mlir::NamedAttrList::getDictionary((a2 + 28), *(***a2 + 32));
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(&__src, 1uLL);
  *__src = *(*v6 + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 16, __src, __src + 8 * v10);
  if (__src != v11)
  {
    free(__src);
  }
}

BOOL mlir::tensor::DimOp::getSpeculatability(mlir::tensor::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) != 0 && (v4 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id))
  {
    return v4[2] > ConstantIntValue;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::DimOp::inferResultRangesFromOptional(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *), uint64_t a5)
{
  v8 = *a1;
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  InterfaceFor = mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
  mlir::intrange::inferShapedDimOpInterface(v8, InterfaceFor, a2 + 72, &v12);
  v21 = v13;
  v20 = v12;
  v23 = v15;
  v22 = v14;
  v13 = 0;
  v15 = 0;
  v25 = v17;
  v24 = v16;
  v27 = v19;
  v26 = v18;
  v17 = 0;
  v19 = 0;
  v28 = 1;
  result = a4(a5, v9, &v20);
  if (v28 == 1)
  {
    if (v27 >= 0x41)
    {
      result = v26;
      if (v26)
      {
        result = MEMORY[0x25F891010](v26, 0x1000C8000313F17);
      }
    }

    if (v25 >= 0x41)
    {
      result = v24;
      if (v24)
      {
        result = MEMORY[0x25F891010](v24, 0x1000C8000313F17);
      }
    }

    if (v23 >= 0x41)
    {
      result = v22;
      if (v22)
      {
        result = MEMORY[0x25F891010](v22, 0x1000C8000313F17);
      }
    }

    if (v21 >= 0x41)
    {
      result = v20;
      if (v20)
      {
        result = MEMORY[0x25F891010](v20, 0x1000C8000313F17);
      }
    }
  }

  if (v19 >= 0x41)
  {
    result = v18;
    if (v18)
    {
      result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
    }
  }

  if (v17 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  if (v15 >= 0x41)
  {
    result = v14;
    if (v14)
    {
      result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
    }
  }

  if (v13 >= 0x41)
  {
    result = v12;
    if (v12)
    {
      return MEMORY[0x25F891010](v12, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t mlir::tensor::DimOp::fold(uint64_t *a1, uint64_t a2)
{
  v2 = *(*(a2 + 40) + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id ? *(*(a2 + 40) + 8) : 0;
  v46 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v46);
  if (Int < 0 || Int >= v5[2])
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v46);
  v9 = v5[1];
  if (*(v9 + 8 * v8) != 0x8000000000000000)
  {
    v45 = *(***(*a1 + 24) + 32);
    v14 = mlir::IntegerAttr::getInt(&v46);
    return mlir::Builder::getIndexAttr(&v45, *(v9 + 8 * v14)) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = *(*(*a1 + 72) + 24);
  if ((~*(v10 + 8) & 7) == 0)
  {
    v10 = 0;
  }

  if (!v10)
  {
    v13 = 0;
LABEL_19:
    v15 = 1;
    goto LABEL_23;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v13 = v10 + 16 * v11 + 16;
  }

  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id)
  {
    if (*(v13 + 36))
    {
      v35 = v13 - 16;
    }

    else
    {
      v35 = 0;
    }

    v36 = *(v35 + 8) & 0xFFFFFFFFFFFFFFF8;
    if ((*(v13 + 46) & 0x80) != 0)
    {
      v37 = *(v13 + 72);
    }

    else
    {
      v37 = 0;
    }

    v38 = *(v36 + 8);
    v39 = *(v36 + 16);
    v40 = mlir::IntegerAttr::getInt(&v46);
    v41 = 0;
    if (v39 >= v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = v39;
    }

    if (v42)
    {
      v43 = 8 * v42;
      do
      {
        v44 = *v38++;
        if (v44 == 0x8000000000000000)
        {
          ++v41;
        }

        v43 -= 8;
      }

      while (v43);
    }

    v22 = v37 + 32 * v41;
    return *(v22 + 24) | 4;
  }

  v15 = 0;
LABEL_23:
  if (*(v3 + 24) > 0x40u)
  {
    operator new[]();
  }

  v16 = *(v3 + 16);
  if ((v15 & 1) == 0)
  {
    v17 = *(*(v13 + 48) + 16);
    v18 = v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    v19 = v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v13 : 0;
    v45 = v19;
    if (v18)
    {
      v20 = *(v13 + 36) ? v13 - 16 : 0;
      if (*((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8) + 16) == *((*(*(*(v13 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16) && *(*(*(v13 + 88) + 24) + 8 * v16) == 0x8000000000000000)
      {
        IndexOfDynamicSize = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getIndexOfDynamicSize(&v45, v16);
        v22 = *(v45 + 72) + 32 * IndexOfDynamicSize;
        return *(v22 + 24) | 4;
      }
    }
  }

  v23 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v24 = *(v23 + 68);
  if (!v24)
  {
    return 0;
  }

  v25 = 0;
  v26 = *(v23 + 72);
  v27 = &v26[4 * v24];
  do
  {
    while (1)
    {
      v28 = v26[3];
      if ((~*(v28 + 8) & 7) == 0)
      {
        v28 = 0;
      }

      if (!v28)
      {
        break;
      }

      v29 = *(v28 + 8) & 7;
      if (v29 == 6)
      {
        v30 = v28 + 24 * *(v28 + 16) + 120;
        if (!v30)
        {
          break;
        }
      }

      else
      {
        v30 = v28 + 16 * v29 + 16;
      }

      if (*(*(v30 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        break;
      }

      v31 = *(*(v30 + 72) + 24);
      if (!mlir::tensor::preservesStaticInformation((*(v30 - 8) & 0xFFFFFFFFFFFFFFF8), (v31[1] & 0xFFFFFFFFFFFFFFF8)))
      {
        break;
      }

      v32 = v26[1];
      if (v32)
      {
        v33 = *v26;
        *v32 = *v26;
        if (v33)
        {
          *(v33 + 8) = v26[1];
        }
      }

      v26[3] = v31;
      v26[1] = v31;
      v34 = *v31;
      *v26 = *v31;
      if (v34)
      {
        *(v34 + 8) = v26;
      }

      *v31 = v26;
      v26 += 4;
      v25 = 1;
      if (v26 == v27)
      {
        goto LABEL_60;
      }
    }

    v26 += 4;
  }

  while (v26 != v27);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  if (*(*a1 + 36))
  {
    return (*a1 - 16) | 4;
  }

  else
  {
    return 4;
  }
}

uint64_t mlir::tensor::EmptyOp::verify(mlir::tensor::EmptyOp *this)
{
  v27[26] = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(v4 + 8);
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      if (v9 == 0x8000000000000000)
      {
        ++v6;
      }

      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  if ((*(v2 + 46) & 0x80) != 0)
  {
    v10 = *(v2 + 68);
  }

  else
  {
    v10 = 0;
  }

  if (v6 == v10)
  {
    return 1;
  }

  v25 = "incorrect number of dynamic sizes, has ";
  v26 = 259;
  mlir::Operation::emitOpError(v27, v2, &v25);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v12 = *(*this + 68);
  }

  else
  {
    v12 = 0;
  }

  v24 = v12;
  v13 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v27, &v24);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<12ul>((v13 + 1), ", expected ");
  }

  v15 = *this - 16;
  if (!*(*this + 36))
  {
    v15 = 0;
  }

  v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = *(v16 + 8);
    v20 = 8 * v17;
    do
    {
      v21 = *v19++;
      if (v21 == 0x8000000000000000)
      {
        ++v18;
      }

      v20 -= 8;
    }

    while (v20);
  }

  else
  {
    v18 = 0;
  }

  v23 = v18;
  v11 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v14, &v23) + 200) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
  return v11;
}

uint64_t mlir::tensor::EmptyOp::reifyResultShapes(uint64_t *a1, mlir::Builder *a2, void **a3)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v6 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v6 = 0;
  }

  v7 = *((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v18[0] = v19;
  v18[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v18, v7);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v18);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  v8 = *a1;
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 16) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(v10 + 8) + 8 * v12);
      if (v13 == 0x8000000000000000)
      {
        v14 = v11++;
        v15 = *(*(v8 + 72) + 32 * v14 + 24) | 4;
      }

      else
      {
        v15 = mlir::Builder::getIndexAttr(a2, v13) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * v12++) = v15;
      v8 = *a1;
      if (*(*a1 + 36))
      {
        v16 = *a1 - 16;
      }

      else
      {
        v16 = 0;
      }

      v10 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v12 < *(v10 + 16));
  }

  return 1;
}

uint64_t mlir::tensor::EmptyOp::getDynamicSize(mlir::tensor::EmptyOp *this, unsigned int a2)
{
  if (a2)
  {
    LODWORD(v2) = 0;
    v3 = a2;
    if (*(this + 9))
    {
      v4 = this - 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = *((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) + 8);
    do
    {
      v6 = *v5++;
      if (v6 == 0x8000000000000000)
      {
        v2 = (v2 + 1);
      }

      else
      {
        v2 = v2;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v2 = 0;
  }

  return *(*(this + 9) + 32 * v2 + 24);
}

BOOL mlir::tensor::ExtractOp::verify(mlir::tensor::ExtractOp *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *((*(*(mlir::tensor::ExtractOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v3 = 1;
  mlir::tensor::ExtractOp::getODSOperands(this, 1u);
  if (v2 != v4)
  {
    v6 = "incorrect number of indices for extract_element";
    v7 = 259;
    mlir::Operation::emitOpError(v8, *this, &v6);
    v3 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v3;
}

unint64_t mlir::tensor::ExtractOp::fold(mlir::tensor::ExtractOp *this, uint64_t a2)
{
  v54[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(*v5 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v7 && v5[24] == 1)
    {
      (*(*(v5 + 2) + 24))();
      v52 = v5;
      v53 = 0;
      return mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v52) & 0xFFFFFFFFFFFFFFFBLL;
    }

    if (v6 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      return 0;
    }
  }

  v52 = v54;
  v53 = 0x800000000;
  v9 = 8 * *(a2 + 48);
  v10 = v9 - 8;
  if (v9 != 8)
  {
    v11 = v4 + 1;
    while (*v11 && *(**v11 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v42 = *v11;
      Int = mlir::IntegerAttr::getInt(&v42);
      llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(&v52, Int);
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_54;
  }

LABEL_15:
  v13 = *(mlir::tensor::ExtractOp::getODSOperands(this, 0) + 24);
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16);
      v16 = v15 + 120;
      if (v15 == -120)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = v13 + 16 * v14 + 16;
    }

    v17 = *(*(v16 + 48) + 16);
    v18 = v17 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id;
    if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v30 = *(v16 - 8) & 0xFFFFFFFFFFFFFFF8;
      v31 = *(v30 + 16) - 1;
      if (v31 < 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = 0;
        v33 = *(v30 + 8);
        v34 = 8 * v31;
        LODWORD(v35) = 1;
        do
        {
          v32 += *(v52 + v34) * v35;
          v35 = *(v33 + v34) * v35;
          v34 -= 8;
        }

        while (v34 != -8);
      }

      if ((*(v19 + 46) & 0x80) != 0)
      {
        v8 = 0;
        if ((v32 & 0x80000000) == 0 && v32 < *(v19 + 68))
        {
          v8 = *(*(v19 + 72) + 32 * v32 + 24) | 4;
        }

        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

LABEL_27:
  v20 = **(a2 + 40);
  if (v20)
  {
    v21 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v20);
    v48[0] = v21;
    v48[1] = v22;
    if (v21)
    {
      v23 = v52;
      v24 = v53;
      v25 = (*(v22 + 16))(v22, v21);
      if (mlir::ElementsAttr::isValidIndex(v25, v26, v23, v24))
      {
        mlir::ElementsAttr::getValues<mlir::Attribute>(v48, &v42);
        FlattenedIndex = mlir::ElementsAttr::getFlattenedIndex(v47, v52);
        v28 = FlattenedIndex;
        v49 = v42;
        if (v42 == 1)
        {
          v50 = v43;
          v51 = v44 + FlattenedIndex;
          if (BYTE1(v42))
          {
            v29 = 0;
          }

          else
          {
            v29 = v44 + FlattenedIndex;
          }
        }

        else
        {
          (*(*v43 + 16))(&v50);
          v51 = v44 + v28;
          if ((v49 & 0x100) != 0)
          {
            v29 = 0;
          }

          else
          {
            v29 = v44 + v28;
          }

          if ((v49 & 1) == 0)
          {
            v40 = v50;
            v50 = 0;
            v36 = (*(*v40 + 24))(v40, v29);
            (*(*v40 + 8))(v40);
            if ((v49 & 1) == 0)
            {
              v41 = v50;
              v50 = 0;
              if (v41)
              {
                (*(*v41 + 8))(v41);
              }
            }

            goto LABEL_43;
          }
        }

        v36 = *(v50 + 8 * v29);
LABEL_43:
        if ((v45 & 1) == 0)
        {
          v37 = v46;
          v46 = 0;
          if (v37)
          {
            (*(*v37 + 8))(v37);
          }
        }

        v8 = v36 & 0xFFFFFFFFFFFFFFFBLL;
        if ((v42 & 1) == 0)
        {
          v38 = v43;
          v43 = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }
        }

        goto LABEL_55;
      }
    }
  }

LABEL_54:
  v8 = 0;
LABEL_55:
  if (v52 != v54)
  {
    free(v52);
  }

  return v8;
}

unint64_t mlir::tensor::FromElementsOp::fold(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v4 = 8 * v3;
    v5 = *(a2 + 40);
    while (*v5)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
  }

  if (v5 != (*(a2 + 40) + 8 * v3))
  {
    return 0;
  }

LABEL_9:
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v9);
  return mlir::DenseElementsAttr::get(v7, v8, *(a2 + 40), *(a2 + 48)) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::tensor::GatherOp::inferResultType(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v34 = v36;
  v35 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v34, v9, &v9[8 * v10 - 8]);
  v11 = a1[2];
  v12 = v11 + v35;
  if (v12 > HIDWORD(v35))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v12, 8);
    v11 = a1[2];
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = a3;
      if (a4)
      {
        v15 = (8 * a4) >> 3;
        do
        {
          v16 = v15 >> 1;
          v17 = &v14[v15 >> 1];
          v19 = *v17;
          v18 = v17 + 1;
          v15 += ~(v15 >> 1);
          if (v19 < i)
          {
            v14 = v18;
          }

          else
          {
            v15 = v16;
          }
        }

        while (v15);
      }

      if (v14 == &a3[a4] || i < *v14)
      {
        v20 = *(a1[1] + 8 * i);
      }

      else
      {
        if (a5)
        {
          continue;
        }

        v20 = 1;
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v34, v20);
    }
  }

  v21 = a1[3];
  v33[6] = v21;
  v22 = a1[4];
  v33[7] = v22;
  v23 = v34;
  *(&v28 + 1) = v35;
  v29 = v34;
  v30 = v35;
  v31 = v33;
  v32 = 0x600000000;
  if (!v35)
  {
    v23 = v33;
  }

  v27 = v21;
  *&v28 = v23;
  v26 = v22;
  v24 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &v28, &v27, &v26);
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  return v24;
}

BOOL mlir::tensor::GatherOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 9);
  v4 = *(v2 + 10);
  v5 = *((*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32) >> 3;
  v8 = *(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((verifyGatherOrScatterDims(v2, v6, v7, *(v8 + 8), *(v8 + 16), v5, "gather", 6, "source", 6) & 1) == 0)
  {
    return 0;
  }

  v9 = mlir::tensor::GatherOp::inferResultType((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 0);
  v10 = 1;
  v11 = mlir::tensor::GatherOp::inferResultType((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 1);
  v12 = *this;
  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v9 != v14 && v11 != v14)
  {
    v28 = "result type mismatch: expected ";
    v29 = 259;
    mlir::Operation::emitOpError(&v32, v12, &v28);
    if (v32)
    {
      v30 = 4;
      v31 = v9;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
      v17 = v34 + 24 * v35;
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++v35;
      if (v32)
      {
        mlir::Diagnostic::operator<<<30ul>(v33, " or its rank-reduced variant ");
        if (v32)
        {
          v30 = 4;
          v31 = v11;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
          v20 = v34 + 24 * v35;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v35;
          if (v32)
          {
            mlir::Diagnostic::operator<<<8ul>(v33, " (got: ");
            if (v32)
            {
              v22 = *this - 16;
              if (!*(*this + 9))
              {
                v22 = 0;
              }

              v23 = *(v22 + 1) & 0xFFFFFFFFFFFFFFF8;
              v30 = 4;
              v31 = v23;
              v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
              v25 = v34 + 24 * v35;
              v26 = *v24;
              *(v25 + 16) = *(v24 + 16);
              *v25 = v26;
              ++v35;
              if (v32)
              {
                mlir::Diagnostic::operator<<<2ul>(v33, ")");
              }
            }
          }
        }
      }
    }

    v10 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
  }

  return v10;
}

uint64_t verifyGatherOrScatterDims(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, const char *a9, uint64_t a10)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 <= a6)
    {
      if (a5 && *(a4 + 8 * a5 - 8) == a3)
      {
        v10 = 8 * a3;
        v11 = a2;
        do
        {
          if (*v11 < 0)
          {
            v21 = 261;
            v19 = a7;
            v20 = a8;
            mlir::Operation::emitOpError(&v22, a1, &v19);
            if (v22)
            {
              mlir::Diagnostic::operator<<<33ul>(v23, "_dims value must be non-negative");
            }

            goto LABEL_23;
          }

          if (*v11 >= a6)
          {
            v18 = 261;
            v16 = a7;
            v17 = a8;
            mlir::Operation::emitOpError(&v22, a1, &v16);
            if (!v22)
            {
              goto LABEL_23;
            }

            mlir::Diagnostic::operator<<<34ul>(v23, "_dims value must be smaller than ");
            goto LABEL_5;
          }

          ++v11;
          v10 -= 8;
        }

        while (v10);
        if (a3 < 2)
        {
          v14 = 1;
          return v14 & 1;
        }

        v12 = a2 + 1;
        v13 = a3 - 1;
        v14 = 1;
        while (*(v12 - 1) < *v12)
        {
          ++v12;
          if (!--v13)
          {
            return v14 & 1;
          }
        }

        v21 = 261;
        v19 = a7;
        v20 = a8;
        mlir::Operation::emitOpError(&v22, a1, &v19);
        if (v22)
        {
          mlir::Diagnostic::operator<<<41ul>(v23, "_dims values must be strictly increasing");
        }
      }

      else
      {
        v21 = 261;
        v19 = a7;
        v20 = a8;
        mlir::Operation::emitOpError(&v22, a1, &v19);
        if (v22)
        {
          mlir::Diagnostic::operator<<<62ul>(v23, "_dims length must match the size of last dimension of indices");
        }
      }
    }

    else
    {
      v18 = 261;
      v16 = a7;
      v17 = a8;
      mlir::Operation::emitOpError(&v22, a1, &v16);
      if (v22)
      {
        mlir::Diagnostic::operator<<<16ul>(v23, "_dims overflow ");
LABEL_5:
        if (v22)
        {
          v21 = 261;
          v19 = a9;
          v20 = a10;
          mlir::Diagnostic::operator<<(v23, &v19);
          if (v22)
          {
            mlir::Diagnostic::operator<<<6ul>(v23, " rank");
          }
        }
      }
    }
  }

  else
  {
    v21 = 261;
    v19 = a7;
    v20 = a8;
    mlir::Operation::emitOpError(&v22, a1, &v19);
    if (v22)
    {
      mlir::Diagnostic::operator<<<24ul>(v23, "_dims must be non-empty");
    }
  }

LABEL_23:
  v14 = v23[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  return v14 & 1;
}

unint64_t mlir::tensor::GatherOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 56);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v2 = 0;
    }
  }

  v5 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v5 = 0;
  }

  result = reshapeConstantSource(v2, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

unint64_t reshapeConstantSource(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v11 = a2;
  if (result)
  {
    Raw = result;
    if (*(result + 24) != 1 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }

    v6 = a2[2];
    if (v6)
    {
      v7 = a2[1];
      v8 = 8 * v6;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if (a4)
    {
      (*(*(result + 16) + 24))();
      v12[0] = Raw;
      v12[1] = 0;
      if (mlir::DenseElementsAttr::AttributeElementIterator::operator*(v12) != a3)
      {
        return 0;
      }
    }

    v9 = mlir::TensorType::operator mlir::ShapedType(&v11);
    if (*(Raw + 8) != v9)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, *(Raw + 32), *(Raw + 40));
    }

    return Raw & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

BOOL mlir::tensor::InsertOp::verify(mlir::tensor::InsertOp *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 1;
  v3 = *((*(*(mlir::tensor::InsertOp::getODSOperands(this, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  mlir::tensor::InsertOp::getODSOperands(this, 2u);
  if (v3 != v4)
  {
    v6 = "incorrect number of indices";
    v7 = 259;
    mlir::Operation::emitOpError(v8, *this, &v6);
    v2 = (v9 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
  }

  return v2;
}

unint64_t mlir::tensor::InsertOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *(*v4 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v7 || *(v4 + 24) != 1)
  {
    return 0;
  }

  (*(*(v4 + 16) + 24))();
  v9[0] = v4;
  v9[1] = 0;
  if (v3 == mlir::DenseElementsAttr::AttributeElementIterator::operator*(v9))
  {
    return v4 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::GenerateOp::reifyResultShapes(uint64_t a1, mlir::Builder *a2, void **a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v6 = *((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v14[0] = v15;
  v14[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v14, v6);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v14);
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  v7 = *((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v7)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = *(*((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * i);
      if (v10 == 0x8000000000000000)
      {
        v11 = v8++;
        v12 = *(*(*a1 + 72) + 32 * v11 + 24) | 4;
      }

      else
      {
        v12 = mlir::Builder::getIndexAttr(a2, v10) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v12;
    }
  }

  return 1;
}

BOOL mlir::tensor::GenerateOp::verify(mlir::tensor::GenerateOp *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v1 + 46) & 0x80) != 0)
  {
    v3 = *(v1 + 68);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(v2 + 8);
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      if (v8 == 0x8000000000000000)
      {
        ++v5;
      }

      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v9 = 1;
  if (v5 != v3)
  {
    v11 = "must have as many index operands as dynamic extents in the result type";
    v12 = 259;
    mlir::Operation::emitError(v13, v1, &v11);
    v9 = (v14 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
  }

  return v9;
}

uint64_t mlir::tensor::GenerateOp::verifyRegions(mlir::tensor::GenerateOp *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (((v1 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40));
  if (*v2 == v2)
  {
    v9 = 0;
  }

  else
  {
    v3 = v2[1];
    v4 = v3 - 8;
    if (!v3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    if (v6 != v5)
    {
      while (*(*(*(*v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v5 += 8;
        if (v5 == v6)
        {
          goto LABEL_7;
        }
      }

      v14 = "all body arguments must be index";
      goto LABEL_21;
    }

LABEL_7:
    v7 = v2[1];
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = ((*(v8 + 56) - *(v8 + 48)) >> 3);
  }

  v10 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 16) != v9)
  {
    v14 = "must have one body argument per input dimension";
LABEL_21:
    v16[0] = v14;
    v17 = 259;
    mlir::Operation::emitError(v18, v1, v16);
    goto LABEL_22;
  }

  v11 = v2[1];
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  if ((*(*(*(*(v12 + 32) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != *(v10 + 24))
  {
    v17 = 259;
    mlir::Operation::emitOpError(v18, v1, v16);
LABEL_22:
    v13 = v19 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
    return v13 & 1;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t *mlir::tensor::RankOp::fold(uint64_t a1)
{
  result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (result)
  {
    v4 = result;
    v5 = v3;
    if ((*(v3 + 16))(v3, result))
    {
      v6 = *(**(***(*a1 + 24) + 32) + 472);
      (*(v5 + 24))(v5, v4);
      return (mlir::IntegerAttr::get(v6, v7) & 0xFFFFFFFFFFFFFFFBLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::tensor::ReshapeOp::verify(mlir::tensor::ReshapeOp *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 72);
  v4 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(v2 + 36))
  {
    v5 = v2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(*v4 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = 3;
  }

  else
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v9 = 1;
  }

  v8 = v4[v9];
LABEL_10:
  v10 = *(*v6 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v12 = 3;
  }

  else
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v12 = 1;
  }

  v11 = v6[v12];
LABEL_16:
  if (v8 != v11)
  {
    v40 = "element types of source and destination tensor types should be the same";
    v41 = 259;
LABEL_31:
    mlir::Operation::emitOpError(v42, v2, &v40);
    v15 = v43 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v42);
    return v15 & 1;
  }

  v13 = **((*(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = 0;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v14 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v14 = 0;
  }

  v38 = v4;
  v39 = v14;
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = v6[2];
    if (v18)
    {
      v19 = v6[1];
      v20 = 8 * v18;
      while (*v19 != 0x8000000000000000)
      {
        ++v19;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
LABEL_37:
      if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v21 = v4[2];
        if (v21)
        {
          v22 = v4[1];
          v23 = 8 * v21;
          while (*v22 != 0x8000000000000000)
          {
            ++v22;
            v23 -= 8;
            if (!v23)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          v24 = mlir::TensorType::operator mlir::ShapedType(&v38);
          v26 = (*(v25 + 24))(v25, v24);
          if (v27)
          {
            v28 = 8 * v27;
            v29 = 1;
            do
            {
              v30 = *v26++;
              v29 *= v30;
              v28 -= 8;
            }

            while (v28);
          }

          else
          {
            v29 = 1;
          }

          v31 = mlir::TensorType::operator mlir::ShapedType(&v39);
          v33 = (*(v32 + 24))(v32, v31);
          if (v34)
          {
            v35 = 8 * v34;
            v36 = 1;
            do
            {
              v37 = *v33++;
              v36 *= v37;
              v35 -= 8;
            }

            while (v35);
          }

          else
          {
            v36 = 1;
          }

          if (v29 != v36)
          {
            v16 = "source and destination tensor should have the same number of elements";
            goto LABEL_30;
          }
        }
      }
    }
  }

  if (v13 == 0x8000000000000000)
  {
    v16 = "cannot use shape operand with dynamic length to reshape to statically-ranked tensor type";
LABEL_30:
    v40 = v16;
    v41 = 259;
    v2 = *this;
    goto LABEL_31;
  }

  if (v13 != v39[2])
  {
    v16 = "length of shape operand differs from the result's tensor rank";
    goto LABEL_30;
  }

LABEL_23:
  v15 = 1;
  return v15 & 1;
}

unint64_t mlir::tensor::ReshapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = **(a2 + 40);
  if (v3)
  {
    v4 = *(*v3 + 136);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v6 = **(a2 + 40);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v7 = 0;
  }

  result = reshapeConstantSource(v6, (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result > 7)
  {
    return result;
  }

  v9 = *a1;
  v10 = *(*a1 + 72);
  v11 = v10[3];
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = v10[3];
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(v12 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v12 + 24 * *(v12 + 16) + 120;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v12 + 16 * v13 + 16;
    }

    if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
    {
      v24 = *(*(v14 + 72) + 24);
      v25 = v10[1];
      if (v25)
      {
        v26 = *v10;
        *v25 = *v10;
        if (v26)
        {
          *(v26 + 8) = v10[1];
        }
      }

      v10[3] = v24;
      v27 = *v24;
      *v10 = *v24;
      v10[1] = v24;
      if (v27)
      {
        *(v27 + 8) = v10;
      }

      *v24 = v10;
      if (*(*a1 + 36))
      {
        return (*a1 - 16) | 4;
      }

      else
      {
        return 4;
      }
    }
  }

LABEL_21:
  if (*(*(*(v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v9 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v15 != v16)
  {
    return 0;
  }

  v19 = *(v15 + 16);
  if (v19 == 1)
  {
    return v11 | 4;
  }

  v20 = v10[7];
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = v22 + 120;
    if (v22 == -120)
    {
      return 0;
    }
  }

  else
  {
    v23 = v20 + 16 * v21 + 16;
  }

  if (*(*(v23 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  if ((*(v23 + 46) & 0x80) != 0)
  {
    v28 = *(v23 + 68);
    v29 = v19 == v28;
    if (v28 >= 1 && v19 == v28)
    {
      v31 = 0;
      v32 = (*(v23 + 72) + 24);
      while (1)
      {
        v33 = *v32;
        ConstantIntValue = mlir::getConstantIntValue(*v32 | 4);
        if (v35)
        {
          v29 = ConstantIntValue == *(*(v15 + 8) + 8 * v31);
        }

        else
        {
          if ((~*(v33 + 8) & 7) != 0)
          {
            v36 = v33;
          }

          else
          {
            v36 = 0;
          }

          if (!v36)
          {
            return 0;
          }

          v37 = *(v36 + 8) & 7;
          if (v37 == 6)
          {
            v38 = v36 + 24 * *(v36 + 16) + 120;
            if (!v38)
            {
              return 0;
            }
          }

          else
          {
            v38 = v36 + 16 * v37 + 16;
          }

          if (*(*(v38 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
          {
            return 0;
          }

          v39 = *(v38 + 72);
          v40 = *(v39 + 24) == v11;
          v41 = mlir::getConstantIntValue(*(v39 + 56) | 4);
          v29 = v40 & v42;
          if (v31 != v41)
          {
            v29 = 0;
          }
        }

        if (++v31 < v19)
        {
          v32 += 4;
          if (v29)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  else
  {
    v29 = v19 == 0;
  }

  if (v29)
  {
    return v11 | 4;
  }

  else
  {
    return 0;
  }
}

void mlir::tensor::ExpandShapeOp::getReassociationIndices(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  *this = this + 16;
  *(this + 1) = 0x400000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(v2 + 8);
    v6 = v5 + 8 * v3;
    do
    {
      v8 = *(*v5 + 8);
      v7 = *(*v5 + 16);
      v15 = v17;
      v16 = 0x200000000;
      if (v7 < 3)
      {
        if (!v7)
        {
          v13 = 0;
          goto LABEL_10;
        }

        v9 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v7, 8);
        v9 = v16;
      }

      v10 = &v8[v7];
      v11 = v15 + 8 * v9;
      do
      {
        v12 = *v8++;
        v14 = v12;
        *v11++ = mlir::IntegerAttr::getInt(&v14);
      }

      while (v8 != v10);
      v13 = v16;
LABEL_10:
      LODWORD(v16) = v13 + v7;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(this, &v15);
      if (v15 != v17)
      {
        free(v15);
      }

      v5 += 8;
    }

    while (v5 != v6);
  }
}

void mlir::tensor::ExpandShapeOp::build(mlir::Builder *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *__src, uint64_t a8)
{
  v29[6] = *MEMORY[0x277D85DE8];
  __srca = v23;
  v22 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&__srca, __src, &__src[8 * a8]);
  mlir::decomposeMixedValues(&__srca, &v24);
  if (__srca != v23)
  {
    free(__srca);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  v15 = v27;
  v16 = v28;
  v17 = v24;
  v18 = v25;
  v20 = a4;
  __srca = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), &v20, 0, &v20, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>((a2 + 16), v15 & 0xFFFFFFFFFFFFFFF9, 0, v15 & 0xFFFFFFFFFFFFFFF9, v16);
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2) = ReassociationIndicesAttribute;
  v19 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v17, v18);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2) + 8) = v19;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 64), &__srca, &v22);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v24 != &v26)
  {
    free(v24);
  }
}

uint64_t mlir::tensor::CollapseShapeOp::getReassociationMaps(mlir::tensor::CollapseShapeOp *this, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  mlir::tensor::CollapseShapeOp::getReassociationIndices(&v8, a2);
  mlir::convertReassociationIndicesToExprs(v3, v8, v9, &v10);
  v5 = &v7;
  v6 = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(&v5, &v10);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,2u>::~SmallVector(&v10);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v8);
  mlir::getSymbolLessAffineMaps(v5, v6, this);
  return llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,4u>::~SmallVector(&v5);
}

void mlir::tensor::CollapseShapeOp::getReassociationIndices(mlir::tensor::CollapseShapeOp *this, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  *this = this + 16;
  *(this + 1) = 0x400000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(v2 + 8);
    v6 = v5 + 8 * v3;
    do
    {
      v8 = *(*v5 + 8);
      v7 = *(*v5 + 16);
      v15 = v17;
      v16 = 0x200000000;
      if (v7 < 3)
      {
        if (!v7)
        {
          v13 = 0;
          goto LABEL_10;
        }

        v9 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v7, 8);
        v9 = v16;
      }

      v10 = &v8[v7];
      v11 = v15 + 8 * v9;
      do
      {
        v12 = *v8++;
        v14 = v12;
        *v11++ = mlir::IntegerAttr::getInt(&v14);
      }

      while (v8 != v10);
      v13 = v16;
LABEL_10:
      LODWORD(v16) = v13 + v7;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(this, &v15);
      if (v15 != v17)
      {
        free(v15);
      }

      v5 += 8;
    }

    while (v5 != v6);
  }
}

uint64_t mlir::tensor::ExpandShapeOp::getReassociationMaps(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v8, a2);
  mlir::convertReassociationIndicesToExprs(v3, v8, v9, &v10);
  v5 = &v7;
  v6 = 0x400000000;
  if (v11)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(&v5, &v10);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,2u>::~SmallVector(&v10);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v8);
  mlir::getSymbolLessAffineMaps(v5, v6, this);
  return llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,4u>::~SmallVector(&v5);
}

uint64_t mlir::tensor::CollapseShapeOp::inferCollapsedType(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v23 = v25;
  v24 = 0x400000000;
  if (a3 < 5)
  {
    if (!a3)
    {
      v16 = 0;
      v15 = v25;
      goto LABEL_17;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, a3, 8);
  }

  v7 = 0;
  v8 = a2 + 8 * a3;
  do
  {
    v9 = *(*a2 + 8);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v6 + 8 * v7);
      while (*v11 != 0x8000000000000000)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      if (v10)
      {
        v12 = 0x8000000000000000;
        goto LABEL_15;
      }

LABEL_13:
      v13 = v7;
      v14 = *(*a2 + 8);
      v12 = 1;
      do
      {
        v12 *= *(v6 + 8 * v13++);
        --v14;
      }

      while (v14);
    }

    else
    {
      v12 = 1;
    }

LABEL_15:
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v23, v12);
    v7 += v9;
    a2 += 8;
  }

  while (a2 != v8);
  v15 = v23;
  v16 = v24;
LABEL_17:
  v17 = *(a1 + 24);
  *&v22 = v15;
  *(&v22 + 1) = v16;
  v20 = 0;
  v21 = v17;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v17 + 32), &v22, &v21, &v20);
  if (v23 != v25)
  {
    free(v23);
  }

  return v18;
}

BOOL mlir::tensor::ExpandShapeOp::verify(mlir::tensor::ExpandShapeOp **this)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *this;
  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  if (*(v2 + 9))
  {
    v4 = v2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 1) & 0xFFFFFFFFFFFFFFF8;
  v6 = v2 + 64;
  v7 = (*(v2 + 11) >> 23) & 1;
  v8 = *(v2 + 2 * v7 + 9);
  v9 = *(v8 + 32);
  v10 = v9 >> 3;
  if (v9 >> 3 != *(v5 + 16))
  {
    v78 = "expected number of static shape dims to be equal to the output rank (";
    v81 = 259;
    mlir::Operation::emitOpError(&v82, v2, &v78);
    if (v82)
    {
      v15 = *(v5 + 16);
      LODWORD(v75) = 2;
      v76 = v15;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v84, &v75, 1);
      v17 = v84 + 24 * v85;
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++v85;
      if (v82)
      {
        mlir::Diagnostic::operator<<<13ul>(v83, ") but found ");
      }
    }

    v75 = (*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9) + 32) >> 3);
    v19 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v82, &v75);
    v20 = v19;
    if (*v19)
    {
      mlir::Diagnostic::operator<<<16ul>((v19 + 1), " inputs instead");
    }

    v21 = (v20[25] & 1) == 0;
    goto LABEL_45;
  }

  v11 = *(*(ODSOperands + 24) + 8);
  v12 = *(v8 + 24);
  mlir::tensor::ExpandShapeOp::getODSOperands(v2, 1u);
  if (v9 >= 8)
  {
    v14 = 0;
    v22 = 8 * v10;
    do
    {
      v23 = *v12++;
      if (v23 == 0x8000000000000000)
      {
        ++v14;
      }

      v22 -= 8;
    }

    while (v22);
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v14)
  {
    v78 = "mismatch in dynamic dims in output_shape and static_output_shape: static_output_shape has ";
    v81 = 259;
    mlir::Operation::emitOpError(&v82, v2, &v78);
    v30 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
    v31 = *(v30 + 32);
    if (v31 >= 8)
    {
      v32 = 0;
      v41 = *(v30 + 24);
      v42 = 8 * (v31 >> 3);
      do
      {
        v43 = *v41++;
        if (v43 == 0x8000000000000000)
        {
          ++v32;
        }

        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v32 = 0;
    }

    if (v82)
    {
      LODWORD(v75) = 2;
      v76 = v32;
      v44 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v84, &v75, 1);
      v45 = v84 + 24 * v85;
      v46 = *v44;
      *(v45 + 16) = *(v44 + 16);
      *v45 = v46;
      ++v85;
      if (v82)
      {
        mlir::Diagnostic::operator<<<38ul>(v83, " dynamic dims while output_shape has ");
      }
    }

    mlir::tensor::ExpandShapeOp::getODSOperands(*this, 1u);
    v75 = v47;
    v48 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v82, &v75);
    v49 = v48;
    if (*v48)
    {
      mlir::Diagnostic::operator<<<8ul>((v48 + 1), " values");
    }

    v21 = (v49[25] & 1) == 0;
LABEL_45:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
    return v21;
  }

  v24 = v11 & 0xFFFFFFFFFFFFFFF8;
  v66 = v11 & 0xFFFFFFFFFFFFFFF8;
  v73 = v11 & 0xFFFFFFFFFFFFFFF8;
  v74 = v2;
  v25 = *((v11 & 0xFFFFFFFFFFFFFFF8) + 16);
  v71 = v25;
  v72 = v9 >> 3;
  if (v10 < v25)
  {
    v75 = "expected the expanded type, ";
    v77 = 259;
    mlir::Operation::emitOpError(&v82, v2, &v75);
    if (v82)
    {
      LODWORD(v78) = 4;
      v79 = v5;
      v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v84, &v78, 1);
      v27 = v84 + 24 * v85;
      v28 = *v26;
      *(v27 + 16) = *(v26 + 16);
      *v27 = v28;
      ++v85;
      if (v82)
      {
        mlir::Diagnostic::operator<<<34ul>(v83, " to have a higher (or same) rank ");
        if (v82)
        {
          mlir::Diagnostic::operator<<<26ul>(v83, "than the collapsed type, ");
          if (v82)
          {
            mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(v83, &v73);
            if (v82)
            {
              v81 = 264;
              LOBYTE(v78) = 46;
              mlir::Diagnostic::operator<<(v83, &v78);
            }
          }
        }
      }
    }

    v29 = v86;
    goto LABEL_52;
  }

  if (v25 != *(*&v6[16 * v7] + 16))
  {
    v78 = "expected collapsed rank (";
    v81 = 259;
    mlir::Operation::emitOpError(&v82, v2, &v78);
    v51 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v82, &v71);
    v52 = v51;
    if (*v51)
    {
      mlir::Diagnostic::operator<<<46ul>((v51 + 1), ") to equal the number of reassociation maps (");
    }

    v75 = *(*&v6[16 * ((*(v2 + 11) >> 23) & 1)] + 16);
    v53 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v52, &v75);
    v54 = v53;
    if (*v53)
    {
      mlir::Diagnostic::operator<<<3ul>((v53 + 1), ").");
    }

    v29 = *(v54 + 200);
LABEL_52:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
    if (v29)
    {
      return 0;
    }

    goto LABEL_66;
  }

  mlir::tensor::ExpandShapeOp::getReassociationMaps(&v78, v2);
  v33 = v78;
  if (v79)
  {
    v34 = 0;
    v35 = 8 * v79;
    while (**(v78 + v34) == v10)
    {
      ++v34;
      v35 -= 8;
      if (!v35)
      {
        goto LABEL_33;
      }
    }

    v69[0] = "expected reassociation map #";
    v70 = 259;
    mlir::Operation::emitOpError(&v82, v2, v69);
    v68 = v34;
    v57 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v82, &v68);
    v58 = v57;
    if (*v57)
    {
      mlir::Diagnostic::operator<<<43ul>((v57 + 1), " to have size equal to the expanded rank (");
    }

    v59 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v58, &v72);
    v60 = v59;
    if (*v59)
    {
      mlir::Diagnostic::operator<<<15ul>((v59 + 1), "), but it is  ");
    }

    v67 = *v33[v34];
    v61 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v60, &v67);
    v56 = v61;
    if (*v61)
    {
      v77 = 264;
      LOBYTE(v75) = 46;
      mlir::Diagnostic::operator<<((v61 + 1), &v75);
    }
  }

  else
  {
LABEL_33:
    LODWORD(v69[0]) = 0;
    if (mlir::isReassociationValid(v78, v79, v69))
    {
      v75 = &v74;
      v36 = *(v24 + 8);
      v37 = *(v24 + 16);
      v38 = *(v5 + 8);
      v39 = *(v5 + 16);
      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v82, v2);
      v40 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v75, v36, v37, v38, v39, v82, v83[0]);
      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v82);
      goto LABEL_63;
    }

    v75 = "expected reassociation map #";
    v77 = 259;
    mlir::Operation::emitOpError(&v82, v2, &v75);
    v55 = mlir::InFlightDiagnostic::operator<<<int &>(&v82, v69);
    v56 = v55;
    if (*v55)
    {
      mlir::Diagnostic::operator<<<29ul>((v55 + 1), " to be valid and contiguous.");
    }
  }

  v40 = *(v56 + 200) ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
LABEL_63:
  if (v78 != v80)
  {
    free(v78);
  }

  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_66:
  mlir::tensor::ExpandShapeOp::getReassociationMaps(&v78, v2);
  v62 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v5, v78, v79);
  if (mlir::tensor::isSameTypeWithoutEncoding(v24, v62))
  {
    v21 = 1;
  }

  else
  {
    v75 = "expected collapsed type to be ";
    v77 = 259;
    mlir::Operation::emitOpError(&v82, v2, &v75);
    if (v82)
    {
      LODWORD(v69[0]) = 4;
      v69[1] = v62;
      v63 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v84, v69, 1);
      v64 = v84 + 24 * v85;
      v65 = *v63;
      *(v64 + 16) = *(v63 + 16);
      *v64 = v65;
      ++v85;
      if (v82)
      {
        mlir::Diagnostic::operator<<<11ul>(v83, ", but got ");
        if (v82)
        {
          mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(v83, &v66);
        }
      }
    }

    v21 = (v86 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
  }

  if (v78 != v80)
  {
    free(v78);
  }

  return v21;
}