const char *llvm::detail::getTypeNameImpl<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::CastOpInterface::Trait<Empty>]";
  v6 = 97;
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::BitcastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::BitcastOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::CeilDivSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.ceildivsi";
      v22 = 15;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::CeilDivSIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[16] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[15] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 15);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::CeilDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::CeilDivSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CeilDivUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CeilDivUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivUIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::CeilDivUIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.ceildivui";
      v22 = 15;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CeilDivUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::CeilDivUIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::CeilDivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::CeilDivUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
    if (*a3)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

__n128 mlir::RegisteredOperationName::Model<mlir::arith::CmpFOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::CmpFOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 16);

  return v6(a3, v5);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::CmpFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CmpFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::CmpFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.cmpf";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CmpFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::CmpFOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameTypeOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameTypeOperands>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[17] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 17);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::CmpFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::CmpFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::CmpIOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::CmpIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::CmpIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CmpIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::CmpIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.cmpi";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::CmpIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::CmpIOpGenericAdaptorBase::CmpIOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::CmpIOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameTypeOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameTypeOperands>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[17] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 17);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::CmpIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameTypeOperands,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::CmpIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::arith::ConstantOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ConstantOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ConstantOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::ConstantOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.constant";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ConstantOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  mlir::arith::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v11, a2);
  v12 = a3;
  v13 = a4;
  ValueAttr = mlir::arith::ConstantOp::getValueAttr(&v10);
  if (ValueAttr < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, ValueAttr & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[14] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ConstantOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::ConstantOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyZeroOperands(a1, v5) & 1) != 0 && (v8 = a1, (mlir::arith::ConstantOp::verifyInvariantsImpl(&v8)))
  {
    v8 = a1;
    v6 = mlir::arith::ConstantOp::verify(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::DivFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::DivFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::DivFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::DivFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.divf";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::DivFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::DivFOpGenericAdaptorBase::DivFOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::DivFOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[18] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[17] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 17);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::DivFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::DivFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::DivSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::DivSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::DivSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::DivSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.divsi";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::DivSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::DivSIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::DivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::DivSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::DivUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::DivUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::DivUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::DivUIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::DivUIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.divui";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::DivUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::DivUIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::DivUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::DivUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ExtFOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ExtFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::ExtFOpGenericAdaptorBase::ExtFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::ExtFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v10 > 7;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[17] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 17);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ExtFOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::ExtFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(void ***a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v11 = a1, (mlir::arith::ExtFOp::verifyInvariantsImpl(&v11)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && (mlir::impl::verifyCastInterfaceOp(a1, v7) & 1) != 0 && mlir::OpTrait::impl::verifyElementwise(a1, v8))
  {
    v11 = a1;
    v9 = mlir::arith::ExtFOp::verify(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ExtSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ExtSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::ExtSIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>(uint64_t a1)
{
  v7[17] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[16] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 16);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ExtSIOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::ExtSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(void ***a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v11 = a1, (mlir::arith::ExtSIOp::verifyInvariantsImpl(&v11)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && (mlir::impl::verifyCastInterfaceOp(a1, v7) & 1) != 0 && mlir::OpTrait::impl::verifyElementwise(a1, v8))
  {
    v11 = a1;
    v9 = mlir::arith::ExtSIOp::verify(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ExtUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ExtUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ExtUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::ExtUIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ExtUIOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::ExtUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(void ***a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v11 = a1, (mlir::arith::ExtUIOp::verifyInvariantsImpl(&v11)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && (mlir::impl::verifyCastInterfaceOp(a1, v7) & 1) != 0 && mlir::OpTrait::impl::verifyElementwise(a1, v8))
  {
    v11 = a1;
    v9 = mlir::arith::ExtUIOp::verify(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::FPToSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::FPToSIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::FPToSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::FPToSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FPToUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::FPToUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::FPToUIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::FPToUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::FPToUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::FloorDivSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::FloorDivSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::FloorDivSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::FloorDivSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::FloorDivSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.floordivsi";
      v22 = 16;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::FloorDivSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::FloorDivSIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[17] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[16] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 16);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::FloorDivSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::FloorDivSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::IndexCastOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::IndexCastOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::IndexCastOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::IndexCastOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::IndexCastOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::IndexCastUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::IndexCastUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::IndexCastUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::IndexCastUIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::IndexCastUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::IndexCastUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaxNumFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MaxNumFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaxNumFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MaxNumFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.maxnumf";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaxNumFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::MaxNumFOpGenericAdaptorBase::MaxNumFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::MaxNumFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MaxNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MaxNumFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::MaxSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MaxSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaxSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MaxSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.maxsi";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaxSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::MaxSIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v15 > 7;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[18] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[17] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 17);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MaxSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MaxSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaxUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::MaxUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MaxUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaxUIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MaxUIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.maxui";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaxUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::MaxUIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MaxUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MaxUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::MaximumFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MaximumFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaximumFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MaximumFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.maximumf";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MaximumFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::MaximumFOpGenericAdaptorBase::MaximumFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::MaximumFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MaximumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MaximumFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinNumFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MinNumFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinNumFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MinNumFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.minnumf";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinNumFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::MinNumFOpGenericAdaptorBase::MinNumFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::MinNumFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MinNumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MinNumFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::MinSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MinSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MinSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.minsi";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::MinSIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MinSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MinSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::MinUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MinUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinUIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MinUIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.minui";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::MinUIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MinUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MinUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::MinimumFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MinimumFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinimumFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MinimumFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.minimumf";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MinimumFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::MinimumFOpGenericAdaptorBase::MinimumFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::MinimumFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MinimumFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MinimumFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MulFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MulFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.mulf";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::MulFOpGenericAdaptorBase::MulFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::MulFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MulFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MulFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulIOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::MulIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::MulIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MulIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.muli";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::MulIOpGenericAdaptorBase::MulIOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::MulIOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && a2 - 16 != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v10 > 7;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[21] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[17] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[18] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[19] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[20] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 20);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MulIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::OpAsmOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MulIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulSIExtendedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulSIExtendedOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MulSIExtendedOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.mulsi_extended";
      v22 = 20;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulSIExtendedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::MulSIExtendedOp::fold(&v17, v18, a5);
  v15 = *(a5 + 8);
  if (((v14 & 1) == 0 || !v15) && !v15 && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v14;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>(uint64_t a1)
{
  v7[16] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[15] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 15);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MulSIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MulSIExtendedOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::MulUIExtendedOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulUIExtendedOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::MulUIExtendedOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.mului_extended";
      v22 = 20;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::MulUIExtendedOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::MulUIExtendedOp::fold(&v17, v18, a5);
  v15 = *(a5 + 8);
  if (((v14 & 1) == 0 || !v15) && !v15 && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v14;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::MulUIExtendedOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsCommutative,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait,mlir::OpAsmOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::MulUIExtendedOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::NegFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::NegFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::NegFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::NegFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.negf";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::NegFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::NegFOpGenericAdaptorBase::NegFOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::NegFOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  v8[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v8[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v8[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v8[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v8[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v8[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v8[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[7] = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v8[10] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[11] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v8[12] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v8[13] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v8[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v8[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v8[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v8[17] = v3;
  do
  {
    v5 = v8[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 17);
  return v5 == a2;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::NegFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::NegFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::OrIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::OrIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.ori";
      v22 = 9;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::OrIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v21 = a2;
  v22[0] = v9;
  v22[1] = v10;
  v23 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v24 = v13;
  v25 = v12;
  v26 = a3;
  v27 = a4;
  v14 = mlir::arith::OrIOp::fold(&v21, v22);
  v15 = v14;
  if (v14 < 8 || a2 - 16 == (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    if (*(a5 + 8))
    {
      return v15 > 7;
    }

    if (mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
    {
      return 1;
    }

    if (*(a5 + 8))
    {
      return v15 > 7;
    }

    v20 = mlir::OpTrait::impl::foldIdempotent(a2, v19);
    if (v20 < 8)
    {
      return v15 > 7;
    }

    v17 = v20;
    if (a2 - 16 == (v20 & ((v20 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v16 = a5;
  }

  else
  {
    v16 = a5;
    v17 = v15;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(v16, v17);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::OrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::OpTrait::IsIdempotent,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::OrIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::RemFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::RemFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.remf";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::RemFOpGenericAdaptorBase::RemFOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::RemFOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::RemFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::RemFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::RemSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.remsi";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::RemSIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::RemSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::RemSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::RemUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::RemUIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.remui";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::RemUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::RemUIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::RemUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::RemUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SIToFPOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SIToFPOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::SIToFPOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::SIToFPOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::ShLIOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::ShLIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.shli";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShLIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::ShLIOpGenericAdaptorBase::ShLIOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::ShLIOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
{
  v7[19] = *MEMORY[0x277D85DE8];
  v7[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v7[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v7[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v7[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID();
  v7[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v7[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v7[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[10] = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferIntRangeInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[11] = mlir::detail::TypeIDResolver<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithIntegerOverflowFlagsInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[12] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID();
  v7[13] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v7[14] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v7[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v7[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v7[17] = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v2 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  v7[18] = v2;
  do
  {
    v4 = v7[v3];
    if (v4 == a1)
    {
      break;
    }
  }

  while (v3++ != 18);
  return v4 == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ShLIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ShLIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRSIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::ShRSIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.shrsi";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRSIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::ShRSIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ShRSIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ShRSIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::ShRUIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::ShRUIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.shrui";
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::ShRUIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v12 = mlir::arith::ShRUIOp::fold(&v14, v15);
  if (v12 < 8 || a2 - 16 == (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v12 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v12);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::ShRUIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::ShRUIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubFOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::FastMathFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::SubFOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.subf";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubFOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::SubFOpGenericAdaptorBase::SubFOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::SubFOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SubFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::SubFOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *a3 = *a4;
    if (v4)
    {
      return;
    }
  }

  else
  {
    *a3 = 0;
  }

  *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
}

void mlir::RegisteredOperationName::Model<mlir::arith::SubIOp>::populateDefaultProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*a3)
  {
    *a3 = mlir::arith::IntegerOverflowFlagsAttr::get(*(***(a2 + 8) + 32), 0);
  }
}

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::SubIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.subi";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SubIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = a2;
  mlir::arith::detail::SubIOpGenericAdaptorBase::SubIOpGenericAdaptorBase(v12, a2);
  v13 = a3;
  v14 = a4;
  v9 = mlir::arith::SubIOp::fold(&v11, v12);
  if (v9 < 8 || a2 - 16 == (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    return v9 > 7;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
  return 1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::SubIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::arith::ArithIntegerOverflowFlagsInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::SubIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

void mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
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

__n128 mlir::RegisteredOperationName::Model<mlir::arith::TruncFOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  (*(*a3 + 24))(a3, *(v4 + 64));
  v5 = *(v4 + 72);
  v6 = *(*a3 + 24);

  return v6(a3, v5);
}

uint64_t llvm::getTypeName<mlir::arith::ArithRoundingModeInterface>()
{
  if ((atomic_load_explicit(&qword_27FC1FDC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FDC0))
  {
    qword_27FC1FDB0 = llvm::detail::getTypeNameImpl<mlir::arith::ArithRoundingModeInterface>();
    *algn_27FC1FDB8 = v1;
    __cxa_guard_release(&qword_27FC1FDC0);
  }

  return qword_27FC1FDB0;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithRoundingModeInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithRoundingModeInterface]";
  v6 = 101;
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::TruncFOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, mlir::arith::TruncFOp *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = a2;
  mlir::arith::detail::TruncFOpGenericAdaptorBase::TruncFOpGenericAdaptorBase(v13, a2);
  v14 = a3;
  v15 = a4;
  v9 = mlir::arith::TruncFOp::fold(&v12, v13);
  v10 = v9;
  if (v9 >= 8 && (a2 - 16) != (v9 & ((v9 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v9);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v10 > 7;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v10[19] = *MEMORY[0x277D85DE8];
  v10[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v10[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v10[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v10[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v10[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID();
  v10[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v10[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[7] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[8] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v10[9] = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[10] = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID();
  if ((atomic_load_explicit(&qword_27FC1FDD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FDD0))
  {
    v8 = llvm::getTypeName<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>>();
    qword_27FC1FDC8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v8, v9);
    __cxa_guard_release(&qword_27FC1FDD0);
  }

  v10[11] = qword_27FC1FDC8;
  v10[12] = mlir::detail::TypeIDResolver<mlir::arith::ArithFastMathInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithFastMathInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[13] = mlir::detail::TypeIDResolver<mlir::CastOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CastOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[14] = mlir::detail::TypeIDResolver<mlir::VectorUnrollOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::VectorUnrollOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v10[15] = mlir::detail::TypeIDResolver<mlir::OpTrait::Elementwise<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Elementwise>(void)::Empty>,void>::resolveTypeID();
  v10[16] = mlir::detail::TypeIDResolver<mlir::OpTrait::Scalarizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Scalarizable>(void)::Empty>,void>::resolveTypeID();
  v10[17] = mlir::detail::TypeIDResolver<mlir::OpTrait::Vectorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Vectorizable>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::Tensorizable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Tensorizable>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v10[18] = v3;
  do
  {
    v5 = v10[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 18);
  return v5 == a2;
}

uint64_t llvm::getTypeName<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FDE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FDE8))
  {
    qword_27FC1FDD8 = llvm::detail::getTypeNameImpl<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>>();
    unk_27FC1FDE0 = v1;
    __cxa_guard_release(&qword_27FC1FDE8);
  }

  return qword_27FC1FDD8;
}

const char *llvm::detail::getTypeNameImpl<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::arith::ArithRoundingModeInterface::Trait<Empty>]";
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

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::arith::TruncFOp *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::TruncFOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::TruncFOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::arith::ArithRoundingModeInterface::Trait,mlir::arith::ArithFastMathInterface::Trait,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(void ***a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v11 = a1, (mlir::arith::TruncFOp::verifyInvariantsImpl(&v11)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && (mlir::impl::verifyCastInterfaceOp(a1, v7) & 1) != 0 && mlir::OpTrait::impl::verifyElementwise(a1, v8))
  {
    v11 = a1;
    v9 = mlir::arith::TruncFOp::verify(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::TruncIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::TruncIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::TruncIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::TruncIOp::print(&v7, a3);
}

uint64_t mlir::Op<mlir::arith::TruncIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::InferIntRangeInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants(void ***a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) & 1) != 0 && (mlir::OpTrait::impl::verifyOneResult(a1, v3) & 1) != 0 && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && (mlir::OpTrait::impl::verifyOneOperand(a1, v5) & 1) != 0 && (v11 = a1, (mlir::arith::TruncIOp::verifyInvariantsImpl(&v11)) && mlir::OpTrait::impl::verifySameOperandsAndResultShape(a1, v6) && (mlir::impl::verifyCastInterfaceOp(a1, v7) & 1) != 0 && mlir::OpTrait::impl::verifyElementwise(a1, v8))
  {
    v11 = a1;
    v9 = mlir::arith::TruncIOp::verify(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::UIToFPOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::UIToFPOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = (*(a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v4 = v3[1];
    v5 = &v4[8 * v3[2]];
    v6 = v8;
    v7 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v6, v4, v5);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v7)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v6);
    }

    *(a2 + 48) = 1;
    if (v6 != v8)
    {
      free(v6);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::UIToFPOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::impl::foldCastInterfaceOp(a2, a3, a4, a5))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::UIToFPOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::CastOpInterface::Trait,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::UIToFPOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::XOrIOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

void mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::inferResultRangesFromOptional(uint64_t a1, void (**InterfaceFor)(void, uint64_t, void *), unint64_t a3, unint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  mlir::intrange::detail::defaultInferResultRanges(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::XOrIOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.xori";
      v22 = 10;
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

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::XOrIOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a2;
  v5[0] = a3;
  v5[1] = a4;
  return llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v6, v5);
}

BOOL llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v17 = a2;
  v18[0] = v9;
  v18[1] = v10;
  v19 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v20 = v13;
  v21 = v12;
  v22 = a3;
  v23 = a4;
  v14 = mlir::arith::XOrIOp::fold(&v17, v18);
  v15 = v14;
  if (v14 >= 8 && a2 - 16 != (v14 & ((v14 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, v14);
    return 1;
  }

  if (!*(a5 + 8) && mlir::OpTrait::impl::foldCommutative(a2, a3, a4))
  {
    return 1;
  }

  return v15 > 7;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::arith::XOrIOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsCommutative,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::OpTrait::SameOperandsAndResultType,mlir::VectorUnrollOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::arith::XOrIOp::print(&v7, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::foldHook()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::hasTrait()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[3] = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v2);
  return v0;
}

void *mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::printAssembly()
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[3] = &llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks(v1);
  return llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v1);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::verifyInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::verifyRegionInvariants()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = mlir::Op<mlir::arith::SelectOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<3u>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::InferIntRangeInterface::Trait,mlir::SelectLikeOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::OpTrait::Scalarizable,mlir::OpTrait::Vectorizable,mlir::OpTrait::Tensorizable,mlir::VectorUnrollOpInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
  v2[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  v0 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks(v2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v2);
  return v0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::arith::SelectOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
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

uint64_t mlir::detail::InferIntRangeInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::inferResultRanges(uint64_t a1, uint64_t InterfaceFor, uint64_t a3, uint64_t a4)
{
  v6 = InterfaceFor;
  if (InterfaceFor)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor);
  }

  return mlir::intrange::detail::defaultInferResultRangesFromOptional(v6, InterfaceFor, a3, a4);
}

void mlir::detail::VectorUnrollOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::getShapeForUnroll(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 36))
  {
    v3 = a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(v3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
  {
    v5 = v4[1];
    v6 = &v5[8 * v4[2]];
    v7 = v9;
    v8 = 0x400000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v7, v5, v6);
    *a2 = a2 + 16;
    *(a2 + 8) = 0x400000000;
    if (v8)
    {
      llvm::SmallVectorImpl<long long>::operator=(a2, &v7);
    }

    *(a2 + 48) = 1;
    if (v7 != v9)
    {
      free(v7);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }
}

BOOL mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::arith::SelectOp>::refineReturnTypes(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0x400000000;
  v17 = v19;
  if (mlir::arith::SelectOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, &v17))
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
      v21 = "arith.select";
      v22 = 12;
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