uint64_t mlir::Op<mlir::LLVM::USubWithOverflowOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsElementType>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 2) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps1(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && (*(a1 + 36) ? (v5 = a1 - 16) : (v5 = 0), mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6)))
  {
    v7 = mlir::OpTrait::impl::verifySameOperandsElementType(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAShrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPAShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPAndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFAddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFDivOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulAddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFMulAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), 4u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFMulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFNegOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFNegOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPExtOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFPExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPToUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFPTruncOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFRemOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFSubOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPFmaOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPFmaOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), 4u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPIntToPtrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPIntToPtrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLShrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPLShrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPLoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMergeMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPMergeMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPMulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPOrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPPtrToIntOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPPtrToIntOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps19(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceAndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceAndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFAddOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceFAddOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps20(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceFMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps20(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceFMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps20(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceFMulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceFMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps20(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps18(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceMulOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceMulOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceOrOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceOrOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceSMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceUMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPReduceXorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPReduceXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSDivOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSExtOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSIToFPOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSRemOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSRemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSelectMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSelectMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPShlOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPShlOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStoreOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedLoadOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPStridedLoadOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps3(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPStridedStoreOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPStridedStoreOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPSubOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPSubOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPTruncOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPTruncOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUDivOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPUDivOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUIToFPOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPUIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMaxOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPUMaxOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPUMinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPUMinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPURemOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPURemOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPXorOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPXorOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<4u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 4) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VPZExtOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::VPZExtOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps17(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaCopyOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::VaCopyOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 56));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 1uLL)
  {
    *v12 = 28532;
    *(v11 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v11, "to", 2uLL);
  }

  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 72) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v29, 0);
  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++*(v18 + 4);
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v22 = *(a2 + 68);
    if (v22)
    {
      v23 = *(a2 + 72);
      (*(*a3 + 32))(a3, *(*(v23 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v22 != 1)
      {
        v24 = v22 - 1;
        v25 = (v23 + 56);
        do
        {
          v26 = (*(*a3 + 16))(a3);
          v27 = *(v26 + 4);
          if (*(v26 + 3) - v27 > 1uLL)
          {
            *v27 = 8236;
            *(v26 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v26, ", ", 2uLL);
          }

          v28 = *v25;
          v25 += 4;
          (*(*a3 + 32))(a3, *(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
          --v24;
        }

        while (v24);
      }
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaEndOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::VaEndOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, 0);
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VaStartOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::VaStartOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v16, 0);
  v10 = (*(*a3 + 16))(a3);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, ":", 1uLL);
  }

  else
  {
    *v13 = 58;
    ++*(v12 + 4);
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (v15 >= *(v14 + 3))
  {
    llvm::raw_ostream::write(v14, 32);
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::VarAnnotation>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

uint64_t mlir::Op<mlir::LLVM::VarAnnotation,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(mlir::Operation *a1, mlir::Operation *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps5(a1, (*(*(*(a1 + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), 3u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 4u))
  {
    v5 = *(a1 + 9);
    v6 = *(v5[7] + 8);
    v7 = *(v5[11] + 8);
    if ((v7 ^ v6) > 7 || (*(v5[19] + 8) ^ v7 | *(v5[19] + 8) ^ v6) >= 8)
    {
      v10 = "failed to verify that all of {annotation, fileName, attr} have same type";
      v11 = 259;
      mlir::Operation::emitOpError(v12, a1, &v10);
      v8 = v13 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_compressstore>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::masked_compressstore,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[4] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 4);
  return v5 == a2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_expandload>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::masked_expandload,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps4(a1, *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u))
  {
    if (*(a1 + 36))
    {
      v5 = a1 - 16;
    }

    else
    {
      v5 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6E656D6E67696C61 ? (v4 = *(a3 + 8) == 116) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == 0x6E656D6E67696C61 && v6 == 116)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "alignment";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "alignment";
  v10[1] = 9;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_gather>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::masked_gather>::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[7] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[6] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 6);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v9 = *(a2 + 72);
    v10 = *(a2 + 68);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v24 = v9;
  v25 = v10;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a3, &v24);
  v24 = v26;
  v25 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, v25);
  v12 = (*(*a3 + 16))(a3);
  v13 = *(v12 + 4);
  if (v13 >= *(v12 + 3))
  {
    llvm::raw_ostream::write(v12, 32);
  }

  else
  {
    *(v12 + 4) = v13 + 1;
    *v13 = 32;
  }

  v14 = (*(*a3 + 16))(a3);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++*(v14 + 4);
  }

  v16 = (*(*a3 + 16))(a3);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v18 = *(a2 + 72);
    v19 = *(a2 + 68);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v23[0] = v18;
  v23[1] = 0;
  v23[2] = v18;
  v23[3] = v19;
  v20 = *(a2 + 36);
  v21 = a2 - 16;
  if (!v20)
  {
    v21 = 0;
  }

  v22[0] = v21;
  v22[1] = 0;
  v22[2] = v21;
  v22[3] = v20;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a3, v23, v22);
  if (v24 != v26)
  {
    free(v24);
  }
}

uint64_t mlir::Op<mlir::LLVM::masked_gather,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyAtLeastNOperands(a1, 2) & 1) == 0)
  {
    goto LABEL_20;
  }

  v33[0] = a1;
  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v34[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v5, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v34) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps19(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), 0))
    {
      goto LABEL_20;
    }

    v6 = 1;
    ODSOperands = mlir::LLVM::masked_gather::getODSOperands(v33, 1u);
    if (v8)
    {
      v9 = v8;
      v10 = ODSOperands + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*v10 + 8) & 0xFFFFFFFFFFFFFFF8), v6))
      {
        ++v6;
        v10 += 32;
        if (!--v9)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_20;
    }

LABEL_12:
    v11 = mlir::LLVM::masked_gather::getODSOperands(v33, 2u);
    if (v12)
    {
      v13 = v12;
      v14 = v11 + 24;
      while (mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps13(a1, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), v6))
      {
        ++v6;
        v14 += 32;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_20;
    }

LABEL_16:
    v15 = *(a1 + 36) ? a1 - 16 : 0;
    if (!mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
LABEL_20:
      v16 = 0;
      return v16 & 1;
    }
  }

  else
  {
    v31[0] = "requires attribute 'alignment'";
    v32 = 259;
    mlir::Operation::emitOpError(v34, a1, v31);
    v18 = v37;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
    if (v18)
    {
      goto LABEL_20;
    }
  }

  v19 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(*v19 + 136);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v22 = 24;
  }

  else
  {
    if (v20 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id && v20 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
    {
      v23 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_32;
    }

    v22 = 8;
  }

  v23 = *(v19 + v22);
LABEL_32:
  if (*(a1 + 36))
  {
    v24 = a1 - 16;
  }

  else
  {
    v24 = 0;
  }

  VectorNumElements = mlir::LLVM::getVectorNumElements((*(v24 + 8) & 0xFFFFFFFFFFFFFFF8));
  VectorType = mlir::LLVM::getVectorType(v23, VectorNumElements, BYTE4(VectorNumElements) & 1);
  if (v19 == VectorType)
  {
    v16 = 1;
  }

  else
  {
    v27 = VectorType;
    v31[0] = "expected operand #1 type to be ";
    v32 = 259;
    mlir::Operation::emitOpError(v34, a1, v31);
    if (v34[0])
    {
      LODWORD(v33[0]) = 4;
      v33[1] = v27;
      v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, v33, 1);
      v29 = v35 + 24 * v36;
      v30 = *v28;
      *(v29 + 16) = *(v28 + 16);
      *v29 = v30;
      ++v36;
    }

    v16 = v37 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
  }

  return v16 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6E656D6E67696C61 ? (v4 = *(a3 + 8) == 116) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24) == 9)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == 0x6E656D6E67696C61 && v6 == 116)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          v8 = a4;
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

      *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) = v8;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "alignment";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    (a5)(&v18, a6, a2, a3);
    if (v18)
    {
      mlir::Diagnostic::operator<<<42ul>(v19, "expected DictionaryAttr to set properties");
    }

LABEL_4:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    return 0;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "alignment", 9uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        a5(&v18, a6);
        if (v18)
        {
          if (v18)
          {
            v16 = 0;
            v17 = v12;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
            v14 = v20 + 24 * v21;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v21;
          }
        }

        goto LABEL_4;
      }

      *a3 = v12;
    }
  }

  return 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v12 = v14;
  v13 = 0x300000000;
  if (!v4)
  {
    return 0;
  }

  v5 = *(**v4 + 32);
  v11 = 261;
  v10[0] = "alignment";
  v10[1] = 9;
  v6 = mlir::StringAttr::get(v5, v10, a3);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v12, v6, v4);
  v7 = v12;
  if (v13)
  {
    v8 = mlir::DictionaryAttr::get(v3, v12, v13);
    v7 = v12;
  }

  else
  {
    v8 = 0;
  }

  if (v7 != v14)
  {
    free(v7);
  }

  return v8;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::masked_scatter>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::LLVM::masked_scatter>::readProperties(uint64_t a1, void *a2)
{
  v2 = a2[32];
  if (!v2)
  {
    operator new();
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v2);
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<3u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<3u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[5] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 5);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = (*(*a3 + 16))(a3);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 24));
  v9 = (*(*a3 + 16))(a3);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ",", 1uLL);
  }

  else
  {
    *v10 = 44;
    ++*(v9 + 4);
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 56));
  v13 = (*(*a3 + 16))(a3);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ",", 1uLL);
  }

  else
  {
    *v14 = 44;
    ++*(v13 + 4);
  }

  v15 = (*(*a3 + 16))(a3);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  (*(*a3 + 160))(a3, *(*(a2 + 9) + 88));
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v34, 0);
  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = (*(*a3 + 16))(a3);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ",", 1uLL);
  }

  else
  {
    *v25 = 44;
    ++*(v24 + 4);
  }

  v26 = (*(*a3 + 16))(a3);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = (*(*a3 + 16))(a3);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a3 + 16))(a3);
  v31 = *(v30 + 4);
  if (*(v30 + 3) - v31 > 3uLL)
  {
    *v31 = 1869901417;
    *(v30 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v30, "into", 4uLL);
  }

  v32 = (*(*a3 + 16))(a3);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  (*(*a3 + 32))(a3, *(*(*(a2 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::Op<mlir::LLVM::masked_scatter,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) == 0 || (mlir::OpTrait::impl::verifyZeroResults(a1, v3) & 1) == 0 || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || (mlir::OpTrait::impl::verifyNOperands(a1, 3) & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  if (v5)
  {
    v25[0] = a1;
    if (!mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(v5, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::LLVM::__mlir_ods_local_attr_constraint_LLVMIntrinsicOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps19(a1, (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u) || !mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps12(a1, (*(*(*(a1 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21[0] = "requires attribute 'alignment'";
    v22 = 259;
    mlir::Operation::emitOpError(v25, a1, v21);
    v8 = v28;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
    if (v8)
    {
LABEL_10:
      v6 = 0;
      return v6 & 1;
    }
  }

  v9 = *(a1 + 72);
  v10 = *(*(v9 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(*v10 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v13 = 24;
  }

  else
  {
    if (v11 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMScalableVectorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::LLVM::LLVMFixedVectorType,void>::id)
    {
      v14 = (*(*(v9 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_22;
    }

    v13 = 8;
  }

  v14 = *(v10 + v13);
LABEL_22:
  VectorNumElements = mlir::LLVM::getVectorNumElements((*(*(v9 + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  VectorType = mlir::LLVM::getVectorType(v14, VectorNumElements, BYTE4(VectorNumElements) & 1);
  if (v10 == VectorType)
  {
    v6 = 1;
  }

  else
  {
    v17 = VectorType;
    v21[0] = "expected operand #2 type to be ";
    v22 = 259;
    mlir::Operation::emitOpError(v25, a1, v21);
    if (v25[0])
    {
      v23 = 4;
      v24 = v17;
      v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v23, 1);
      v19 = v26 + 24 * v27;
      v20 = *v18;
      *(v19 + 16) = *(v18 + 16);
      *v19 = v20;
      ++v27;
    }

    v6 = v28 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_deinterleave2>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[8] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 8);
  return v5 == a2;
}

BOOL mlir::Op<mlir::LLVM::vector_deinterleave2,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(uint64_t a1, mlir::Operation *a2)
{
  if ((mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps14(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    if (*(a1 + 36))
    {
      v6 = a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    return mlir::LLVM::__mlir_ods_local_type_constraint_LLVMIntrinsicOps2(a1, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::LLVM::vector_extract,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::LLVM::vector_extract>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 28528 ? (v4 = *(a3 + 2) == 115) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}